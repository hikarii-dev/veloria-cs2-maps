// Generated using https://github.com/hikarii-dev/veloria-cs2-dumper
// 2026-07-22 16:03:06.449572700 UTC

pub const cs2_dumper = struct {
    pub const schemas = struct {
        // Module: host.dll
        // Class count: 2
        // Enum count: 0
        pub const host_dll = struct {
            // Parent: None
            // Field count: 1
            pub const EmptyTestScript = struct {
                pub const m_hTest: usize = 0x10; // CAnimScriptParam<float32>
            };
            // Parent: None
            // Field count: 1
            pub const CAnimScriptBase = struct {
                pub const m_bIsValid: usize = 0x8; // bool
            };
        };
    };
};
