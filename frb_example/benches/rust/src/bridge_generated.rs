#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.48.1.

use crate::api::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;

// Section: imports

// Section: wire functions

fn wire_handle_uuid_impl(port_: MessagePort, id: impl Wire2Api<uuid::Uuid> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_uuid",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_id = id.wire2api();
            move |task_callback| handle_uuid(api_id)
        },
    )
}
fn wire_handle_uuids_impl(port_: MessagePort, ids: impl Wire2Api<Vec<uuid::Uuid>> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_uuids",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_ids = ids.wire2api();
            move |task_callback| handle_uuids(api_ids)
        },
    )
}
fn wire_handle_uuids_convert_to_strings_impl(
    port_: MessagePort,
    ids: impl Wire2Api<Vec<uuid::Uuid>> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_uuids_convert_to_strings",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_ids = ids.wire2api();
            move |task_callback| handle_uuids_convert_to_strings(api_ids)
        },
    )
}
fn wire_handle_nested_uuids_impl(port_: MessagePort, ids: impl Wire2Api<FeatureUuid> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_nested_uuids",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_ids = ids.wire2api();
            move |task_callback| handle_nested_uuids(api_ids)
        },
    )
}
fn wire_handle_strings_impl(port_: MessagePort, strings: impl Wire2Api<Vec<String>> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_strings",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_strings = strings.wire2api();
            move |task_callback| handle_strings(api_strings)
        },
    )
}
fn wire_send_i64_impl(port_: MessagePort, value: impl Wire2Api<i64> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "send_i64",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_value = value.wire2api();
            move |task_callback| Ok(send_i64(api_value))
        },
    )
}
// Section: wrapper structs

// Section: static checks

// Section: allocate functions

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        (!self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<i64> for i64 {
    fn wire2api(self) -> i64 {
        self
    }
}
impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

// Section: impl IntoDart

impl support::IntoDart for FeatureUuid {
    fn into_dart(self) -> support::DartAbi {
        vec![self.one.into_dart(), self.many.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for FeatureUuid {}

// Section: executor

/* nothing since executor detected */

/// cbindgen:ignore
#[cfg(target_family = "wasm")]
#[path = "bridge_generated.web.rs"]
mod web;
#[cfg(target_family = "wasm")]
pub use web::*;

#[cfg(not(target_family = "wasm"))]
#[path = "bridge_generated.io.rs"]
mod io;
#[cfg(not(target_family = "wasm"))]
pub use io::*;
