use crate::generator::dart::ty::*;
use crate::ir::*;
use crate::target::Acc;
use crate::type_dart_generator_struct;

type_dart_generator_struct!(TypeSyncReturnGenerator, IrTypeSyncReturn);

impl TypeDartGeneratorTrait for TypeSyncReturnGenerator<'_> {
    fn api2wire_body(&self) -> Acc<Option<String>> {
        unimplemented!("SyncReturn generator for Dart: api2wire_body is not supported")
    }

    fn wire2api_body(&self) -> String {
        let not_opaque_body = |ir: &IrTypeSyncReturn| match ir {
            IrTypeSyncReturn::Primitive(ref primitive) => match primitive {
                IrTypePrimitive::Bool => "return uint8ListToBool(raw);".into(),
                IrTypePrimitive::Usize => "return getPlatformUsize(raw);".into(),
                primitive => {
                    let primitive_name = match primitive {
                        IrTypePrimitive::U8 => "Uint8",
                        IrTypePrimitive::U16 => "Uint16",
                        IrTypePrimitive::U32 => "Uint32",
                        IrTypePrimitive::U64 => "Uint64",
                        IrTypePrimitive::I8 => "Int8",
                        IrTypePrimitive::I16 => "Int16",
                        IrTypePrimitive::I32 => "Int32",
                        IrTypePrimitive::I64 => "Int64",
                        IrTypePrimitive::F32 => "Float32",
                        IrTypePrimitive::F64 => "Float64",
                        IrTypePrimitive::Unit => {
                            return "return;".to_owned();
                        }
                        _ => panic!(
                            "SyncReturn generator for Dart: type {} is not supported",
                            primitive.rust_api_type()
                        ),
                    };
                    format!(
                        r#"
                            final dataView = ByteData.view(raw.buffer);
                            return dataView.get{primitive_name}(0);
                            "#,
                        primitive_name = primitive_name
                    )
                }
            },
            IrTypeSyncReturn::String => "return utf8.decode(raw);".into(),
            IrTypeSyncReturn::VecU8 => "return raw;".into(),
            IrTypeSyncReturn::RustOpaque(o) => {
                format!(
                    "var data = parseOpaquePtrAndSizeFrom(raw);
                    return {}.fromRaw(data.item1, data.item2, this);",
                    o.inner_dart
                )
            }
            IrTypeSyncReturn::DartOpaque(_) => {
                "return _platform.inner.get_dart_object(getPlatformUsize(raw));".to_owned()
            }
            IrTypeSyncReturn::Option(_) => panic!("Nested option is not supported."),
        };
        if let IrTypeSyncReturn::Option(ty) = &self.ir {
            format!("if (raw == null) {{return null;}} {}", not_opaque_body(ty))
        } else {
            not_opaque_body(&self.ir)
        }
    }
}
