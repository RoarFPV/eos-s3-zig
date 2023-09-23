//======= GEN_SOURCE
const micro = @import("microzig");
const mmio = micro.mmio;

fn Peripheral(comptime addr: u32, comptime PType: type) *volatile PType {
    return @as(*volatile PType, @ptrFromInt(addr));
}

pub const devices = struct {
    ///  EOS-S3
    pub const @"EOS-S3" = struct {
        pub const properties = struct {
            pub const @"cpu.endian" = "selectable";
            pub const @"cpu.mpuPresent" = "true";
            pub const @"cpu.revision" = "r0p1";
            pub const @"cpu.name" = "CM4";
            pub const @"cpu.nvicPrioBits" = "3";
            pub const @"cpu.vendorSystickConfig" = "false";
            pub const @"cpu.fpuPresent" = "true";
        };

        pub const VectorTable = extern struct {
            const Handler = micro.interrupt.Handler;
            const unhandled = micro.interrupt.unhandled;

            initial_stack_pointer: u32,
            Reset: Handler = unhandled,
            NMI: Handler = unhandled,
            HardFault: Handler = unhandled,
            MemManageFault: Handler = unhandled,
            BusFault: Handler = unhandled,
            UsageFault: Handler = unhandled,
            reserved5: [4]u32 = undefined,
            SVCall: Handler = unhandled,
            DebugMon: Handler = unhandled,
            reserved10: [1]u32 = undefined,
            PendSV: Handler = unhandled,
            SysTick: Handler = unhandled,

            Software_Interrupt_2: Handler = unhandled,
            Software_Interrupt_1: Handler = unhandled,
            reserved16: [1]u32 = undefined,
            FFE0_Message: Handler = unhandled,
            Fabric_Message: Handler = unhandled,
            ///  Global GPIO interrupt
            Sensor_GPIO: Handler = unhandled,
            M4SramSleep: Handler = undefined,
            ///  Global UART interrupt
            UART: Handler = unhandled,
            ///  Interrupt triggered when a timer counts down to 0. The status can be read and cleared (0x4000_4830[2]), and can be masked (0x4000_4834[2] for Host), and (0x4000_4838[2] for M4).
            TIMER: Handler = unhandled,
            CPU_WDOG_INTR: Handler = unhandled,
            CPU_WDOG_RST: Handler = unhandled,
            BUS_Timeout: Handler = unhandled,
            FPU: Handler = unhandled,
            PKFB: Handler = unhandled,
            I2S: Handler = unhandled,
            Audio: Handler = unhandled,
            SPI_MS: Handler = unhandled,
            CFG_DMA: Handler = unhandled,
            PMU_TIMER: Handler = unhandled,
            ///  ADC Done interrupt
            ADC_DONE: Handler = unhandled,
            RTC_Alarm: Handler = unhandled,
            Reset_Interrupt: Handler = unhandled,
            FFE0_Combined: Handler = unhandled,
            FFE_WDT: Handler = unhandled,
            AP_Boot: Handler = unhandled,
            LDO30_PG_INTR: Handler = unhandled,
            LDO50_PG_INTR: Handler = unhandled,
            SRAM_128_TIMEOUT: Handler = unhandled,
            LPSD_Voice_Det: Handler = unhandled,
            DMIC_Voice_Det: Handler = unhandled,
            reserved44: [1]u32 = undefined,
            SDMA_DONE_1: Handler = unhandled,
            SDMA_DONE_2: Handler = unhandled,
            SDMA_DONE_3: Handler = unhandled,
            SDMA_DONE_4: Handler = unhandled,
            SDMA_DONE_5: Handler = unhandled,
            SDMA_DONE_6: Handler = unhandled,
            SDMA_DONE_7: Handler = unhandled,
            SDMA_DONE_8: Handler = unhandled,
            SDMA_DONE_9: Handler = unhandled,
            SDMA_DONE_10: Handler = unhandled,
            SDMA_DONE_11: Handler = unhandled,
            AP_PDM_CLK_ON: Handler = unhandled,
            AP_PDM_CLK_OFF: Handler = unhandled,
            DMAC0_BLK_DONE: Handler = unhandled,
            DMAC0_BUF_DONE: Handler = unhandled,
            DMAC1_BLK_DONE: Handler = unhandled,
            DMAC1_BUF_DONE: Handler = unhandled,
            SDMA_DONE_0: Handler = unhandled,
            SDMA_ERR: Handler = unhandled,
            I2SSLV_M4_tx_or_intr: Handler = unhandled,
            LPSD_VOICE_OFF: Handler = unhandled,
            DMIC_VOICE_OFF: Handler = unhandled,
            reserved45: [3]u32 = undefined,
            // {.__val = (0x20021FFF)}
        };

        pub const peripherals = struct {
            ///  External registers to control M4 Subsystem (not a core peripheral)
            pub const EXTM4Regs = Peripheral(0x40000000, types.peripherals.EXTM4Regs);
            ///  Packet FFO Bank control
            pub const PKFB = Peripheral(0x40002000, types.peripherals.PKFB);
            ///  Power Management Unit
            pub const PMU = Peripheral(0x40002000, types.peripherals.PMU);
            ///  Clock Reset Unit
            pub const CRU = Peripheral(0x40004000, types.peripherals.CRU);
            ///  Interrupt Controller
            pub const INTR_CTRL = Peripheral(0x40004800, types.peripherals.INTR_CTRL);
            ///  IO Multiplexing Control
            pub const IOMUX = Peripheral(0x40004c00, types.peripherals.IOMUX);
            ///  MISC registers
            pub const MISC = Peripheral(0x40005000, types.peripherals.MISC);
            ///  Analog IP block
            pub const AIP = Peripheral(0x40005400, types.peripherals.AIP);
            ///  Analog-to-Digital Converter
            pub const ADC = Peripheral(0x40005a00, types.peripherals.ADC);
            ///  Simple Periodic Timer
            pub const SPT = Peripheral(0x40005c00, types.peripherals.SPT);
            ///  Selects source APB Master to SPI Master between M4/AP and Fabric
            pub const A1_Regs = Peripheral(0x40006000, types.peripherals.A1_Regs);
            ///  SPI peripheral control
            pub const SPI = Peripheral(0x40007000, types.peripherals.SPI);
            ///  Direct Memory Access peripheral
            pub const DMA = Peripheral(0x40007400, types.peripherals.DMA);
            ///  I2S Slave
            pub const I2S_Slave = Peripheral(0x4000b000, types.peripherals.I2S_Slave);
            ///  System Direct Access Memory
            pub const SDMA = Peripheral(0x4000c000, types.peripherals.SDMA);
            ///  System Direct Memory Access Bridge
            pub const SDMA_Bridge = Peripheral(0x4000d000, types.peripherals.SDMA_Bridge);
            ///  System DMA SRAM
            pub const SDMA_SRAM = Peripheral(0x4000f000, types.peripherals.SDMA_SRAM);
            ///  Universal Asynchronous Receiver Transmitter
            pub const UART = Peripheral(0x40010000, types.peripherals.UART);
            ///  WatchDog Timer
            pub const WDT = Peripheral(0x40012000, types.peripherals.WDT);
            ///  Timer peripheral
            pub const TIMER = Peripheral(0x40013000, types.peripherals.TIMER);
            ///  PIF Register (FPGA Programming interface)
            pub const CFG_CTL = Peripheral(0x40014000, types.peripherals.CFG_CTL);
            ///  Audio Subsystem
            pub const AUD = Peripheral(0x40015000, types.peripherals.AUD);
            ///  Flexible Fusion Engine registers
            pub const ExtRegsFFE = Peripheral(0x4004a000, types.peripherals.ExtRegsFFE);
            ///  Communication Manager - Top Level controller
            pub const SPI_TLC = Peripheral(0x40050000, types.peripherals.SPI_TLC);

            ///  Nested Vectored Interrupt Controller
            pub const NVIC = Peripheral(0xe000e100, types.peripherals.NVIC);

            ///  System control block ACTLR
            pub const SCB_ACTRL = Peripheral(0xe000e008, types.peripherals.SCB_ACTRL);
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Nested Vectored Interrupt Controller
        pub const NVIC = extern struct {
            ///  Interrupt Set-Enable Register
            ISER0: mmio.Mmio(packed struct(u32) {
                ///  SETENA
                SETENA: u32,
            }),
            ///  Interrupt Set-Enable Register
            ISER1: mmio.Mmio(packed struct(u32) {
                ///  SETENA
                SETENA: u32,
            }),
            reserved128: [124]u8,
            ///  Interrupt Clear-Enable Register
            ICER0: mmio.Mmio(packed struct(u32) {
                ///  CLRENA
                CLRENA: u32,
            }),
            ///  Interrupt Clear-Enable Register
            ICER1: mmio.Mmio(packed struct(u32) {
                ///  CLRENA
                CLRENA: u32,
            }),

            reserved256: [124]u8,
            ///  Interrupt Set-Pending Register
            ISPR0: mmio.Mmio(packed struct(u32) {
                ///  SETPEND
                SETPEND: u32,
            }),
            ///  Interrupt Set-Pending Register
            ISPR1: mmio.Mmio(packed struct(u32) {
                ///  SETPEND
                SETPEND: u32,
            }),

            reserved384: [124]u8,
            ///  Interrupt Clear-Pending Register
            ICPR0: mmio.Mmio(packed struct(u32) {
                ///  CLRPEND
                CLRPEND: u32,
            }),
            ///  Interrupt Clear-Pending Register
            ICPR1: mmio.Mmio(packed struct(u32) {
                ///  CLRPEND
                CLRPEND: u32,
            }),
            ///  Interrupt Clear-Pending Register
            reserved512: [124]u8,
            ///  Interrupt Active Bit Register
            IABR0: mmio.Mmio(packed struct(u32) {
                ///  ACTIVE
                ACTIVE: u32,
            }),
            ///  Interrupt Active Bit Register
            IABR1: mmio.Mmio(packed struct(u32) {
                ///  ACTIVE
                ACTIVE: u32,
            }),
            reserved768: [124]u8,
            ///  Interrupt Priority Register
            IPR0: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR1: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
        };
        ///  Selects source APB Master to SPI Master between M4/AP and Fabric
        pub const A1_Regs = extern struct {
            ///  Configuration Control
            CFG_CTRL: mmio.Mmio(packed struct(u32) {
                ///  Selects source APB master to SPI Master between M4/AP and Fabric
                CFG_IN_SEL: u1,
                padding: u31 = 0,
            }),
        };

        ///  IO Multiplexing Control
        pub const IOMUX = extern struct {
            pub const FUNC_SEL_ENUM = enum(u2) {
                ///  Select alternative function 0
                alternative_0 = 0x0,
                ///  Select alternative function 1
                alternative_1 = 0x1,
                ///  Select alternative function 2
                alternative_2 = 0x2,
                ///  Select alternative function 3
                alternative_3 = 0x3,
            };

            pub const CTRL_SEL_ENUM = enum(u2) {
                ///  A0 registers
                a0_registers = 0x0,
                ///  Others
                others = 0x1,
                ///  Fabric
                fabric = 0x2,
                _,
            };

            pub const OEN_ENUM = enum(u1) {
                ///  normal operation
                normal_operation = 0x0,
                ///  driver disabled
                driver_disabled = 0x1,
            };

            pub const P_ENUM = enum(u2) {
                ///  floating, high impedance
                z = 0x0,
                ///  pull-up mode
                pull_up = 0x1,
                ///  pull-down mode
                pull_down = 0x2,
                ///  bus keeper mode
                keeper = 0x3,
            };

            pub const DriverStrength = enum(u2) {
                ///  Configures the drive current at 2mA
                current_2ma = 0x0,
                ///  Configures the drive current at 4mA
                current_4ma = 0x1,
                ///  Configures the drive current at 8mA
                current_8ma = 0x2,
                ///  Configures the drive current at 12mA
                current_12ma = 0x3,
            };

            pub const SlewRate = enum(u1) {
                ///  slow (half frequency) slew rate
                slow = 0x0,
                ///  fast slew rate
                fast = 0x1,
            };

            pub const REN = enum(u1) {
                ///  disable receive
                disable_receive = 0x0,
                ///  enable receive
                enable_receive = 0x1,
            };

            pub const SMT_ENUM = enum(u1) {
                ///  Disable the Schmitt trigger
                disable_trigger = 0x0,
                ///  Enable the Schmitt trigger
                enable_trigger = 0x1,
            };

            pub const SDA0_SEL_REG_ENUM = enum(u1) {
                ///  Documentation lacking, guessed meaning: Selects pad #1 for the SDA function in I2C0
                default_undefined = 0x0,
                ///  Selects pad #1 for the SDA function in I2C0
                pad_01 = 0x1,
            };

            pub const SDA1_SEL_REG_ENUM = enum(u2) {
                ///  Documentation lacking, guessed meaning: Select pad #15 for the SDA function in I2C1
                default_undefined = 0x0,
                ///  Select pad #15 for the SDA function in I2C1
                pad_15 = 0x1,
                ///  Select pad #32 for the SDA function in I2C1
                pad_32 = 0x2,
                ///  Select pad #44 for the SDA function in I2C1
                pad_44 = 0x3,
            };

            pub const SDA2_SEL_REG_ENUM = enum(u1) {
                ///  Documentation lacking, guessed meaning: Selects pad #41 for the SDA function in I2C2
                default_undefined = 0x0,
                ///  Selects pad #41 for the SDA function in I2C2
                pad_41 = 0x1,
            };

            pub const SCL0_SEL_REG_ENUM = enum(u1) {
                ///  Documentation lacking, guessed meaning: Selects pad #0 for the SCL function in I2C0
                default_undefined = 0x0,
                ///  Selects pad #0 for the SCL function in I2C0
                pad_00 = 0x1,
            };

            pub const SCL1_SEL_REG_ENUM = enum(u2) {
                ///  Documentation lacking, guessed meaning: Select pad #14 for the SCL function in I2C1
                default_undefined = 0x0,
                ///  Select pad #14 for the SCL function in I2C1
                pad_14 = 0x1,
                ///  Select pad #33 for the SCL function in I2C1
                pad_33 = 0x2,
                ///  Select pad #45 for the SCL function in I2C1
                pad_45 = 0x3,
            };

            pub const SCL2_SEL_REG_ENUM = enum(u1) {
                ///  Documentation lacking, guessed meaning: Selects pad #40 for the SCL function in I2C2
                default_undefined = 0x0,
                ///  Selects pad #40 for the SCL function in I2C2
                pad_40 = 0x1,
            };

            pub const PDM_DATA_SELE_ENUM = enum(u2) {
                ///  undefined (0:0 in documentation)
                undefined = 0x0,
                ///  Selects pad #10 for PDM data line
                pad_10 = 0x1,
                ///  Selects pad #28 for PDM data line
                pad_28 = 0x2,
                _,
            };

            pub const I2S_DATA_SELECT_ENUM = enum(u2) {
                ///  undefined (0:0 in documentation)
                undefined = 0x0,
                ///  Selects pad #10 for I2S data line
                pad_10 = 0x1,
                ///  Selects pad #28 for I2S data line
                pad_28 = 0x2,
                _,
            };

            pub const UART_rxd_SEL_ENUM = enum(u3) {
                ///  undefined (0:0 in documentation)
                undefined = 0x0,
                ///  Selects pad #14 for UART RXD line
                pad_14 = 0x1,
                ///  Selects pad #16 for UART RXD line
                pad_16 = 0x2,
                ///  Selects pad #25 for UART RXD line
                pad_25 = 0x3,
                ///  Selects pad #45 for UART RXD line
                pad_45 = 0x4,
                _,
            };

            pub const IrDA_Sirin_SEL_ENUM = enum(u3) {
                ///  undefined (0:0 in documentation)
                undefined = 0x0,
                ///  Selects pad #14 for Siren in line
                pad_06 = 0x1,
                ///  Selects pad #15 for Siren in line
                pad_15 = 0x2,
                ///  Selects pad #21 for Siren in line
                pad_21 = 0x3,
                ///  Selects pad #24 for Siren in line
                pad_24 = 0x4,
                ///  Selects pad #28 for Siren in line
                pad_28 = 0x5,
                ///  Selects pad #40 for Siren in line
                pad_40 = 0x6,
                ///  Selects pad #44 for Siren in line
                pad_44 = 0x7,
            };

            pub const S_INTR_0_SEL_REG_ENUM = enum(u1) {
                ///  undefined (0:0 in documentation)
                undefined = 0x0,
                ///  Selects pad #3 as the trigger
                pad_03 = 0x1,
            };

            pub const S_INTR_1_SEL_REG_ENUM = enum(u3) {
                ///  undefined (0:0 in documentation)
                undefined = 0x0,
                ///  Selects pad #2 as the trigger
                pad_02 = 0x1,
                ///  Selects pad #6 as the trigger
                pad_06 = 0x2,
                ///  Selects pad #18 as the trigger
                pad_18 = 0x3,
                ///  Selects pad #24 as the trigger
                pad_24 = 0x4,
                ///  Selects pad #35 as the trigger
                pad_35 = 0x5,
                ///  Selects pad #36 as the trigger
                pad_36 = 0x6,
                _,
            };

            pub const S_INTR_2_SEL_ENUM = enum(u3) {
                ///  undefined (0:0 in documentation)
                undefined = 0x0,
                ///  Selects pad #4 as the trigger
                pad_04 = 0x1,
                ///  Selects pad #8 as the trigger
                pad_08 = 0x2,
                ///  Selects pad #21 as the trigger
                pad_21 = 0x3,
                ///  Selects pad #25 as the trigger
                pad_25 = 0x4,
                ///  Selects pad #37 as the trigger
                pad_37 = 0x5,
                ///  Selects pad #38 as the trigger
                pad_38 = 0x6,
                _,
            };

            pub const S_INTR_3_SEL_ENUM = enum(u3) {
                ///  undefined (0:0 in documentation)
                undefined = 0x0,
                ///  Selects pad #2 as the trigger
                pad_05 = 0x1,
                ///  Selects pad #9 as the trigger
                pad_09 = 0x2,
                ///  Selects pad #22 as the trigger
                pad_22 = 0x3,
                ///  Selects pad #28 as the trigger
                pad_28 = 0x4,
                ///  Selects pad #39 as the trigger
                pad_39 = 0x5,
                ///  Selects pad #40 as the trigger
                pad_40 = 0x6,
                _,
            };

            pub const S_INTR_4_SEL_ENUM = enum(u3) {
                ///  undefined (0:0 in documentation)
                undefined = 0x0,
                ///  Selects pad #7 as the trigger
                pad_07 = 0x1,
                ///  Selects pad #10 as the trigger
                pad_10 = 0x2,
                ///  Selects pad #26 as the trigger
                pad_26 = 0x3,
                ///  Selects pad #29 as the trigger
                pad_29 = 0x4,
                ///  Selects pad #44 as the trigger
                pad_44 = 0x5,
                _,
            };

            pub const S_INTR_5_SEL_ENUM = enum(u3) {
                ///  undefined (0:0 in documentation)
                undefined = 0x0,
                ///  Selects pad #11 as the trigger
                pad_11 = 0x1,
                ///  Selects pad #14 as the trigger
                pad_14 = 0x2,
                ///  Selects pad #27 as the trigger
                pad_27 = 0x3,
                ///  Selects pad #30 as the trigger
                pad_30 = 0x4,
                ///  Selects pad #45 as the trigger
                pad_45 = 0x5,
                _,
            };

            pub const SEL = enum(u3) {
                ///  undefined (0:0 in documentation)
                undefined = 0x0,
                ///  Selects pad #12 as the trigger
                pad_12 = 0x1,
                ///  Selects pad #15 as the trigger
                pad_15 = 0x2,
                ///  Selects pad #31 as the trigger
                pad_31 = 0x3,
                ///  Selects pad #32 as the trigger
                pad_32 = 0x4,
                ///  Selects pad #41 as the trigger
                pad_41 = 0x5,
                _,
            };

            pub const S_INTR_7_SEL_ENUM = enum(u3) {
                ///  undefined (0:0 in documentation)
                undefined = 0x0,
                ///  Selects pad #13 as the trigger
                pad_13 = 0x1,
                ///  Selects pad #23 as the trigger
                pad_23 = 0x2,
                ///  Selects pad #33 as the trigger
                pad_33 = 0x3,
                ///  Selects pad #34 as the trigger
                pad_34 = 0x4,
                ///  Selects pad #42 as the trigger
                pad_42 = 0x5,
                _,
            };

            pub const IO_SEL_0 = enum(u1) {
                ///  Enable pad #6 as GPIO
                pad_06 = 0x0,
                ///  Enable pad #24 as GPIO
                pad_24 = 0x1,
            };

            pub const IO_SEL_1 = enum(u1) {
                ///  Enable pad #9 as GPIO
                pad_09 = 0x0,
                ///  Enable pad #26 as GPIO
                pad_26 = 0x1,
            };

            pub const IO_SEL_2 = enum(u1) {
                ///  Enable pad #11 as GPIO
                pad_11 = 0x0,
                ///  Enable pad #28 as GPIO
                pad_28 = 0x1,
            };

            pub const IO_SEL_3 = enum(u1) {
                ///  Enable pad #14 as GPIO
                pad_14 = 0x0,
                ///  Enable pad #30 as GPIO
                pad_30 = 0x1,
            };

            pub const IO_SEL_4 = enum(u1) {
                ///  Enable pad #18 as GPIO
                pad_18 = 0x0,
                ///  Enable pad #31 as GPIO
                pad_31 = 0x1,
            };

            pub const IO_SEL_5 = enum(u1) {
                ///  Enable pad #21 as GPIO
                pad_21 = 0x0,
                ///  Enable pad #26 as GPIO
                pad_26 = 0x1,
            };

            pub const IO_SEL_6 = enum(u1) {
                ///  Enable pad #22 as GPIO
                pad_22 = 0x0,
                ///  Enable pad #38 as GPIO
                pad_38 = 0x1,
            };

            pub const IO_SEL_7 = enum(u1) {
                ///  Enable pad #23 as GPIO
                pad_23 = 0x0,
                ///  Enable pad #45 as GPIO
                pad_45 = 0x1,
            };

            pub const SW_CLK_SEL_ENUM = enum(u1) {
                ///  pad #14/#45 (pad selection will depend on pad #8, See ch. 30 of TechRef Manual)
                select_strap_pad_14_45 = 0x0,
                ///  Lacking documentation. Might mean the same as `select_strap_pad`
                undefined = 0x1,
            };

            pub const SW_IO_SEL_ENUM = enum(u1) {
                ///  pad #15/#44 (pad selection will depend on pad #8, See ch. 30 of TechRef Manual)
                select_strap_pad_15_44 = 0x0,
                ///  Lacking documentation. Might mean the same as `select_strap_pad`
                undefined = 0x1,
            };

            pub const FBIO_SEL_1_ENUM = enum(u32) {
                ///  Lacking documentation. Guess: Leaves pad unselected
                undefined = 0x0,
                ///  Lacking documentation. Guess: Activates some sort of FPGA Fabric control for pads 0-31
                select_pad = 0x1,
                _,
            };

            pub const FBIO_SEL_2_ENUM = enum(u14) {
                ///  Lacking documentation. Guess: Leaves pad unselected
                undefined = 0x0,
                ///  Lacking documentation. Guess: Activates some sort of FPGA Fabric control for pads 32-45
                select_pad = 0x1,
                _,
            };

            pub const SPI_SENSOR_MISO_SEL_ENUM = enum(u2) {
                ///  undefined (0:0 in documentation)
                undefined = 0x0,
                ///  Selects pad #8 for sensor SPI MISO
                pad_08 = 0x1,
                ///  Selects pad #29 for sensor SPI MISO
                pad_29 = 0x2,
                _,
            };

            pub const SPI_SENSOR_MOSI_SEL_ENUM = enum(u2) {
                ///  undefined (0:0 in documentation)
                undefined = 0x0,
                ///  Selects pad #6 for sensor SPI MISO
                pad_06 = 0x1,
                ///  Selects pad #28 for sensor SPI MISO
                pad_28 = 0x2,
                _,
            };

            ///  PAD_[%s] control register
            PAD_CTRL: [46]mmio.Mmio(packed struct(u32) {
                ///  Functional selection for IO output. Refer to IO Mux
                FUNC_SEL: FUNC_SEL_ENUM,
                reserved3: u1 = 0,
                ///  Control selection for IO Output. 0x0 = A0 registers, 0x1 = Others, 0x2 = Fabric
                CTRL_SEL: CTRL_SEL_ENUM,
                ///  Active low output enable
                OEN: OEN_ENUM,
                ///  Driver state control
                P: P_ENUM,
                ///  Driver Strength
                E: DriverStrength,
                ///  Slew Rate
                SR: SlewRate,
                ///  Receive Enable
                REN: REN,
                ///  Schmitt Trigger
                SMT: SMT_ENUM,
                padding: u19 = 0,
            }),
            reserved256: [72]u8,
            ///  Select pad for SDA function in I2C0 (only pad 1 is selectable)
            SDA0_SEL_REG: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: SDA0_SEL_REG_ENUM,
                padding: u31 = 0,
            }),
            ///  Select pad for SDA function in I2C1 (3 pads available)
            SDA1_SEL_REG: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: SDA1_SEL_REG_ENUM,
                padding: u30 = 0,
            }),
            ///  Select pad for SDA function in I2C2 (only pad 41 is selectable)
            SDA2_SEL_REG: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: SDA2_SEL_REG_ENUM,
                padding: u31 = 0,
            }),
            ///  Select pad for SCL function in I2C0 (only pad 0 is selectable)
            SCL0_SEL_REG: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: SCL0_SEL_REG_ENUM,
                padding: u31 = 0,
            }),
            ///  Select pad for SCL function in I2C1 (3 pads available)
            SCL1_SEL_REG: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: SCL1_SEL_REG_ENUM,
                padding: u30 = 0,
            }),
            ///  Select pad for SCL function in I2C2 (only pad 40 is selectable)
            SCL2_SEL_REG: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: SCL2_SEL_REG_ENUM,
                padding: u31 = 0,
            }),
            ///  Select pad for SPI CLK function (only pad 16 is selectable)
            SPIs_CLK_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: u1,
                padding: u31 = 0,
            }),
            ///  Select pad for SPI SS function (only pad 20 is selectable)
            SPIs_SSn_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: u1,
                padding: u31 = 0,
            }),
            ///  Select pad for SPI MOSI function (only pad 19 is selectable)
            SPIs_MOSI_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: u1,
                padding: u31 = 0,
            }),
            ///  Select pad for SPI MISO function (only pad 36 is selectable)
            SPIs_MISO_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: u1,
                padding: u31 = 0,
            }),
            ///  Select pad for PDM microphone data line
            PDM_DATA_SELE: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: PDM_DATA_SELE_ENUM,
                padding: u30 = 0,
            }),
            ///  Select pad for the I2S Serial Data (SD)
            I2S_DATA_SELECT: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: I2S_DATA_SELECT_ENUM,
                padding: u30 = 0,
            }),
            reserved308: [4]u8,
            ///  a
            UART_rxd_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: UART_rxd_SEL_ENUM,
                padding: u29 = 0,
            }),
            ///  Select pad for SIREN in function
            IrDA_Sirin_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: IrDA_Sirin_SEL_ENUM,
                padding: u29 = 0,
            }),
            ///  Select pad that triggers GPIO interrupt 0
            S_INTR_0_SEL_REG: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: S_INTR_0_SEL_REG_ENUM,
                padding: u31 = 0,
            }),
            ///  Select pad that triggers GPIO interrupt 1
            S_INTR_1_SEL_REG: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: S_INTR_1_SEL_REG_ENUM,
                padding: u29 = 0,
            }),
            ///  Select pad that triggers GPIO interrupt 2
            S_INTR_2_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: S_INTR_2_SEL_ENUM,
                padding: u29 = 0,
            }),
            ///  Select pad that triggers GPIO interrupt 3
            S_INTR_3_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: S_INTR_3_SEL_ENUM,
                padding: u29 = 0,
            }),
            ///  Select pad that triggers GPIO interrupt 4
            S_INTR_4_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: S_INTR_4_SEL_ENUM,
                padding: u29 = 0,
            }),
            ///  Select pad that triggers GPIO interrupt 5
            S_INTR_5_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: S_INTR_5_SEL_ENUM,
                padding: u29 = 0,
            }),
            ///  Select pad that triggers GPIO interrupt 6
            S_INTR_6_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: SEL,
                padding: u29 = 0,
            }),
            ///  Select pad that triggers GPIO interrupt 7
            S_INTR_7_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: S_INTR_7_SEL_ENUM,
                padding: u29 = 0,
            }),
            ///  Pad Selection for the CTS nUART function
            NUARTCTS_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: u2,
                padding: u30 = 0,
            }),
            ///  Selects which IO input will be registered (Pads used as GPIOS)
            IO_REG_SEL: mmio.Mmio(packed struct(u32) {
                ///  Select pad for IO maped to bit 0
                IO_SEL_0: IO_SEL_0,
                ///  Select pad for IO maped to bit 1
                IO_SEL_1: IO_SEL_1,
                ///  Select pad for IO maped to bit 2
                IO_SEL_2: IO_SEL_2,
                ///  Select pad for IO maped to bit 3
                IO_SEL_3: IO_SEL_3,
                ///  Select pad for IO maped to bit 4
                IO_SEL_4: IO_SEL_4,
                ///  Select pad for IO maped to bit 5
                IO_SEL_5: IO_SEL_5,
                ///  Select pad for IO maped to bit 6
                IO_SEL_6: IO_SEL_6,
                ///  Select pad for IO maped to bit 7
                IO_SEL_7: IO_SEL_7,
                padding: u24 = 0,
            }),
            reserved368: [12]u8,
            ///  Selection for SWD clock pad (SCK)
            SW_CLK_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: SW_CLK_SEL_ENUM,
                padding: u31 = 0,
            }),
            ///  Selection for SWD IO pad (SDIO)
            SW_IO_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: SW_IO_SEL_ENUM,
                padding: u31 = 0,
            }),
            reserved384: [8]u8,
            ///  Lacking proper documentation. Configuration of pins 0-31 related to Fabric
            FBIO_SEL_1: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: FBIO_SEL_1_ENUM,
            }),
            ///  Lacking proper documentation. Configuration of pins 32-45 related to Fabric
            FBIO_SEL_2: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: FBIO_SEL_2_ENUM,
                padding: u18 = 0,
            }),
            reserved400: [8]u8,
            ///  Selects pad for MISO function for the sensor SPI
            SPI_SENSOR_MISO_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: SPI_SENSOR_MISO_SEL_ENUM,
                padding: u30 = 0,
            }),
            ///  Selects pad for MOSI function for the sensor SPI
            SPI_SENSOR_MOSI_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: SPI_SENSOR_MOSI_SEL_ENUM,
                padding: u30 = 0,
            }),
            reserved416: [8]u8,
            ///  Selects pad for the I2S Data-Word Select (WS)
            I2S_WD_CLKIN_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: u1,
                padding: u31 = 0,
            }),
            ///  Selects pad for I2S clock (SCK)
            I2S_CLKIN_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: u1,
                padding: u31 = 0,
            }),
            ///  Selects pin for PDM STATUS_IN function
            PDM_STAT_IN_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: u2,
                padding: u30 = 0,
            }),
            ///  Selects pin for PDM CLKIN source (AP PDM CKO IN)
            PDM_CLKIN_SEL: mmio.Mmio(packed struct(u32) {
                ///  Sel
                SEL: u1,
                padding: u31 = 0,
            }),
        };

        ///  Analog-to-Digital Converter
        pub const ADC = extern struct {
            pub const EOC = enum(u1) {
                ///  data in OUT field is not valid
                non_valid = 0x0,
                ///  data in OUT field is valid
                valid = 0x1,
            };

            pub const SOC = enum(u1) {
                ///  Stop conversion
                stop = 0x0,
                ///  Start conversion. Needs to be held high until EOC is valid
                start = 0x1,
            };

            pub const ADC_Control_SEL_ENUM = enum(u1) {
                ///  Select channel 0
                select_ch0 = 0x0,
                ///  Select channel 1
                select_ch1 = 0x1,
            };

            pub const BAT = enum(u1) {
                ///  Disables battery measurement
                disable = 0x0,
                ///  Enables battery measurement
                enable = 0x1,
            };

            ///  Last sampled value
            ADC_OUT: mmio.Mmio(packed struct(u32) {
                ///  Stored last sampled value
                OUT: u12,
                padding: u20 = 0,
            }),
            ///  Status
            ADC_Status: mmio.Mmio(packed struct(u32) {
                ///  End of Conversion. Rises when data is valid
                EOC: EOC,
                padding: u31 = 0,
            }),
            ///  Control register
            ADC_Control: mmio.Mmio(packed struct(u32) {
                ///  Asynchronous start-of-conversion. Needs to rise and be held high for each conversion
                SOC: SOC,
                ///  Channel Selection. 0 = CH0, 1 = CH1
                SEL: ADC_Control_SEL_ENUM,
                ///  Battery measurement enable
                BAT: BAT,
                padding: u29 = 0,
            }),
        };

        ///  Analog IP block
        pub const AIP = extern struct {
            pub const en = enum(u1) {
                ///  Disable the oscillator
                oscillator_off = 0x0,
                ///  Enable the oscillator
                oscillator_on = 0x1,
            };

            pub const fref16k_sel = enum(u1) {
                ///  Reference clock is 32KHz
                with_32k_osc = 0x0,
                ///  Reference clock is 16KHz
                with_16k_osc = 0x1,
            };

            pub const RING_OSC_EN = enum(u1) {
                ///  Disable the ring oscillator
                oscillator_off = 0x0,
                ///  Enable the ring oscillator
                oscillator_on = 0x1,
            };

            pub const IMAX = enum(u3) {
                ///  Configure the maximum current for LDO_30 as 30mA
                max_30mA_current = 0x0,
                ///  Configure the maximum current for LDO_30 as 18mA
                max_18mA_current = 0x1,
                ///  Configure the maximum current for LDO_30 as 12mA
                max_12mA_current = 0x2,
                ///  Configure the maximum current for LDO_30 as 7.2mA (default)
                max_7_2mA_current = 0x3,
                ///  Configure the maximum current for LDO_30 as 4.8mA
                max_4_8mA_current = 0x4,
                ///  Configure the maximum current for LDO_30 as 2.4mA
                max_2_4mA_current = 0x5,
                ///  Configure the maximum current for LDO_30 as 1.2mA
                max_1_2mA_current = 0x6,
                ///  Configure the maximum current for LDO_30 as 0.6mA
                max_0_6mA_current = 0x7,
            };

            pub const DI = enum(u5) {
                ///  Configures the LDO_30 output voltage as 0.75v
                as_0_75v_output = 0x0,
                ///  Configures the LDO_30 output voltage as 0.77v
                as_0_77v_output = 0x1,
                ///  Configures the LDO_30 output voltage as 0.79v
                as_0_79v_output = 0x2,
                ///  Configures the LDO_30 output voltage as 0.81v
                as_0_81v_output = 0x3,
                ///  Configures the LDO_30 output voltage as 0.83v
                as_0_83v_output = 0x4,
                ///  Configures the LDO_30 output voltage as 0.85v
                as_0_85v_output = 0x5,
                ///  Configures the LDO_30 output voltage as 0.87v
                as_0_87v_output = 0x6,
                ///  Configures the LDO_30 output voltage as 0.89v
                as_0_89v_output = 0x7,
                ///  Configures the LDO_30 output voltage as 0.91v
                as_0_91v_output = 0x8,
                ///  Configures the LDO_30 output voltage as 0.93v
                as_0_93v_output = 0x9,
                ///  Configures the LDO_30 output voltage as 0.95v
                as_0_95v_output = 0xa,
                ///  Configures the LDO_30 output voltage as 0.97v
                as_0_97v_output = 0xb,
                ///  Configures the LDO_30 output voltage as 0.99v
                as_0_99v_output = 0xc,
                ///  Configures the LDO_30 output voltage as 1.01v
                as_1_01v_output = 0xd,
                ///  Configures the LDO_30 output voltage as 1.03v
                as_1_03v_output = 0xe,
                ///  Configures the LDO_30 output voltage as 1.05v
                as_1_05v_output = 0xf,
                ///  Configures the LDO_30 output voltage as 1.07v
                as_1_07v_output = 0x10,
                ///  Configures the LDO_30 output voltage as 1.09v (default)
                as_1_09v_output = 0x11,
                ///  Configures the LDO_30 output voltage as 1.11v
                as_1_11v_output = 0x12,
                ///  Configures the LDO_30 output voltage as 1.13v
                as_1_13v_output = 0x13,
                ///  Configures the LDO_30 output voltage as 1.15v
                as_1_15v_output = 0x14,
                ///  Configures the LDO_30 output voltage as 1.17v
                as_1_17v_output = 0x15,
                ///  Configures the LDO_30 output voltage as 1.19v
                as_1_19v_output = 0x16,
                ///  Configures the LDO_30 output voltage as 1.21v
                as_1_21v_output = 0x17,
                _,
            };

            reserved4: [4]u8,
            ///  RTC control register 1
            RTC_CTRL_1: mmio.Mmio(packed struct(u32) {
                ///  5'b00000 : 32.768 Khz Please refer to the Technical Reference Manual for others (No SYNC Needed)
                clkdiv: u5,
                padding: u27 = 0,
            }),
            ///  RTC control register 2
            RTC_CTRL_2: mmio.Mmio(packed struct(u32) {
                ///  1'b1 RTC Clock Output Enable (No SYNC Needed)
                clke: u1,
                ///  Changes internal clock division for 16384 Hz bypass compatibility -- 1'b0 : xtal is 32KHz - 1'b1 : xtal is 16KHz
                byp16k: u1,
                ///  RTC Test[4:3] control for rtc bypass mode -- 0: Test[4:3] will be forced to 2'b11 when pad8 is strapped to 1, and forced to 2'b00 when pad8 is strapped to 0 , 1: normal mode; Test[4:0] controlled from 0x1C
                test_ctrl: u1,
                padding: u29 = 0,
            }),
            ///  RTC control register 3
            RTC_CTRL_3: mmio.Mmio(packed struct(u32) {
                ///  3'b000 Normal Function. Please refer to the Technical Reference Manual for detail
                ce: u3,
                padding: u29 = 0,
            }),
            ///  RTC Control register 4
            RTC_CTRL_4: mmio.Mmio(packed struct(u32) {
                ///  Write Pulse to program the RTC internal Register. Please refer to the Technical Reference Manual for detail
                wr: u1,
                padding: u31 = 0,
            }),
            ///  RTC control register 5
            RTC_CTRL_5: mmio.Mmio(packed struct(u32) {
                ///  Serial Input clock
                c: u1,
                padding: u31 = 0,
            }),
            ///  RTC control register 6
            RTC_CTRL_6: mmio.Mmio(packed struct(u32) {
                ///  Parallel Input data. Please refer to the Technical Reference Manual for detail
                PI: u32,
            }),
            ///  RTC control register 7
            RTC_CTRL_7: mmio.Mmio(packed struct(u32) {
                ///  Please refer to the Technical Reference Manual for detail
                Test: u5,
                padding: u27 = 0,
            }),
            ///  Incomplete information. Probably related to AIP RTC hardware status
            RTC_STA_0: mmio.Mmio(packed struct(u32) {
                ///  Please refer to the Technical Reference Manual for detail, NO SYNC, FW need to read it twice to ensure the value.
                alarm: u1,
                ///  Please refer to the Technical Reference Manual for detail, NO SYNC, FW need to read it twice to ensure the value.
                testreq: u1,
                ///  Please refer to the Technical Reference Manual for detail, NO SYNC, FW need to read it twice to ensure the value.
                digtestbus: u1,
                ///  Please refer to the Technical Reference Manual for detail, NO SYNC, FW need to read it twice to ensure the value.
                oscok: u1,
                padding: u28 = 0,
            }),
            ///  Incomplete information. Probably related to AIP RTC hardware status
            RTC_STA_1: mmio.Mmio(packed struct(u32) {
                ///  Please refer to the Technical Reference Manual for detail, NO SYNC, FW need to read it twice to ensure the value.
                PO: u32,
            }),
            reserved128: [88]u8,
            ///  Oscilator control register 0
            OSC_CTRL_0: mmio.Mmio(packed struct(u32) {
                ///  1'b0 : OSC OFF -- 1'b1 : OSC ON , (NO SYNC needed, OSC guarantee there is no Glitch)
                en: en,
                ///  Reference clock selection
                fref16k_sel: fref16k_sel,
                padding: u30 = 0,
            }),
            ///  Oscilator control register 1
            OSC_CTRL_1: mmio.Mmio(packed struct(u32) {
                ///  Please refer to the Technical Reference Manual for others (No SYNC Needed). Power On Default Value is 76.97 MHz. No Support on 'Delta Mode'.
                prog: u13,
                ///  No description given
                General_Purpos_SFR: u3,
                padding: u16 = 0,
            }),
            ///  Oscilator control register 2
            OSC_CTRL_2: mmio.Mmio(packed struct(u32) {
                ///  Write 1, trigger delta mode, Note : This feature is NOT going to support, Keep it Low
                delta: u1,
                padding: u31 = 0,
            }),
            ///  Oscilator control register 3
            OSC_CTRL_3: mmio.Mmio(packed struct(u32) {
                ///  If 1'b1, will force the refok pin to 1, otherwise, it is control by the RTC/oscok
                refok: u1,
                reserved3: u2 = 0,
                ///  Turn on Monitor function by default
                enmon: u1,
                ///  No description given
                General_Purpos_SFR: u4,
                padding: u24 = 0,
            }),
            ///  Oscilator control register 4
            OSC_CTRL_4: mmio.Mmio(packed struct(u32) {
                ///  Please refer to the Technical Reference Manual for detail
                Test: u3,
                ///  Please refer to the Technical Reference Manual for detail
                ce: u2,
                ///  Please refer to the Technical Reference Manual for detail
                wr: u1,
                padding: u26 = 0,
            }),
            ///  Oscilator control register 5
            OSC_CTRL_5: mmio.Mmio(packed struct(u32) {
                ///  Please refer to the Technical Reference Manual for detail
                sdi: u1,
                padding: u31 = 0,
            }),
            ///  Oscilator control register 6
            OSC_CTRL_6: mmio.Mmio(packed struct(u32) {
                ///  Please refer to the Technical Reference Manual for detail
                sck: u1,
                padding: u31 = 0,
            }),
            ///  Oscilator control register 7
            OSC_CTRL_7: u32,
            ///  Contains information about oscilator status
            OSC_STA_0: mmio.Mmio(packed struct(u32) {
                ///  Please refer to the Technical Reference Manual for detail, NO SYNC, FW need to read it twice to ensure the value.
                lock: u1,
                ///  Please refer to the Technical Reference Manual for detail, NO SYNC, FW need to read it twice to ensure the value.
                anatestreq_: u1,
                padding: u30 = 0,
            }),
            ///  Contains information about oscilator status
            OSC_STA_1: mmio.Mmio(packed struct(u32) {
                ///  Please refer to the Technical Reference Manual for detail, NO SYNC, FW need to read it twice to ensure the value.
                sdo: u1,
                padding: u31 = 0,
            }),
            reserved256: [88]u8,
            ///  APC control register 0
            APC_CTRL_0: mmio.Mmio(packed struct(u32) {
                ///  1'b0 : APC ON, Always ON
                dis: u1,
                padding: u31 = 0,
            }),
            ///  APC control register 1
            APC_CTRL_1: mmio.Mmio(packed struct(u32) {
                ///  Please refer to the Technical Reference Manual for others (No SYNC Needed)
                tt: u3,
                ///  Please refer to the Technical Reference Manual for others (No SYNC Needed)
                vt: u5,
                padding: u24 = 0,
            }),
            ///  APC control register 2
            APC_CTRL_2: mmio.Mmio(packed struct(u32) {
                ///  Please refer to the Technical Reference Manual for others (No SYNC Needed)
                it: u3,
                ///  Please refer to the Technical Reference Manual for others (No SYNC Needed)
                Test: u4,
                padding: u25 = 0,
            }),
            ///  APC control register 3 // Reserved
            APC_CTRL_3: u32,
            ///  APC control register 4 // Reserved
            APC_CTRL_4: u32,
            ///  APC control register 5 // Reserved
            APC_CTRL_5: u32,
            ///  APC control register 6 // Reserved
            APC_CTRL_6: u32,
            ///  APC control register 7 // Reserved
            APC_CTRL_7: u32,
            ///  APC status register 0
            APC_STA_0: mmio.Mmio(packed struct(u32) {
                reserved2: u2 = 0,
                ///  Please refer to the Technical Reference Manual for detail, NO SYNC, FW need to read it twice to ensure the value.
                porz: u1,
                ///  Please refer to the Technical Reference Manual for detail, NO SYNC, FW need to read it twice to ensure the value.
                digtestbus: u1,
                ///  Please refer to the Technical Reference Manual for detail, NO SYNC, FW need to read it twice to ensure the value.
                testreq: u1,
                padding: u27 = 0,
            }),
            ///  APC status register 1
            APC_STA_1: u32,
            reserved384: [88]u8,
            ///  Ring oscilator control register
            RING_OSC: mmio.Mmio(packed struct(u32) {
                ///  1'b1 : Turn on the RING OSC, Ring OSC will be always on despite the HW control.
                RING_OSC_EN: RING_OSC_EN,
                ///  1'b1 : Turn on the RING OSC, Ring OSC will be always on despite the HW control.
                General_Purpos_SFR: u7,
                padding: u24 = 0,
            }),
            reserved512: [124]u8,
            ///  LDO_30 control register 0
            LDO_30_CTRL_0: mmio.Mmio(packed struct(u32) {
                ///  Used to disable LDO_30
                DIS: u1,
                ///  Used to disable the power good comparator
                DISPG: u1,
                ///  Configures the control for maximum expected current imax current (mA)
                IMAX: IMAX,
                ///  Output voltage programming. Note: Please keep LDO_30_DI and LDO_50_DI to be equal values for proper operation and lower power consumption.
                DI: DI,
                padding: u22 = 0,
            }),
            ///  LDO_30 control register 1
            LDO_30_CTRL_1: mmio.Mmio(packed struct(u32) {
                ///  Lab Test and internal block characterization Test control pins.
                TEST: u4,
                ///  Request of connection of the anatestbus to an external pin for characterization
                TESTREQ: u1,
                padding: u27 = 0,
            }),
            reserved528: [8]u8,
            ///  LDO_50 control register 0
            LDO_50_CTRL_0: mmio.Mmio(packed struct(u32) {
                ///  Used to disable LDO_30
                DIS: u1,
                ///  Used to disable the power good comparator
                DISPG: u1,
                ///  Configures the control for maximum expected current imax current (mA)
                IMAX: IMAX,
                ///  Output voltage programming. Note: Please keep LDO_30_DI and LDO_50_DI to be equal values for proper operation and lower power consumption.
                DI: DI,
                padding: u22 = 0,
            }),
            ///  LDO_50 control register 1
            LDO_50_CTRL_1: mmio.Mmio(packed struct(u32) {
                ///  Lab Test and internal block characterization Test control pins.
                TEST: u4,
                ///  Request of connection of the anatestbus to an external pin for characterization
                TESTREQ: u1,
                padding: u27 = 0,
            }),
        };

        ///  Audio Subsystem
        pub const AUD = extern struct {
            pub const DMIC_SEL = enum(u1) {
                ///  DMIC source is PDM
                pdm = 0x0,
                ///  DMIC source is I2S
                i2s = 0x1,
            };

            pub const LPSD_SEL = enum(u1) {
                ///  Use internal sensory LPSD
                internal = 0x0,
                ///  Use external sensory LPSD
                external = 0x1,
            };

            pub const MODE_SEL = enum(u1) {
                ///  Audio mode selected as Mono
                mono = 0x0,
                ///  Audio mode selected as Stereo
                stereo = 0x1,
            };

            pub const MONO_CHN_SEL = enum(u1) {
                ///  Left channel in mono mode
                left_channel = 0x0,
                ///  Right channel in mono mode
                right_channel = 0x1,
            };

            pub const PDM_VOICE_SCENARIO = enum(u3) {
                ///  Choose voice scenario 1
                scenario1 = 0x0,
                ///  Choose voice scenario 2
                scenario2 = 0x1,
                ///  Choose voice scenario 3 mode 1
                scenario3_mode1 = 0x2,
                ///  Choose voice scenario 3 mode 2
                scenario3_mode2 = 0x3,
                ///  Choose voice scenario 3 mode 3
                scenario3_mode3 = 0x4,
                _,
            };

            pub const PDM_MIC_SWITCH_TO_AP = enum(u1) {
                ///  Don't switch to AP
                no_switch = 0x0,
                ///  Switch to AP
                @"switch" = 0x1,
            };

            pub const LPSD_MUX = enum(u1) {
                ///  Left channel pcm data to LPSD in stereo mode
                left_channel = 0x0,
                ///  Right channel pcm data to LPSD in stereo mode
                right_channel = 0x1,
            };

            pub const LPSD_NO = enum(u1) {
                ///  Enable hardware LPSD
                enable_hw = 0x0,
                ///  Disable HW LPSD
                disable_hw = 0x1,
            };

            pub const LPSD_VOICE_DETECTED_MASK = enum(u1) {
                ///  Unmask the interrupt
                unmask = 0x0,
                ///  Mask the interrupt
                mask = 0x1,
            };

            pub const DIV_MODE = enum(u1) {
                ///  Use PDM_LEFT in sampler
                left = 0x0,
                ///  Use PDM_RIGHT in sampler
                right = 0x1,
            };

            ///  Audio system configure register
            VOICE_CONFIG: mmio.Mmio(packed struct(u32) {
                ///  Select the source for digital mic signal
                DMIC_SEL: DMIC_SEL,
                ///  Select between external or internal sensory LSPD
                LPSD_SEL: LPSD_SEL,
                ///  Select either monoaural or stereo mode
                MODE_SEL: MODE_SEL,
                ///  Select either right channel in mono mode or left channel
                MONO_CHN_SEL: MONO_CHN_SEL,
                ///  Set to enable the I2S Deep Sleep mode
                I2S_DS_EN: u1,
                ///  Choose the PDM voice scenario
                PDM_VOICE_SCENARIO: PDM_VOICE_SCENARIO,
                ///  Set to switch mic to AP
                PDM_MIC_SWITCH_TO_AP: PDM_MIC_SWITCH_TO_AP,
                ///  Set to use LPSD DC Block
                LPSD_USE_DC_BLOCK: u1,
                ///  Choose the channel pcm data for LPSD in stereo mode
                LPSD_MUX: LPSD_MUX,
                ///  Set to disable HW LPSD
                LPSD_NO: LPSD_NO,
                ///  Set to enable the FPGA I2S
                I2S_FPGA_EN: u1,
                reserved15: u2 = 0,
                ///  AP_PDM_CKO_IN frequency divide-down ratio for AP clock detection
                DIV_AP: u3,
                ///  AP_PDM_CKO_IN clock detection window range
                DIV_WD: u6,
                ///  Set to flush FIFO
                FIFO_0_CLEAR: u1,
                ///  Set to Flush FIFO
                FIFO_1_CLEAR: u1,
                ///  Control the masking of the interrupt
                LPSD_VOICE_DETECTED_MASK: LPSD_VOICE_DETECTED_MASK,
                ///  Control the masking of the interrupt
                DMIC_VOICE_DETECTED_MASK: LPSD_VOICE_DETECTED_MASK,
                ///  Control the masking of the interrupt
                DMAC_BLK_DONE_MASK: LPSD_VOICE_DETECTED_MASK,
                ///  Control the masking of the interrupt
                DMAC_BUF_DONE_MASK: LPSD_VOICE_DETECTED_MASK,
                ///  Control the masking of the interrupt
                AP_PDM_CLK_IB_MASK: LPSD_VOICE_DETECTED_MASK,
                ///  Control the masking of the interrupt
                AP_PDM_CLK_OFF_MASK: LPSD_VOICE_DETECTED_MASK,
            }),
            ///  LPSD config register
            LPSD_CONFIG: mmio.Mmio(packed struct(u32) {
                ///  LPSD threshold parameter
                LPSD_THD: u16,
                ///  LPSD threshold parameter
                LPSD_RATIO_STOP: u8,
                ///  LPSD run parameter
                LPSD_RATIO_RUN: u8,
            }),
            ///  Audio DMAC configure register
            VOICE_DMA_CONFIG: mmio.Mmio(packed struct(u32) {
                ///  Set to enable Voice DMAC
                DMAC_EN: u1,
                ///  Set to start DMA
                DMAC_START: u1,
                ///  Set to Stop DMA
                DMAC_STOP: u1,
                ///  Set to indicate AHB clock is ready
                AHB_RDY: u1,
                ///  Select the AHB Burst Lenght in words
                AHB_BURST_LENGHT: u2,
                ///  Select the pingpong mode
                PINGPONG_MODE: u1,
                ///  Select how to process stereo buffer data
                STEREO_DUAL_BUF_MODE: u1,
                ///  AHB cycles between two consecutive AHB Bursts
                VOICE_DMAC_BURST_SPD: u8,
                padding: u16 = 0,
            }),
            ///  Audio DMAC length register
            VOICE_DMAC_LEN: mmio.Mmio(packed struct(u32) {
                ///  DMA block transfer length in words
                DMAC_BLK_LEN: u16,
                ///  DMA buffer transfer length in words
                DMAC_BUF_LEN: u16,
            }),
            ///  Audio DMAC Buffer offset
            VOICE_DMAC_FIFO: mmio.Mmio(packed struct(u32) {
                reserved16: u16 = 0,
                ///  buffer offset address in dual buffer mode
                DMAC_BUF_OFFSER: u16,
            }),
            ///  DMA0 dest address for the first buffer
            VOICE_DMAC_DST_ADDR0: mmio.Mmio(packed struct(u32) {
                ///  DMA0 dest address for the first buffer
                VOICE_DMAC_DST_ADDR0: u32,
            }),
            ///  DMA1 dest address for the first buffer
            VOICE_DMAC_DST_ADDR1: mmio.Mmio(packed struct(u32) {
                ///  DMA1 dest address for the first buffer
                VOICE_DMAC_DST_ADDR1: u32,
            }),
            ///  PDM2PCM core configure register
            PDM_CORE_CONFIG: mmio.Mmio(packed struct(u32) {
                ///  Set to enable PDM core
                PDM_CORE_CONFIG: u1,
                ///  Set to enable PDM Soft mute
                SOFT_MUTE: u1,
                ///  Select which divider to use in sampler
                DIV_MODE: DIV_MODE,
                ///  Set number of PDM_CLK during gain setting changes or soft mute
                S_CYCLES: u3,
                ///  Adjust high pass filter coefficients
                HP_GAIN: u4,
                ///  Set to disable high pass filter
                ADCHPD: u1,
                ///  PDM_CLK frquency divisor
                M_CLK_DIV: u2,
                ///  SINC decimation rate
                SINC_RATE: u7,
                ///  Left channel PGA gain
                PGA_L: u5,
                ///  Right channel PGA gain
                PGA_R: u5,
                ///  Input data sampling with PDM clock cycle delay
                DMICK_DLY: u1,
                ///  Status IN detection windows
                DIV_WD_MODE: u1,
            }),
            ///  Audio Status Register
            VOICE_STATUS: mmio.Mmio(packed struct(u32) {
                ///  Set if the FIFO is empty
                FIFO_0A_EMPTY: u1,
                ///  Set if the FIFO is full
                FIFO_0A_FULL: u1,
                ///  Set if there's a FIFO overflow
                FIFO_0A_OVERFLOW: u1,
                reserved4: u1 = 0,
                ///  Set if the FIFO is empty
                FIFO_0B_EMPTY: u1,
                ///  Set if the FIFO is full
                FIFO_0B_FULL: u1,
                ///  Set if there's a FIFO overflow
                FIFO_0B_OVERFLOW: u1,
                reserved8: u1 = 0,
                ///  Set if the FIFO is empty
                FIFO_1A_EMPTY: u1,
                ///  Set if the FIFO is full
                FIFO_1A_FULL: u1,
                ///  Set if there's a FIFO overflow
                FIFO_1A_OVERFLOW: u1,
                reserved12: u1 = 0,
                ///  Set if the FIFO is empty
                FIFO_1B_EMPTY: u1,
                ///  Set if the FIFO is full
                FIFO_1B_FULL: u1,
                ///  Set if there's a FIFO overflow
                FIFO_1B_OVERFLOW: u1,
                reserved16: u1 = 0,
                ///  Set if detected
                DMIC_VOICE_DETECTED_REG: u1,
                ///  Set if detected
                LPSD_VOICE_DETECTED_REG: u1,
                ///  Set if AP PDM clock is off
                AP_PDM_CLK_OFF_REG: u1,
                ///  Set if AP PDM clock is on
                AP_PDM_CLK_ON_REG: u1,
                ///  Set if done
                DMAC1_BUF_DONE_REG: u1,
                ///  Set if done
                DMAC1_BLK_DONE_REG: u1,
                ///  Set if done
                DMAC0_BUF_DONE_REG: u1,
                ///  Set if done
                DMAC0_BLK_DONE_REG: u1,
                padding: u8 = 0,
            }),
            ///  I2S master configure register
            I2S_CONFIG: mmio.Mmio(packed struct(u32) {
                ///  I2S_CLK divisor for WD_CLK generator
                I2S_LRCDIV: u12,
                ///  I2S_MASTER_CLK divisor for I2S_CLK generator
                I2S_BLKDIV: u6,
                ///  Set to activate inverting
                I2S_CLK_INV: u1,
                ///  Input sample data bit shift
                I2S_IWL: u2,
                padding: u11 = 0,
            }),
            ///  FIFO SRAM configure register
            FIFO_SRAM_CFG: mmio.Mmio(packed struct(u32) {
                ///  Test pin to bypass self-timed circuit
                SRAM_0A_TEST1: u1,
                ///  Read-Write margin Enable input
                SRAM_0A_RME: u1,
                ///  Read-Write margin Input for Left Channel 8KB FIFO
                SRAM_0A_RM: u4,
                ///  Test pin to bypass self-timed circuit
                SRAM_0B_TEST1: u1,
                ///  Read-Write margin Enable input
                SRAM_0B_RME: u1,
                ///  Read-Write margin Input for Left Channel 512B FIFO
                SRAM_0B_RM: u4,
                ///  Test pin to bypass self-timed circuit
                SRAM_1A_TEST1: u1,
                ///  Read-Write margin Enable input
                SRAM_1A_RME: u1,
                ///  Read-Write margin Input for Right Channel 8KB FIFO
                SRAM_1A_RM: u4,
                ///  Test pin to bypass self-timed circuit
                SRAM_1B_TEST1: u1,
                ///  Read-Write margin Enable input
                SRAM_1B_RME: u1,
                ///  Read-Write margin Input for Right Channel 512B FIFO
                SRAM_1B_RM: u4,
                padding: u8 = 0,
            }),
            ///  PDM core SRAM configure register
            PDMA_SRAM_CFG: mmio.Mmio(packed struct(u32) {
                ///  Test pin to bypass self-timed circuit
                PDM_SRAM_L_TEST1: u1,
                ///  Read-Write margin Enable Input
                PDM_SRAM_L_RME: u1,
                ///  Read-Write margin Input for Right Channel PDM SRAM
                PDM_SRAM_L_RM: u4,
                padding: u26 = 0,
            }),
            ///  Audio Debug Register
            DBG_MUX_CFG: mmio.Mmio(packed struct(u32) {
                ///
                ///  0000 => dbg_tp[7:0] = dbg_fifo_0a_wptr[7:0]
                ///  0001 => dbg_tp[7:0] = dbg_fifo_0a_rptr[7:0]
                ///  0010 => dbg_tp[7:0] = {1'b0, dbg_fifo_0a_rptr[10:8], 1'b0, dbg_fifo_0a_wptr[10:8]}
                ///  0011 => dbg_tp[7:0] = dbg_fifo_1a_wptr[7:0]
                ///  0100 => dbg_tp[7:0] = dbg_fifo_1a_rptr[7:0]
                ///  0101 => dbg_tp[7:0] = {1'b0, dbg_fifo_1a_rptr[10:8], 1'b0, dbg_fifo_1a_wptr[10:8]}
                ///  0110 => dbg_tp[7:0] = {2'd0, dbg_fifo_0b_wptr[5:0]}
                ///  0111 => dbg_tp[7:0] = {2'd0, dbg_fifo_0b_rptr[5:0]}
                ///  1000 => dbg_tp[7:0] = {2'd0, dbg_fifo_1b_wptr[5:0]}
                ///  1001 => dbg_tp[7:0] = {2'd0, dbg_fifo_1b_rptr[5:0]}
                ///  1010 => dbg_tp[7:0] = {2'd0, dbg_afifo_0_rptr[1:0], 2'd0, dbg_afifo_0_wptr[1:0]}
                ///  1011 => dbg_tp[7:0] ={2'd0, dbg_afifo_1_rptr[1:0], 2'd0, dbg_afifo_1_wptr[1:0]}
                ///  1100 => dbg_tp[7:0] = {PCM_DATA_L[7:1],VALID}
                ///  1101 => dbg_tp[7:0] = {PCM_DATA_L[15:9],VALID}
                ///  1110 => dbg_tp[7:0] = {PCM_DATA_R[7:1],VALID}
                ///  1111 => dbg_tp[7:0] = {PCM_DATA_R[15:9],VALID}
                DBG_MUX: u4,
                padding: u28 = 0,
            }),
        };

        ///  PIF Register (FPGA Programming interface)
        pub const CFG_CTL = extern struct {
            ///  Fabric Configuration Control Register
            CFG_CTL: mmio.Mmio(packed struct(u32) {
                ///  ARM firmware/software sets this register 1'b1 to Get the Control Right of Cfg_Ctl
                APB_SEL_CFG: u1,
                ///  ARM firmware/software sets this register 1'b1 to Select TRM Block
                APB_TRM_SEL: u1,
                ///  ARM firmware/software sets this register 1'b1 to Select TR Block
                APB_TR_SEL: u1,
                ///  ARM firmware/software sets this register 1'b1 to Select TLM Block
                APB_TLM_SEL: u1,
                ///  ARM firmware/software sets this register 1'b1 to Select TL Block
                APB_TL_SEL: u1,
                ///  ARM firmware/software sets this register 1'b1 to Select BRM Block
                APB_BRM_SEL: u1,
                ///  ARM firmware/software sets this register 1'b1 to Select BR Block
                APB_BR_SEL: u1,
                ///  ARM firmware/software sets this register 1'b1 to Select BLM Block
                APB_BLM_SEL: u1,
                ///  ARM firmware/software sets this register 1'b1 to Select BL Block
                APB_BL_SEL: u1,
                ///  ARM firmware/software sets this register 1'b1 to enable Partial Load
                APB_PARTIAL_LOAD: u1,
                ///  ARM firmware/software sets this register to set Word Line Data In
                APB_WL_DIN: u4,
                ///  ARM firmware/software sets this register 1'b1 and APB_CFG_WR 1'b0 to perform Configuration Read
                APB_CFG_RD: u1,
                ///  ARM firmware/software sets this register 1'b1 and APB_CFG_RD 1'b0 to perform Configuration Write
                APB_CFG_WR: u1,
                reserved31: u15 = 0,
                ///  Shift Register Power Gate Status: 1 in configuration mode, 0 in normal mode
                SW_PWR_GATE: u1,
            }),
            ///  Maximum Bit Length Count: ARM firmware/software sets this register 1'b1 to set the Maximum Bit Line Count
            MAX_BL_CNT: mmio.Mmio(packed struct(u32) {
                ///  Maximum Bit Length Count: ARM firmware/software sets this register 1'b1 to set the Maximum Bit Line Count
                MAX_BL_CNT: u32,
            }),
            ///  Maximum Word Length Count: ARM firmware/software sets this register 1'b1 to set the Maximum Word Line Count
            MAX_WL_CNT: mmio.Mmio(packed struct(u32) {
                ///  Maximum Word Length Count: ARM firmware/software sets this register 1'b1 to set the Maximum Word Line Count
                MAX_WL_CNT: u32,
            }),
            reserved4092: [4080]u8,
            ///  Configuration Data: ARM firmware/software Access this register to Read/Write the configuration bit cells.
            CFG_DATA: mmio.Mmio(packed struct(u32) {
                ///  Configuration Data: ARM firmware/software Access this register to Read/Write the configuration bit cells.
                CFG_DATA: u32,
            }),
            reserved16384: [12288]u8,
            ///  RAMFIFO0 Address: ARM firmware/software Access these registers to Read/Write the RAMFIFO0. From 0x8000 to 0x8FFC.
            RAMFIFO0: mmio.Mmio(packed struct(u32) {
                ///  RAMFIFO0 Address: ARM firmware/software Access these registers to Read/Write the RAMFIFO0. From 0x8000 to 0x8FFC.
                RAMFIFO0: u32,
            }),
            reserved20480: [4092]u8,
            ///  RAMFIFO1 Address: ARM firmware/software Access these registers to Read/Write the RAMFIFO1. From 0x9000 to 0x9FFC.
            RAMFIFO1: mmio.Mmio(packed struct(u32) {
                ///  RAMFIFO1 Address: ARM firmware/software Access these registers to Read/Write the RAMFIFO1. From 0x9000 to 0x9FFC.
                RAMFIFO1: u32,
            }),
            reserved24576: [4092]u8,
            ///  RAMFIFO2 Address: ARM firmware/software Access these registers to Read/Write the RAMFIFO2. From 0xA000 to 0xAFFC.
            RAMFIFO2: mmio.Mmio(packed struct(u32) {
                ///  RAMFIFO2 Address: ARM firmware/software Access these registers to Read/Write the RAMFIFO2. From 0xA000 to 0xAFFC.
                RAMFIFO2: u32,
            }),
            reserved28672: [4092]u8,
            ///  RAMFIFO3 Address: ARM firmware/software Access these registers to Read/Write the RAMFIFO3. From 0xB000 to 0xBFFC.
            RAMFIFO3: mmio.Mmio(packed struct(u32) {
                ///  RAMFIFO3 Address: ARM firmware/software Access these registers to Read/Write the RAMFIFO3. From 0xB000 to 0xBFFC.
                RAMFIFO3: u32,
            }),
        };

        ///  Clock Reset Unit
        pub const CRU = extern struct {
            pub const Clock_Source_Selection = enum(u2) {
                ///  Selects the High speed/Divided clock
                with_hs_clk = 0x0,
                ///  Selects the 32KHz oscillator
                with_32khz_clk = 0x1,
                _,
            };

            pub const Path_0_Gating_Control = enum(u1) {
                ///  Clock is stop
                stop = 0x0,
                ///  Clock is runnig
                run = 0x1,
            };

            pub const FB_C02_Domain_SW_Reset = enum(u1) {
                ///  Enable the software reset. FW need to disable it manually
                enable = 0x1,
                _,
            };

            pub const AD0_SW_RESET = enum(u1) {
                ///  Enable the software reset. FW need to disable it manually
                enable = 0x1,
                _,
            };

            pub const AHBWB_SW_RESET = enum(u1) {
                ///  Enable the software reset. FW need to disable it manually
                enable = 0x1,
                _,
            };

            pub const SPICLK_ALWAYS_ON = enum(u1) {
                ///  Internal SPI Clock (C00) will be gated off if SPI CS is de-asserted even SPI Clock on the PAD is still running.
                always_off = 0x0,
                ///  Internal SPIC Clock (C00) is running if SPI Clock on the PAD is toggling regardless of SPI CS value.
                always_on = 0x1,
            };

            pub const CRU_DEBUG_Select = enum(u4) {
                ///  Select clock C00 as the clock to debug
                monitor_C00_clock = 0x1,
                ///  Select clock C01 as the clock to debug
                monitor_C01_clock = 0x2,
                ///  Select clock C02 as the clock to debug
                monitor_C02_clock = 0x3,
                ///  Select clock C08X4 as the clock to debug
                monitor_C08X4_clock = 0x4,
                ///  Select clock C08X1 as the clock to debug
                monitor_C08X1_clock = 0x5,
                ///  Select clock C09 as the clock to debug
                monitor_C09_clock = 0x6,
                ///  Select clock C10 as the clock to debug
                monitor_C10_clock = 0x7,
                ///  Select clock C11 as the clock to debug
                monitor_C11_clock = 0x8,
                ///  Select clock CS as the clock to debug
                monitor_CS_clock = 0x9,
                ///  Select clock C16 as the clock to debug
                monitor_C16_clock = 0xa,
                ///  Select clock C19 as the clock to debug
                monitor_C19_clock = 0xb,
                ///  Select clock C20/C32 as the clock to debug
                monitor_C20_C32_clock = 0xc,
                ///  Select clock C21 as the clock to debug
                monitor_C21_clock = 0xd,
                ///  Select clock C23 as the clock to debug
                monitor_C23_clock = 0xe,
                ///  Select clock C30/C31 as the clock to debug
                monitor_C30_C31_clock = 0xf,
                _,
            };

            pub const C01_CLK_DIV_CG_ENUM = enum(u1) {
                ///  Clock is stop
                stop = 0x0,
                ///  Clock is runnig
                run = 0x1,
            };

            pub const C30_Path_0_Gating_Control = enum(u1) {
                ///  Clock is stop
                stop = 0x0,
                ///  Clock is runnig
                run = 0x1,
            };

            pub const CLK_DIVIDER_A_CG = enum(u1) {
                ///  Clock is stop
                stop = 0x0,
                ///  Clock is runnig
                run = 0x1,
            };

            pub const Clock_Source_Selection_1bit = enum(u1) {
                ///  Selects the High speed/Divided clock
                with_hs_clk = 0x0,
                ///  Selects the 32KHz oscillator
                with_32khz_clk = 0x1,
            };

            pub const ClockDividerMmio = packed struct(u32) {
                Clock_Divider_Ratio: u9,
                ///  Control if the clock divider is on
                Enable_Clock_Divider: u1,
                padding: u22 = 0,
            };

            pub const ClockSourceSelection = packed struct(u32) {
                ///  Select the clock source
                Clock_Source_Selection: Clock_Source_Selection,
                padding: u30 = 0,
            };

            ///  For Clock 10 (SYNC Up on A0 and AHB Interface of Batching Memory, AUDIO DMA, M4 SRAMs,M4 Bus Matrix and Trace block)
            CLK_CTRL_A_0: mmio.Mmio(ClockDividerMmio),
            ///  For Clock 10 (SYNC Up on A0 and AHB Interface of Batching Memory, AUDIO DMA, M4 SRAMs,M4 Bus Matrix and Trace block)
            CLK_CTRL_A_1: mmio.Mmio(ClockSourceSelection),
            ///  For Clock 2 (FB, A1 (Including CFGSM))
            CLK_CTRL_B_0: mmio.Mmio(ClockDividerMmio),
            ///  For Clock 2 (FB, A1 (Including CFGSM))
            CLK_CTRL_B_1: mmio.Mmio(ClockSourceSelection),
            ///  For Clock 8 X4 (FFE X4 clk)
            CLK_CTRL_C_0: mmio.Mmio(ClockDividerMmio),
            ///  For Clock 11 (To M4 peripherals - AHB/APB bridge, UART, WDT and TIMER)
            CLK_CTRL_D_0: mmio.Mmio(ClockDividerMmio),
            ///  For Clock 12 - Reserved
            CLK_CTRL_E_0: mmio.Mmio(ClockDividerMmio),
            ///  For Clock 12
            CLK_CTRL_E_1: mmio.Mmio(ClockSourceSelection),
            ///  For Clock 16 (FB)
            CLK_CTRL_F_0: mmio.Mmio(ClockDividerMmio),
            ///  For Clock 16 (FB)
            CLK_CTRL_F_1: mmio.Mmio(ClockSourceSelection),
            ///  For Clock 30 (PDM LEFT/RIGHT clk, I2S Master clk)
            CLK_CTRL_G_0: mmio.Mmio(ClockDividerMmio),
            ///  For Clock 19 (ADC)
            CLK_CTRL_H_0: mmio.Mmio(ClockDividerMmio),
            ///  For Clock 19 (ADC)
            CLK_CTRL_H_1: mmio.Mmio(ClockSourceSelection),
            ///  For Clock 21 (FB - additional clk)
            CLK_CTRL_I_0: mmio.Mmio(ClockDividerMmio),
            ///  For Clock 21 (FB - additional clk)
            CLK_CTRL_I_1: mmio.Mmio(ClockSourceSelection),
            reserved64: [4]u8,
            ///  Gating control for Clock 1
            C01_CLK_GATE: mmio.Mmio(packed struct(u32) {
                ///  To A0
                Path_0_Gating_Control: Path_0_Gating_Control,
                ///  To SDMA SRAM
                Path_1_Gating_Control: Path_0_Gating_Control,
                ///  To packet FIFO
                Path_2_Gating_Control: Path_0_Gating_Control,
                ///  To FFE
                Path_3_Gating_Control: Path_0_Gating_Control,
                ///  To AHB2APB Bridge /CFG DMA Bridge inside A1 , Allow M4 to configure SPI Master to load the code
                Path_4_Gating_Control: Path_0_Gating_Control,
                ///  To I2S module inside A1
                Path_5_Gating_Control: Path_0_Gating_Control,
                ///  To SDMA
                Path_6_Gating_Control: Path_0_Gating_Control,
                ///  Not specified
                Path_7_Gating_Control: Path_0_Gating_Control,
                reserved9: u1 = 0,
                ///  For SPT
                Path_9_Gating_Control: Path_0_Gating_Control,
                padding: u22 = 0,
            }),
            ///  Gating control for Clock 2
            C02_CLK_GATE: mmio.Mmio(packed struct(u32) {
                ///  To A1 (including CFGSM)
                Path_0_Gating_Control: Path_0_Gating_Control,
                ///  To FB
                Path_1_Gating_Control: Path_0_Gating_Control,
                ///  Not specified
                Path_2_Gating_Control: Path_0_Gating_Control,
                padding: u29 = 0,
            }),
            ///  Gating control for FFE X4 clock
            C08_X4_CLK_GATE: mmio.Mmio(packed struct(u32) {
                ///  To FFE X4 clk
                Path_0_Gating_Control: Path_0_Gating_Control,
                padding: u31 = 0,
            }),
            ///  Gating control for FFE X1 clock
            C08_X1_CLK_GATE: mmio.Mmio(packed struct(u32) {
                ///  To FFE X1 clk
                Path_0_Gating_Control: Path_0_Gating_Control,
                reserved2: u1 = 0,
                ///  To To A0
                Path_2_Gating_Control: Path_0_Gating_Control,
                ///  To To PF ASYNC FIFO 0
                Path_3_Gating_Control: Path_0_Gating_Control,
                padding: u28 = 0,
            }),
            ///  Gating control for Clock 10
            C10_FCLK_GATE: mmio.Mmio(packed struct(u32) {
                ///  To M4 Bus Matrix and Trace block
                Path_0_Gating_Control: Path_0_Gating_Control,
                ///  RWHC: To M4 SRAM Instance, M4S0~M4S3. This bit will be set if any of the Memories (M4S0~M4S3) been wakeup by Hardware.
                Path_1_Gating_Control: Path_0_Gating_Control,
                ///  RWHC: To M4 SRAM Instance, M4S4~M4S7. This bit will be set if any of the Memories (M4S4~M4S7) been wakeup by Hardware.
                Path_2_Gating_Control: Path_0_Gating_Control,
                ///  RWHC: To M4 SRAM Instance, M4S8~M4S11. This bit will be set if any of the Memories (M4S8~M4S11) been wakeup by Hardware.
                Path_3_Gating_Control: Path_0_Gating_Control,
                ///  RWHC: To M4 SRAM Instance, M4S12~M4S15. This bit will be set if any of the Memories (M4S12~M4S15) been wakeup by Hardware.
                Path_4_Gating_Control: Path_0_Gating_Control,
                ///  To AUDIO DMA
                Path_5_Gating_Control: Path_0_Gating_Control,
                ///  To the SYNC Up on A0 and AHB Interface of Batching Memory
                Path_6_Gating_Control: Path_0_Gating_Control,
                padding: u25 = 0,
            }),
            ///  Gating control for clock 11
            C11_CLK_GATE: mmio.Mmio(packed struct(u32) {
                ///  To M4 peripherals - AHB/APB bridge, UART, WDT and TIMER
                Path_0_Gating_Control: Path_0_Gating_Control,
                padding: u31 = 0,
            }),
            ///  Gating control for clock 12
            C12_CLK_GATE_Reserved: u32,
            ///  Gating control for SWD CS clock U
            CS_CLK_GATE: mmio.Mmio(packed struct(u32) {
                ///  To SWD Clk from PIN
                Path_0_Gating_Control: Path_0_Gating_Control,
                padding: u31 = 0,
            }),
            ///  Not specified
            CU_CLK_GATE_Reserved: u32,
            ///  Gating control for FB clock 16
            C16_CLK_GATE: mmio.Mmio(packed struct(u32) {
                ///  To SWD Clk from PIN
                Path_0_Gating_Control: Path_0_Gating_Control,
                padding: u31 = 0,
            }),
            ///  Not specified
            CLK_RESERVED_0: u32,
            ///  Gating control for ADC clock 19
            C19_CLK_GATE: mmio.Mmio(packed struct(u32) {
                ///  To ADC
                Path_0_Gating_Control: Path_0_Gating_Control,
                padding: u31 = 0,
            }),
            ///  Gating control for FB additional clock 21
            C21_CLK_GATE: mmio.Mmio(packed struct(u32) {
                ///  To FB (additional CLK)
                Path_0_Gating_Control: Path_0_Gating_Control,
                padding: u31 = 0,
            }),
            reserved128: [12]u8,
            ///  Packet FIFO power domain Software Reset.Once Program the SW Reset Bit to 1, the corresponding reset will be asserted immediately. Once Program the SW Reset Bit to 0, the corresponding reset will be de-asserted synchronous even the corresponding clock is not running. (Turn off by Clock gating cell)
            PF_SW_RESET: mmio.Mmio(packed struct(u32) {
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually.
                PF_FIFO_0_SW_RESET: u1,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually.
                PF_FIFO_1_SW_RESET: u1,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually.
                PF_FIFO_2_SW_RESET: u1,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually.
                PF_FIFO_8k_SW_RESET: u1,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually.(R08_P3 as well)
                PF_ASYNC_FIFO_0_SW_RESET: u1,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually.
                PF_Peripheral_SW_RESET: u1,
                padding: u26 = 0,
            }),
            ///  Once Program the SW Reset Bit to 1, the corresponding reset will be asserted immediately. Once Program the SW Reset Bit to 0, the corresponding reset will be de-asserted synchronous even the corresponding clock is not running. (Turn off by Clock gating cell)
            FFE_SW_RESET: mmio.Mmio(packed struct(u32) {
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually. (R01_P3_FFE as well)
                FFE_0_X1_SW_Reset: u1,
                padding: u31 = 0,
            }),
            ///  Once Program the SW Reset Bit to 1, the corresponding reset will be asserted immediately. Once Program the SW Reset Bit to 0, the corresponding reset will be de-asserted synchronous even the corresponding clock is not running. (Turn off by Clock gating cell)
            FB_SW_RESET: mmio.Mmio(packed struct(u32) {
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually.
                FB_C02_Domain_SW_Reset: FB_C02_Domain_SW_Reset,
                reserved2: u1 = 0,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually.
                FB_C09_Domain_SW_Reset: FB_C02_Domain_SW_Reset,
                reserved4: u1 = 0,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually.
                FB_C16_Domain_SW_Reset: FB_C02_Domain_SW_Reset,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually.
                FB_C21_Domain_SW_Reset: FB_C02_Domain_SW_Reset,
                padding: u26 = 0,
            }),
            ///  Once Program the SW Reset Bit to 1, the corresponding reset will be asserted immediately. Once Program the SW Reset Bit to 0, the corresponding reset will be de-asserted synchronous even the corresponding clock is not running. (Turn off by Clock gating cell)
            A1_SW_RESET: mmio.Mmio(packed struct(u32) {
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually. -> This is used to Reset the SPT
                SPT_SW_RESET: u1,
                reserved2: u1 = 0,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually. -> This is used to Reset the CfgSM/SPI Master and Related FIFO, DMA and AHB Master
                CfgSM_SW_RESET: u1,
                padding: u29 = 0,
            }),
            ///  Once Program the SW Reset Bit to 1, the corresponding reset will be asserted immediately. Once Program the SW Reset Bit to 0, the corresponding reset will be de-asserted synchronous even the corresponding clock is not running. (Turn off by Clock gating cell)
            AUDIO_MISC_SW_RESET: mmio.Mmio(packed struct(u32) {
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually. ==> For DMA Power Domain.
                AD0_SW_RESET: AD0_SW_RESET,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually. ==> For DMA Power Domain.
                AD1_SW_RESET: AD0_SW_RESET,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually. ==> For DMA Power Domain.
                AD2_SW_RESET: AD0_SW_RESET,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually. ==> For DMA Power Domain.
                AD3_SW_RESET: AD0_SW_RESET,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually. ==> For DMA Power Domain.
                AD4_SW_RESET: AD0_SW_RESET,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually. ==> For DMA Power Domain.
                AD5_SW_RESET: AD0_SW_RESET,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually. ==> For DMA Power Domain.
                DMA_SW_RESET: AD0_SW_RESET,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually. ==> For I2S Power Domain. Note: It will only reset the AHB interface R01, but it will not reset R32 path. Suggest to power down, then power on I2S if Software Reset is needed
                I2S_SW_RESET: AD0_SW_RESET,
                padding: u24 = 0,
            }),
            ///  Not specified. FAFIFO1, AHBWB Software Reset control
            FB_MISC_SW_RST_CTL: mmio.Mmio(packed struct(u32) {
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually. ==> For R40
                AHBWB_SW_RESET: AHBWB_SW_RESET,
                ///  1'b1 : Enable the Software Reset. FW need to disable it manually. ==> For R41
                PFAFIFO1_SW_RESET: AHBWB_SW_RESET,
                padding: u30 = 0,
            }),
            reserved256: [104]u8,
            ///  This Clock is used to delay the Clock gating control signals from PMU. The PMU will monitor the feedback/delayed Clock Gating Control signals to ensure the clocks are OFF before jump to next state. The Firmware needs to Configure this divider to ensure there delay time is longer enough. C23 Clock needs to be 2/3 of the lowest clock frequency of other clocks. For Example, if the Lowest clock frequency of other clocks are 5, then C23 should be lower than 3.33MHz (Or the clock frequency of other clocks should be at least 1.5 times faster than C23.)
            CLK_CTRL_PMU: mmio.Mmio(ClockDividerMmio),
            ///  General reg and SPI ALWAYS ON control
            CRU_GENERAL: mmio.Mmio(packed struct(u32) {
                ///  Controls wether the SPI clock is always on or not
                SPICLK_ALWAYS_ON: SPICLK_ALWAYS_ON,
                ///  General purpose register
                General: u7,
                padding: u24 = 0,
            }),
            ///  CRU Debug registers
            CRU_DEBUG: mmio.Mmio(packed struct(u32) {
                ///  Select the clock to be monitored
                CRU_DEBUG_Select: CRU_DEBUG_Select,
                padding: u28 = 0,
            }),
            reserved272: [4]u8,
            ///  Source Clock is C10 (CLK to SDMA,I2S module Inside A1, AHB2APB Bridge /CFG DMA Bridge inside A1 , FFE, Packet FIFO,SDMA,A0 ) If Bit 4 is 0, any change on Bit 3:0 will not take effect. And bit 4 and bit 3:0 can not change at same time.
            C01_CLK_DIV: mmio.Mmio(packed struct(u32) {
                ///  The input clock frequency will be divided and generate the corresponding clock output. div is reg value + 1
                C01_CLK_DIV: u4,
                ///  This bit is used to turn off the clock for the SYNC down Divider
                C01_CLK_DIV_CG: C01_CLK_DIV_CG_ENUM,
                padding: u27 = 0,
            }),
            ///  Source Clock is C10 (CLK to Voice APB interface, PIF, FB). If Bit 4 is 0, any change on Bit 3:0 will not take effect. And bit 4 and bit 3:0 can not change at same time.
            C09_CLK_DIV: mmio.Mmio(packed struct(u32) {
                ///  The input clock frequency will be divided and generate the corresponding clock output. div is reg value + 1
                C01_CLK_DIV: u4,
                ///  This bit is used to turn off the clock for the SYNC down Divider
                C01_CLK_DIV_CG: C01_CLK_DIV_CG_ENUM,
                padding: u27 = 0,
            }),
            ///  Source Clock is C30 (LPSD CLK).If Bit 4 is 0, any change on Bit 3:0 will not take effect. And bit 4 and bit 3:0 can not change at same time.
            C31_CLK_DIV: mmio.Mmio(packed struct(u32) {
                ///  The input clock frequency will be divided and generate the corresponding clock output. div is reg value + 1
                C01_CLK_DIV: u4,
                ///  This bit is used to turn off the clock for the SYNC down Divider
                C01_CLK_DIV_CG: C01_CLK_DIV_CG_ENUM,
                padding: u27 = 0,
            }),
            ///  Gating control for clock 09
            C09_CLK_GATE: mmio.Mmio(packed struct(u32) {
                ///  To voice APB interface
                Path_0_Gating_Control: Path_0_Gating_Control,
                ///  To PIF
                Path_1_Gating_Control: Path_0_Gating_Control,
                ///  To FB
                Path_2_Gating_Control: Path_0_Gating_Control,
                padding: u29 = 0,
            }),
            ///  Gating control for clocks 30-31
            C30_C31_CLK_GATE: mmio.Mmio(packed struct(u32) {
                ///  To PDM LEFT CLK
                C30_Path_0_Gating_Control: C30_Path_0_Gating_Control,
                ///  To PDM RIGHT CLK
                C30_Path_1_Gating_Control: C30_Path_0_Gating_Control,
                ///  To I2S Master Clk
                C30_Path_2_Gating_Control: C30_Path_0_Gating_Control,
                ///  To LPSD clk
                C31_Path_0_Gating_Control: C30_Path_0_Gating_Control,
                padding: u28 = 0,
            }),
            ///  Control for divider gates in different clocks
            CLK_DIVIDER_CLK_GATING: mmio.Mmio(packed struct(u32) {
                ///  To C10,C01,C09 (SYNC Up on A0, AHB Interface of Batching Memory, AUDIO DMA, M4 SRAMs,M4 Bus Matrix , M4 Trace block, Debug controller, SDMA,I2S module Inside A1, AHB2APB Bridge /CFG DMA Bridge inside A1 , FFE, Packet FIFO,SDMA,A0, Voice APB interface, PIF, FB). Note: Firmware Should NOT program this bit to 0.
                CLK_DIVIDER_A_CG: CLK_DIVIDER_A_CG,
                ///  To C02 (FB, A1 (Including CFGSM))
                CLK_DIVIDER_B_CG: CLK_DIVIDER_A_CG,
                ///  To C08 (FFE X4, X1)
                CLK_DIVIDER_C_CG: CLK_DIVIDER_A_CG,
                ///  To C11 (M4 peripherals - AHB/APB bridge, UART, WDT and TIMER)
                CLK_DIVIDER_D_CG: CLK_DIVIDER_A_CG,
                reserved5: u1 = 0,
                ///  To C16 (FB)
                CLK_DIVIDER_F_CG: CLK_DIVIDER_A_CG,
                ///  To C30, C31 (PDM LEFT/RIGHT Clk, I2S_MASTER clk, LPSD CLK)
                CLK_DIVIDER_G_CG: CLK_DIVIDER_A_CG,
                ///  To C19 (ADC)<F11>
                CLK_DIVIDER_H_CG: CLK_DIVIDER_A_CG,
                ///  To C21 (FB)
                CLK_DIVIDER_I_CG: CLK_DIVIDER_A_CG,
                ///  To C23 (PMU clk gating control)
                CLK_DIVIDER_J_CG: CLK_DIVIDER_A_CG,
                padding: u22 = 0,
            }),
            reserved304: [8]u8,
            ///  For Clock 2 (FB, A1 (Including CFGSM))
            CLK_SWITCH_FOR_B: mmio.Mmio(packed struct(u32) {
                ///  Choose between High Speed Clock or 32Khz oscillator
                Clock_Source_Selection: Clock_Source_Selection_1bit,
                padding: u31 = 0,
            }),
            ///  For Clock 8 X4 (FFE X4 clk)
            CLK_SWITCH_FOR_C: mmio.Mmio(packed struct(u32) {
                ///  Choose between High Speed Clock or 32Khz oscillator
                Clock_Source_Selection: Clock_Source_Selection_1bit,
                padding: u31 = 0,
            }),
            ///  For Clock 11 (To M4 peripherals - AHB/APB bridge, UART, WDT and TIMER)
            CLK_SWITCH_FOR_D: mmio.Mmio(packed struct(u32) {
                ///  Choose between High Speed Clock or 32Khz oscillator
                Clock_Source_Selection: Clock_Source_Selection_1bit,
                padding: u31 = 0,
            }),
            ///  For Clock 19 (ADC)
            CLK_SWITCH_FOR_H: mmio.Mmio(packed struct(u32) {
                ///  Choose between High Speed Clock or 32Khz oscillator
                Clock_Source_Selection: Clock_Source_Selection_1bit,
                padding: u31 = 0,
            }),
            ///  For CLK 23 (PMU clk gating control)
            CLK_SWITCH_FOR_J: mmio.Mmio(packed struct(u32) {
                ///  Choose between High Speed Clock or 32Khz oscillator
                Clock_Source_Selection: Clock_Source_Selection_1bit,
                padding: u31 = 0,
            }),
            ///  To C30(PDM LEFT/RIGHT Clk, I2S_MASTER)
            CLK_SWITCH_FOR_G: mmio.Mmio(packed struct(u32) {
                ///  Choose between High Speed Clock or 32Khz oscillator
                Clock_Source_Selection: Clock_Source_Selection_1bit,
                padding: u31 = 0,
            }),
        };

        ///  Direct Memory Access peripheral
        pub const DMA = extern struct {
            pub const dma_herror_mask = enum(u1) {
                ///  Mask the interrupt
                mask = 0x0,
                ///  Unmask the interrupt
                unmask = 0x1,
            };

            ///  DMA Control : this register is only accessable when the dma or cfg_sm is not selecting the dmas_mux.
            DMA_CTRL: mmio.Mmio(packed struct(u32) {
                ///  write a 1: Enable, write a 0: no affect, reads dma_enb
                dma_start: u1,
                ///  write a 1: Stop DMA and disable, clears DMA_DONE, write a 0: no affect, reads dma_done
                dma_stop: u1,
                ///  0: DMA to AHB, 1: DMA to header register
                dma_ahb_sel: u1,
                ///  1: AHB hsel is asserted, 0: not asserted
                dma_hsel: u1,
                ///  1: AHB htrans[0] is asserted, 0: not asserted
                dma_htrans_0: u1,
                ///  1: AHB htrans[1] is asserted, 0: not asserted
                dma_htrans_1: u1,
                ///  1: AHB hready is asserted, 0: not asserted
                dma_hready: u1,
                ///  1: DMA transfer is pending, 0: nothing pending
                dma_xfr_pending: u1,
                ///  1: AHB bridge transfer is pending, 0: nothing pending
                bridge_xfr_pending: u1,
                padding: u23 = 0,
            }),
            ///  DMA destination address : this register is only accessable when the dma or cfg_sm is not selecting the dmas_mux.
            DMA_DEST_ADDR: mmio.Mmio(packed struct(u32) {
                ///  DMA output data address : this register is only accessable when the dma or cfg_sm is not selecting the dmas_mux.
                dma_dest_addr: u32,
            }),
            ///  DMA transfer count in frames (8 bit) (minus 1) : this register is only accessable when the dma or cfg_sm is not selecting the dmas_mux.
            DMA_XFER_CNT: mmio.Mmio(packed struct(u32) {
                ///  number of frames for DMA to transfer (minus 1). Max SPI transfer count is 2^16=64k frames
                dma_xfr_cnt: u26,
                padding: u6 = 0,
            }),
            ///  Header values read from EEPROM : this register is only accessable when the dma or cfg_sm is not selecting the dmas_mux.
            CFG_FLASH_HEADER: mmio.Mmio(packed struct(u32) {
                ///  number of double words (8 bytes) for the SPI to transfer (minus 1)
                dma_boot_xfr_size: u16,
                ///  SPI data clock out divides the ssi_clk (value in bytes*2)
                dma_spi_clik_divide: u8,
                ///  Device ID
                dma_device_id: u8,
            }),
            ///  DMA interrupts
            DMA_INTR: mmio.Mmio(packed struct(u32) {
                ///  1: hresp=1, 0: hresp didn't go to 1, write one to clr
                dma_herror: u1,
                ///  1: rx threshold was hit, 0:threshold was not hit. This is before external mask bit.
                rx_data_available: u1,
                ///  1: A ahb FIFO bridge overflow occurred, 0: no overflow occurred
                ahb_bridge_fifo_overflow: u1,
                ///  SPIM Transmit FIFO empty
                spim_ssi_txe_intr: u1,
                ///  SPIM Transmit FIFO overflow
                spim_ssi_txo_intr: u1,
                ///  SPIM Receive FIFO threshold
                spim_ssi_rxf_intr: u1,
                ///  SPIM Receive FIFO overflow
                spim_ssi_rxo_intr: u1,
                ///  SPIM Receive FIFO underflow
                spim_ssi_rxu_intr: u1,
                ///  SPIM master interrupt
                spim_ssi_mst_intr: u1,
                padding: u23 = 0,
            }),
            ///  DMA interrupt mask
            DMA_INTR_MASK: mmio.Mmio(packed struct(u32) {
                ///  1: disable interrupt, 0:enable interrupt
                dma_herror_mask: dma_herror_mask,
                ///  1: mask rx data available, 0:don't mask
                rx_data_available_mask: dma_herror_mask,
                ///  1: Mask the ahb FIFO bridge overflow, 0: interrupts are enabled
                ahb_bridge_fifo_overflow_mask: dma_herror_mask,
                padding: u29 = 0,
            }),
        };

        ///  Flexible Fusion Engine registers
        pub const ExtRegsFFE = extern struct {
            pub const slave_sel = enum(u2) {
                ///  Select i2c_0 as the sensor that will be accessed by the Wishbone Master
                i2c_0 = 0x0,
                ///  Select i2c_1 as the sensor that will be accessed by the Wishbone Master
                i2c_1 = 0x1,
                ///  Select spi_0 as the sensor that will be accessed by the Wishbone Master
                spi_0 = 0x2,
                _,
            };

            pub const wb_ms_wen = enum(u1) {
                ///  read
                read = 0x0,
                ///  write
                write = 0x1,
            };

            pub const mux_wb_sm = enum(u1) {
                ///  Select SM WB Master.
                sm_wishbone_master = 0x0,
                ///  Select WB Master.
                wishbone_master = 0x1,
            };

            pub const i2c0_mux_sel = enum(u1) {
                ///  Let SM1 control the port.
                sm1_as_controller = 0x0,
                ///  Let Wishbone Master control the port
                wb_master_as_controller = 0x1,
            };

            pub const i2c2_sel = enum(u1) {
                ///  Select i2c1 as i2c2
                i2c1 = 0x0,
                ///  Select i2c2 as i2c2
                i2c2 = 0x1,
            };

            pub const SM_MULT_WR_INTR_EN = enum(u1) {
                ///  Mask the interrupt event
                mask = 0x0,
                ///  Unmask the interrupt event
                unmask = 0x1,
            };

            pub const FFE_TOP_DEBUG_SEL = enum(u2) {
                ///  Select sm0
                sm0 = 0x0,
                ///  Select sm1
                sm1 = 0x1,
                ///  Select ffe0
                ffe0 = 0x2,
                _,
            };

            ///  Wishbone master address selection
            ADDR: mmio.Mmio(packed struct(u32) {
                ///  Slave address register via Wishbone master
                Addr: u3,
                reserved6: u3 = 0,
                ///  MSB to select which which slave accessed by WB master
                slave_sel: slave_sel,
                padding: u24 = 0,
            }),
            ///  I2C slave data register via WishBone master
            WDATA: mmio.Mmio(packed struct(u32) {
                ///  I2C slave data via WB
                WDATA: u8,
                padding: u24 = 0,
            }),
            ///  Control and status register
            CSR: mmio.Mmio(packed struct(u32) {
                ///  Wishbone master start transactions. This bit is self clearing.
                wb_ms_start: u1,
                ///  Wishbone master write enable.
                wb_ms_wen: wb_ms_wen,
                ///  Mux select between SM and WB masters.
                mux_wb_sm: mux_wb_sm,
                ///  Indicates if the Wishbone is busy
                BUSY: u1,
                ///  Indicates if there's a FFE push operation overflow
                OVFL: u1,
                ///  I2C_0 wishbone control mux select
                i2c0_mux_sel: i2c0_mux_sel,
                ///  I2C_1 wishbone control mux select
                i2c1_mux_sel: i2c0_mux_sel,
                ///  spi_0 wishbone control mux select
                spi0_mux_sel: i2c0_mux_sel,
                padding: u24 = 0,
            }),
            ///  Read data from I2C to Wishbone master is registered
            RDATA: mmio.Mmio(packed struct(u32) {
                ///  Read data from I2C to Wishbone master is registered
                RDATA: u8,
                padding: u24 = 0,
            }),
            reserved20: [4]u8,
            ///  SRAM Test control register 1
            SRAM_TEST_REG1: mmio.Mmio(packed struct(u32) {
                ///  SM1_TEST1 control for FFE SRAM
                SM1_TEST1: u1,
                ///  SM1_RME control for FFE SRAM
                SM1_RME: u1,
                ///  SM1_RM control for FFE SRAM
                SM1_RM: u4,
                ///  SM0_TEST1 control for FFE SRAM
                SM0_TEST1: u1,
                ///  SM0_RME control for FFE SRAM
                SM0_RME: u1,
                ///  SM0_RM control for FFE SRAM
                SM0_RM: u4,
                ///  CM8k_TEST1 control for FFE SRAM
                CM8k_TEST1: u1,
                ///  CM8k_RME control for FFE SRAM
                CM8k_RME: u1,
                ///  CM8k_RM control for FFE SRAM
                CM8k_RM: u4,
                ///  CM2k_TEST1 control for FFE SRAM
                CM2k_TEST1: u1,
                ///  CM2k_RME control for FFE SRAM
                CM2k_RME: u1,
                ///  CM2k_RM control for FFE SRAM
                CM2k_RM: u4,
                ///  DM0_TEST1 control for FFE SRAM
                DM0_TEST1: u1,
                ///  DM0_RME control for FFE SRAM
                DM0_RME: u1,
                ///  DM0_RM control for FFE SRAM
                DM0_RM: u4,
                ///  DM1_TEST1 control for FFE SRAM
                DM1_TEST1: u1,
                ///  DM1_RME control for FFE SRAM
                DM1_RME: u1,
            }),
            ///  SRAM Test control register 2
            SRAM_TEST_REG2: mmio.Mmio(packed struct(u32) {
                ///  DM0_RM control for FFE SRAM
                DM1_RM: u4,
                ///  DM2_TEST1 control for FFE SRAM
                DM2_TEST1: u1,
                ///  DM2_RME control for FFE SRAM
                DM2_RME: u1,
                ///  DM0_RM control for FFE SRAM
                DM2_RM: u4,
                ///  DM3_TEST1 control for FFE SRAM
                DM3_TEST1: u1,
                ///  DM3_RME control for FFE SRAM
                DM3_RME: u1,
                ///  DM3_RM control for FFE SRAM
                DM3_RM: u4,
                padding: u16 = 0,
            }),
            reserved32: [4]u8,
            ///  Flexible Fusion Engine status and control register
            FFE_CSR: mmio.Mmio(packed struct(u32) {
                ///  Select wich i2c is taken as i2c
                i2c2_sel: i2c2_sel,
                ///  i2c0 dynamic pull-up enable
                i2c0_dyn_pullup_en: u1,
                ///  i2c1 dynamic pull-up enable
                i2c1_dyn_pullup_en: u1,
                ///  i2c2 dynamic pull-up enable
                i2c2_dyn_pullup_en: u1,
                padding: u28 = 0,
            }),
            reserved56: [20]u8,
            ///  Combined Flexible Fusion Engine debug signals
            FFE_DBG_COMBINED: mmio.Mmio(packed struct(u32) {
                ///  Sensor memory 0 debug signals
                sm0_SM_debug: u8,
                ///  Sensor memory 1 debug signals
                sm1_SM_debug: u8,
                ///  ffe0 debug signals
                ffe0_debug: u8,
                padding: u8 = 0,
            }),
            reserved256: [196]u8,
            ///  Commands for the Flexible Fusion Engine
            CMD: mmio.Mmio(packed struct(u32) {
                ///  When a '1' is written to this location, causes the FFE to execute one complete run of its algorithm; reads as 0
                RUN_FFE0_ONCE: u1,
                ///  When a '1' is written to this location, causes the FFE1 to start; reads as 0
                RUN_FFE1: u1,
                ///  When a '1' is written to this location, causes the SM0 to run once; reads as 0
                RUN_SM0_ONCE: u1,
                ///  When a '1' is written to this location, causes the SM1 to run once; reads as 0
                RUN_SM1_ONCE: u1,
                padding: u28 = 0,
            }),
            reserved264: [4]u8,
            ///  Varied interrupt configurations
            INTERRUPT: mmio.Mmio(packed struct(u32) {
                ///  This bit is set when an FFE tries to write to more that one FIFO simultaneously. The FIFO PUSH value must be one hot, with only one pushd asserted.
                SM_MULT_WR_INTR: u1,
                ///  This bit is set when the FFE does not complete the algorithm by the time the next sample period begins. This bit can only be cleared by issuing a device reset (software reset, or global reset via the Reset pin).
                PFE0_OVERRUN: u1,
                reserved4: u2 = 0,
                ///  This bit is set when the SM does not complete the algorithm by the time the next sample period begins. This bit can only be cleared by issuing a device reset (software reset, or global reset via the Reset pin).
                FFE0_SM1_OBERRUN: u1,
                ///  This bit is set when the SM does not complete the algorithm by the time the next sample period begins. This bit can only be cleared by issuing a device reset (software reset, or global reset via the Reset pin).
                FFE0_SM0_OBERRUN: u1,
                ///  This bit is set when the I2C Master receives a NACK when transmitting a device address. The I2C Master is used by the Sensor Manager to retrieve sensor data.
                I2C_MS_1_ERROR: u1,
                ///  This bit is set when the I2C Master receives a NACK when transmitting a device address. The I2C Master is used by the Sensor Manager to retrieve sensor data.
                I2C_MS_0_ERROR: u1,
                ///  This bit is set when there is an access to the memory while it is in low power (deep sleep or shut down)
                CM_8k_LP_INTR: u1,
                ///  This bit is set when there is an access to the memory while it is in low power (deep sleep or shut down)
                DM0_LP_INTR: u1,
                ///  This bit is set when there is an access to the memory while it is in low power (deep sleep or shut down)
                DM1_LP_INTR: u1,
                ///  This bit is set when there is an access to the memory while it is in low power (deep sleep or shut down)
                SM0_LP_INTR: u1,
                ///  This bit is set when there is an access to the memory while it is in low power (deep sleep or shut down)
                SM1_LP_INTR: u1,
                ///  This bit is set when there is a break point match in FFE0
                FFE0_BP_MATCH_INTR: u1,
                ///  This bit is set when the FFE does not complete the algorithm by the time the next sample period begins.
                FFE1_OVERRUN: u1,
                ///  This bit is set when the FFE pushes to the PKFB causing an overflow
                PKFB_OVF_INTR: u1,
                ///  This bit is set when there is a break point match in SM0
                SM0_BP_MATCH_INTR: u1,
                ///  This bit is set when there is a break point match in SM1
                SM1_BP_MATCH_INTR: u1,
                ///  This bit is set when there is an interrupt request from SPI_MS for sensor
                SPI_MS_INTR: u1,
                ///  This bit is set when there is an access to the memory while it is in low power (deep sleep or shut down)
                CM_2k_LP_INTR: u1,
                ///  This bit is set when there is an access to the memory while it is in low power (deep sleep or shut down)
                DM2_LP_INTR: u1,
                ///  This bit is set when there is an access to the memory while it is in low power (deep sleep or shut down)
                DM3_LP_INTR: u1,
                ///  This bit is set when there is a bus error on the AHB bus (HRESP=1).
                ahbm_bus_error_INTR: u1,
                padding: u9 = 0,
            }),
            ///  Control the masking for different Flexible Fusion Engine interrupts
            INTERRUPT_EN: mmio.Mmio(packed struct(u32) {
                ///  Set to enable the interrupt, leave cleared to mask
                SM_MULT_WR_INTR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                FFE0_OVERRUN_EN: SM_MULT_WR_INTR_EN,
                reserved4: u2 = 0,
                ///  Set to enable the interrupt, leave cleared to mask
                FFE0_SM1_OVERRUN_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                FFE0_SM0_OVERRUN_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                I2C_MS_1_ERROR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                I2C_MS_0_ERROR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                CM_8k_LP_INTR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                DM0_LP_INTR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                DM1_LP_INTR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                SM0_LP_INTR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                SM1_LP_INTR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                FFE0_BP_MATCH_INTR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                FFE1_OVERRUN_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                PKFB_OVF_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                SM0_BP_MATCH_INTR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                SM1_BP_MATCH_INTR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                SPI_MS_INTR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                CM_2k_LP_INTR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                DM2_LP_INTR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                DM3_LP_INTR_EN: SM_MULT_WR_INTR_EN,
                ///  Set to enable the interrupt, leave cleared to mask
                ahbm_bus_error_intr_en: SM_MULT_WR_INTR_EN,
                padding: u9 = 0,
            }),
            ///  FFE status register
            STATUS: mmio.Mmio(packed struct(u32) {
                ///  This bit is set whenever the Sensor Manager is busy.
                SM0_BUSY: u1,
                ///  This bit is set whenever the Sensor Manager is busy.
                SM1_BUSY: u1,
                ///  This bit is set whenever the FFE0 is busy.
                FFE0_BUSY: u1,
                ///  This bit is set whenever the FFE1 is busy.
                FFE1_BUSY: u1,
                ///  This is the ffe0 background thread status
                FFE0_BG_FLAG: u1,
                ///  This is the ffe0 background thread status
                FFE0_FG_FLAG: u1,
                padding: u26 = 0,
            }),
            ///  Mailbox register to the FFE. This register can be set by system software to send a message or configuration information to the FFE as it runs its algorithm, thus affecting the algorithm while it is running. A special instruction may be used in the algorithm to read this mailbox register.
            MAILBOX_TO_FFE0: mmio.Mmio(packed struct(u32) {
                ///  Mailbox register to the FFE. This register can be set by system software to send a message or configuration information to the FFE as it runs its algorithm, thus affecting the algorithm while it is running. A special instruction may be used in the algorithm to read this mailbox register.
                MAILBOX_TO_FFE0: u32,
            }),
            reserved288: [8]u8,
            ///  SM0/SM1 run time address
            SM_RUNTIME_ADDR: mmio.Mmio(packed struct(u32) {
                ///  SM0/SM1 run time address
                SM_RUNTIME_ADDR: u10,
                padding: u22 = 0,
            }),
            ///  Used to toggle signal used to signal when a new value has been written.
            SM0_RUNTIME_ADDR_CTRL: mmio.Mmio(packed struct(u32) {
                ///  Write a '1' to Toggle signal used to signal when a new value has been written
                SM0_RUNTIME_ADDR_CTRL: u1,
                padding: u31 = 0,
            }),
            ///  Used to toggle signal used to signal when a new value has been written.
            SM1_RUNTIME_ADDR_CTRL: mmio.Mmio(packed struct(u32) {
                ///  Write a '1' to Toggle signal used to signal when a new value has been written
                SM1_RUNTIME_ADDR_CTRL: u1,
                padding: u31 = 0,
            }),
            ///  SM current program counter
            SM0_RUNTIME_ADDR_CUR: mmio.Mmio(packed struct(u32) {
                ///  SM current program counter
                SM0_RUNTIME_ADDR_CUR: u10,
                padding: u22 = 0,
            }),
            ///  SM current program counter
            SM1_RUNTIME_ADDR_CUR: mmio.Mmio(packed struct(u32) {
                ///  SM current program counter
                SM1_RUNTIME_ADDR_CUR: u10,
                padding: u22 = 0,
            }),
            reserved320: [12]u8,
            ///  SM Debug selection
            SM0_DEBUG_SEL: mmio.Mmio(packed struct(u32) {
                ///  SM Debug selection
                SM0_DEBUG_SEL: u8,
                padding: u24 = 0,
            }),
            ///  SM Debug selection
            SM1_DEBUG_SEL: mmio.Mmio(packed struct(u32) {
                ///  SM Debug selection
                SM1_DEBUG_SEL: u8,
                padding: u24 = 0,
            }),
            ///  Debug Selection
            FFE_DEBUG_SEL: mmio.Mmio(packed struct(u32) {
                ///  SM0 LS debug slection
                FFE_DEBUG_SEL_SM0: u8,
                ///  SM1 LS debug slection
                FFE_DEBUG_SEL_SM1: u8,
                ///  FFE0 LS debug slection
                FFE_DEBUG_SEL_FFE0: u8,
                ///  FFE_TOP_MS debug slection
                FFE_TOP_DEBUG_SEL: FFE_TOP_DEBUG_SEL,
                padding: u6 = 0,
            }),
            reserved336: [4]u8,
            ///  Break point control
            FFE0_BREAK_POINT_CFG: mmio.Mmio(packed struct(u32) {
                ///  break point execution -- 0 : Disabled -- 1 : Enabled
                FFE0_BP_EN: u1,
                ///  This causes the FFE to immediately halt execution.
                FFE0_FORCE_STOP: u1,
                padding: u30 = 0,
            }),
            ///  Seems to be another breakpoint control register
            FFE0_BREAK_POINT_CONT: mmio.Mmio(packed struct(u32) {
                ///  This restarts FFE code execution following a pause due to reaching a 'break point'.
                FFE0_BP_CONT: u1,
                ///  This is a single, host controlled input toggle signal, Break Point Match Continue. Software uses this toggle signal to resume code execution from the Break Point condition.
                SM0_BP_CONT: u1,
                ///  This is a single, host controlled input toggle signal, Break Point Match Continue. Software uses this toggle signal to resume code execution from the Break Point condition.
                SM1_BP_CONT: u1,
                padding: u29 = 0,
            }),
            ///  FFE break point status register
            FFE0_BREAK_POINT_STAT: mmio.Mmio(packed struct(u32) {
                ///  This signals that a 'break point' has been reached and FFE execution is paused.
                FFE0_BP_MATCH: u1,
                ///  SM Break Point Match signal output to the host that notifies the host that the break point condition has been detected.
                SM0_BP_MATCH: u1,
                ///  SM Break Point Match signal output to the host that notifies the host that the break point condition has been detected.
                SM1_BP_MATCH: u1,
                padding: u29 = 0,
            }),
            reserved352: [4]u8,
            ///  These registers hold the xPC (program counter) address 'break points'.
            FFE0_BP_XPC_0: mmio.Mmio(packed struct(u32) {
                ///  These registers hold the xPC (program counter) address 'break points'.
                FFE0_BP_XPC_0: u14,
                padding: u18 = 0,
            }),
            ///  These registers hold the xPC (program counter) address 'break points'.
            FFE0_BP_XPC_1: mmio.Mmio(packed struct(u32) {
                ///  These registers hold the xPC (program counter) address 'break points'.
                FFE0_BP_XPC_1: u14,
                padding: u18 = 0,
            }),
            ///  These registers hold the xPC (program counter) address 'break points'.
            FFE0_BP_XPC_2: mmio.Mmio(packed struct(u32) {
                ///  These registers hold the xPC (program counter) address 'break points'.
                FFE0_BP_XPC_2: u14,
                padding: u18 = 0,
            }),
            ///  These registers hold the xPC (program counter) address 'break points'.
            FFE0_BP_XPC_3: mmio.Mmio(packed struct(u32) {
                ///  These registers hold the xPC (program counter) address 'break points'.
                FFE0_BP_XPC_3: u14,
                padding: u18 = 0,
            }),
        };

        ///  I2S Slave
        pub const I2S_Slave = extern struct {
            pub const IEN = enum(u1) {
                ///  Enable DW_APB_I2S.
                disable = 0x0,
                ///  Disable DW_APB_I2S.
                enable = 0x1,
            };

            pub const TXEN = enum(u1) {
                ///  Disable the transmitter.
                disable = 0x0,
                ///  Enable the transmitter.
                enable = 0x1,
            };

            pub const TXCHEN0 = enum(u1) {
                ///  Disable the transmit channel.
                disable = 0x0,
                ///  Enable the transmit channel.
                enable = 0x1,
            };

            pub const WLEN = enum(u3) {
                ///  Ignore word length.
                ignore_word_len = 0x0,
                ///  12 bit resolution.
                word_12bit = 0x1,
                ///  16 bit resolution.
                word_16bit = 0x2,
                ///  20 bit resolution.
                word_20bit = 0x3,
                ///  24 bit resolution.
                word_24bit = 0x4,
                ///  32 bit resolution.
                word_32bit = 0x5,
                _,
            };

            pub const TXFE = enum(u1) {
                ///  TX FIFO write valid.
                write_valid = 0x0,
                ///  TX FIFO write overrun.
                write_overrun = 0x1,
            };

            pub const TXFO = enum(u1) {
                ///  Trigger level not reached.
                trigger_not_reached = 0x0,
                ///  Trigger level reached.
                trigger_reached = 0x1,
            };

            pub const RXFOM = enum(u1) {
                ///  Unmask the interrupt
                unmask = 0x0,
                ///  Mask the interrupt
                mask = 0x1,
            };

            pub const APB_DATA_WIDTH = enum(u2) {
                ///  APB data width is 8 bit
                x8bit = 0x0,
                ///  APB data width is 16 bit
                x16bit = 0x1,
                ///  APB data width is 32 bit
                x32bit = 0x2,
                _,
            };

            pub const I2S_FIFO_DEPTH_GLOBAL = enum(u2) {
                ///  I2S_FIFO_DEPTH_GLOBAL equals 2
                depth_2 = 0x0,
                ///  I2S_FIFO_DEPTH_GLOBAL equals 4
                depth_4 = 0x1,
                ///  I2S_FIFO_DEPTH_GLOBAL equals 8
                depth_8 = 0x2,
                ///  I2S_FIFO_DEPTH_GLOBAL equals 16
                depth_16 = 0x3,
            };

            pub const I2S_MODE_EN = enum(u1) {
                ///  I2S operating in slave mode.
                slave = 0x0,
                ///  I2S operating in master mode
                master = 0x1,
            };

            pub const I2S_TX_CHANNELS = enum(u2) {
                ///  1 TX channel.
                x1_channel = 0x0,
                ///  2 TX channel.
                x2_channel = 0x1,
                ///  3 TX channel.
                x3_channel = 0x2,
                ///  4 TX channel.
                x4_channel = 0x3,
            };

            pub const I2S_TX_WORDSIZE_0 = enum(u3) {
                ///  TX configured with 12bit wordsize
                x12bit = 0x0,
                ///  TX configured with 16bit wordsize
                x16bit = 0x1,
                ///  TX configured with 20bit wordsize
                x20bit = 0x2,
                ///  TX configured with 24bit wordsize
                x24bit = 0x3,
                ///  TX configured with 32bit wordsize
                x32bit = 0x4,
                _,
            };

            pub const I2S_STEREO_EN = enum(u1) {
                ///  Configure I2S for monoaural sound reproduction
                mono = 0x0,
                ///  Configure I2S for stereo sound reproduction
                stereo = 0x1,
            };

            ///  I2S Enable Register
            IER: mmio.Mmio(packed struct(u32) {
                ///  DW_apb_i2s_enable. A disable on this bit overrides any other block or channel enables and flushes all FIFOs.
                IEN: IEN,
                padding: u31 = 0,
            }),
            reserved8: [4]u8,
            ///  I2S Transmitter Block Enable Register
            ITER: mmio.Mmio(packed struct(u32) {
                ///  Transmitter block enable. A disable on this bit overrides any individual transmit channel enables.
                TXEN: TXEN,
                padding: u31 = 0,
            }),
            reserved24: [12]u8,
            ///  Transmitter Block FIFO Reset Register
            TXFFR: mmio.Mmio(packed struct(u32) {
                ///  Transmitter FIFO Reset. Writing a 1 to this register flushes all the TX FIFOs (this is a self clearing bit). The Transmitter Block must be disabled prior to writing this bit.
                TXFFR: u1,
                padding: u31 = 0,
            }),
            reserved32: [4]u8,
            ///  Left Transmit Holding Register
            LTHR0: mmio.Mmio(packed struct(u32) {
                ///  The left stereo data to be transmitted serially through the transmit channel output (sdox) is written through this register. Writing is a two-stage process: (1) A write to this register passes the left stereo sample to the transmitter. (2) This MUST be followed by writing the right stereo sample to the RTHRx register. Data should only be written to the FIFO when it is not full. Any attempt to write to a full FIFO results in that data being lost and an overrun interrupt being generated.
                LTHR0: u32,
            }),
            ///  Right Transmit Holding Register
            RTHR0: mmio.Mmio(packed struct(u32) {
                ///  The right stereo data to be transmitted serially through the transmit channel output (sdox) is written through this register. Writing is a two-stage process: (1) A left stereo sample MUST first be written to the LTHRx register. (2) A write to this register passes the right stereo sample to the transmitter. Data should only be written to the FIFO when it is not full. Any attempt to write to a full FIFO results in that data being lost and an overrun interrupt being generated.
                RTHR0: u32,
            }),
            reserved44: [4]u8,
            ///  Transmit Enable Register
            TER0: mmio.Mmio(packed struct(u32) {
                ///  Transmit channel enable. This bit enables/disables a transmit channel, independently of all other channels. On enable, the channel begins transmitting on the next left stereo cycle. A global disable of DW_apb_i2s (IER[0] = 0) or Transmitter block (ITER[0] =0) overrides this value.
                TXCHEN0: TXCHEN0,
                padding: u31 = 0,
            }),
            reserved52: [4]u8,
            ///  Transmit Configuration Register
            TCR0: mmio.Mmio(packed struct(u32) {
                ///  These bits are used to program the data resolution of the transmitter and ensures the MSB of the data is transmitted first. Programmed resolution must be less than or equal to `I2S_TX_WORDSIZE_x`. If the selected resolution is greater than `I2S_TX_WORDSIZE_x`, the transmit channel defaults back to `I2S_TX_WORDSIZE_RESET_x` value. The channel must be disabled prior to any changes in this value (`TERx[0] = 0`).
                WLEN: WLEN,
                padding: u29 = 0,
            }),
            ///  Interrupt Status Register
            ISR0: mmio.Mmio(packed struct(u32) {
                reserved4: u4 = 0,
                ///  Status of Transmit Empty Trigger interrupt. TX FIFO is empty.
                TXFE: TXFE,
                ///  Status of Data Overrun interrupt for the TX channel. Attempt to write to full TX FIFO. Dependencies: I2S_TX_CHANNELS > x, where x is the number of transmit channel.
                TXFO: TXFO,
                padding: u26 = 0,
            }),
            ///  Interrupt Mask Register
            IMR0: mmio.Mmio(packed struct(u32) {
                reserved4: u4 = 0,
                ///  Masks TX FIFO Overrun interrupt.
                RXFOM: RXFOM,
                ///  Masks TX FIFO Empty interrupt.
                TXFOM: RXFOM,
                padding: u26 = 0,
            }),
            reserved68: [4]u8,
            ///  Transmit Overrun Register
            TOR0: mmio.Mmio(packed struct(u32) {
                ///  Read this bit to clear the TX FIFO Data Overrun interrupt.
                TXCHO: u1,
                padding: u31 = 0,
            }),
            reserved76: [4]u8,
            ///  Transmit FIFO Configuration Register
            TFCR0: mmio.Mmio(packed struct(u32) {
                ///  Transmit Channel Empty Trigger. These bits program the trigger level in the TX FIFO at which the Empty Threshold Reached Interrupt is generated. Trigger Level = `TXCHET` `TXCHET` values: 0 to (`I2S_TX_FIFO_x – 1`) If an illegal value is programmed, these bits saturate to `(I2S_TX_FIFO_x – 1)`. The channel must be disabled prior to any changes in this value (that is, `TERx[0] = 0`).
                TXCHET: u4,
                padding: u28 = 0,
            }),
            reserved84: [4]u8,
            ///  Transmit FIFO Flush
            TFF0: mmio.Mmio(packed struct(u32) {
                ///  Transmit Channel FIFO Reset. Writing a 1 to this register flushes channel’s TX FIFO. (This is a self clearing bit.) TX channel or block must be disabled prior to writing to this bit.
                TXCHFR: u1,
                padding: u31 = 0,
            }),
            reserved456: [368]u8,
            ///  Transmitter Block DMA Register
            TXDMA: mmio.Mmio(packed struct(u32) {
                ///  Transmitter Block DMA Register. This register can be used to cycle repeatedly through the enabled Transmit channels (from lowest numbered to highest) to allow writing of stereo data pairs
                TXDMA: u32,
            }),
            ///  Reset Transmitter Block DMA Register
            RTXDMA: mmio.Mmio(packed struct(u32) {
                ///  Reset Transmitter Block DMA Register. Writing a 1 to this self-clearing register resets the TXDMA register mid-cycle to point to the lowest enabled Transmit channel. NOTE: This register has no effect in the middle of a stereo pair write (such as,when left stereo data has been written but not right stereo data)
                RTXDMA: u1,
                padding: u31 = 0,
            }),
            reserved500: [36]u8,
            ///  Component Parameter Register 1
            I2S_COMP_PARAM_1: mmio.Mmio(packed struct(u32) {
                ///  Data width of the APB
                APB_DATA_WIDTH: APB_DATA_WIDTH,
                ///  Indicates the value of I2S_FIFO_DEPTH_GLOBAL
                I2S_FIFO_DEPTH_GLOBAL: I2S_FIFO_DEPTH_GLOBAL,
                ///  Enabled mode for the I2S peripheral
                I2S_MODE_EN: I2S_MODE_EN,
                I2S_TRANSMITTER_BLOCK: u1,
                reserved9: u3 = 0,
                ///  Indicates how many I2S TX channels are active
                I2S_TX_CHANNELS: I2S_TX_CHANNELS,
                reserved16: u5 = 0,
                ///  Indicates the wordsize of I2S TX packets
                I2S_TX_WORDSIZE_0: I2S_TX_WORDSIZE_0,
                padding: u13 = 0,
            }),
            ///  Component version of the I2S peripheral.
            I2S_COMP_VERSION: mmio.Mmio(packed struct(u32) {
                ///  Component version of the I2S peripheral.
                I2S_COMP_VERSION: u32,
            }),
            ///  Component type of the I2S peripheral.
            I2S_COMP_TYPE: mmio.Mmio(packed struct(u32) {
                ///  Component type of the I2S peripheral.
                I2S_COMP_TYPE: u32,
            }),
            reserved1016: [504]u8,
            ///  Sound channel mode (mono or stereo)
            I2S_STEREO_EN: mmio.Mmio(packed struct(u32) {
                ///  Select between mono or stereo modes
                I2S_STEREO_EN: I2S_STEREO_EN,
                padding: u31 = 0,
            }),
        };

        ///  Interrupt Controller
        pub const INTR_CTRL = extern struct {
            pub const GPIO_O_INTR_TYPE = enum(u1) {
                ///  Interrupt is triggered by a certain level (High or Low)
                level = 0x0,
                ///  Interrupt is triggered by a signal edge (Falling or Rising)
                edge = 0x1,
            };

            pub const GPIO_0_INTR_POL = enum(u1) {
                ///  Depending on the type, if the interrupt is triggered by level, this indicates the interrupt is triggered by a reading low value, if it is an edge trigger, this value indicates that the interrupt polarity is falling edge
                low_fall = 0x0,
                ///  Depending on the type, if the interrupt is triggered by level, this indicates the interrupt is triggered by a reading high value, if it is an edge trigger, this value indicates that the interrupt polarity is rising edge
                high_rise = 0x1,
            };

            pub const GPIO_0_INTR_EN_AP = enum(u1) {
                ///  Disable the interrupt for the power domain
                enable = 0x0,
                ///  Enable the interrupt for the power domain
                disable = 0x1,
            };

            pub const GPIO_1_INTR_EN_M4 = enum(u1) {
                ///  Disable the interrupt for the power domain
                enable = 0x0,
                ///  Enable the interrupt for the power domain
                disable = 0x1,
            };

            pub const GPIO_0_INTR_EN_FFE0 = enum(u1) {
                ///  Disable the interrupt for the power domain
                enable = 0x0,
                ///  Enable the interrupt for the power domain
                disable = 0x1,
            };

            pub const GPIO_0_INTR_EN_FFE1 = enum(u1) {
                ///  Disable the interrupt for the power domain
                enable = 0x0,
                ///  Enable the interrupt for the power domain
                disable = 0x1,
            };

            pub const M4_SRAM_INTR_EN_AP = enum(u1) {
                ///  Disable the interrupt for the power domain
                enable = 0x0,
                ///  Enable the interrupt for the power domain
                disable = 0x1,
            };

            pub const M4_SRAM_INTR_EN_M4 = enum(u1) {
                ///  Disable the interrupt for the power domain
                enable = 0x0,
                ///  Enable the interrupt for the power domain
                disable = 0x1,
            };

            pub const SW_INTR_2_EN_M4 = enum(u1) {
                ///  Disable the interrupt for the power domain
                enable = 0x0,
                ///  Enable the interrupt for the power domain
                disable = 0x1,
            };

            pub const FFE0_0_INTR_EN_AP = enum(u1) {
                ///  Disable the interrupt for the power domain
                enable = 0x0,
                ///  Enable the interrupt for the power domain
                disable = 0x1,
            };

            pub const FFE0_0_INTR_EN_M4 = enum(u1) {
                ///  Disable the interrupt for the power domain
                enable = 0x0,
                ///  Enable the interrupt for the power domain
                disable = 0x1,
            };

            pub const FB_0_INTR_TYPE = enum(u1) {
                ///  Interrupt is triggered by a certain level (High or Low)
                level = 0x0,
                ///  Interrupt is triggered by a signal edge (Falling or Rising)
                edge = 0x1,
            };

            pub const FB_0_INTR_POL = enum(u1) {
                ///  Depending on the type, if the interrupt is triggered by level, this indicates the interrupt is triggered by a reading low value, if it is an edge trigger, this value indicates that the interrupt polarity is falling edge
                low_fall = 0x0,
                ///  Depending on the type, if the interrupt is triggered by level, this indicates the interrupt is triggered by a reading high value, if it is an edge trigger, this value indicates that the interrupt polarity is rising edge
                high_rise = 0x1,
            };

            pub const FB_0_INTR_EN_AP = enum(u1) {
                ///  Disable the interrupt for the power domain
                enable = 0x0,
                ///  Enable the interrupt for the power domain
                disable = 0x1,
            };

            pub const FB_0_INTR_EN_M4 = enum(u1) {
                ///  Disable the interrupt for the power domain
                enable = 0x0,
                ///  Enable the interrupt for the power domain
                disable = 0x1,
            };

            ///  Indicators of interrupt triggers detected
            GPIO_INTR: mmio.Mmio(packed struct(u32) {
                ///  Active high edge interrupt detected for GPIO_0. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                GPIO_0_INTR: u1,
                ///  Active high edge interrupt detected for GPIO_1. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                GPIO_1_INTR: u1,
                ///  Active high edge interrupt detected for GPIO_2. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                GPIO_2_INTR: u1,
                ///  Active high edge interrupt detected for GPIO_3. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                GPIO_3_INTR: u1,
                ///  Active high edge interrupt detected for GPIO_4. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                GPIO_4_INTR: u1,
                ///  Active high edge interrupt detected for GPIO_5. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                GPIO_5_INTR: u1,
                ///  Active high edge interrupt detected for GPIO_6. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                GPIO_6_INTR: u1,
                ///  Active high edge interrupt detected for GPIO_7. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                GPIO_7_INTR: u1,
                padding: u24 = 0,
            }),
            ///  GPIO raw interrupt indicators
            GPIO_INTR_RAW: mmio.Mmio(packed struct(u32) {
                ///  Raw interrupt for GPIO_0. This register will reflect the value of the IO regardless of the type/polarity
                GPIO_0_INTR_RAW: u1,
                ///  Raw interrupt for GPIO_1. This register will reflect the value of the IO regardless of the type/polarity
                GPIO_1_INTR_RAW: u1,
                ///  Raw interrupt for GPIO_2. This register will reflect the value of the IO regardless of the type/polarity
                GPIO_2_INTR_RAW: u1,
                ///  Raw interrupt for GPIO_3. This register will reflect the value of the IO regardless of the type/polarity
                GPIO_3_INTR_RAW: u1,
                ///  Raw interrupt for GPIO_4. This register will reflect the value of the IO regardless of the type/polarity
                GPIO_4_INTR_RAW: u1,
                ///  Raw interrupt for GPIO_5. This register will reflect the value of the IO regardless of the type/polarity
                GPIO_5_INTR_RAW: u1,
                ///  Raw interrupt for GPIO_6. This register will reflect the value of the IO regardless of the type/polarity
                GPIO_6_INTR_RAW: u1,
                ///  Raw interrupt for GPIO_7. This register will reflect the value of the IO regardless of the type/polarity
                GPIO_7_INTR_RAW: u1,
                padding: u24 = 0,
            }),
            ///  Indicators of interrupt trigger types
            GPIO_INTR_TYPE: mmio.Mmio(packed struct(u32) {
                ///  GPIO_0 interrupt type {0: level, 1: edge}
                GPIO_O_INTR_TYPE: GPIO_O_INTR_TYPE,
                ///  GPIO_1 interrupt type {0: level, 1: edge}
                GPIO_1_INTR_TYPE: GPIO_O_INTR_TYPE,
                ///  GPIO_2 interrupt type {0: level, 1: edge}
                GPIO_2_INTR_TYPE: GPIO_O_INTR_TYPE,
                ///  GPIO_3 interrupt type {0: level, 1: edge}
                GPIO_3_INTR_TYPE: GPIO_O_INTR_TYPE,
                ///  GPIO_4 interrupt type {0: level, 1: edge}
                GPIO_4_INTR_TYPE: GPIO_O_INTR_TYPE,
                ///  GPIO_5 interrupt type {0: level, 1: edge}
                GPIO_5_INTR_TYPE: GPIO_O_INTR_TYPE,
                ///  GPIO_6 interrupt type {0: level, 1: edge}
                GPIO_6_INTR_TYPE: GPIO_O_INTR_TYPE,
                ///  GPIO_7 interrupt type {0: level, 1: edge}
                GPIO_7_INTR_TYPE: GPIO_O_INTR_TYPE,
                padding: u24 = 0,
            }),
            ///  Indicators of interrupt trigger polarities (will depend on the type of interrupt)
            GPIO_INTR_POL: mmio.Mmio(packed struct(u32) {
                ///  GPIO_0 interrupt polarity (depends on interrupt type): type = level => {0:low, 1:hi} --- type = edge => {0:fall, 1:rise}
                GPIO_0_INTR_POL: GPIO_0_INTR_POL,
                ///  GPIO_1 interrupt polarity (depends on interrupt type): type = level => {0:low, 1:hi} --- type = edge => {0:fall, 1:rise}
                GPIO_1_INTR_POL: GPIO_0_INTR_POL,
                ///  GPIO_2 interrupt polarity (depends on interrupt type): type = level => {0:low, 1:hi} --- type = edge => {0:fall, 1:rise}
                GPIO_2_INTR_POL: GPIO_0_INTR_POL,
                ///  GPIO_3 interrupt polarity (depends on interrupt type): type = level => {0:low, 1:hi} --- type = edge => {0:fall, 1:rise}
                GPIO_3_INTR_POL: GPIO_0_INTR_POL,
                ///  GPIO_4 interrupt polarity (depends on interrupt type): type = level => {0:low, 1:hi} --- type = edge => {0:fall, 1:rise}
                GPIO_4_INTR_POL: GPIO_0_INTR_POL,
                ///  GPIO_5 interrupt polarity (depends on interrupt type): type = level => {0:low, 1:hi} --- type = edge => {0:fall, 1:rise}
                GPIO_5_INTR_POL: GPIO_0_INTR_POL,
                ///  GPIO_6 interrupt polarity (depends on interrupt type): type = level => {0:low, 1:hi} --- type = edge => {0:fall, 1:rise}
                GPIO_6_INTR_POL: GPIO_0_INTR_POL,
                ///  GPIO_7 interrupt polarity (depends on interrupt type): type = level => {0:low, 1:hi} --- type = edge => {0:fall, 1:rise}
                GPIO_7_INTR_POL: GPIO_0_INTR_POL,
                padding: u24 = 0,
            }),
            ///  GPIO interrupt enable for AP
            GPIO_INTR_EN_AP: mmio.Mmio(packed struct(u32) {
                ///  GPIO_0 interrupt enable for AP
                GPIO_0_INTR_EN_AP: GPIO_0_INTR_EN_AP,
                ///  GPIO_1 interrupt enable for AP
                GPIO_1_INTR_EN_AP: GPIO_0_INTR_EN_AP,
                ///  GPIO_2 interrupt enable for AP
                GPIO_2_INTR_EN_AP: GPIO_0_INTR_EN_AP,
                ///  GPIO_3 interrupt enable for AP
                GPIO_3_INTR_EN_AP: GPIO_0_INTR_EN_AP,
                ///  GPIO_4 interrupt enable for AP
                GPIO_4_INTR_EN_AP: GPIO_0_INTR_EN_AP,
                ///  GPIO_5 interrupt enable for AP
                GPIO_5_INTR_EN_AP: GPIO_0_INTR_EN_AP,
                ///  GPIO_6 interrupt enable for AP
                GPIO_6_INTR_EN_AP: GPIO_0_INTR_EN_AP,
                ///  GPIO_7 interrupt enable for AP
                GPIO_7_INTR_EN_AP: GPIO_0_INTR_EN_AP,
                padding: u24 = 0,
            }),
            ///  GPIO interrupt enable for M4
            GPIO_INTR_EN_M4: mmio.Mmio(packed struct(u32) {
                ///  GPIO_0 interrupt enable for M4
                GPIO_1_INTR_EN_M4: GPIO_1_INTR_EN_M4,
                ///  GPIO_1 interrupt enable for M4
                GPIO_2_INTR_EN_M4: GPIO_1_INTR_EN_M4,
                reserved3: u1 = 0,
                ///  GPIO_3 interrupt enable for M4
                GPIO_3_INTR_EN_M4: GPIO_1_INTR_EN_M4,
                ///  GPIO_4 interrupt enable for M4
                GPIO_4_INTR_EN_M4: GPIO_1_INTR_EN_M4,
                ///  GPIO_5 interrupt enable for M4
                GPIO_5_INTR_EN_M4: GPIO_1_INTR_EN_M4,
                ///  GPIO_6 interrupt enable for M4
                GPIO_6_INTR_EN_M4: GPIO_1_INTR_EN_M4,
                ///  GPIO_7 interrupt enable for M4
                GPIO_7_INTR_EN_M4: GPIO_1_INTR_EN_M4,
                padding: u24 = 0,
            }),
            ///  GPIO interrupt enable for FFE0
            GPIO_INTR_EN_FFE0: mmio.Mmio(packed struct(u32) {
                ///  GPIO_0 interrupt enable for FFE0
                GPIO_0_INTR_EN_FFE0: GPIO_0_INTR_EN_FFE0,
                ///  GPIO_1 interrupt enable for FFE0
                GPIO_1_INTR_EN_FFE0: GPIO_0_INTR_EN_FFE0,
                ///  GPIO_2 interrupt enable for FFE0
                GPIO_2_INTR_EN_FFE0: GPIO_0_INTR_EN_FFE0,
                ///  GPIO_3 interrupt enable for FFE0
                GPIO_3_INTR_EN_FFE0: GPIO_0_INTR_EN_FFE0,
                ///  GPIO_4 interrupt enable for FFE0
                GPIO_4_INTR_EN_FFE0: GPIO_0_INTR_EN_FFE0,
                ///  GPIO_5 interrupt enable for FFE0
                GPIO_5_INTR_EN_FFE0: GPIO_0_INTR_EN_FFE0,
                ///  GPIO_6 interrupt enable for FFE0
                GPIO_6_INTR_EN_FFE0: GPIO_0_INTR_EN_FFE0,
                ///  GPIO_7 interrupt enable for FFE0
                GPIO_7_INTR_EN_FFE0: GPIO_0_INTR_EN_FFE0,
                padding: u24 = 0,
            }),
            ///  GPIO interrupt enable for FFE1
            GPIO_INTR_EN_FFE1: mmio.Mmio(packed struct(u32) {
                ///  GPIO_0 interrupt enable for FFE1
                GPIO_0_INTR_EN_FFE1: GPIO_0_INTR_EN_FFE1,
                ///  GPIO_1 interrupt enable for FFE1
                GPIO_1_INTR_EN_FFE1: GPIO_0_INTR_EN_FFE1,
                ///  GPIO_2 interrupt enable for FFE1
                GPIO_2_INTR_EN_FFE1: GPIO_0_INTR_EN_FFE1,
                ///  GPIO_3 interrupt enable for FFE1
                GPIO_3_INTR_EN_FFE1: GPIO_0_INTR_EN_FFE1,
                ///  GPIO_4 interrupt enable for FFE1
                GPIO_4_INTR_EN_FFE1: GPIO_0_INTR_EN_FFE1,
                ///  GPIO_5 interrupt enable for FFE1
                GPIO_5_INTR_EN_FFE1: GPIO_0_INTR_EN_FFE1,
                ///  GPIO_6 interrupt enable for FFE1
                GPIO_6_INTR_EN_FFE1: GPIO_0_INTR_EN_FFE1,
                ///  GPIO_7 interrupt enable for FFE1
                GPIO_7_INTR_EN_FFE1: GPIO_0_INTR_EN_FFE1,
                padding: u24 = 0,
            }),
            reserved48: [16]u8,
            ///  Indicators of interrupt triggers detected
            OTHER_INTR: mmio.Mmio(packed struct(u32) {
                ///  Interrupt detected for M4 SRAM (access during low power)
                M4_SRAM_INTR: u1,
                ///  Interrupt detected for UART
                UART_INTR: u1,
                ///  Interrupt detected for timer
                TIMER_INTR: u1,
                ///  Interrupt detected for WDT M4
                WDOG_INTR: u1,
                ///  Interrupt detected for WDT M4 Reset
                WDOG_RST: u1,
                ///  Interrupt detected for bus timeout
                TIMEOUT_INTR: u1,
                ///  Interrupt detected for M4 FPU
                FPU_INTR: u1,
                ///  Interrupt detected for Packet FIFO Bank
                PKFB_INTR: u1,
                reserved10: u2 = 0,
                ///  Interrupt detected for SPI Master
                SPI_MS_INTR: u1,
                ///  Interrupt detected for Config DMA
                CFG_DMA_INTR: u1,
                ///  Interrupt detected for PMU Timer
                PMU_TMR_INTR: u1,
                ///  Interrupt detected for ADC
                ADC_INTR: u1,
                ///  Interrupt detected for RTC
                RTC_INTR: u1,
                ///  Interrupt detected for Reset
                RST_INTR: u1,
                ///  Interrupt detected for FFE0 other interrupts
                FFE0_INTR_OTHERS: u1,
                reserved18: u1 = 0,
                ///  Interrupt detected for AP boot
                APBOOT_EN_INTR: u1,
                ///  Interrupt detected for absence of LDO30 power good
                LDO30_PG_INTR: u1,
                ///  Interrupt detected for absence of LDO30 power good
                LDO50_PG_INTR: u1,
                reserved22: u1 = 0,
                ///  Interrupt detected for LPSD Voice
                LPSD_VOICE_DET: u1,
                ///  Interrupt detected for Digital MIC
                DMIC_VOICE_DET: u1,
                padding: u8 = 0,
            }),
            ///  Various interrupt enable for AP
            OTHER_INTR_EN_AP: mmio.Mmio(packed struct(u32) {
                ///  M4 SRAM (access during low power) interrupt enable for AP
                M4_SRAM_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  UART interrupt enable for AP
                UART_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  Timer interrupt enable for AP
                TIMER_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  WDT M4 interrupt enable for AP
                WDOG_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  WDT M4 Reset interrupt enable for AP
                WDOG_RST_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  Bus Timeout interrupt enable for AP
                TIMEOUT_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  M4 FPU interrupt enable for AP
                FPU_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  Packet FIFO Bank interrupt enable for AP
                PKFB_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                reserved10: u2 = 0,
                ///  SPI Master interrupt enable for AP
                SPI_MS_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  Config DMA interrupt enable for AP
                CFG_DMA_DONE_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  PMU Timer interrupt enable for AP
                PMU_TMR_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  ADC interrupt enable for AP
                ADC_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  RTC interrupt enable for AP
                RTC_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  Reset interrupt enable for AP
                RST_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  FFE0 Other interrupt enable for AP
                FFE0_INTR_OTHERS_EN_AP: M4_SRAM_INTR_EN_AP,
                reserved18: u1 = 0,
                ///  AP Boot interrupt enable for AP
                APBOOT_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  LDO30 absence of power good interrupt enable for AP
                LDO30_PG_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  LDO50 absence of power good interrupt enable for AP
                LDO50_PG_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  SRAM_128KB_TIMEOUT interrupt enable for AP
                SRAM_128KB_TIMEOUT_INTR_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  LPSD Voice detected interrupt enable for AP
                LPSD_VOICE_DET_EN_AP: M4_SRAM_INTR_EN_AP,
                ///  Digital Mic interrupt enable for AP
                DMIC_VOICE_DET_EN_AP: M4_SRAM_INTR_EN_AP,
                padding: u8 = 0,
            }),
            ///  Various interrupt enable for M4
            OTHER_INTR_EN_M4: mmio.Mmio(packed struct(u32) {
                ///  M4 SRAM (access during low power) interrupt enable for M4
                M4_SRAM_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  UART interrupt enable for M4
                UART_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  Timer interrupt enable for M4
                TIMER_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  WDOG M4 interrupt enable for M4
                WDOG_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  WDOG M4 Reset interrupt enable for M4
                WDOG_RST_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  bus timeout interrupt enable for M4
                TIMEOUT_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  M4 FPU interrupt enable for M4
                FPU_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  Packet FIFO Bank interrupt enable for M4
                PKFB_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                reserved10: u2 = 0,
                ///  SPI Master interrupt enable for M4
                SPI_MS_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  Config DMA interrupt enable for M4
                CFG_DMA_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  PMU Timer interrupt enable for M4
                PMU_TMR_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  ADC interrupt enable for M4
                ADC_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  RTC interrupt enable for M4
                RTC_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  Reset interrupt enable for M4
                RST_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  FFE0 other interrupts enable for M4
                FFE0_INTR_OTHERS_EN_M4: M4_SRAM_INTR_EN_M4,
                reserved18: u1 = 0,
                ///  AP Boot interrupt enable for M4
                APBOOT_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  Absence of LDO30 power good interrupt enable for M4
                LDO30_PG_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  Absence of LDO50 power good interrupt enable for M4
                LDO50_PG_INTR_EN_M4: M4_SRAM_INTR_EN_M4,
                reserved22: u1 = 0,
                ///  LPSD Voice detected interrupt enable for M4
                LPSD_VOICE_DET_EN_M4: M4_SRAM_INTR_EN_M4,
                ///  Digital Mic Voice detected interrupt enable for M4
                DMIC_VOICE_DET_EN_M4: M4_SRAM_INTR_EN_M4,
                padding: u8 = 0,
            }),
            reserved64: [4]u8,
            ///  Indicators of General purpose software interrupt 1 triggers detected
            SOFTWARE_INTR_1: mmio.Mmio(packed struct(u32) {
                ///  Active high edge interrupt detected for Software Interrupt 1. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                SW_INTR_1: u1,
                padding: u31 = 0,
            }),
            ///  General purpose Software interrupt 1 enable for AP
            SOFTWARE_INTR_1_EN_AP: mmio.Mmio(packed struct(u32) {
                ///  Software interrupt 1 enable for AP
                SW_INTR_1_EN_AP: u1,
                padding: u31 = 0,
            }),
            reserved80: [8]u8,
            ///  Indicators of General purpose software interrupt 2 triggers detected
            SOFTWARE_INTR_2: mmio.Mmio(packed struct(u32) {
                ///  Active high edge interrupt detected for Software Interrupt 2. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                SW_INTR_2: u1,
                padding: u31 = 0,
            }),
            ///  General purpose Software interrupt 2 enable for AP
            SOFTWARE_INTR_2_EN_AP: mmio.Mmio(packed struct(u32) {
                ///  Software interrupt 2 enable for AP
                SW_INTR_2_EN_AP: u1,
                padding: u31 = 0,
            }),
            ///  General purpose Software interrupt 2 enable for M4
            SOFTWARE_INTR_EN_M4: mmio.Mmio(packed struct(u32) {
                ///  Software interrupt 2 enable for M4
                SW_INTR_2_EN_M4: SW_INTR_2_EN_M4,
                padding: u31 = 0,
            }),
            reserved96: [4]u8,
            ///  Indicators of FFE0 interrupt triggers detected
            FFE_INTR: mmio.Mmio(packed struct(u32) {
                ///  Active high edge interrupt detected for FFE0_0. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                FFE0_0_INTR: u1,
                ///  Active high edge interrupt detected for FFE0_1. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                FFE0_1_INTR: u1,
                ///  Active high edge interrupt detected for FFE0_2. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                FFE0_2_INTR: u1,
                ///  Active high edge interrupt detected for FFE0_3. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                FFE0_3_INTR: u1,
                ///  Active high edge interrupt detected for FFE0_4. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                FFE0_4_INTR: u1,
                ///  Active high edge interrupt detected for FFE0_5. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                FFE0_5_INTR: u1,
                ///  Active high edge interrupt detected for FFE0_6. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                FFE0_6_INTR: u1,
                ///  Active high edge interrupt detected for FFE0_7. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                FFE0_7_INTR: u1,
                padding: u24 = 0,
            }),
            ///  FFE0 interrupt enable for AP
            FFE_INTR_EN_AP: mmio.Mmio(packed struct(u32) {
                ///  FFE0_0 interrupt enable for AP
                FFE0_0_INTR_EN_AP: FFE0_0_INTR_EN_AP,
                ///  FFE0_1 interrupt enable for AP
                FFE0_1_INTR_EN_AP: FFE0_0_INTR_EN_AP,
                ///  FFE0_2 interrupt enable for AP
                FFE0_2_INTR_EN_AP: FFE0_0_INTR_EN_AP,
                ///  FFE0_3 interrupt enable for AP
                FFE0_3_INTR_EN_AP: FFE0_0_INTR_EN_AP,
                ///  FFE0_4 interrupt enable for AP
                FFE0_4_INTR_EN_AP: FFE0_0_INTR_EN_AP,
                ///  FFE0_5 interrupt enable for AP
                FFE0_5_INTR_EN_AP: FFE0_0_INTR_EN_AP,
                ///  FFE0_6 interrupt enable for AP
                FFE0_6_INTR_EN_AP: FFE0_0_INTR_EN_AP,
                ///  FFE0_7 interrupt enable for AP
                FFE0_7_INTR_EN_AP: FFE0_0_INTR_EN_AP,
                padding: u24 = 0,
            }),
            ///  FFE0 interrupt enable for M4
            FFE_INTR_EN_M4: mmio.Mmio(packed struct(u32) {
                ///  FFE0_0 interrupt enable for M4
                FFE0_0_INTR_EN_M4: FFE0_0_INTR_EN_M4,
                ///  FFE0_1 interrupt enable for M4
                FFE0_1_INTR_EN_M4: FFE0_0_INTR_EN_M4,
                ///  FFE0_2 interrupt enable for M4
                FFE0_2_INTR_EN_M4: FFE0_0_INTR_EN_M4,
                ///  FFE0_3 interrupt enable for M4
                FFE0_3_INTR_EN_M4: FFE0_0_INTR_EN_M4,
                ///  FFE0_4 interrupt enable for M4
                FFE0_4_INTR_EN_M4: FFE0_0_INTR_EN_M4,
                ///  FFE0_5 interrupt enable for M4
                FFE0_5_INTR_EN_M4: FFE0_0_INTR_EN_M4,
                ///  FFE0_6 interrupt enable for M4
                FFE0_6_INTR_EN_M4: FFE0_0_INTR_EN_M4,
                ///  FFE0_7 interrupt enable for M4
                FFE0_7_INTR_EN_M4: FFE0_0_INTR_EN_M4,
                padding: u24 = 0,
            }),
            reserved128: [20]u8,
            ///  Indicators of interrupt triggers detected
            FB_INTR: mmio.Mmio(packed struct(u32) {
                ///  Active high edge interrupt detected for Fabric. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                FB_0_INTR: u1,
                ///  Active high edge interrupt detected for Fabric. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                FB_1_INTR: u1,
                ///  Active high edge interrupt detected for Fabric. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                FB_2_INTR: u1,
                ///  Active high edge interrupt detected for Fabric. When interrupt type is selected as edge detect, this register will return high when triggered, write 1 to clear.
                FB_3_INTR: u1,
                padding: u28 = 0,
            }),
            ///  FB raw interrupt indicators
            FB_INTR_RAW: mmio.Mmio(packed struct(u32) {
                ///  Raw interrupt for Fabric. This register will reflect the value of the Fabric regardless of the type/polarity
                FB_0_INTR_RAW: u1,
                ///  Raw interrupt for Fabric. This register will reflect the value of the Fabric regardless of the type/polarity
                FB_1_INTR_RAW: u1,
                ///  Raw interrupt for Fabric. This register will reflect the value of the Fabric regardless of the type/polarity
                FB_2_INTR_RAW: u1,
                ///  Raw interrupt for Fabric. This register will reflect the value of the Fabric regardless of the type/polarity
                FB_3_INTR_RAW: u1,
                padding: u28 = 0,
            }),
            ///  Indicators of interrupt trigger types
            FB_INTR_TYPE: mmio.Mmio(packed struct(u32) {
                ///  FB_0 interrupt type {0: level, 1: edge}
                FB_0_INTR_TYPE: FB_0_INTR_TYPE,
                ///  FB_1 interrupt type {0: level, 1: edge}
                FB_1_INTR_TYPE: FB_0_INTR_TYPE,
                ///  FB_2 interrupt type {0: level, 1: edge}
                FB_2_INTR_TYPE: FB_0_INTR_TYPE,
                ///  FB_3 interrupt type {0: level, 1: edge}
                FB_3_INTR_TYPE: FB_0_INTR_TYPE,
                padding: u28 = 0,
            }),
            ///  Indicators of interrupt trigger polarities (will depend on the type of interrupt)
            FB_INTR_POL: mmio.Mmio(packed struct(u32) {
                ///  FB_0 interrupt polarity (depends on interrupt type): type = level => {0:low, 1:hi} --- type = edge => {0:fall, 1:rise}
                FB_0_INTR_POL: FB_0_INTR_POL,
                ///  FB_1 interrupt polarity (depends on interrupt type): type = level => {0:low, 1:hi} --- type = edge => {0:fall, 1:rise}
                FB_1_INTR_POL: FB_0_INTR_POL,
                ///  FB_2 interrupt polarity (depends on interrupt type): type = level => {0:low, 1:hi} --- type = edge => {0:fall, 1:rise}
                FB_2_INTR_POL: FB_0_INTR_POL,
                ///  FB_3 interrupt polarity (depends on interrupt type): type = level => {0:low, 1:hi} --- type = edge => {0:fall, 1:rise}
                FB_3_INTR_POL: FB_0_INTR_POL,
                padding: u28 = 0,
            }),
            ///  FB interrupt enable for AP
            FB_INTR_EN_AP: mmio.Mmio(packed struct(u32) {
                ///  FB_0 interrupt enable for AP
                FB_0_INTR_EN_AP: FB_0_INTR_EN_AP,
                ///  FB_1 interrupt enable for AP
                FB_1_INTR_EN_AP: FB_0_INTR_EN_AP,
                ///  FB_2 interrupt enable for AP
                FB_2_INTR_EN_AP: FB_0_INTR_EN_AP,
                ///  FB_3 interrupt enable for AP
                FB_3_INTR_EN_AP: FB_0_INTR_EN_AP,
                padding: u28 = 0,
            }),
            ///  FB interrupt enable for M4
            FB_INTR_EN_M4: mmio.Mmio(packed struct(u32) {
                ///  FB_0 interrupt enable for M4
                FB_0_INTR_EN_M4: FB_0_INTR_EN_M4,
                ///  FB_1 interrupt enable for M4
                FB_1_INTR_EN_M4: FB_0_INTR_EN_M4,
                ///  FB_2 interrupt enable for M4
                FB_2_INTR_EN_M4: FB_0_INTR_EN_M4,
                ///  FB_3 interrupt enable for M4
                FB_3_INTR_EN_M4: FB_0_INTR_EN_M4,
                padding: u28 = 0,
            }),
            reserved160: [8]u8,
            ///  Indicator of detected SRAM access while shut down or sleep mode interrupts
            M4_MEM_AON_INTR: mmio.Mmio(packed struct(u32) {
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 0 32KB_0) while it in deep sleep or shut down mode
                MEM3_AON_INTR0: u1,
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 1 32KB_0) while it in deep sleep or shut down mode
                MEM3_AON_INTR1: u1,
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 2 32KB_0) while it in deep sleep or shut down mode
                MEM3_AON_INTR2: u1,
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 3 32KB_0) while it in deep sleep or shut down mode
                MEM3_AON_INTR3: u1,
                padding: u28 = 0,
            }),
            ///  Interrupt enable for SRAM access while in shut down or deep sleep modes
            M4_MEM_AON_INTR_EN: mmio.Mmio(packed struct(u32) {
                ///  Interrupt enable (M4 SRAM segment 0 32KB_0)
                MEM3_AON_INTR0_EN: u1,
                ///  Interrupt enable (M4 SRAM segment 1 32KB_0)
                MEM3_AON_INTR1_EN: u1,
                ///  Interrupt enable (M4 SRAM segment 2 32KB_0)
                MEM3_AON_INTR2_EN: u1,
                ///  Interrupt enable (M4 SRAM segment 3 32KB_0)
                MEM3_AON_INTR3_EN: u1,
                padding: u28 = 0,
            }),
        };

        ///  MISC registers
        pub const MISC = extern struct {
            pub const SUBSYS_DEBUG_MON_SEL = enum(u3) {
                ///  Monitor A0 subsystem
                monitor_a0 = 0x0,
                ///  Monitor the CPU subsystem
                monitor_cpu = 0x1,
                ///  Monitor the FPGA Fabric subsystem
                monitor_ffe = 0x3,
                ///  Monitor the audio subsystem
                monitor_audio = 0x4,
                _,
            };

            pub const A0_DEBUG_MON_SEL = enum(u3) {
                ///  Selects the PMU monitor as the monitor for the A0 subsystem
                use_pmu_monitor = 0x0,
                ///  Selects the CRU monitor as the monitor for the A0 subsystem
                use_cru_monitor = 0x1,
                _,
            };

            pub const A0_PMU_DEBUG_MON_SEL = enum(u6) {
                ///  {M4STM_KickOff, M4STM_BUSY, 6'h0}
                show_m4stm_kickoff_and_busy_plus_0x000000 = 0x0,
                show_a1 = 0x1,
                show_m4 = 0x2,
                show_m4s0 = 0x3,
                show_ad5 = 0x4,
                show_ad4 = 0x5,
                show_ad3 = 0x6,
                show_ad2 = 0x7,
                show_ad1 = 0x8,
                show_ad0 = 0x9,
                ///  {FBSTM_KickOff, FBSTM_BUSY,6'h0}
                show_fbst_kickoff_and_busy_plus_0x000000 = 0xa,
                show_i2s = 0xb,
                show_m4s15 = 0xd,
                show_m4s11 = 0xe,
                show_m4s7 = 0xf,
                show_m4s3 = 0x10,
                show_pf = 0x11,
                show_sdma = 0x12,
                show_ffe = 0x13,
                show_fb = 0x14,
                _,
            };

            pub const LOCK_KEY_EN = enum(u1) {
                ///  Disable lock to allow writing the lock_key field
                lock_disable = 0x0,
                ///  Enable lock to prevent writing the lock_key field
                lock_enable = 0x1,
            };

            ///  Debug Monitor information
            DBG_MON: mmio.Mmio(packed struct(u32) {
                ///  Reads the debug status/information
                DEBUG_MON: u8,
                padding: u24 = 0,
            }),
            ///  Register for selecting the subsystem routed to the debug monitor
            SUBSYS_DBG_MON_SEL: mmio.Mmio(packed struct(u32) {
                ///  Select which subsystem the debug monitors are routed from
                SUBSYS_DEBUG_MON_SEL: SUBSYS_DEBUG_MON_SEL,
                padding: u29 = 0,
            }),
            ///  Select A0 debug monitors
            A0_DBG_MON_SEL: mmio.Mmio(packed struct(u32) {
                ///  Select debug monitors
                A0_DEBUG_MON_SEL: A0_DEBUG_MON_SEL,
                padding: u29 = 0,
            }),
            ///  Selects the data present in the PMU debug monitor. The output will be (Except 0 and 10), {Status0, Status1, ISO, RET, GateCLK_N, Mem_DS, MP_Gate, RP_Gate)
            A0_PMU_DBG_MON_SEL: mmio.Mmio(packed struct(u32) {
                ///  Select data to be shown in the PMU debug monitor
                A0_PMU_DEBUG_MON_SEL: A0_PMU_DEBUG_MON_SEL,
                padding: u26 = 0,
            }),
            reserved256: [240]u8,
            ///  Reads the value of the IO pins
            IO_INPUT: mmio.Mmio(packed struct(u32) {
                ///  Read digital value of pin mapped to IO bit 0
                IO_0: u1,
                ///  Read digital value of pin mapped to IO bit 1
                IO_1: u1,
                ///  Read digital value of pin mapped to IO bit 2
                IO_2: u1,
                ///  Read digital value of pin mapped to IO bit 3
                IO_3: u1,
                ///  Read digital value of pin mapped to IO bit 4
                IO_4: u1,
                ///  Read digital value of pin mapped to IO bit 5
                IO_5: u1,
                ///  Read digital value of pin mapped to IO bit 6
                IO_6: u1,
                ///  Read digital value of pin mapped to IO bit 7
                IO_7: u1,
                padding: u24 = 0,
            }),
            ///  Allows FW to drive the IO with the values specified in this register
            IO_OUTPUT: mmio.Mmio(packed struct(u32) {
                ///  Write digital value of pin mapped to IO bit 0
                IO_0: u1,
                ///  Write digital value of pin mapped to IO bit 1
                IO_1: u1,
                ///  Write digital value of pin mapped to IO bit 2
                IO_2: u1,
                ///  Write digital value of pin mapped to IO bit 3
                IO_3: u1,
                ///  Write digital value of pin mapped to IO bit 4
                IO_4: u1,
                ///  Write digital value of pin mapped to IO bit 5
                IO_5: u1,
                ///  Write digital value of pin mapped to IO bit 6
                IO_6: u1,
                ///  Write digital value of pin mapped to IO bit 7
                IO_7: u1,
                padding: u24 = 0,
            }),
            reserved272: [8]u8,
            ///  Software Mailbox (can be used for communication between M4 and AP)
            SW_MB_1: u32,
            ///  Software Mailbox (can be used for communication between M4 and AP)
            SW_MB_2: u32,
            reserved512: [232]u8,
            ///  Select 1.8V for VCCIO for up to 4 banks. Write a 1 to a bank field to make the IO VCC = 1.8V
            PAD_SEL18: mmio.Mmio(packed struct(u32) {
                ///  bit for top bank 0
                TOP_BANK_0: u1,
                ///  bit for top bank 1
                TOP_BANK_1: u1,
                ///  bit for bottom bank 0
                BOTTOM_BANK_2: u1,
                ///  bit for bottom bank 1
                BOTTOM_BANK_3: u1,
                padding: u28 = 0,
            }),
            reserved528: [12]u8,
            ///  Memory Configuration
            CONFIG_MEM128_AON: mmio.Mmio(packed struct(u32) {
                ///  Read and write margin control. Recommended setting is 2'b10. 2'b00 provides the most margin (slowest speed). 2'b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM0_32K_RM: u2,
                reserved4: u2 = 0,
                ///  Disable-Self-Time. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2'b00. This pin is intended for debug/FA purposes only.
                MEM0_32K_DST: u1,
                ///  Read and write margin control. Recommended setting is 2'b10. 2'b00 provides the most margin (slowest speed). 2'b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM1_32K_RM: u2,
                reserved9: u2 = 0,
                ///  Disable-Self-Time. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2'b00. This pin is intended for debug/FA purposes only.
                MEM1_32K_DST: u1,
                ///  Read and write margin control. Recommended setting is 2'b10. 2'b00 provides the most margin (slowest speed). 2'b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM2_32K_RM: u2,
                reserved14: u2 = 0,
                ///  Disable-Self-Time. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2'b00. This pin is intended for debug/FA purposes only.
                MEM2_32K_DST: u1,
                ///  Read and write margin control. Recommended setting is 2'b10. 2'b00 provides the most margin (slowest speed). 2'b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM3_32K_RM: u2,
                reserved19: u2 = 0,
                ///  Disable-Self-Time. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2'b00. This pin is intended for debug/FA purposes only.
                MEM3_32K_DST: u1,
                padding: u12 = 0,
            }),
            reserved784: [252]u8,
            ///  Control value and status of LOCK_KEY
            LOCK_KEY_CTRL: mmio.Mmio(packed struct(u32) {
                ///  0: lock disabled, write to register enabled, 1: lock enable, write to register disabled
                LOCK_KEY_EN: LOCK_KEY_EN,
                ///  Enable write access to all below registers by writing 0x1ACCE551. Disable write access by writing any other value. M4 WDT Intr/reset clear - 0x4000_4830[4:3], M4 WDT Intr/reset enable AP - 0x4000_4834[4:3], Pad #43 (AP_INTR) - 0x40004CAC[12:0], M4 Low Power Configuration - 0x40004484[1:0], M4 WDT Clock Gate - 0x40004054[0]
                LOCK_KEY: u31,
            }),
            reserved1020: [232]u8,
            ///  Fabric device ID
            FB_DEVICE_ID: mmio.Mmio(packed struct(u32) {
                ///  Fabric device ID
                ID: u16,
                padding: u16 = 0,
            }),
        };

        ///  Packet FFO Bank control
        pub const PKFB = extern struct {
            pub const pf0_en = enum(u1) {
                ///  Disable the packet FIFO
                disable = 0x0,
                ///  Enable the packet FIFO
                enable = 0x1,
            };

            pub const pf0_push_mux = enum(u1) {
                ///  Select the M4 subsystem to control the FIFO
                m4 = 0x0,
                ///  Select the FFE subsystem to control the FIFO
                ffe = 0x1,
            };

            pub const pf0_pop_mux = enum(u1) {
                ///  Select the M4 subsystem to control the FIFO
                m4 = 0x0,
                ///  Select the AP subsystem to control the FIFO
                ap = 0x1,
            };

            pub const pf0_push_int_mux = enum(u1) {
                ///  Select the M4 subsystem to control the FIFO
                m4 = 0x0,
                ///  Select the AP subsystem to control the FIFO
                ap = 0x1,
            };

            pub const pf0_pop_int_mux = enum(u1) {
                ///  Select the M4 subsystem to control the FIFO
                m4 = 0x0,
                ///  Select the AP subsystem to control the FIFO
                ap = 0x1,
            };

            pub const pf0_ffe_sel = enum(u1) {
                ///  when FFE is the controller of the FIFO, select FFE0 as the controller
                ffe0 = 0x0,
                ///  when FFE is the controller of the FIFO, select FFE1 as the controller
                ffe1 = 0x1,
            };

            pub const pf0_sram_sleep = enum(u2) {
                ///  SRAM is in active mode
                active = 0x0,
                ///  SRAM is in Light Sleep mode
                light_sleep = 0x1,
                ///  SRAM is in Deep Sleep mode
                deep_sleep = 0x2,
                ///  SRAM is in Shutdown mode
                shutdown = 0x3,
            };

            pub const pf0_push_sleep_type = enum(u1) {
                ///  Select deep sleep as sleep type for the FIFO
                deep_sleep = 0x0,
                ///  Select shutdown as the sleep type for the FIFO
                shut_down = 0x1,
            };

            pub const pf0_push_int_en_ov = enum(u1) {
                ///  Mask the interrupt event
                mask = 0x0,
                ///  Unmask the interrupt event
                unmask = 0x1,
            };

            pub const pf0_pop_sleep_type = enum(u1) {
                ///  Select deep sleep as sleep type for the FIFO
                deep_sleep = 0x0,
                ///  Select shutdown as the sleep type for the FIFO
                shut_down = 0x1,
            };

            pub const pf0_pop_int_en_ov = enum(u1) {
                ///  Mask the interrupt event
                mask = 0x0,
                ///  Unmask the interrupt event
                unmask = 0x1,
            };

            pub const pf1_push_sleep_type = enum(u1) {
                ///  Select deep sleep as sleep type for the FIFO
                deep_sleep = 0x0,
                ///  Select shutdown as the sleep type for the FIFO
                shut_down = 0x1,
            };

            pub const pf1_push_int_en_ov = enum(u1) {
                ///  Mask the interrupt event
                mask = 0x0,
                ///  Unmask the interrupt event
                unmask = 0x1,
            };

            pub const pf1_pop_sleep_type = enum(u1) {
                ///  Select deep sleep as sleep type for the FIFO
                deep_sleep = 0x0,
                ///  Select shutdown as the sleep type for the FIFO
                shut_down = 0x1,
            };

            pub const pf1_pop_int_en_ov = enum(u1) {
                ///  Mask the interrupt event
                mask = 0x0,
                ///  Unmask the interrupt event
                unmask = 0x1,
            };

            pub const pf2_push_sleep_type = enum(u1) {
                ///  Select deep sleep as sleep type for the FIFO
                deep_sleep = 0x0,
                ///  Select shutdown as the sleep type for the FIFO
                shut_down = 0x1,
            };

            pub const pf2_push_int_en_ov = enum(u1) {
                ///  Mask the interrupt event
                mask = 0x0,
                ///  Unmask the interrupt event
                unmask = 0x1,
            };

            pub const pf2_pop_sleep_type = enum(u1) {
                ///  Select deep sleep as sleep type for the FIFO
                deep_sleep = 0x0,
                ///  Select shutdown as the sleep type for the FIFO
                shut_down = 0x1,
            };

            pub const pf2_pop_int_en_ov = enum(u1) {
                ///  Mask the interrupt event
                mask = 0x0,
                ///  Unmask the interrupt event
                unmask = 0x1,
            };

            pub const pf8k_push_sleep_type = enum(u1) {
                ///  Select deep sleep as sleep type for the FIFO
                deep_sleep = 0x0,
                ///  Select shutdown as the sleep type for the FIFO
                shut_down = 0x1,
            };

            pub const pf8k_push_int_en_ov = enum(u1) {
                ///  Mask the interrupt event
                mask = 0x0,
                ///  Unmask the interrupt event
                unmask = 0x1,
            };

            pub const pf8k_pop_sleep_type = enum(u1) {
                ///  Select deep sleep as sleep type for the FIFO
                deep_sleep = 0x0,
                ///  Select shutdown as the sleep type for the FIFO
                shut_down = 0x1,
            };

            pub const pf8k_pop_int_en_ov = enum(u1) {
                ///  Mask the interrupt event
                mask = 0x0,
                ///  Unmask the interrupt event
                unmask = 0x1,
            };

            pub const pf0_coll_intr_en = enum(u1) {
                ///  Mask the interrupt event
                mask = 0x0,
                ///  Unmask the interrupt event
                unmask = 0x1,
            };

            ///  Packet FIFO Bank control
            PKFB_FIFOCTRL: mmio.Mmio(packed struct(u32) {
                ///  Set to enable the Packet FIFO
                pf0_en: pf0_en,
                ///  Select which subsystem controls the push operation
                pf0_push_mux: pf0_push_mux,
                ///  Select which subsystem controls the pop operation
                pf0_pop_mux: pf0_pop_mux,
                ///  Select which subsystem manages the push interrupt
                pf0_push_int_mux: pf0_push_int_mux,
                ///  Select which subsystem manages the pop interrupt
                pf0_pop_int_mux: pf0_pop_int_mux,
                ///  If FFE is the controller, select which instance of FFE will be used for control
                pf0_ffe_sel: pf0_ffe_sel,
                reserved8: u2 = 0,
                ///  Set to enable the Packet FIFO
                pf1_en: pf0_en,
                ///  Select which subsystem controls the push operation
                pf1_push_mux: pf0_push_mux,
                ///  Select which subsystem controls the pop operation
                pf1_pop_mux: pf0_pop_mux,
                ///  Select which subsystem manages the push interrupt
                pf1_push_int_mux: pf0_push_int_mux,
                ///  Select which subsystem manages the pop interrupt
                pf1_pop_int_mux: pf0_pop_int_mux,
                ///  If FFE is the controller, select which instance of FFE will be used for control
                pf1_ffe_sel: pf0_ffe_sel,
                reserved16: u2 = 0,
                ///  Set to enable the Packet FIFO
                pf2_en: pf0_en,
                ///  Select which subsystem controls the push operation
                pf2_push_mux: pf0_push_mux,
                ///  Select which subsystem controls the pop operation
                pf2_pop_mux: pf0_pop_mux,
                ///  Select which subsystem manages the push interrupt
                pf2_push_int_mux: pf0_push_int_mux,
                ///  Select which subsystem manages the pop interrupt
                pf2_pop_int_mux: pf0_pop_int_mux,
                ///  If FFE is the controller, select which instance of FFE will be used for control
                pf2_ffe_sel: pf0_ffe_sel,
                reserved24: u2 = 0,
                ///  Set to enable the Packet FIFO
                pf8k_en: pf0_en,
                ///  Select which subsystem controls the push operation
                pf8k_push_mux: pf0_push_mux,
                ///  Select which subsystem controls the pop operation
                pf8k_pop_mux: pf0_pop_mux,
                ///  Select which subsystem manages the push interrupt
                pf8k_push_int_mux: pf0_push_int_mux,
                ///  Select which subsystem manages the pop interrupt
                pf8k_pop_int_mux: pf0_pop_int_mux,
                ///  If FFE is the controller, select which instance of FFE will be used for control
                pf8k_ffe_sel: pf0_ffe_sel,
                padding: u2 = 0,
            }),
            ///  SRAM Test Control 0
            PKFB_FIFOSRAMCTRL0: mmio.Mmio(packed struct(u32) {
                ///  Set this bit to disable Test capabilities
                pf0_test1a: u1,
                ///  Set this bit to disable SRAM timing adjust
                pf0_rmea: u1,
                ///  SRAM Adjust timing value
                pf0_rma: u4,
                reserved8: u2 = 0,
                ///  Set this bit to disable Test capabilities
                pf0_test1b: u1,
                ///  Set this bit to disable SRAM timing adjust
                pf0_rmeb: u1,
                ///  SRAM Adjust timing value
                pf0_rmb: u4,
                reserved16: u2 = 0,
                ///  Set this bit to disable Test capabilities
                pf1_test1a: u1,
                ///  Set this bit to disable SRAM timing adjust
                pf1_rmea: u1,
                ///  SRAM Adjust timing value
                pf1_rma: u4,
                reserved24: u2 = 0,
                ///  Set this bit to disable Test capabilities
                pf1_test1b: u1,
                ///  Set this bit to disable SRAM timing adjust
                pf1_rmeb: u1,
                ///  SRAM Adjust timing value
                pf1_rmb: u4,
                padding: u2 = 0,
            }),
            ///  SRAM Test Control 1
            PKFB_FIFOSRAMCTRL1: mmio.Mmio(packed struct(u32) {
                ///  Set this bit to disable Test capabilities
                pf2_test1a: u1,
                ///  Set this bit to disable SRAM timing adjust
                pf2_rmea: u1,
                ///  SRAM Adjust timing value
                pf2_rma: u4,
                reserved8: u2 = 0,
                ///  Set this bit to disable Test capabilities
                pf2_test1b: u1,
                ///  Set this bit to disable SRAM timing adjust
                pf2_rmeb: u1,
                ///  SRAM Adjust timing value
                pf2_rmb: u4,
                reserved16: u2 = 0,
                ///  Set this bit to disable Test capabilities
                pf8k_test1a: u1,
                ///  Set this bit to disable SRAM timing adjust
                pf8k_rmea: u1,
                ///  SRAM Adjust timing value
                pf8k_rma: u4,
                reserved24: u2 = 0,
                ///  Set this bit to disable Test capabilities
                pf8k_test1b: u1,
                ///  Set this bit to disable SRAM timing adjust
                pf8k_rmeb: u1,
                ///  SRAM Adjust timing value
                pf8k_rmb: u4,
                padding: u2 = 0,
            }),
            ///  Packet FIFO Status register
            PKFB_FIFOSTATUS: mmio.Mmio(packed struct(u32) {
                ///  SRAM Sleep Status
                pf0_sram_sleep: pf0_sram_sleep,
                ///  Bit is set if there's an interrupt set for overflow (pktFIFO or FFE FIFO)
                pf0_push_int_over: u1,
                ///  Bit is set if there's an interrupt set for push threshold
                pf0_push_int_thresh: u1,
                ///  Bit is set if there's an interrupt set for push on SRAM sleep
                pf0_push_int_sleep: u1,
                ///  Bit is set if there's an interrupt set for underflow
                pf0_pop_int_under: u1,
                ///  Bit is set if there's an interrupt set for pop threshold
                pf0_pop_int_thresh: u1,
                ///  Bit is set if there's an interrupt set for pop on SRAM sleep
                pf0_pop_int_sleep: u1,
                ///  SRAM Sleep Status
                pf1_sram_sleep: pf0_sram_sleep,
                ///  Bit is set if there's an interrupt set for overflow (pktFIFO or FFE FIFO)
                pf1_push_int_over: u1,
                ///  Bit is set if there's an interrupt set for push threshold
                pf1_push_int_thresh: u1,
                ///  Bit is set if there's an interrupt set for push on SRAM sleep
                pf1_push_int_sleep: u1,
                ///  Bit is set if there's an interrupt set for underflow
                pf1_pop_int_under: u1,
                ///  Bit is set if there's an interrupt set for pop threshold
                pf1_pop_int_thresh: u1,
                ///  Bit is set if there's an interrupt set for pop on SRAM sleep
                pf1_pop_int_sleep: u1,
                ///  SRAM Sleep Status
                pf2_sram_sleep: pf0_sram_sleep,
                ///  Bit is set if there's an interrupt set for overflow (pktFIFO or FFE FIFO)
                pf2_push_int_over: u1,
                ///  Bit is set if there's an interrupt set for push threshold
                pf2_push_int_thresh: u1,
                ///  Bit is set if there's an interrupt set for push on SRAM sleep
                pf2_push_int_sleep: u1,
                ///  Bit is set if there's an interrupt set for underflow
                pf2_pop_int_under: u1,
                ///  Bit is set if there's an interrupt set for pop threshold
                pf2_pop_int_thresh: u1,
                ///  Bit is set if there's an interrupt set for pop on SRAM sleep
                pf2_pop_int_sleep: u1,
                ///  SRAM Sleep Status
                pf8k_sram_sleep: pf0_sram_sleep,
                ///  Bit is set if there's an interrupt set for overflow (pktFIFO or FFE FIFO)
                pf8k_push_int_over: u1,
                ///  Bit is set if there's an interrupt set for push threshold
                pf8k_push_int_thresh: u1,
                ///  Bit is set if there's an interrupt set for push on SRAM sleep
                pf8k_push_int_sleep: u1,
                ///  Bit is set if there's an interrupt set for underflow
                pf8k_pop_int_under: u1,
                ///  Bit is set if there's an interrupt set for pop threshold
                pf8k_pop_int_thresh: u1,
                ///  Bit is set if there's an interrupt set for pop on SRAM sleep
                pf8k_pop_int_sleep: u1,
            }),
            ///  FIFO 0 Push Control
            PKFB_PF0PUSHCTL: mmio.Mmio(packed struct(u32) {
                ///  Set this bit to enable sleep
                pf0_push_sleep_en: u1,
                ///  Select the type of sleep mode
                pf0_push_sleep_type: pf0_push_sleep_type,
                ///  Control whether the push interrupt for FIFO overflow is enabled or masked
                pf0_push_int_en_ov: pf0_push_int_en_ov,
                ///  Control whether the push interrupt for FIFO threshold is enabled or masked
                pf0_push_int_en_thresh: pf0_push_int_en_ov,
                ///  Control whether the push interrupt for push on SRAM sleep is enabled or masked
                pf0_push_int_en_sram_sleep: pf0_push_int_en_ov,
                reserved16: u11 = 0,
                ///  PUSH counter threshold (x32 count)
                pf0_push_thresh: u9,
                padding: u7 = 0,
            }),
            ///  FIFO 0 Pop Control
            PKFB_PF0POPCTL: mmio.Mmio(packed struct(u32) {
                ///  Set this bit to enable sleep
                pf0_pop_sleep_en: u1,
                ///  Select the type of sleep mode
                pf0_pop_sleep_type: pf0_pop_sleep_type,
                ///  Control whether the push interrupt for FIFO overflow is enabled or masked
                pf0_pop_int_en_ov: pf0_pop_int_en_ov,
                ///  Control whether the push interrupt for FIFO threshold is enabled or masked
                pf0_pop_int_en_thresh: pf0_pop_int_en_ov,
                ///  Control whether the push interrupt for pop on SRAM sleep is enabled or masked
                pf0_pop_int_en_sram_sleep: pf0_pop_int_en_ov,
                reserved16: u11 = 0,
                ///  POP counter threshold (x32 count)
                pf0_pop_thresh: u9,
                padding: u7 = 0,
            }),
            ///  FIFO 0 Count
            PKFB_PF0CNT: mmio.Mmio(packed struct(u32) {
                ///  FIFO 0 Pop Count (x32 count) Number of available entries for pop
                pf0_pop_cnt: u9,
                reserved15: u6 = 0,
                ///  FIFO 0 Empty
                pf0_empty: u1,
                ///  FIFO 0 Push Count (x32 count) Number of available entries for push
                pf0_push_cnt: u9,
                reserved31: u6 = 0,
                ///  FIFO 0 Full
                pf0_full: u1,
            }),
            ///  FIFO 0 Push/POP Data Register
            PKFB_PF0DATA: mmio.Mmio(packed struct(u32) {
                ///  FIFO 0 Push/POP Data Register
                pf0_data_reg: u32,
            }),
            ///  FIFO 1 Push Control
            PKFB_PF1PUSHCTL: mmio.Mmio(packed struct(u32) {
                ///  Set this bit to enable sleep
                pf1_push_sleep_en: u1,
                ///  Select the type of sleep mode
                pf1_push_sleep_type: pf1_push_sleep_type,
                ///  Control whether the push interrupt for FIFO overflow is enabled or masked
                pf1_push_int_en_ov: pf1_push_int_en_ov,
                ///  Control whether the push interrupt for FIFO threshold is enabled or masked
                pf1_push_int_en_thresh: pf1_push_int_en_ov,
                ///  Control whether the push interrupt for push on SRAM sleep is enabled or masked
                pf1_push_int_en_sram_sleep: pf1_push_int_en_ov,
                reserved16: u11 = 0,
                ///  PUSH counter threshold (x32 count)
                pf1_push_thresh: u8,
                padding: u8 = 0,
            }),
            ///  FIFO 1 Pop Control
            PKFB_PF1POPCTL: mmio.Mmio(packed struct(u32) {
                ///  Set this bit to enable sleep
                pf1_pop_sleep_en: u1,
                ///  Select the type of sleep mode
                pf1_pop_sleep_type: pf1_pop_sleep_type,
                ///  Control whether the push interrupt for FIFO overflow is enabled or masked
                pf1_pop_int_en_ov: pf1_pop_int_en_ov,
                ///  Control whether the push interrupt for FIFO threshold is enabled or masked
                pf1_pop_int_en_thresh: pf1_pop_int_en_ov,
                ///  Control whether the push interrupt for pop on SRAM sleep is enabled or masked
                pf1_pop_int_en_sram_sleep: pf1_pop_int_en_ov,
                reserved16: u11 = 0,
                ///  POP counter threshold (x32 count)
                pf1_pop_thresh: u8,
                padding: u8 = 0,
            }),
            ///  FIFO 1 Count
            PKFB_PF1CNT: mmio.Mmio(packed struct(u32) {
                ///  FIFO 1 Pop Count (x32 count) Number of available entries for pop
                pf1_pop_cnt: u8,
                reserved15: u7 = 0,
                ///  FIFO 1 Empty
                pf1_empty: u1,
                ///  FIFO 1 Push Count (x32 count) Number of available entries for push
                pf1_push_cnt: u8,
                reserved31: u7 = 0,
                ///  FIFO 1 Full
                pf1_full: u1,
            }),
            ///  FIFO 1 Push/POP Data Register
            PKFB_PF1DATA: mmio.Mmio(packed struct(u32) {
                ///  FIFO 1 Push/POP Data Register
                pf1_data_reg: u32,
            }),
            ///  FIFO 2 Push Control
            PKFB_PF2PUSHCTL: mmio.Mmio(packed struct(u32) {
                ///  Set this bit to enable sleep
                pf2_push_sleep_en: u1,
                ///  Select the type of sleep mode
                pf2_push_sleep_type: pf2_push_sleep_type,
                ///  Control whether the push interrupt for FIFO overflow is enabled or masked
                pf2_push_int_en_ov: pf2_push_int_en_ov,
                ///  Control whether the push interrupt for FIFO threshold is enabled or masked
                pf2_push_int_en_thresh: pf2_push_int_en_ov,
                ///  Control whether the push interrupt for push on SRAM sleep is enabled or masked
                pf2_push_int_en_sram_sleep: pf2_push_int_en_ov,
                reserved16: u11 = 0,
                ///  PUSH counter threshold (x32 count)
                pf2_push_thresh: u8,
                padding: u8 = 0,
            }),
            ///  FIFO 2 Pop Control
            PKFB_PF2POPCTL: mmio.Mmio(packed struct(u32) {
                ///  Set this bit to enable sleep
                pf2_pop_sleep_en: u1,
                ///  Select the type of sleep mode
                pf2_pop_sleep_type: pf2_pop_sleep_type,
                ///  Control whether the push interrupt for FIFO overflow is enabled or masked
                pf2_pop_int_en_ov: pf2_pop_int_en_ov,
                ///  Control whether the push interrupt for FIFO threshold is enabled or masked
                pf2_pop_int_en_thresh: pf2_pop_int_en_ov,
                ///  Control whether the push interrupt for pop on SRAM sleep is enabled or masked
                pf2_pop_int_en_sram_sleep: pf2_pop_int_en_ov,
                reserved16: u11 = 0,
                ///  POP counter threshold (x32 count)
                pf2_pop_thresh: u8,
                padding: u8 = 0,
            }),
            ///  FIFO 2 Count
            PKFB_PF2CNT: mmio.Mmio(packed struct(u32) {
                ///  FIFO 2 Pop Count (x32 count) Number of available entries for pop
                pf2_pop_cnt: u8,
                reserved15: u7 = 0,
                ///  FIFO 2 Empty
                pf2_empty: u1,
                ///  FIFO 2 Push Count (x32 count) Number of available entries for push
                pf2_push_cnt: u8,
                reserved31: u7 = 0,
                ///  FIFO 2 Full
                pf2_full: u1,
            }),
            ///  FIFO 2 Push/POP Data Register
            PKFB_PF2DATA: mmio.Mmio(packed struct(u32) {
                ///  FIFO 2 Push/POP Data Register
                pf2_data_reg: u32,
            }),
            ///  FIFO 8k Push Control
            PKFB_PF8KPUSHCTL: mmio.Mmio(packed struct(u32) {
                ///  Set this bit to enable sleep
                pf8k_push_sleep_en: u1,
                ///  Select the type of sleep mode
                pf8k_push_sleep_type: pf8k_push_sleep_type,
                ///  Control whether the push interrupt for FIFO overflow is enabled or masked
                pf8k_push_int_en_ov: pf8k_push_int_en_ov,
                ///  Control whether the push interrupt for FIFO threshold is enabled or masked
                pf8k_push_int_en_thresh: pf8k_push_int_en_ov,
                ///  Control whether the push interrupt for push on SRAM sleep is enabled or masked
                pf8k_push_int_en_sram_sleep: pf8k_push_int_en_ov,
                reserved16: u11 = 0,
                ///  PUSH counter threshold (x16 count)
                pf8k_push_thresh: u13,
                padding: u3 = 0,
            }),
            ///  FIFO 8k Pop Control
            PKFB_PF8KPOPCTL: mmio.Mmio(packed struct(u32) {
                ///  Set this bit to enable sleep
                pf8k_pop_sleep_en: u1,
                ///  Select the type of sleep mode
                pf8k_pop_sleep_type: pf8k_pop_sleep_type,
                ///  Control whether the push interrupt for FIFO overflow is enabled or masked
                pf8k_pop_int_en_ov: pf8k_pop_int_en_ov,
                ///  Control whether the push interrupt for FIFO threshold is enabled or masked
                pf8k_pop_int_en_thresh: pf8k_pop_int_en_ov,
                ///  Control whether the push interrupt for pop on SRAM sleep is enabled or masked
                pf8k_pop_int_en_sram_sleep: pf8k_pop_int_en_ov,
                ///  FIFO Packet Mode
                pf8k_fifo_pkt_mode: u1,
                ///  Ring buffer mode
                pf8k_fifo_ring_buff_mode: u1,
                reserved16: u9 = 0,
                ///  POP counter threshold (x16 count)
                pf8k_pop_thresh: u8,
                padding: u8 = 0,
            }),
            ///  FIFO 8k Count
            PKFB_PF8KCNT: mmio.Mmio(packed struct(u32) {
                ///  FIFO 8k Pop Count (x16 count) Number of available entries for pop
                pf8k_pop_cnt: u13,
                reserved15: u2 = 0,
                ///  FIFO 8k Empty
                pf8k_empty: u1,
                ///  FIFO 8k Push Count (x32 count) Number of available entries for push
                pf8k_push_cnt: u13,
                reserved31: u2 = 0,
                ///  FIFO 8k Full
                pf8k_full: u1,
            }),
            ///  FIFO 8k Push/POP Data Register
            PKFB_PF8kDATA: mmio.Mmio(packed struct(u32) {
                ///  FIFO 8k Push/POP Data Register. In ringbuffer mode, [16] is treated as SOP (start-of-packet) by autodrain logic
                pf8k_data_reg: u17,
                ///  FIFO 8k Push EOP (end of packet)
                pf8k_push_eop: u1,
                padding: u14 = 0,
            }),
            ///  Control for collision interrupts
            PKFB_FIFO_COLL_INTR: mmio.Mmio(packed struct(u32) {
                ///  Interrupt is triggered when bot FFE0 and FFE1 try to push into packet FIFO 0
                pf0_coll_intr: u1,
                ///  Interrupt is triggered when bot FFE0 and FFE1 try to push into packet FIFO 1
                pf1_coll_intr: u1,
                ///  Interrupt is triggered when bot FFE0 and FFE1 try to push into packet FIFO 0
                pf2_coll_intr: u1,
                ///  Interrupt is triggered when bot FFE0 and FFE1 try to push into packet FIFO 8k
                pf8k_coll_intr: u1,
                padding: u28 = 0,
            }),
            ///  Control register for enabling or masking the collisione interrupts
            PKFB_FIFO_COLL_INTR_EN: mmio.Mmio(packed struct(u32) {
                ///  Set bit to enable interrupt
                pf0_coll_intr_en: pf0_coll_intr_en,
                ///  Set bit to enable interrupt
                pf1_coll_intr_en: pf0_coll_intr_en,
                ///  Set bit to enable interrupt
                pf2_coll_intr_en: pf0_coll_intr_en,
                ///  Set bit to enable interrupt
                pf8k_coll_intr_en: pf0_coll_intr_en,
                padding: u28 = 0,
            }),
        };

        ///  Power Management Unit
        pub const PMU = extern struct {
            pub const M4_Rst_Release = enum(u1) {
                ///  Keep M4 Core on Reset
                keep_on_reset = 0x0,
                ///  Release M4 Core Reset
                release_from_reset = 0x1,
            };

            pub const Cfg_fpd_on = enum(u1) {
                ///  The SPI is in Power Down Mode. If set, flash will be woken up
                wakeup_flash = 0x1,
                _,
            };

            pub const Sys_rst_as_int = enum(u1) {
                ///  Treat SYSTEM Reset as Chip Reset
                sys_rst_as_chip_rst = 0x0,
                ///  Reconfigure the SYSTEM Reset pin as the external interrupt pin
                sys_rst_pin_as_exti = 0x1,
            };

            pub const Sys_rst_as_int_pw = enum(u2) {
                ///  PWM must be 1S ~ 2S for Reset INT
                pulse_1S_2S = 0x0,
                ///  PWM must be 2S ~ 3S for Reset INT
                pulse_2S_3S = 0x1,
                ///  PWM must be 3S ~ 4S for Reset INT
                pulse_3S_4S = 0x2,
                ///  PWM must be 4S ~ 5S for Reset INT
                pulse_4S_5S = 0x3,
            };

            pub const Sys_rst_pulse_ext = enum(u1) {
                ///  4S after INT trigger
                after_4s = 0x0,
                ///  8S after INT trigger
                after_8s = 0x1,
            };

            pub const SPI_Reboot_enable_N = enum(u1) {
                ///  Need cfgSM to reload the code when M4 waking up from SD (Mode1)
                spi_flash_code_reload = 0x0,
                _,
            };

            pub const AP_Reboot_enable_N = enum(u1) {
                ///  Need AP to reload the code when M4 waking up from SD (Mode1)
                ap_code_reload = 0x0,
                _,
            };

            pub const FFE0_BUSY = enum(u1) {
                ///  FFE0 is not busy
                not_busy = 0x0,
                ///  FFE0 is busy
                busy = 0x1,
            };

            pub const Code_Source_Cfg = enum(u1) {
                ///  From SPI Flash, if SWD_Mode_Cfg is 1, CfgSM will not be kicked off.
                spi_flash = 0x0,
                ///  From AP
                ap = 0x1,
            };

            pub const Debug_Port_Cfg = enum(u1) {
                ///  SW_CLK @pad[5], SW_IO @pad[6]
                swd_pads_5_6 = 0x0,
                ///  SW_CLK @pad[27], SW_IO @pad[26]
                swd_pads_27_26 = 0x1,
            };

            pub const SWD_Mode_Cfg = enum(u1) {
                ///  SWD debugger is attached. Release the M4 Core reset once System Reset released.
                if_swd_release_m4_on_rest = 0x1,
                _,
            };

            pub const CLOCK_BYPASS_Cfg = enum(u1) {
                ///  The System Clock Source is from the I/O PAD instead of OSC if Debug_port_cfg is 1 as well.
                external_clock_configured = 0x1,
                _,
            };

            pub const FFEFB_WU = enum(u1) {
                ///  If FFE and FB WU event happen at same time, FB will wake up first, then FFE.
                secuential = 0x0,
                ///  If FFE and FB WU event happen at same time, FFE and FB will wake up in parallel
                parallel = 0x1,
            };

            pub const SRAM_WU = enum(u1) {
                ///  If more than one SRAM (M4S1 ~ M4S15) WU event happen at same time, these SRAMs will wake up in the following priority. M4S1->M4S2->….->M4S14-> M4S15 (M4S1 has the highest priority and M4S15 has the lowest priority)
                secuential = 0x0,
                ///  If more than one SRAM(M4S1 ~ M4S15, NOT include M4S0) WU event happen at same time, these SRAMs will wake up in parallel.
                parallel = 0x1,
            };

            pub const AUDIO_WU = enum(u1) {
                ///  If more than one AUDIO Blocks (AD0 ~ AD5) WU event happen at same time, these Blocks will wake up in the following priority. AD5->AD1->AD2->AD0->AD3->AD4. (AD5 has the highest priority and AD4 has the lowest priority)
                secuential = 0x0,
                ///  If more than one AUDIO Blocks (AD0 ~ AD5) WU event happen at same time, these AUDIO power domain will wake up in parallel
                parallel = 0x1,
            };

            pub const M4M4S0_WU = enum(u1) {
                ///  Not defined. guess: First M4 then M4S0
                secuential = 0x0,
                ///  If M4 and M4S0 WU event happen at same time, then M4 and M4S0 will wake up at same time
                parallel = 0x1,
            };

            pub const FFEFB_PD = enum(u1) {
                ///  If FFE and FB PD event happen at same time, FB will power down first, then FFE.
                secuential = 0x0,
                ///  If FFE and FB PD event happen at same time, FFE and FB will power down in parallel
                parallel = 0x1,
            };

            pub const SRAM_PD = enum(u1) {
                ///  If more than one SRAM (M4S1 ~ M4S15) PD event happen at same time, these SRAMs will power down in the following priority. M4S1->M4S2->….->M4S14-> M4S15 (M4S1 has the highest priority and M4S15 has the lowest priority)
                secuential = 0x0,
                ///  If more than one SRAM (M4S1 ~ M4S15, NOT include M4S0) PD event happen at same time, these SRAMs will power down in parallel.
                parallel = 0x1,
            };

            pub const AUDIO_PD = enum(u1) {
                ///  If more than one AUDIO Blocks (AD0 ~ AD5) PD event happen at same time, these Blocks will power down in the following priority. AD5->AD1->AD2->AD0->AD3->AD4. (AD5 has the highest priority and AD4 has the lowest priority)
                secuential = 0x0,
                ///  If more than one AUDIO Blocks (AD0 ~ AD5) PD event happen at same time, these AUDIO power domain will power down in parallel
                parallel = 0x1,
            };

            pub const M4M4S0_PD = enum(u1) {
                ///  Not defined. guess: First M4 then M4S0
                secuential = 0x0,
                ///  If M4 and M4S0 PD event happen at same time, then M4 and M4S0 will put into power saving mode at same time
                parallel = 0x1,
            };

            pub const SDMA_Power_Mode_Cfg = enum(u2) {
                ///  Retention Mode
                retention_mode = 0x1,
                ///  Shut Down Mode
                shut_down_mode = 0x2,
                _,
            };

            pub const SDMA_PD_EVENT = enum(u1) {
                ///  SDMA HW Power Down Event will be masked.
                mask = 0x0,
                ///  Undefined Behaviour. Probably unmasks the Power Down event.
                undefined = 0x1,
            };

            pub const M4_Power_Mode_Cfg = enum(u2) {
                ///  Configure power down event for shut down mode
                shut_down_mode = 0x2,
                _,
            };

            pub const FFE_Power_Mode_Cfg = enum(u2) {
                ///  Configure power down event for deep sleep mode
                deep_sleep_mode = 0x1,
                ///  Configure power down event for shut down mode
                shut_down_mode = 0x2,
                _,
            };

            pub const FFE_PD_Event_Mask = enum(u1) {
                ///  Masks the busy signal sources
                mask = 0x0,
                ///  Will unmask the busy signal sources
                unmask = 0x1,
            };

            pub const KickOff_Timer_Time_Out = enum(u1) {
                ///  Mask the interrupt as a wake-up event source
                mask = 0x0,
                ///  Unmask the interrupt as a wake-up event source
                unmask = 0x1,
            };

            pub const FB_Power_Mode_Cfg = enum(u2) {
                ///  Configure power down event for deep sleep mode
                deep_sleep_mode = 0x1,
                ///  Configure power down event for shut down mode
                shut_down_mode = 0x2,
                _,
            };

            pub const Interface_Signal_0 = enum(u1) {
                ///  Mask the signal as a power-down event source
                mask = 0x0,
                ///  Unmask the signal as a power-down event source
                unmask = 0x1,
            };

            pub const Sensor_GPIO_0_INT = enum(u1) {
                ///  Mask the interrupt as a wake-up event source
                mask = 0x0,
                ///  Unmask the interrupt as a wake-up event source
                unmask = 0x1,
            };

            pub const PF_Power_Mode_Cfg = enum(u2) {
                ///  Configure power down event for deep sleep mode
                deep_sleep_mode = 0x1,
                ///  Configure power down event for shut down mode
                shut_down_mode = 0x2,
                _,
            };

            pub const M4S0_Power_Mode_Cfg = enum(u2) {
                ///  Configure power down event for shut down mode
                shut_down_mode = 0x2,
                _,
            };

            pub const M4S0_PD_Event_Mask = enum(u1) {
                ///  M4S0 SRAM Power Down Event will be masked.
                mask = 0x0,
                ///  Undefined Behaviour. Probably unmasks the Power Down event.
                undefined = 0x1,
            };

            pub const A1_Power_Mode_Cfg = enum(u2) {
                ///  Retention Mode
                retention_mode = 0x1,
                ///  Shut Down Mode
                shut_down_mode = 0x2,
                _,
            };

            pub const A1_WU_EVENT_MASK_M = enum(u1) {
                ///  Mask the M4 Wakeup event as the trigger for the A1 wake-up event
                mask = 0x0,
                ///  Unmask M4 wake-up event as the trigger for the A1 wake-up
                unmask = 0x1,
            };

            pub const AD0_WU_Event_Mask_N = enum(u1) {
                ///  Mask the external interrupts from pads 9 or 30 as wake-up event triggers
                mask = 0x0,
                ///  Unmask the external interrupts from pads 9 or 30 as wake-up event triggers
                unmask = 0x1,
            };

            pub const CTRL_M4_SRAM_DS_0 = enum(u1) {
                ///  Disable the Deep Sleep function of SRAM Macro, Memory content will be kept.
                disable_deep_sleep = 0x0,
                ///  Enable the Deep Sleep function of SRAM Macro, Memory content will be kept.
                enable_deep_sleep = 0x1,
            };

            pub const CTRL_M4_SRAM_SD_0 = enum(u1) {
                ///  Disable the shut down function of SRAM Macro.
                disable_shut_down = 0x0,
                ///  Enable the shut down function of SRAM Macro, Memory content will be lost.
                enable_shut_down = 0x1,
            };

            pub const CTRL_PF_SRAM_SD_0 = enum(u1) {
                ///  Disable the shut down function of SRAM Macro.
                disable_shut_down = 0x0,
                ///  Enable the shut down function of SRAM Macro, Memory content will be lost.
                enable_shut_down = 0x1,
            };

            pub const CTRL_FFE_SRAM_DS_CM0 = enum(u1) {
                ///  Disable the Deep Sleep function of SRAM Macro, Memory content will be kept.
                disable_deep_sleep = 0x0,
                ///  Enable the Deep Sleep function of SRAM Macro, Memory content will be kept.
                enable_deep_sleep = 0x1,
            };

            pub const CTRL_FFE_SRAM_SD_CM0 = enum(u1) {
                ///  Disable the shut down function of SRAM Macro.
                disable_shut_down = 0x0,
                ///  Enable the shut down function of SRAM Macro, Memory content will be lost.
                enable_shut_down = 0x1,
            };

            pub const AUDIO_SRAM_LC_DS_0 = enum(u1) {
                ///  Disable the Deep Sleep function of SRAM Macro, Memory content will be kept.
                disable_deep_sleep = 0x0,
                ///  Enable the Deep Sleep function of SRAM Macro, Memory content will be kept.
                enable_deep_sleep = 0x1,
            };

            pub const AUDIO_SRAM_LC_SD_0 = enum(u1) {
                ///  Disable the shut down function of SRAM Macro.
                disable_shut_down = 0x0,
                ///  Enable the shut down function of SRAM Macro, Memory content will be lost.
                enable_shut_down = 0x1,
            };

            pub const CFG_FFE_SRAM_LS_0 = enum(u1) {
                ///  Disable, never put SRAM into Light Sleep mode.
                disable_light_sleep = 0x0,
                ///  Enable, Allow the Hardware control Light Speed pin of SRAM macro directly.
                enable_light_sleep = 0x1,
            };

            pub const SDMA_SRAM_DS = enum(u1) {
                ///  Disable the Deep Sleep function of SRAM Macro, Memory content will be kept.
                disable_deep_sleep = 0x0,
                ///  Enable the Deep Sleep function of SRAM Macro, Memory content will be kept.
                enable_deep_sleep = 0x1,
            };

            pub const SDMA_SRAM_SD = enum(u1) {
                ///  Disable the shut down function of SRAM Macro.
                disable_shut_down = 0x0,
                ///  Enable the shut down function of SRAM Macro, Memory content will be lost.
                enable_shut_down = 0x1,
            };

            pub const FFE_Software_PD = enum(u1) {
                ///  Put the power domain to power saving mode according to configuration setting, HW will clear it once power down sequence is finished.
                power_down = 0x1,
                _,
            };

            pub const M4S0_Software_PD = enum(u1) {
                ///  Put the power domain to power saving mode according to configuration setting, HW will clear it once power down sequence is finished.
                power_down = 0x1,
                _,
            };

            pub const SDMA_Software_PD = enum(u1) {
                ///  Put the power domain to power saving mode according to configuration setting, HW will clear it once power down sequence is finished.
                power_down = 0x1,
                _,
            };

            pub const Audio_AD0_PD = enum(u1) {
                ///  Put the power domain to shut down, HW will clear it once power down sequence is finished.
                power_down = 0x1,
                _,
            };

            pub const FFE_Software_WU = enum(u1) {
                ///  wake up power domain, HW will clear it once power up sequence is finished.
                wake_up = 0x1,
                _,
            };

            pub const M4S0_Software_WU = enum(u1) {
                ///  wake up power domain, HW will clear it once power up sequence is finished.
                wake_up = 0x1,
                _,
            };

            pub const SDMA_Software_WU = enum(u1) {
                ///  wake up power domain, HW will clear it once power up sequence is finished.
                wake_up = 0x1,
                _,
            };

            pub const Audio_AD0_WU = enum(u1) {
                ///  wake up power domain, HW will clear it once power up sequence is finished.
                wake_up = 0x1,
                _,
            };

            pub const PMU_STM_PRIORITY = enum(u1) {
                ///  Audio/SRAM PMU STM (State Machine) and M4/FFE PMU STM could run at same time.
                simultaneous = 0x0,
                ///  Audio/SRAM PMU STM and M4/FFE PMU STM will be arbitrate in Round Robin Scheme
                round_robin = 0x1,
            };

            pub const M4SRAM_LPMF = enum(u16) {
                ///  Enable M4 SRAM Light Sleep Mode.
                enable_light_sleep = 0x1,
                _,
            };

            pub const M4SRAM_LPMH_MASK_N = enum(u16) {
                ///  M4 SRAM's LPMH will be de-asserted
                lpmh_de_assert = 0x0,
                ///  M4_MEM_CTRL_0 will control the corresponding M4 SRAM's LPMH
                let_m4_mem_ctrl_0_control = 0x1,
                _,
            };

            ///  On POR Reset Domain
            MISC_POR_0: mmio.Mmio(packed struct(u32) {
                ///  RWHC: In AP mode, (SPIS_SS is High by default) ( In Wearable Mode, it has NO effect). The Hardware will clear this bit if `AP_Reboot_enable_N` is programmed and M4 is waking up from Mode 1 (SD) to ensure the M4 is kept on Reset once waking up.
                M4_Rst_Release: M4_Rst_Release,
                padding: u31 = 0,
            }),
            ///  On POR Reset Domain
            MISC_POR_1: mmio.Mmio(packed struct(u32) {
                ///  The FW need to program this bit if FW put the SPI flash to Power Down Mode. The CfgSM will wake up the Flash before reloading the boot code if this bit is 1. FW need to ensure this bit is clear after boot code reloading.
                Cfg_fpd_on: Cfg_fpd_on,
                ///  RWHC: Interrupt pin. This bit will be clear if System Reset Trigger when this bit is one
                Sys_rst_as_int: Sys_rst_as_int,
                ///  If Sys_rst_as_int bit is programmed, then this system Reset INT will trigger if the reset pin is low and the pulse width greater than the configuration value.
                Sys_rst_as_int_pw: Sys_rst_as_int_pw,
                ///  If reset pin is still ketp low after the system reset INT is triggered, then the Chip will be reset if its pulse width is greater than configuration value
                Sys_rst_pulse_ext: Sys_rst_pulse_ext,
                padding: u27 = 0,
            }),
            ///  On POR Reset Domain
            MISC_POR_2: mmio.Mmio(packed struct(u32) {
                ///  If 1'b0, Need cfgSM to reload the code when M4 waking up from SD (Mode1). FW needs to clear this bit if needs code reloading from SPI flash once waking up from SD mdoe (MODE1). CfgSM will be kick off if code reloading from SPI flash needed. This is for code reloading ONLY.
                SPI_Reboot_enable_N: SPI_Reboot_enable_N,
                ///  If 1'b0, Need cfgSM to reload the code when M4 waking up from SD (Mode1) FW needs to clear this bit if needs code reloading from SPI flash once waking up from SD mdoe (MODE1). CfgSM will be kick off if code reloading from SPI flash needed. This is for code reloading ONLY.
                AP_Reboot_enable_N: AP_Reboot_enable_N,
                padding: u30 = 0,
            }),
            ///  On POR Reset Domain
            MISC_POR_3: mmio.Mmio(packed struct(u32) {
                ///  Scratch Bytes, General Purpose Registers
                Scratch_byte_0: u8,
                ///  Scratch Bytes, General Purpose Registers
                Scratch_byte_1: u8,
                padding: u16 = 0,
            }),
            ///  Reserved
            RST_CTRL_0: u32,
            ///  Reserved
            RST_CTRL_1: u32,
            ///  Reserved
            CHIP_STA_0: u32,
            ///  Chip Status register
            CHIP_STA_1: mmio.Mmio(packed struct(u32) {
                ///  Indicates if FFE0 is busy
                FFE0_BUSY: FFE0_BUSY,
                reserved4: u3 = 0,
                ///  This reflects the value of boot strap bit. Pad[19]
                Code_Source_Cfg: Code_Source_Cfg,
                ///  This reflects the value of boot strap bit. Pad[8]
                Debug_Port_Cfg: Debug_Port_Cfg,
                ///  FB Stasus Siganl 0 (Its definition is depending on the implementation of FB)
                FB_0: u1,
                ///  FB Stasus Siganl 1 (Its definition is depending on the implementation of FB)
                FB_1: u1,
                ///  FB Stasus Siganl 2 (Its definition is depending on the implementation of FB)
                FB_2: u1,
                ///  FB Stasus Siganl 3 (Its definition is depending on the implementation of FB)
                FB_3: u1,
                ///  This reflects the value of boot strap bit. Pad[20]
                SWD_Mode_Cfg: SWD_Mode_Cfg,
                ///  This reflects the value of boot strap bit. Pad[9]
                CLOCK_BYPASS_Cfg: CLOCK_BYPASS_Cfg,
                padding: u20 = 0,
            }),
            ///  Wake-up Interrupt Controller control register
            WIC_CTRL: mmio.Mmio(packed struct(u32) {
                ///  RWHC: This bit will be clear once M4 is in Mode 1 (SD mode) by HW.
                WIC_Enable: u1,
                padding: u31 = 0,
            }),
            ///  Wake-up Interrupt Controller Status register
            WIC_STATUS: mmio.Mmio(packed struct(u32) {
                ///  This bit is indicates that M4 Power Saving is enabled. This bit is based on the WIC/M4 interface signal.
                WIC_Ready: u1,
                padding: u31 = 0,
            }),
            reserved48: [8]u8,
            ///  Power Down Scheme configuration
            PWR_DWN_SCH: mmio.Mmio(packed struct(u32) {
                ///  FFE and FB simultaneous wakeup-event behaviour
                FFEFB_WU: FFEFB_WU,
                ///  SRAM simultaneous wakeup-event behaviour
                SRAM_WU: SRAM_WU,
                ///  Audio simultaneous wakeup-event behaviour
                AUDIO_WU: AUDIO_WU,
                ///  M4 and M4S0 simultaneous wakeup-event behaviour
                M4M4S0_WU: M4M4S0_WU,
                ///  FFE and FB simultaneous power-down behaviour
                FFEFB_PD: FFEFB_PD,
                ///  SRAM simultaneous power-down behaviour
                SRAM_PD: SRAM_PD,
                ///  AUDIO simultaneous power-down behaviour
                AUDIO_PD: AUDIO_PD,
                ///  M4 and M4S0 simultaneous power-down behaviour
                M4M4S0_PD: M4M4S0_PD,
                padding: u24 = 0,
            }),
            reserved64: [12]u8,
            ///  Control the power state of Oscillator once the M4 is in Power Saving Mode
            PWR_OFF_OSC: mmio.Mmio(packed struct(u32) {
                ///  1'b1 : Turn Off OSC once the M4 is in Power Saving Mode
                Power_Off_OSC: u1,
                padding: u31 = 0,
            }),
            ///  Configure the external wakeup event source. Turn on the OSC once PMUT is time out or GPIO INT is triggering.
            EXT_WAKING_UP_SRC: mmio.Mmio(packed struct(u32) {
                ///  Bit 7:0 GPIO/Sensor INT, level only, (Raw information from PAD direclty) (Turn on OSC)
                Ext_WU_Source_Mask_N_0_GPIO_INT: u8,
                ///  Bit 8 : PMU Timer
                Ext_WU_Source_Mask_N_0_PMU_Timer: u1,
                ///  Bit 9 : Reset Interrupt INT (Always Mask).
                Ext_WU_Source_Mask_N_0_Reset_Interrupt: u1,
                padding: u22 = 0,
            }),
            reserved112: [40]u8,
            ///  SDMA status register
            SDMA_STATUS: mmio.Mmio(packed struct(u32) {
                ///  SDMA power domain is active
                SDMA_Active: u1,
                ///  SDMA power domain is in Deep Sleep Mode
                SDMA_Deep_Sleep: u1,
                ///  SDMA power domain is in Shut Down mode
                SDMA_Shut_Down: u1,
                ///  Reserved
                SDMA_Clock_Gating: u1,
                padding: u28 = 0,
            }),
            ///  Register for SDMA Power Mode configuration
            SDMA_POWER_MODE_CFG: mmio.Mmio(packed struct(u32) {
                ///  FW need to configure the registers before kicking off the power down event.
                SDMA_Power_Mode_Cfg: SDMA_Power_Mode_Cfg,
                padding: u30 = 0,
            }),
            ///  Register for controlling if power down event will be masked
            SDMA_PD_SRC_MASK_N: mmio.Mmio(packed struct(u32) {
                ///  1'b0 : SDMA HW Power Down Event will be masked.
                SDMA_PD_EVENT: SDMA_PD_EVENT,
                padding: u31 = 0,
            }),
            ///  Reserved
            SDMA_WU_SRC_MASK_N: u32,
            ///  Status of the M4 Power Domain
            M4_STATUS: mmio.Mmio(packed struct(u32) {
                ///  M4 Power Domain is active
                M4_Active: u1,
                ///  Reserved
                M4_Deep_Sleep: u1,
                ///  M4 Power Domain is in Shut Down mode
                M4_Shut_Down: u1,
                ///  Reserved
                M4_Clock_Gating: u1,
                padding: u28 = 0,
            }),
            ///  Configuration for the M4 power domain
            M4_PWR_MODE_CFG: mmio.Mmio(packed struct(u32) {
                ///  FW need to configure the registers before clocking off the power down event
                M4_Power_Mode_Cfg: M4_Power_Mode_Cfg,
                padding: u30 = 0,
            }),
            ///  Reserved
            M4_PD_SRC_MASKk_N: u32,
            ///  Reserved
            M4_WU: u32,
            ///  Status of the Flexible Fusion Engine
            FFE_STATUS: mmio.Mmio(packed struct(u32) {
                ///  FFE Power Domain is active
                FFE_Active: u1,
                ///  FFE Power Domain is in Deep Sleep mode
                FFE_Deep_Sleep: u1,
                ///  FFE Power Domain is in Shut_Down mode
                FFE_Shut_Down: u1,
                ///  Power Domain is alive, Onlt related clock is gated off -- This mode is for debugging only
                FFE_Clock_Gating: u1,
                padding: u28 = 0,
            }),
            ///  Power Mode configuration for the Flexible Fusion Engine Power Domain
            FFE_PWR_MODE_CFG: mmio.Mmio(packed struct(u32) {
                ///  FW need to configure the registers before kicking off the power down event.
                FFE_Power_Mode_Cfg: FFE_Power_Mode_Cfg,
                padding: u30 = 0,
            }),
            ///  Control masking of busy signal. The falling edge of any of the above signals (non-mask) will put the FFE into Power saving mode base on the Power Mode Cfg. Note: These signals used to indicate the BUSY status, so they must be level signals.
            FFE_PD_SRC_MASK_N: mmio.Mmio(packed struct(u32) {
                ///  FFEs Busy Signal (FFE 0, SM 0 and SM1 Busy Signals ) Mask_N
                FFE_PD_Event_Mask: FFE_PD_Event_Mask,
                padding: u31 = 0,
            }),
            ///  Control the masking of the Flexible Fusion Engine wake-up event triggers
            FFE_WU_SRC_MASK_N: mmio.Mmio(packed struct(u32) {
                ///  If unmasked, kick off timer time-out event will wake up FFE.
                KickOff_Timer_Time_Out: KickOff_Timer_Time_Out,
                ///  If unmasked, GPIO0 interrupt will wake up FFE.
                Sensor_GPIO_0_INT: KickOff_Timer_Time_Out,
                ///  If unmasked, GPIO1 interrupt will wake up FFE.
                Sensor_GPIO_1_INT: KickOff_Timer_Time_Out,
                ///  If unmasked, GPIO2 interrupt will wake up FFE.
                Sensor_GPIO_2_INT: KickOff_Timer_Time_Out,
                ///  If unmasked, GPIO3 interrupt will wake up FFE.
                Sensor_GPIO_3_INT: KickOff_Timer_Time_Out,
                ///  If unmasked, GPIO4 interrupt will wake up FFE.
                Sensor_GPIO_4_INT: KickOff_Timer_Time_Out,
                ///  If unmasked, GPIO5 interrupt will wake up FFE.
                Sensor_GPIO_5_INT: KickOff_Timer_Time_Out,
                ///  If unmasked, GPIO6 interrupt will wake up FFE.
                Sensor_GPIO_6_INT: KickOff_Timer_Time_Out,
                ///  If unmasked, GPIO7 interrupt will wake up FFE.
                Sensor_GPIO_7_INT: KickOff_Timer_Time_Out,
                padding: u23 = 0,
            }),
            ///  FPGA Fabric Power domain status
            FB_STATUS: mmio.Mmio(packed struct(u32) {
                ///  FPGA Fabric Power domain is active
                FB_Active: u1,
                ///  FPGA Fabric Power domain is in mode
                FB_Deep_Sleep: u1,
                ///  FPGA Fabric Power domain is in mode
                FB_Shut_Down: u1,
                padding: u29 = 0,
            }),
            ///  Power mode configuration for the FPGA Fabric Power domain
            FB_PWR_MODE_CFG: mmio.Mmio(packed struct(u32) {
                ///  FW need to configure the registers before kicking off the power down event.
                FB_Power_Mode_Cfg: FB_Power_Mode_Cfg,
                padding: u30 = 0,
            }),
            ///  Control masking of power down event signals for the FPGA Fabric power domain. The falling edge of any of the listed signals (non-mask) will put the FB into Power saving mode base on the Power Mode Cfg. Note: These signals used to indicate the BUSY status, so they must be level signals.
            FB_PD_SRC_MASK_N: mmio.Mmio(packed struct(u32) {
                reserved1: u1 = 0,
                ///  Control the mask for the Interface Signal 0
                Interface_Signal_0: Interface_Signal_0,
                ///  Control the mask for the Interface Signal 1
                Interface_Signal_1: Interface_Signal_0,
                ///  Control the mask for the Interface Signal 2
                Interface_Signal_2: Interface_Signal_0,
                ///  Control the mask for the Interface Signal 3
                Interface_Signal_3: Interface_Signal_0,
                padding: u27 = 0,
            }),
            ///  Control the masking of the FPGA FAbric wake-up event triggers
            FB_WU_SRC_MASK_N: mmio.Mmio(packed struct(u32) {
                ///  If unmasked, GPIO0 interrupt will wake up FB.
                Sensor_GPIO_0_INT: Sensor_GPIO_0_INT,
                ///  If unmasked, GPIO1 interrupt will wake up FB.
                Sensor_GPIO_1_INT: Sensor_GPIO_0_INT,
                ///  If unmasked, GPIO2 interrupt will wake up FB.
                Sensor_GPIO_2_INT: Sensor_GPIO_0_INT,
                ///  If unmasked, GPIO3 interrupt will wake up FB.
                Sensor_GPIO_3_INT: Sensor_GPIO_0_INT,
                ///  If unmasked, GPIO4 interrupt will wake up FB.
                Sensor_GPIO_4_INT: Sensor_GPIO_0_INT,
                ///  If unmasked, GPIO5 interrupt will wake up FB.
                Sensor_GPIO_5_INT: Sensor_GPIO_0_INT,
                ///  If unmasked, GPIO6 interrupt will wake up FB.
                Sensor_GPIO_6_INT: Sensor_GPIO_0_INT,
                ///  If unmasked, GPIO7 interrupt will wake up FB.
                Sensor_GPIO_7_INT: Sensor_GPIO_0_INT,
                ///  If unmasked, kick off timer time-out event will wake up FB.
                KickOff_Timer_Time_Out: Sensor_GPIO_0_INT,
                padding: u23 = 0,
            }),
            reserved180: [4]u8,
            ///  Power mode configuration for the PF SRAM Power domain
            PF_PWR_MODE_CFG: mmio.Mmio(packed struct(u32) {
                ///  DW need to configure the registers before kicking off the power down event
                PF_Power_Mode_Cfg: PF_Power_Mode_Cfg,
                padding: u30 = 0,
            }),
            ///  Reserved
            PF_PD_SRC_MASK_N: u32,
            ///  Reserved
            PF_WU_SRC_MASK_N: u32,
            ///  M4S0 SRAM Power Domain status
            M4S0_SRAM_STATUS: mmio.Mmio(packed struct(u32) {
                ///  PF SRAM Power domain is active.
                M4S0_Active: u1,
                ///  Reserved. Deep Sleep not supported for this power domain.
                M4S0_Deep_Sleep: u1,
                ///  PF SRAM Fabric Power domain is in mode.
                M4S0_Shut_Down: u1,
                ///  Reserved
                M4S0_Clock_Gating: u1,
                padding: u28 = 0,
            }),
            ///  Power mode configuration for the M4S0 SRAM power domain
            M4S0_PWR_MODE_CFG: mmio.Mmio(packed struct(u32) {
                ///  FW need to configure the registers before kicking off the power down event
                M4S0_Power_Mode_Cfg: M4S0_Power_Mode_Cfg,
                padding: u30 = 0,
            }),
            ///  Control masking of power-down event triggers for the M4S0 SRAM domain
            M4S0_PD_SRC_MASK_N: mmio.Mmio(packed struct(u32) {
                ///  If not mask, The M4S0 power domain will put into Power Saving Mode base on Power_Mode_cfg once M4 is entering Shut Down mode and M4S0 power domain is NOT in power saving mode.
                M4S0_PD_Event_Mask: M4S0_PD_Event_Mask,
                padding: u31 = 0,
            }),
            ///  Control masking of wake-up event triggers for the M4S0 SRAM domain
            M4S0_WU_SRC_MASK_N: mmio.Mmio(packed struct(u32) {
                ///  If not mask, The M4S0 power domain will wake up once M4 is waking up from Power Saving and M4S0 power domain is NOT in active mode.
                M4S0_PD_Event_Mask: u1,
                padding: u31 = 0,
            }),
            ///  Status of the A1 power domain
            A1_STATUS: mmio.Mmio(packed struct(u32) {
                ///  A1 Power domain is active.
                M4S0_Active: u1,
                ///  A1 Power domain is in retention mode
                M4S0_Deep_Sleep: u1,
                ///  A1 Power domain is in mode.
                M4S0_Shut_Down: u1,
                ///  Reserved
                M4S0_Clock_Gating: u1,
                padding: u28 = 0,
            }),
            ///  Power mode configuration for the A1 power domain
            A1_PWR_MODE_CFG: mmio.Mmio(packed struct(u32) {
                ///  FW need to configure the registers before kicking off the power down event
                A1_Power_Mode_Cfg: A1_Power_Mode_Cfg,
                padding: u30 = 0,
            }),
            ///  Reserved
            A1_PD_SRC_MASK_N: u32,
            ///  Control masking of wake-up event triggers for the A1 domain
            A1_WU_SRC_MASK_N: mmio.Mmio(packed struct(u32) {
                ///  If Boot Code Reloading after M4 wake up is needed, this bit should be set to 1.
                A1_WU_EVENT_MASK_M: A1_WU_EVENT_MASK_M,
                padding: u31 = 0,
            }),
            ///  I2S Power info
            MISC_STATUS: mmio.Mmio(packed struct(u32) {
                reserved4: u4 = 0,
                ///  Bit will be set if the I2S is powered on
                I2S: u1,
                padding: u27 = 0,
            }),
            ///  Audio power domain status
            AUDIO_STATUS: mmio.Mmio(packed struct(u32) {
                ///  Bit is set if AD0 is on
                AD0: u1,
                ///  Bit is set if AD1 power domain is on
                AD1: u1,
                ///  Bit is set if AD2 power domain is on
                AD2: u1,
                ///  Bit is set if AD3 power domain is on
                AD3: u1,
                ///  Bit is set if AD4 power domain is on
                AD4: u1,
                ///  Bit is set if AD5 power domain is on
                AD5: u1,
                padding: u26 = 0,
            }),
            ///  M4 SRAM Power domain status
            M4_SRAM_STATUS: mmio.Mmio(packed struct(u32) {
                ///  Bit is set if M4S0 SRAM power domain is on. Same as M4S0_SRAM_STATUS[0:0]
                M4S0: u1,
                ///  Bit is set if M4S1 SRAM power domain is on
                M4S1: u1,
                ///  Bit is set if M4S2 SRAM power domain is on
                M4S2: u1,
                ///  Bit is set if M4S3 SRAM power domain is on
                M4S3: u1,
                ///  Bit is set if M4S4 SRAM power domain is on
                M4S4: u1,
                ///  Bit is set if M4S5 SRAM power domain is on
                M4S5: u1,
                ///  Bit is set if M4S6 SRAM power domain is on
                M4S6: u1,
                ///  Bit is set if M4S7 SRAM power domain is on
                M4S7: u1,
                ///  Bit is set if M4S8 SRAM power domain is on
                M4S8: u1,
                ///  Bit is set if M4S9 SRAM power domain is on
                M4S9: u1,
                ///  Bit is set if M4S10 SRAM power domain is on
                M4S10: u1,
                ///  Bit is set if M4S11 SRAM power domain is on
                M4S11: u1,
                ///  Bit is set if M4S12 SRAM power domain is on
                M4S12: u1,
                ///  Bit is set if M4S13 SRAM power domain is on
                M4S13: u1,
                ///  Bit is set if M4S14 SRAM power domain is on
                M4S14: u1,
                ///  Bit is set if M4S15 SRAM power domain is on
                M4S15: u1,
                padding: u16 = 0,
            }),
            ///  Control masking of wake-up event triggers for the Audio domains
            AUDIO_WU_SRC_MASK_N: mmio.Mmio(packed struct(u32) {
                ///  Allow external interrupt coming from pads 9 or 30 to serve as wake-up event trigger
                AD0_WU_Event_Mask_N: AD0_WU_Event_Mask_N,
                ///  Allow external interrupt coming from pads 9 or 30 to serve as wake-up event trigger
                AD1_WU_Event_Mask_N: AD0_WU_Event_Mask_N,
                ///  Allow external interrupt coming from pads 9 or 30 to serve as wake-up event trigger
                AD2_WU_Event_Mask_N: AD0_WU_Event_Mask_N,
                ///  Allow external interrupt coming from pads 9 or 30 to serve as wake-up event trigger
                AD3_WU_Event_Mask_N: AD0_WU_Event_Mask_N,
                ///  Allow external interrupt coming from pads 9 or 30 to serve as wake-up event trigger
                AD4_WU_Event_Mask_N: AD0_WU_Event_Mask_N,
                ///  Allow external interrupt coming from pads 9 or 30 to serve as wake-up event trigger
                AD5_WU_Event_Mask_N: AD0_WU_Event_Mask_N,
                padding: u26 = 0,
            }),
            reserved256: [16]u8,
            ///  Control DS pins for different SRAM instances on the M4 subsystem. For each instance: 1'b1 : Enable the Deep Sleep funciton of SRAM Macro, Memory content will be kept. While M4 access the memory in Deep Sleep mode, the HW will clear the corresponding bit.
            M4_MEM_CTRL_0: mmio.Mmio(packed struct(u32) {
                ///  Control DS pin of 32KB SRAM Instance 0 on M4 subsystem
                CTRL_M4_SRAM_DS_0: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 1 on M4 subsystem
                CTRL_M4_SRAM_DS_1: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 2 on M4 subsystem
                CTRL_M4_SRAM_DS_2: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 3 on M4 subsystem
                CTRL_M4_SRAM_DS_3: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 4 on M4 subsystem
                CTRL_M4_SRAM_DS_4: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 5 on M4 subsystem
                CTRL_M4_SRAM_DS_5: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 6 on M4 subsystem
                CTRL_M4_SRAM_DS_6: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 7 on M4 subsystem
                CTRL_M4_SRAM_DS_7: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 8 on M4 subsystem
                CTRL_M4_SRAM_DS_8: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 9 on M4 subsystem
                CTRL_M4_SRAM_DS_9: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 10 on M4 subsystem
                CTRL_M4_SRAM_DS_10: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 11 on M4 subsystem
                CTRL_M4_SRAM_DS_11: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 12 on M4 subsystem
                CTRL_M4_SRAM_DS_12: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 13 on M4 subsystem
                CTRL_M4_SRAM_DS_13: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 14 on M4 subsystem
                CTRL_M4_SRAM_DS_14: CTRL_M4_SRAM_DS_0,
                ///  Control DS pin of 32KB SRAM Instance 15 on M4 subsystem
                CTRL_M4_SRAM_DS_15: CTRL_M4_SRAM_DS_0,
                padding: u16 = 0,
            }),
            ///  Control Shutdown pin for various instances of SRAM on the M4 subsystem. For each instance: 1'b1 : Enable the Shutdown funciton of SRAM Macro, Memory content will be lost. While M4 access the memory in Shutdown mode, the HW will clear the corresponding bit.
            M4_MEM_CTRL_1: mmio.Mmio(packed struct(u32) {
                ///  Control SD pin of 32KB SRAM Instance 0 on M4 subsystem
                CTRL_M4_SRAM_SD_0: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 1 on M4 subsystem
                CTRL_M4_SRAM_SD_1: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 2 on M4 subsystem
                CTRL_M4_SRAM_SD_2: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 3 on M4 subsystem
                CTRL_M4_SRAM_SD_3: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 4 on M4 subsystem
                CTRL_M4_SRAM_SD_4: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 5 on M4 subsystem
                CTRL_M4_SRAM_SD_5: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 6 on M4 subsystem
                CTRL_M4_SRAM_SD_6: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 7 on M4 subsystem
                CTRL_M4_SRAM_SD_7: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 8 on M4 subsystem
                CTRL_M4_SRAM_SD_8: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 9 on M4 subsystem
                CTRL_M4_SRAM_SD_9: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 10 on M4 subsystem
                CTRL_M4_SRAM_SD_10: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 10 on M4 subsystem
                CTRL_M4_SRAM_SD_11: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 10 on M4 subsystem
                CTRL_M4_SRAM_SD_12: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 10 on M4 subsystem
                CTRL_M4_SRAM_SD_13: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 10 on M4 subsystem
                CTRL_M4_SRAM_SD_14: CTRL_M4_SRAM_SD_0,
                ///  Control SD pin of 32KB SRAM Instance 10 on M4 subsystem
                CTRL_M4_SRAM_SD_15: CTRL_M4_SRAM_SD_0,
                padding: u16 = 0,
            }),
            ///  RESERVED
            PF_MEM_CTRL_0: u32,
            ///  Control Shut Down pin of various FIFOs intances in the PF subsystem. For each one: 1'b1 : Enable the Shut Down function of SRAM Macro, Memory content will be lost
            PF_MEM_CTRL_1: mmio.Mmio(packed struct(u32) {
                reserved2: u2 = 0,
                ///  Control SD Pin of FIFO_2 instances on PF subsystem
                CTRL_PF_SRAM_SD_0: CTRL_PF_SRAM_SD_0,
                ///  Control SD Pin of FIFO_8k instances on PF subsystem
                CTRL_PF_SRAM_SD_8k: CTRL_PF_SRAM_SD_0,
                padding: u28 = 0,
            }),
            ///  Control the Deep Sleep pin of various elements in the Flexible Fusion Engine power domain. For each: 1'b1 : Enable the Deep Sleep function of SRAM Macro, Memory content will be kept.
            FFE_MEM_CTRL_0: mmio.Mmio(packed struct(u32) {
                ///  Control DS pin of CM0 8Kx40
                CTRL_FFE_SRAM_DS_CM0: CTRL_FFE_SRAM_DS_CM0,
                ///  Control DS pin of DM0 1Kx32
                CTRL_FFE_SRAM_DS_DM0: CTRL_FFE_SRAM_DS_CM0,
                ///  Control DS pin of DM1 1Kx32
                CTRL_FFE_SRAM_DS_DM1: CTRL_FFE_SRAM_DS_CM0,
                ///  Control DS pin of SM0 1Kx18
                CTRL_FFE_SRAM_DS_SM0: CTRL_FFE_SRAM_DS_CM0,
                ///  Control DS pin of SM1 0.5Kx18
                CTRL_FFE_SRAM_DS_SM1: CTRL_FFE_SRAM_DS_CM0,
                ///  Control DS pin of CM1 2Kx40
                CTRL_FFE_SRAM_DS_CM1: CTRL_FFE_SRAM_DS_CM0,
                ///  Control DS pin of CM0 1Kx32
                CTRL_FFE_SRAM_DS_DM2: CTRL_FFE_SRAM_DS_CM0,
                ///  Control DS pin of CM0 1Kx32
                CTRL_FFE_SRAM_DS_DM3: CTRL_FFE_SRAM_DS_CM0,
                padding: u24 = 0,
            }),
            ///  Control the Shut Down pin of various elements in the Flexible Fusion Engine power domain. For each: 1'b1 : Enable the Deep Sleep function of SRAM Macro, Memory content will be kept.
            FFE_MEM_CTRL_1: mmio.Mmio(packed struct(u32) {
                ///  Control SD pin of CM0 8Kx40
                CTRL_FFE_SRAM_SD_CM0: CTRL_FFE_SRAM_SD_CM0,
                ///  Control SD pin of DM0 1Kx32
                CTRL_FFE_SRAM_SD_DM0: CTRL_FFE_SRAM_SD_CM0,
                ///  Control SD pin of DM1 1Kx32
                CTRL_FFE_SRAM_SD_DM1: CTRL_FFE_SRAM_SD_CM0,
                ///  Control SD pin of SM0 1Kx18
                CTRL_FFE_SRAM_SD_SM0: CTRL_FFE_SRAM_SD_CM0,
                ///  Control SD pin of SM1 0.5Kx18
                CTRL_FFE_SRAM_SD_SM1: CTRL_FFE_SRAM_SD_CM0,
                ///  Control SD pin of CM1 2Kx40
                CTRL_FFE_SRAM_SD_CM1: CTRL_FFE_SRAM_SD_CM0,
                ///  Control SD pin of CM0 1Kx32
                CTRL_FFE_SRAM_SD_DM2: CTRL_FFE_SRAM_SD_CM0,
                ///  Control SD pin of CM0 1Kx32
                CTRL_FFE_SRAM_SD_DM3: CTRL_FFE_SRAM_SD_CM0,
                padding: u24 = 0,
            }),
            ///  Control the Deep Sleep pin of Audio channels. For each: 1'b1 : Enable the Deep Sleep function of SRAM Macro, Memory content will be kept.
            AUDIO_MEM_CTRL_0: mmio.Mmio(packed struct(u32) {
                ///  Used to control DS pin of the Left Channel R0 2Kx32
                AUDIO_SRAM_LC_DS_0: AUDIO_SRAM_LC_DS_0,
                ///  Used to control DS pin of the Left Channel R1 128Kx32
                AUDIO_SRAM_LC_DS_1: AUDIO_SRAM_LC_DS_0,
                ///  Used to control DS pin of the Left Channel R2 256Kx15
                AUDIO_SRAM_LC_DS_2: AUDIO_SRAM_LC_DS_0,
                ///  Used to control DS pin of the Right Channel R0 2Kx32
                AUDIO_SRAM_RC_DS_0: AUDIO_SRAM_LC_DS_0,
                ///  Used to control DS pin of the Right Channel R1 128Kx32
                AUDIO_SRAM_RC_DS_1: AUDIO_SRAM_LC_DS_0,
                ///  Used to control DS pin of the Right Channel R2 256Kx15
                AUDIO_SRAM_RC_DS_2: AUDIO_SRAM_LC_DS_0,
                padding: u26 = 0,
            }),
            ///  Control the shut down pin of Audio channels. For each: 1'b1 : Enable the Deep Sleep function of SRAM Macro, Memory content will be kept.
            AUDIO_MEM_CTRL_1: mmio.Mmio(packed struct(u32) {
                ///  Used to control SD pin of the Left Channel R0 2Kx32
                AUDIO_SRAM_LC_SD_0: AUDIO_SRAM_LC_SD_0,
                ///  Used to control SD pin of the Left Channel R1 128Kx32
                AUDIO_SRAM_LC_SD_1: AUDIO_SRAM_LC_SD_0,
                ///  Used to control SD pin of the Left Channel R2 256Kx15
                AUDIO_SRAM_LC_SD_2: AUDIO_SRAM_LC_SD_0,
                ///  Used to control SD pin of the Right Channel R0 2Kx32
                AUDIO_SRAM_RC_SD_0: AUDIO_SRAM_LC_SD_0,
                ///  Used to control SD pin of the Right Channel R1 128Kx32
                AUDIO_SRAM_RC_SD_1: AUDIO_SRAM_LC_SD_0,
                ///  Used to control SD pin of the Right Channel R2 256Kx15
                AUDIO_SRAM_RC_SD_2: AUDIO_SRAM_LC_SD_0,
                padding: u26 = 0,
            }),
            ///  Reserved
            M4_MEM_CFG: u32,
            ///  Reserved
            PF_MEM_CFG: u32,
            ///  Control Light Sleep pin of different FFE SRAM power domains
            FFE_MEM_CFG: mmio.Mmio(packed struct(u32) {
                ///  Control LS pin of CM
                CFG_FFE_SRAM_LS_0: CFG_FFE_SRAM_LS_0,
                ///  Control LS pin of DM
                CFG_FFE_SRAM_LS_1: CFG_FFE_SRAM_LS_0,
                ///  Control LS pin of SM0
                CFG_FFE_SRAM_LS_2: CFG_FFE_SRAM_LS_0,
                ///  Control LS pin of SM1
                CFG_FFE_SRAM_LS_3: CFG_FFE_SRAM_LS_0,
                ///  Reseverd.
                General_Purpose_SFR: u4,
                padding: u24 = 0,
            }),
            ///  Reserved
            AUDIO_MEM_CFG: u32,
            ///  Reserved
            M4_MEM_CTRL_PWR_0: u32,
            ///  Reserved
            M4_MEM_CTRL_PWR_1: u32,
            ///  Reserved
            M4_MEM_CTRL_PWR_2: u32,
            reserved320: [4]u8,
            ///  Control the Deep Sleep function of SRAM Macro for the SDMA power domain
            SDMA_MEM_CTRL_0: mmio.Mmio(packed struct(u32) {
                ///  Used to control the Deep Sleep function of SRAM Macro, Memory content will be kept.
                SDMA_SRAM_DS: SDMA_SRAM_DS,
                padding: u31 = 0,
            }),
            ///  Control the Shut Down function of SRAM Macro for the SDMA power domain
            SDMA_MEM_CTRL_1: mmio.Mmio(packed struct(u32) {
                ///  Used to control the Shut Down function of SRAM Macro, Memory content will be lost
                SDMA_SRAM_SD: SDMA_SRAM_SD,
                padding: u31 = 0,
            }),
            reserved384: [56]u8,
            ///  Memory Power Down Control
            MEM_PWR_DWN_CTRL: mmio.Mmio(packed struct(u32) {
                ///  Set to put M4S0 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_0_M4S0: u1,
                ///  Set to put M4S1 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_0_M4S1: u1,
                ///  Set to put M4S2 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_0_M4S2: u1,
                ///  Set to put M4S3 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_0_M4S3: u1,
                ///  Set to put M4S4 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_0_M4S4: u1,
                ///  Set to put M4S5 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_0_M4S5: u1,
                ///  Set to put M4S6 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_0_M4S6: u1,
                ///  Set to put M4S7 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_0_M4S7: u1,
                ///  Set to put M4S8 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_0_M4S8: u1,
                ///  Set to put M4S9 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_0_M4S9: u1,
                ///  Set tout M4S10 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_0_M4S10: u1,
                ///  Set to put M4S11 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_0_M4S11: u1,
                ///  Set to put M4S12 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_1_M4S12: u1,
                ///  Set to put M4S13 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_1_M4S13: u1,
                ///  Set to put M4S14 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_1_M4S14: u1,
                ///  Set to put M4S15 to Deep Sleep mode if M4 is in Shut Down Mode
                M4_SRAM_PD_Cfg_1_M4S15: u1,
                ///  Set to assert the DS pin of the SRAM Macro inside FFE power domain if FFE power domain is in Deep Sleep
                FFE_SRAM_PD_Cfg: u1,
                ///  Set to assert the DS pin of the SRAM Macro inside PF power domain if PF power domain is in Deep Sleep
                PF_SRAM_PD_Cfg: u1,
                ///  Set to assert the DS pin of the SRAM Macro inside SDMA power domain if SDMA power domain is in Deep Sleep or Shut Down Mode.
                SDMA_SRAM_PD_Cfg: u1,
                padding: u13 = 0,
            }),
            ///  Configuration for the PMU timer time-out period
            PMU_TIMER_CFG_0: mmio.Mmio(packed struct(u32) {
                ///  PMU timer is 16 bits running at 32KHZ. Once PMU timer bit 15:6 match the value of this register, PMUT INT will trigger and Timer will stop. 0 is a reserved value, min must be load value is 1.
                PMU_Time_Out_period: u10,
                padding: u22 = 0,
            }),
            ///  Control wether the PMU timer is enabled or disabled
            PMU_TIMER_CFG_1: mmio.Mmio(packed struct(u32) {
                ///  Set to enable PMU timer. Once disable, the PMU timer will be reset to all 0. FW need to disable the PMU timer once PMUT INT trigger. Please Note: It may take Up to 64uS to disable the time since this enable signal needs to sync to 32KHz clock domain from C10/C01 clock domain
                PMU_Timer_Enable: u1,
                padding: u31 = 0,
            }),
            ///  Control the delay for power-on after wake-up event. Applies to all power domains
            PDWU_Timer_CFG: mmio.Mmio(packed struct(u32) {
                ///  This is to define the additional IDLE cycles after Power Gating cell is off (Power is ON). This configuration applied to all power domain. Waits for reg value + 1 cycles, i.e. 0 - 1 cycle, 2 - 3 cycles, etc.
                PDWU_Timer_period: u3,
                padding: u29 = 0,
            }),
            reserved512: [112]u8,
            ///  Registers for triggering power-down events in the FFE, FB and PF power domains.
            FFE_FB_PF_SW_PD: mmio.Mmio(packed struct(u32) {
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                FFE_Software_PD: FFE_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                FB_Software_PD: FFE_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                PF_Software_PD: FFE_Software_PD,
                padding: u29 = 0,
            }),
            ///  Register for triggering power-down events in M4 SRAM power domains. (RWHC)
            M4_SRAM_SW_PD: mmio.Mmio(packed struct(u32) {
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S0_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S1_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S2_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S3_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S4_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S5_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S6_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S7_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S8_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S9_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S10_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S11_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S12_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S13_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S14_Software_PD: M4S0_Software_PD,
                ///  Set to trigger a power down event. Bit is cleared after power down sequence finishes
                M4S15_Software_PD: M4S0_Software_PD,
                padding: u16 = 0,
            }),
            ///  Register for triggering power down events in MISC power domains + some general purpose SFR's (RWHC)
            MISC_SW_PD: mmio.Mmio(packed struct(u32) {
                ///  System DMA Power Domain. Set to put the power domain to power saving mode according to configuration setting, HW will clear it once power down sequence is finished.
                SDMA_Software_PD: SDMA_Software_PD,
                ///  General purpose SFR
                General_Purpose_1: u1,
                ///  General purpose SFR
                General_Purpose_2: u1,
                ///  General purpose SFR
                General_Purpose_3: u1,
                reserved5: u1 = 0,
                ///  Reserved for Future Use -- Power Domain. Set to put the power domain to power saving mode according to configuration setting, HW will clear it once power down sequence is finished.
                I2S_Software_PD: SDMA_Software_PD,
                ///  Reserved for Future Use -- Power Domain. Set to put the power domain to power saving mode according to configuration setting, HW will clear it once power down sequence is finished.
                A1_Software_PD: SDMA_Software_PD,
                padding: u25 = 0,
            }),
            ///  Register for triggering power-down events in Audio power domains. (RWHC)
            AUDIO_SW_PD: mmio.Mmio(packed struct(u32) {
                ///  Set to trigger a power down event. Bit will be cleared once power down sequence is finished
                Audio_AD0_PD: Audio_AD0_PD,
                ///  Set to trigger a power down event. Bit will be cleared once power down sequence is finished
                Audio_AD1_PD: Audio_AD0_PD,
                ///  Set to trigger a power down event. Bit will be cleared once power down sequence is finished
                Audio_AD2_PD: Audio_AD0_PD,
                ///  Set to trigger a power down event. Bit will be cleared once power down sequence is finished
                Audio_AD3_PD: Audio_AD0_PD,
                ///  Set to trigger a power down event. Bit will be cleared once power down sequence is finished
                Audio_AD4_PD: Audio_AD0_PD,
                ///  Set to trigger a power down event. Bit will be cleared once power down sequence is finished
                Audio_AD5_PD: Audio_AD0_PD,
                padding: u26 = 0,
            }),
            ///  Registers for triggering wake-up events in the FFE, FB and PF power domains.
            FFE_FB_PF_SW_WU: mmio.Mmio(packed struct(u32) {
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                FFE_Software_WU: FFE_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                FB_Software_WU: FFE_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                PF_Software_WU: FFE_Software_WU,
                padding: u29 = 0,
            }),
            ///  Register for triggering wake-up events in M4 SRAM power domains. (RWHC)
            M4_SRAM_SW_WU: mmio.Mmio(packed struct(u32) {
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S0_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S1_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S2_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S3_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S4_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S5_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S6_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S7_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S8_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S9_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S10_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S11_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S12_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S13_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S14_Software_WU: M4S0_Software_WU,
                ///  Set to trigger a wake up event. Bit is cleared after wake up sequence finishes
                M4S15_Software_WU: M4S0_Software_WU,
                padding: u16 = 0,
            }),
            ///  Register for triggering wake up events in MISC power domains + some general purpose SFR's (RWHC)
            MISC_SW_WU: mmio.Mmio(packed struct(u32) {
                ///  SDMA Power Domain. Set to wake up power domain, HW will clear it once power up sequence is finished.
                SDMA_Software_WU: SDMA_Software_WU,
                ///  General purpose SFR
                General_Purpose_1: u1,
                ///  General purpose SFR
                General_Purpose_2: u1,
                ///  General purpose SFR
                General_Purpose_3: u1,
                reserved5: u1 = 0,
                ///  Reserved Logic Power Domain. Set to wake up power domain, HW will clear it once power up sequence is finished.
                I2S_Software_WU: SDMA_Software_WU,
                ///  Reserved Logic Power Domain. Set to wake up power domain, HW will clear it once power up sequence is finished.
                A1_Software_WU: SDMA_Software_WU,
                padding: u25 = 0,
            }),
            ///  Register for triggering wake-up events in Audio power domains. (RWHC)
            AUDIO_SRAM_SW_WU: mmio.Mmio(packed struct(u32) {
                ///  Set to trigger a wake up event. Bit will be cleared once wake up sequence is finished
                Audio_AD0_WU: Audio_AD0_WU,
                ///  Set to trigger a wake up event. Bit will be cleared once wake up sequence is finished
                Audio_AD1_WU: Audio_AD0_WU,
                ///  Set to trigger a wake up event. Bit will be cleared once wake up sequence is finished
                Audio_AD2_WU: Audio_AD0_WU,
                ///  Set to trigger a wake up event. Bit will be cleared once wake up sequence is finished
                Audio_AD3_WU: Audio_AD0_WU,
                ///  Set to trigger a wake up event. Bit will be cleared once wake up sequence is finished
                Audio_AD4_WU: Audio_AD0_WU,
                ///  Set to trigger a wake up event. Bit will be cleared once wake up sequence is finished
                Audio_AD5_WU: Audio_AD0_WU,
                padding: u26 = 0,
            }),
            ///  Power Management Unit Software Test Mode priority control
            PMU_STM_PRIORITY: mmio.Mmio(packed struct(u32) {
                ///  Controls how PMU STM and M4/FFE STM will be arbitrated.
                PMU_STM_PRIORITY: PMU_STM_PRIORITY,
                padding: u31 = 0,
            }),
            reserved560: [12]u8,
            ///  Control for M4SRAM power domain light sleep mode
            M4SRAM_SSW_LPMF: mmio.Mmio(packed struct(u32) {
                ///  Enable or disable Light Sleep Mode. If M4 SRAM power is removing, the corresponding bit will be clear.
                M4SRAM_LPMF: M4SRAM_LPMF,
                padding: u16 = 0,
            }),
            ///  Control masking for the LPMH (Low Power Mode header - deep sleep circuit)
            M4SRAM_SSW_LPMH_MASK_N: mmio.Mmio(packed struct(u32) {
                ///  if M4 SRAM power is removing Or SRAM is auto waking up from Deep Sleep Mode, the corresponding bit will be clear.
                M4SRAM_LPMH_MASK_N: M4SRAM_LPMH_MASK_N,
                padding: u16 = 0,
            }),
            reserved1000: [432]u8,
            ///  Configuration for the amount of IDLE cycles before powering on the FB domain
            FBVLPMinWidth: mmio.Mmio(packed struct(u32) {
                ///  For FB, it required additional IDLE Cylcle from turning off power gates (Power is ON) to ready for normal operation. This is used to defined the # of the IDLE cycles (base on C01 Clock). According to FB spec, it will require 10uS. But for final spec, it should be from FB design team.
                FBVLPMinWidth: u10,
                padding: u22 = 0,
            }),
            ///  Indicates if AP nees to reload the code to SRAM
            APRebootStatus: mmio.Mmio(packed struct(u32) {
                ///  Set to indicate the AP need to reload the code to SRAM HW set to 1 and FW can clear it. This is allowed FW@AP to read this status.
                APRebootStatus: u1,
                padding: u31 = 0,
            }),
            ///  Configure FB config enable and wether Audio SRAM can be put into Deep Sleep by the Audio hardware
            GEN_PURPOSE_0: mmio.Mmio(packed struct(u32) {
                ///  General purpose SFR
                General_Purpose: u8,
                ///  Set to allow audio HW to put the Audio SRAM into Deep Sleep mode. Please see Audio Spec for detail
                Audio_SRAM_HW_DS_Cfg: u1,
                ///  Set to enable FB configuration. Hardware will set once entering FB shutdown mode
                FB_Cfg_Enable: u1,
                padding: u22 = 0,
            }),
            ///  Control the FB Isolation
            FB_ISOLATION: mmio.Mmio(packed struct(u32) {
                ///  This bit will be set to 1 if FB is waking up from shut down mode. The FB interface wil be kept in isolation the domain, except for the FB configuration interface itself
                Enable_the_FB_Isolation: u1,
                padding: u31 = 0,
            }),
            ///  Control for: Wether ext-interrupt can be used to wake up FFE, and clock switching for FFE/M4 power domains
            GEN_PURPOSE_1: mmio.Mmio(packed struct(u32) {
                ///  Set to enable the low power mdoe
                LOW_POWER_Mode: u1,
                ///  Set to use M4 Power State to Turn on/off OSC and switching the Clock between OSC and RTC if Bit 0 is 1
                LOW_POWER_MODE_M4: u1,
                ///  Set to use FFE Power State to Turn on/off OSC and switching the Clock between OSC and RTC if Bit 0 is 1.
                LOW_POWER_MODE_FFE: u1,
                ///  Set to use external INT to wake up FFE.
                Kickoff_FFE_use_INT: u1,
                ///  General purpose SFR
                General_Purpose: u4,
                padding: u24 = 0,
            }),
        };

        ///  System Direct Memory Access Bridge
        pub const SDMA_Bridge = extern struct {
            ///  DMA request
            DMA_REQ: mmio.Mmio(packed struct(u32) {
                ///  Burst DMA request send to System DMA
                dma_req: u11,
                reserved16: u5 = 0,
                ///  Single DMA request send to System DMA
                dma_sreq: u11,
                padding: u5 = 0,
            }),
            ///  DMA wait on request register
            DMA_WAITONREQ_REG: mmio.Mmio(packed struct(u32) {
                ///  waitonreq signal send to System DMA
                dma_waitonreq: u11,
                padding: u21 = 0,
            }),
            ///  dma_active signal status from System DMA
            DMA_ACTIVE_REG: mmio.Mmio(packed struct(u32) {
                ///  dma_active signal status from System DMA
                dma_active: u11,
                padding: u21 = 0,
            }),
            ///  sdma power down event threshold. If sdma stays in idle cycles longer than the threshold, sdma will be automaticlly put into power down to save power.
            SDMA_PWRD_CNT: mmio.Mmio(packed struct(u32) {
                ///  sdma power down event threshold. If sdma stays in idle cycles longer than the threshold, sdma will be automaticlly put into power down to save power.
                sdma_pwrdn_cnt: u14,
                padding: u18 = 0,
            }),
            ///  Control register for System DMA SRAM
            SDMA_SRAM_CTL: mmio.Mmio(packed struct(u32) {
                ///  Set this bit to enable Test mode
                sdma_sram_test1: u1,
                ///  Set to enable SRAM timing adjust enable
                sdma_sram_rme: u1,
                ///  SRAM adjust timing value
                sdma_sram_rm: u4,
                padding: u26 = 0,
            }),
        };

        ///  System DMA SRAM
        pub const SDMA_SRAM = extern struct {
            ///  Primary pointer to the end address of the source data of channel 0
            SRC_DATA_END_PTR_CH0: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 0
                SRC_DATA_END_PTR_CH0: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 0
            DST_DATA_END_PTR_CH0: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 0
                DST_DATA_END_PTR_CH0: u32,
            }),
            ///  Primary configuration for channel 0
            CH_CFG_CH0: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved16: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 1
            SRC_DATA_END_PTR_CH1: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 1
                SRC_DATA_END_PTR_CH1: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 1
            DST_DATA_END_PTR_CH1: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 1
                DST_DATA_END_PTR_CH1: u32,
            }),
            ///  Primary configuration for channel 1
            CH_CFG_CH1: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved32: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 2
            SRC_DATA_END_PTR_CH2: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 2
                SRC_DATA_END_PTR_CH0: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 2
            DST_DATA_END_PTR_CH2: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 2
                DST_DATA_END_PTR_CH2: u32,
            }),
            ///  Primary configuration for channel 2
            CH_CFG_CH2: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved48: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 3
            SRC_DATA_END_PTR_CH3: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 3
                SRC_DATA_END_PTR_CH3: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 3
            DST_DATA_END_PTR_CH3: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 3
                DST_DATA_END_PTR_CH3: u32,
            }),
            ///  Primary configuration for channel 3
            CH_CFG_CH3: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved64: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 4
            SRC_DATA_END_PTR_CH4: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 4
                SRC_DATA_END_PTR_CH4: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 4
            DST_DATA_END_PTR_CH4: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 4
                DST_DATA_END_PTR_CH4: u32,
            }),
            ///  Primary configuration for channel 4
            CH_CFG_CH4: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved80: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 5
            SRC_DATA_END_PTR_CH5: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 5
                SRC_DATA_END_PTR_CH5: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 5
            DST_DATA_END_PTR_CH5: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 5
                DST_DATA_END_PTR_CH5: u32,
            }),
            ///  Primary configuration for channel 5
            CH_CFG_CH5: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved96: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 6
            SRC_DATA_END_PTR_CH6: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 6
                SRC_DATA_END_PTR_CH6: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 6
            DST_DATA_END_PTR_CH6: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 6
                DST_DATA_END_PTR_CH6: u32,
            }),
            ///  Primary configuration for channel 6
            CH_CFG_CH6: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved112: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 7
            SRC_DATA_END_PTR_CH7: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 7
                SRC_DATA_END_PTR_CH7: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 7
            DST_DATA_END_PTR_CH7: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 7
                DST_DATA_END_PTR_CH7: u32,
            }),
            ///  Primary configuration for channel 7
            CH_CFG_CH7: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved128: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 8
            SRC_DATA_END_PTR_CH8: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 8
                SRC_DATA_END_PTR_CH8: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 8
            DST_DATA_END_PTR_CH8: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 0
                DST_DATA_END_PTR_CH8: u32,
            }),
            ///  Primary configuration for channel 8
            CH_CFG_CH8: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved144: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 9
            SRC_DATA_END_PTR_CH9: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 9
                SRC_DATA_END_PTR_CH9: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 9
            DST_DATA_END_PTR_CH9: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 0
                DST_DATA_END_PTR_CH9: u32,
            }),
            ///  Primary configuration for channel 9
            CH_CFG_CH9: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved160: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 10
            SRC_DATA_END_PTR_CH10: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 10
                SRC_DATA_END_PTR_CH10: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 10
            DST_DATA_END_PTR_CH10: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 10
                DST_DATA_END_PTR_CH10: u32,
            }),
            ///  Primary configuration for channel 10
            CH_CFG_CH10: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved176: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 11
            SRC_DATA_END_PTR_CH11: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 11
                SRC_DATA_END_PTR_CH11: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 11
            DST_DATA_END_PTR_CH11: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 11
                DST_DATA_END_PTR_CH11: u32,
            }),
            ///  Primary configuration for channel 11
            CH_CFG_CH11: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved192: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 12
            SRC_DATA_END_PTR_CH12: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 12
                SRC_DATA_END_PTR_CH12: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 12
            DST_DATA_END_PTR_CH12: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 12
                DST_DATA_END_PTR_CH12: u32,
            }),
            ///  Primary configuration for channel 12
            CH_CFG_CH12: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved208: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 13
            SRC_DATA_END_PTR_CH13: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 13
                SRC_DATA_END_PTR_CH13: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 13
            DST_DATA_END_PTR_CH13: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 13
                DST_DATA_END_PTR_CH13: u32,
            }),
            ///  Primary configuration for channel 13
            CH_CFG_CH13: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved224: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 14
            SRC_DATA_END_PTR_CH14: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 14
                SRC_DATA_END_PTR_CH14: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 14
            DST_DATA_END_PTR_CH14: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 14
                DST_DATA_END_PTR_CH14: u32,
            }),
            ///  Primary configuration for channel 14
            CH_CFG_CH14: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved240: [4]u8,
            ///  Primary pointer to the end address of the source data of channel 15
            SRC_DATA_END_PTR_CH15: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the source data of channel 15
                SRC_DATA_END_PTR_CH15: u32,
            }),
            ///  Primary pointer to the end address of the destination data of channel 15
            DST_DATA_END_PTR_CH15: mmio.Mmio(packed struct(u32) {
                ///  Primary pointer to the end address of the destination data of channel 15
                DST_DATA_END_PTR_CH15: u32,
            }),
            ///  Primary configuration for channel 15
            CH_CFG_CH15: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved256: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 0
            ALT_SRC_DATA_END_PTR_CH0: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 0
                ALT_SRC_DATA_END_PTR_CH0: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 0
            ALT_DST_DATA_END_PTR_CH0: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 0
                ALT_DST_DATA_END_PTR_CH0: u32,
            }),
            ///  Primary configuration for channel 0
            ALT_CHN_CFG_CH0: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved272: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 1
            ALT_SRC_DATA_END_PTR_CH1: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 1
                ALT_SRC_DATA_END_PTR_CH1: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 1
            ALT_DST_DATA_END_PTR_CH1: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 1
                ALT_DST_DATA_END_PTR_CH1: u32,
            }),
            ///  Primary configuration for channel 1
            ALT_CHN_CFG_CH1: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved288: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 2
            ALT_SRC_DATA_END_PTR_CH2: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 2
                ALT_SRC_DATA_END_PTR_CH0: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 2
            ALT_DST_DATA_END_PTR_CH2: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 2
                ALT_DST_DATA_END_PTR_CH2: u32,
            }),
            ///  Primary configuration for channel 2
            ALT_CHN_CFG_CH2: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved304: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 3
            ALT_SRC_DATA_END_PTR_CH3: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 3
                ALT_SRC_DATA_END_PTR_CH3: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 3
            ALT_DST_DATA_END_PTR_CH3: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 3
                ALT_DST_DATA_END_PTR_CH3: u32,
            }),
            ///  Primary configuration for channel 3
            ALT_CHN_CFG_CH3: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved320: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 4
            ALT_SRC_DATA_END_PTR_CH4: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 4
                ALT_SRC_DATA_END_PTR_CH4: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 4
            ALT_DST_DATA_END_PTR_CH4: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 4
                ALT_DST_DATA_END_PTR_CH4: u32,
            }),
            ///  Primary configuration for channel 4
            ALT_CHN_CFG_CH4: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved336: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 5
            ALT_SRC_DATA_END_PTR_CH5: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 5
                ALT_SRC_DATA_END_PTR_CH5: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 5
            ALT_DST_DATA_END_PTR_CH5: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 5
                ALT_DST_DATA_END_PTR_CH5: u32,
            }),
            ///  Primary configuration for channel 5
            ALT_CHN_CFG_CH5: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved352: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 6
            ALT_SRC_DATA_END_PTR_CH6: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 6
                ALT_SRC_DATA_END_PTR_CH6: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 6
            ALT_DST_DATA_END_PTR_CH6: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 6
                ALT_DST_DATA_END_PTR_CH6: u32,
            }),
            ///  Primary configuration for channel 6
            ALT_CHN_CFG_CH6: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved368: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 7
            ALT_SRC_DATA_END_PTR_CH7: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 7
                ALT_SRC_DATA_END_PTR_CH7: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 7
            ALT_DST_DATA_END_PTR_CH7: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 7
                ALT_DST_DATA_END_PTR_CH7: u32,
            }),
            ///  Primary configuration for channel 7
            ALT_CHN_CFG_CH7: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved384: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 8
            ALT_SRC_DATA_END_PTR_CH8: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 8
                ALT_SRC_DATA_END_PTR_CH8: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 8
            ALT_DST_DATA_END_PTR_CH8: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 0
                ALT_DST_DATA_END_PTR_CH8: u32,
            }),
            ///  Primary configuration for channel 8
            ALT_CHN_CFG_CH8: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved400: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 9
            ALT_SRC_DATA_END_PTR_CH9: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 9
                ALT_SRC_DATA_END_PTR_CH9: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 9
            ALT_DST_DATA_END_PTR_CH9: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 0
                ALT_DST_DATA_END_PTR_CH9: u32,
            }),
            ///  Primary configuration for channel 9
            ALT_CHN_CFG_CH9: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved416: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 10
            ALT_SRC_DATA_END_PTR_CH10: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 10
                ALT_SRC_DATA_END_PTR_CH10: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 10
            ALT_DST_DATA_END_PTR_CH10: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 10
                ALT_DST_DATA_END_PTR_CH10: u32,
            }),
            ///  Primary configuration for channel 10
            ALT_CHN_CFG_CH10: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved432: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 11
            ALT_SRC_DATA_END_PTR_CH11: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 11
                ALT_SRC_DATA_END_PTR_CH11: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 11
            ALT_DST_DATA_END_PTR_CH11: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 11
                ALT_DST_DATA_END_PTR_CH11: u32,
            }),
            ///  Primary configuration for channel 11
            ALT_CHN_CFG_CH11: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved448: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 12
            ALT_SRC_DATA_END_PTR_CH12: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 12
                ALT_SRC_DATA_END_PTR_CH12: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 12
            ALT_DST_DATA_END_PTR_CH12: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 12
                ALT_DST_DATA_END_PTR_CH12: u32,
            }),
            ///  Primary configuration for channel 12
            ALT_CHN_CFG_CH12: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved464: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 13
            ALT_SRC_DATA_END_PTR_CH13: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 13
                ALT_SRC_DATA_END_PTR_CH13: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 13
            ALT_DST_DATA_END_PTR_CH13: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 13
                ALT_DST_DATA_END_PTR_CH13: u32,
            }),
            ///  Primary configuration for channel 13
            ALT_CHN_CFG_CH13: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved480: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 14
            ALT_SRC_DATA_END_PTR_CH14: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 14
                ALT_SRC_DATA_END_PTR_CH14: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 14
            ALT_DST_DATA_END_PTR_CH14: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 14
                ALT_DST_DATA_END_PTR_CH14: u32,
            }),
            ///  Primary configuration for channel 14
            ALT_CHN_CFG_CH14: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
            reserved496: [4]u8,
            ///  Alternate pointer to the end address of the source data of channel 15
            ALT_SRC_DATA_END_PTR_CH15: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the source data of channel 15
                ALT_SRC_DATA_END_PTR_CH15: u32,
            }),
            ///  Alternate pointer to the end address of the destination data of channel 15
            ALT_DST_DATA_END_PTR_CH15: mmio.Mmio(packed struct(u32) {
                ///  Alternate pointer to the end address of the destination data of channel 15
                ALT_DST_DATA_END_PTR_CH15: u32,
            }),
            ///  Primary configuration for channel 15
            ALT_CHN_CFG_CH15: mmio.Mmio(packed struct(u32) {
                ///  The operating mode of the DMA cycle
                cycle_ctrl: u3,
                ///  Controls if the chnl_useburst_set [C] bit is set to a 1, when the controller is performing a peripheral scatter-gather and is completing a DMA cycle that uses the alternate data structure
                next_useburst: u1,
                ///  Prior to the DMA cycle commencing, these bits represent the total number of DMA transfers that the DMA cycle contains. You must set these bits according to the size of DMA cycle that you require.
                n_minus_1: u10,
                ///  Set these bits to control how many DMA transfers can occur before the controller rearbitrates
                R_power: u4,
                ///  Set the bits to control the state of HPROT[3:1] when the controller reads the source data
                src_prot_ctrl: u3,
                ///  Set the bits to control the state of HPROT[3:1] when the controller writes the destination data
                dst_prot_ctrl: u3,
                ///  Source data size
                src_size: u2,
                ///  Source address increment
                src_inc: u2,
                ///  Destination data size
                dst_size: u2,
                ///  Destination address increment
                dst_inc: u2,
            }),
        };

        ///  System Direct Access Memory
        pub const SDMA = extern struct {
            pub const state = enum(u4) {
                ///  idle state
                idle = 0x0,
                ///  reading channel controller data.
                read_ch_cntrl_data = 0x1,
                ///  reading source data end pointer
                read_src_data_end_ptr = 0x2,
                ///  reading destination data end pointer
                read_dest_data_end_ptr = 0x3,
                ///  reading source data
                read_src_data = 0x4,
                ///  writing destination data
                write_dest_data = 0x5,
                ///  waiting for DMA request to clear
                wait_dma_req_clear = 0x6,
                ///  writing channel controller data
                write_ch_ctrl_data = 0x7,
                ///  stalled state
                stalled = 0x8,
                ///  done state
                done = 0x9,
                ///  peripheral scatter-gather transition
                periph_scatter_gather_trans = 0xa,
                _,
            };

            ///  DMA Status register
            DMA_STATUS: mmio.Mmio(packed struct(u32) {
                ///  Set if controller is enabled
                master_enable: u1,
                reserved4: u3 = 0,
                ///  Current state of the control state machine.
                state: state,
                reserved16: u8 = 0,
                ///  Number of available DMA channels (value in register + 1)
                chnls_minus1: u5,
                reserved28: u7 = 0,
                ///  To reduce the gate count you can configure the controller to exclude the integration Test logic. If value = 1, the integration Test logic is included. If 0, Test logic is not included. Any other value is undefined
                test_status: u4,
            }),
            ///  DMA configuration register
            DMA_CFG: mmio.Mmio(packed struct(u32) {
                ///  Set to enable the controller
                master_enable: u1,
                reserved5: u4 = 0,
                ///  Sets the AHB-Lite protection by controlling the HPROT[3:1] signal levels as follows:
                ///
                ///  Bit [7] Controls HPROT[3] to indicate if a cacheable access is occurring.
                ///
                ///  Bit [6] Controls HPROT[2] to indicate if a bufferable access is occurring.
                ///
                ///  Bit [5] Controls HPROT[1] to indicate if a privileged access is occurring.
                ///
                ///  Note
                ///
                ///  When bit [n] = 1 then the corresponding HPROT is HIGH.
                ///
                ///  When bit [n] = 0 then the corresponding HPROT is LOW.
                chnl_prot_ctrl: u3,
                padding: u24 = 0,
            }),
            ///  Control the pointer to the base address of the primary data structure
            CTRL_BASE_PTR: mmio.Mmio(packed struct(u32) {
                reserved9: u9 = 0,
                ///  Pointer to the base address of the primary data structure
                ctrl_base_ptr: u23,
            }),
            ///  Base address of the alternate data structure.
            ALT_CTRL_BASE_PTR: mmio.Mmio(packed struct(u32) {
                ///  Base address of the alternate data structure
                alt_ctrl_base_ptr: u32,
            }),
            ///  Channel wait on request status
            DMA_WAITONREQ_STATUS: mmio.Mmio(packed struct(u32) {
                ///  Channel wait on request status.
                ///
                ///  Read as:
                ///
                ///  Bit [C] = 0 dma_waitonreq[C] is LOW.
                ///
                ///  Bit [C] = 1 dma_waitonreq[C] is HIGH.
                dma_waitonreq_status: u16,
                padding: u16 = 0,
            }),
            ///  Registers to generate a software DMA request in one of the 16 DMA channels
            CHNL_SW_REQ: mmio.Mmio(packed struct(u32) {
                ///  Set the appropriate bit to generate a software DMA request on the corresponding DMA channel. Write as:
                ///
                ///  Bit [C] = 0 Does not create a DMA request for channel C.
                ///
                ///  Bit [C] = 1 Creates a DMA request for channel C.
                ///
                ///  Writing to a bit where a DMA channel is not implemented does not create a DMA request for that channel.
                chnl_sw_request: u16,
                padding: u16 = 0,
            }),
            ///  Returns the useburst status, or disables dma_sreq[Channel] from generating DMA requests
            CHNL_USE_BURST_SET: mmio.Mmio(packed struct(u32) {
                ///  Returns the useburst status, or disables dma_sreq[C] from generating DMA requests. Read as:
                ///
                ///  Bit [C] = 0 DMA channel C responds to requests that it receives on dma_req[C] or dma_sreq[C]. The controller performs 2R, or single, bus transfers.
                ///
                ///  Bit [C] = 1 DMA channel C does not respond to requests that it receives on dma_sreq[C]. The controller only responds to dma_req[C] requests and performs 2R transfers.
                ///
                ///  Write as:
                ///
                ///  Bit [C] = 0 No effect. Use the chnl_useburst_clr Register to set bit [C] to 0.
                ///
                ///  Bit [C] = 1 Disables dma_sreq[C] from generating DMA requests. The controller performs 2R transfers.
                ///
                ///  Writing to a bit where a DMA channel is not implemented has no effect.
                chnl_use_burst_set: u16,
                padding: u16 = 0,
            }),
            ///  Set the appropriate bit to enable dma_sreq[Channel] to generate requests.
            CHNL_USEBURST_SET: mmio.Mmio(packed struct(u32) {
                ///  Set the appropriate bit to enable dma_sreq[] to generate requests. Write as:
                ///
                ///  Bit [C] = 0 No effect. Use the chnl_useburst_set Register to disable dma_sreq[] from generating requests.
                ///
                ///  Bit [C] = 1 Enables dma_sreq[C] to generate DMA requests.
                ///  Writing to a bit where a DMA channel is not implemented has no effect
                chnl_useburst_clr: u16,
                padding: u16 = 0,
            }),
            ///  Returns the request mask status of dma_req[] and dma_sreq[], or disables the corresponding channel from generating DMA requests.
            CHNL_REQ_MASK_SET: mmio.Mmio(packed struct(u32) {
                ///  Returns the request mask status of dma_req[C] and dma_sreq[C], or disables the corresponding channel from generating DMA requests. Read as:
                ///
                ///  Bit [C] = 0 External requests are enabled for channel C.
                ///
                ///  Bit [C] = 1 External requests are disabled for channel C.
                ///
                ///  Write as:
                ///
                ///  Bit [C] = 0 No effect. Use the chnl_req_mask_clr Register to enable DMA requests.
                ///  Bit [C] = 1 Disables dma_req[C] and dma_sreq[C] from generating DMA requests.
                ///  Writing to a bit where a DMA channel is not implemented has no effect.
                chnl_req_mask_set: u16,
                padding: u16 = 0,
            }),
            ///  Set the appropriate bit to enable DMA requests for the channel corresponding to dma_req[C] and dma_sreq[C].
            CHNL_REQ_MASK_CLR: mmio.Mmio(packed struct(u32) {
                ///  Set the appropriate bit to enable DMA requests for the channel corresponding to dma_req[C] and dma_sreq[C]. Write as:
                ///
                ///  Bit [C] = 0 No effect. Use the chnl_req_mask_set Register to disable dma_req[C] and
                ///
                ///  dma_sreq[C] from generating requests.
                ///
                ///  Bit [C] = 1 Enables dma_req[C] or dma_sreq[C] to generate DMA requests.
                ///
                ///  Writing to a bit where a DMA channel is not implemented has no effect.
                chnl_req_mask_cler: u16,
                padding: u16 = 0,
            }),
            ///  Returns the enable status of the channels, or enables the corresponding channels.
            CHNL_ENABLE_SET: mmio.Mmio(packed struct(u32) {
                ///  Returns the enable status of the channels, or enables the corresponding channels. Read as:
                ///
                ///  Bit [C] = 0 Channel C is disabled.
                ///
                ///  Bit [C] = 1 Channel C is enabled.
                ///
                ///  Write as:
                ///
                ///  Bit [C] = 0 No effect. Use the chnl_enable_clr Register to disable a channel.
                ///
                ///  Bit [C] = 1 Enables channel C.
                ///
                ///  Writing to a bit where a DMA channel is not implemented has no effect.
                chnl_enable_set: u16,
                padding: u16 = 0,
            }),
            ///  Set the appropriate bit to disable the corresponding DMA channel.
            CHNL_ENABLE_CLR: mmio.Mmio(packed struct(u32) {
                ///  Set the appropriate bit to disable the corresponding DMA channel. Write as:
                ///
                ///  Bit [C] = 0 No effect. Use the chnl_enable_set Register to enable DMA channels.
                ///
                ///  Bit [C] = 1 Disables channel C.
                ///
                ///  Writing to a bit where a DMA channel is not implemented has no effect.
                chnl_enable_clr: u16,
                padding: u16 = 0,
            }),
            ///  Returns the channel control data structure status, or selects the alternate data structure for the corresponding DMA channel.
            CHNL_PRI_ALT_SET: mmio.Mmio(packed struct(u32) {
                ///  Returns the channel control data structure status, or selects the alternate data structure for the corresponding DMA channel. Read as:
                ///
                ///  Bit [C] = 0 DMA channel C is using the primary data structure.
                ///
                ///  Bit [C] = 1 DMA channel C is using the alternate data structure.
                ///
                ///  Write as:
                ///
                ///  Bit [C] = 0 No effect. Use the chnl_pri_alt_clr Register to set bit [C] to 0.
                ///
                ///  Bit [C] = 1 Selects the alternate data structure for channel C.
                ///
                ///  Writing to a bit where a DMA channel is not implemented has no effect.
                chnl_pri_alt_set: u16,
                padding: u16 = 0,
            }),
            ///  Set the appropriate bit to select the primary data structure for the corresponding DMA channel.
            CHNL_PRI_ALT_CLR: mmio.Mmio(packed struct(u32) {
                ///  Set the appropriate bit to select the primary data structure for the corresponding DMA channel. Write as:
                ///
                ///  Bit [C] = 0 No effect. Use the chnl_pri_alt_set Register to select the alternate data structure.
                ///
                ///  Bit [C] = 1 Selects the primary data structure for channel C.
                ///
                ///  Writing to a bit where a DMA channel is not implemented has no effect.
                chnl_pri_alt_clr: u16,
                padding: u16 = 0,
            }),
            ///  Returns the channel priority mask status, or sets the channel priority to high.
            CHNL_PRIORITY_SET: mmio.Mmio(packed struct(u32) {
                ///  Returns the channel priority mask status, or sets the channel priority to high. Read as:
                ///
                ///  Bit [C] = 0 DMA channel C is using the default priority level.
                ///
                ///  Bit [C] = 1 DMA channel C is using a high priority level.
                ///
                ///  Write as:
                ///
                ///  Bit [C] = 0 No effect. Use the chnl_priority_clr Register to set channel C to the default priority level.
                ///
                ///  Bit [C] = 1 Channel C uses the high priority level.
                ///
                ///  Writing to a bit where a DMA channel is not implemented has no effect.
                chnl_priority_set: u16,
                padding: u16 = 0,
            }),
            ///  Set the appropriate bit to select the default priority level for the specified DMA channel.
            CHNL_PRIORITY_CLEAR: mmio.Mmio(packed struct(u32) {
                ///  Set the appropriate bit to select the default priority level for the specified DMA channel. Write as:
                ///
                ///  Bit [C] = 0 No effect. Use the chnl_priority_set Register to set channel C to the high priority level.
                ///
                ///  Bit [C] = 1 Channel C uses the default priority level.
                ///
                ///  Writing to a bit where a DMA channel is not implemented has no effect.
                chnl_priority_clear: u16,
                padding: u16 = 0,
            }),
            reserved76: [12]u8,
            ///  Returns the status of dma_err, or sets the signal LOW.
            ERR_CLR: mmio.Mmio(packed struct(u32) {
                ///  Returns the status of dma_err, or sets the signal LOW. Read as:
                ///
                ///  0 = dma_err is LOW
                ///
                ///  1 = dma_err is HIGH.
                ///
                ///  Write as:
                ///
                ///  0 = No effect, status of dma_err is unchanged.
                ///
                ///  1 = Sets dma_err LOW.
                ///
                ///  For Test purposes, use the err_set register to set dma_err HIGH.
                err_clr: u1,
                padding: u31 = 0,
            }),
            reserved4048: [3968]u8,
            ///  Peripheral identification 4
            PERIPH_ID_4: mmio.Mmio(packed struct(u32) {
                ///  Peripheral identification 4
                periph_id_4: u32,
            }),
            reserved4064: [12]u8,
            ///  Peripheral identification 0
            PERIPH_ID_0: mmio.Mmio(packed struct(u32) {
                ///  Peripheral identification 0
                periph_id_0: u32,
            }),
            ///  Peripheral identification 1
            PERIPH_ID_1: mmio.Mmio(packed struct(u32) {
                ///  Peripheral identification 1
                periph_id_1: u32,
            }),
            ///  Peripheral identification 2
            PERIPH_ID_2: mmio.Mmio(packed struct(u32) {
                ///  Peripheral identification 2
                periph_id_2: u32,
            }),
            ///  Peripheral identification 3
            PERIPH_ID_3: mmio.Mmio(packed struct(u32) {
                ///  Peripheral identification 3
                periph_id_3: u32,
            }),
            ///  PrimeCell identification 0
            PCELL_ID_0: mmio.Mmio(packed struct(u32) {
                ///  PrimeCell identification 0
                pcell_id_0: u32,
            }),
        };

        ///  SPI peripheral control
        pub const SPI = extern struct {
            pub const DFS = enum(u4) {
                ///  4 bit serial data transfer
                word_4bit = 0x3,
                ///  5 bit serial data transfer
                word_5bit = 0x4,
                ///  6 bit serial data transfer
                word_6bit = 0x5,
                ///  7 bit serial data transfer
                word_7bit = 0x6,
                ///  8 bit serial data transfer
                word_8bit = 0x7,
                ///  9 bit serial data transfer
                word_9bit = 0x8,
                ///  10 bit serial data transfer
                word_10bit = 0x9,
                ///  11 bit serial data transfer
                word_11bit = 0xa,
                ///  12 bit serial data transfer
                word_12bit = 0xb,
                ///  13 bit serial data transfer
                word_13bit = 0xc,
                ///  14 bit serial data transfer
                word_14bit = 0xd,
                ///  15 bit serial data transfer
                word_15bit = 0xe,
                ///  16 bit serial data transfer
                word_16bit = 0xf,
                _,
            };

            pub const SCPH = enum(u1) {
                ///  Serial clock toggles in middle of first data bit
                toggle_middle = 0x0,
                ///  Serial clock toggles at start of first data bit
                toggle_start = 0x1,
            };

            pub const SCPOL = enum(u1) {
                ///  Inactive state of serial clock is low
                inactive_low = 0x0,
                ///  Inactive state of serial clock is high
                inactive_high = 0x1,
            };

            pub const TMOD = enum(u2) {
                ///  Transmit and receive
                tx_rx = 0x0,
                ///  Transmit only
                tx = 0x1,
                ///  Receive only
                rx = 0x2,
                ///  EEPROM read
                eeprom = 0x3,
            };

            pub const SRL = enum(u1) {
                ///  Normal mode operation
                normal = 0x0,
                ///  Test mode operation
                Test = 0x1,
            };

            pub const CFS = enum(u4) {
                ///  1 bit control word
                word_1bit = 0x0,
                ///  2 bit control word
                word_2bit = 0x1,
                ///  3 bit control word
                word_3bit = 0x2,
                ///  4 bit control word
                word_4bit = 0x3,
                ///  5 bit control word
                word_5bit = 0x4,
                ///  6 bit control word
                word_6bit = 0x5,
                ///  7 bit control word
                word_7bit = 0x6,
                ///  8 bit control word
                word_8bit = 0x7,
                ///  9 bit control word
                word_9bit = 0x8,
                ///  10 bit control word
                word_10bit = 0x9,
                ///  11 bit control word
                word_11bit = 0xa,
                ///  12 bit control word
                word_12bit = 0xb,
                ///  13 bit control word
                word_13bit = 0xc,
                ///  14 bit control word
                word_14bit = 0xd,
                ///  15 bit control word
                word_15bit = 0xe,
                ///  16 bit control word
                word_16bit = 0xf,
            };

            pub const TXEIM = enum(u1) {
                ///  Mask the interrupt
                mask = 0x0,
                ///  Unmask the interrupt
                unmask = 0x1,
            };

            ///  Control Register 0: This register controls the serial data transfer. It is impossible to write to this register when the SPI Master is enabled. The SPI Master is enabled and disabled by writing to the SSIENR register (0x008).
            CTRLR0: mmio.Mmio(packed struct(u21) {
                ///  Data Frame Size. Dependencies: When SSI_HC_FRF=1, SCPH bit is a read-only bit, with its value set by SSI_DFLT_SCPH. Selects the data frame length. When the data frame size is programmed to be less than 16 bits, the receive data are automatically right-justified by the receive logic, with the upper bits of the receive FIFO zero-padded. You must right-justify transmit data before writing into the transmit FIFO. The transmit logic ignores the upper unused bits when transmitting the data. For the field decode, refer to Table 6-2.
                DFS: DFS,
                ///  00 - Motorola SPI only
                FRF: u2,
                ///  Serial Clock Phase. Valid when the frame format (FRF) is set to Motorola SPI. The serial clock phase selects the relationship of the serial clock with the slave select signal. When SCPH = 0, data are captured on the first edge of the serial clock. When SCPH = 1, the serial clock starts toggling one cycle after the slave select line is activated, and data are captured on the second edge of the serial clock. Dependencies: When SSI_HC_FRF=1, SCPH bit is a read-only bit, with its value set by SSI_DFLT_SCPH.
                SCPH: SCPH,
                ///  Serial Clock Polarity. Valid when the frame format (FRF) is set to Motorola SPI. Used to select the polarity of the inactive serial clock, which is held inactive when the SPI Master is not actively transferring data on the serial bus. Dependencies: When SSI_HC_FRF=1, SCPOL bit is a read-only bit with its value set by SSI_DFLT_SCPOL.
                SCPOL: SCPOL,
                ///  Transfer Mode. Selects the mode of transfer for serial communication. This field does not affect the transfer duplicity. Only indicates whether the receive or transmit data are valid. In transmit-only mode, data received from the external device is not valid and is not stored in the receive FIFO memory; it is overwritten on the next transfer. In receive-only mode, transmitted data are not valid. After the first write to the transmit FIFO, the same word is retransmitted for the duration of the transfer. In transmit-and-receive mode, both transmit and receive data are valid. The transfer continues until the transmit FIFO is empty. Data received from the external device are stored into the receive FIFO memory, where it can be accessed by the host processor. In eeprom-read mode, receive data is not valid while control data is being transmitted. When all control data is sent to the EEPROM, receive data becomes valid and transmit data becomes invalid. All data in the transmit FIFO is considered control data in this mode. This transfer mode is only valid when the SPI Master is configured as a master device.
                TMOD: TMOD,
                ///  No function for SPI Master. Slave usage only.
                SLV_OE: u1,
                ///  Shift Register Loop. Used for testing purposes only. When internally active, connects the transmit shift register output to the receive shift register input. Can be used in both serial slave and serial-master modes. When the SPI Master is configured as a slave in loopback mode, the ss_in_n and ssi_clk signals must be provided by an external source. In this mode, the slave cannot generate these signals because there is nothing to which to loop back.
                SRL: SRL,
                ///  Control Frame Size. Selects the length of the control word for the Microwire frame format. For the field decode, refer to Table 6-3 on page 101
                CFS: CFS,
                ///  Data Frame Size in 32-bit mode. Used to select the data frame size in 32-bit mode. These bits are only valid when SSI_MAX_XFER_SIZE is configured to 32. When the data frame size is programmed to be less than 32 bits, the receive data is automatically right-justified by the receive logic, with the upper bits of the receive FIFO zero-padded. You are responsible for making sure the transmit data is right-justified before writing into the transmit FIFO. The transmit logic ignores the upper unused bits when transmitting the data. For the field decode value, refer to Table 6-3 on page 101.
                DFS_32: DFS,
            }),
            reserved4: [2]u8,
            ///  Control Register 1: CTRLR1 register controls the end of serial transfers when in receive-only mode. It is impossible to write to this register when the SPI Master is enabled. The SPI Master is enabled and disabled by writing to the SSIENR register (0x008).
            CTRLR1: mmio.Mmio(packed struct(u16) {
                ///  Number of Data Frames. When TMOD = 10 or TMOD = 11, this register field sets the number of data frames to be continuously received by the SPI Master. The SPI Master continues to receive serial data until the number of data frames received is equal to this register value plus 1, which enables you to receive up to 64 KB of data in a continuous transfer. When the SPI Master is configured as a serial slave, the transfer continues for as long as the slave is selected. Therefore, this register serves no purpose and is not present when the SPI Master is configured as a serial slave.
                NDF: u16,
            }),
            reserved8: [2]u8,
            ///  SSI Enable Register: This register enables and disables the SPI Master. The following SPI Master registers are NOT writeable when SPI Master is enabled =1: CTRLR0, CTRLR1, BAUDR. You must set SSIENR = 0, before writing these 3 registers. The following SPI Master registers are writeable ONLY when the SPI Master is enabled = 1: DR0.
            SSIENR: mmio.Mmio(packed struct(u1) {
                ///  SSI Enable. Enables and disables all SPI Master operations. When disabled, all serial transfers are halted immediately. Transmit and receive FIFO buffers are cleared when the device is disabled. It is impossible to program some of the SPI Master control registers when enabled. When disabled, the ssi_sleep output is set (after delay) to inform the system that it is safe to remove the ssi_clk, thus saving power consumption in the system.
                SSI_EN: u1,
            }),
            reserved16: [8]u8,
            ///  Slave Enable Register: This register enables the individual slave select output lines from the SPI Master. You cannot write to this register when SPI Master is busy.
            SER: mmio.Mmio(packed struct(u3) {
                ///  Slave 1 Select Enable Flag. When set, the corresponding slave select line from the master is activated when a serial transfer begins. It should be noted that setting or clearing bits in this register have no effect on the corresponding slave select outputs until a transfer is started. Before beginning a transfer, you should enable the bit in this register. When not operating in broadcast mode, only one bit in the register should be set.
                SER_SS1: u1,
                ///  Slave 2 Select Enable Flag. When set, the corresponding slave select line from the master is activated when a serial transfer begins. It should be noted that setting or clearing bits in this register have no effect on the corresponding slave select outputs until a transfer is started. Before beginning a transfer, you should enable the bit in this register. When not operating in broadcast mode, only one bit in the register should be set.
                SER_SS2: u1,
                ///  Slave 3 Select Enable Flag. When set, the corresponding slave select line from the master is activated when a serial transfer begins. It should be noted that setting or clearing bits in this register have no effect on the corresponding slave select outputs until a transfer is started. Before beginning a transfer, you should enable the bit in this register. When not operating in broadcast mode, only one bit in the register should be set.
                SER_SS3: u1,
            }),
            reserved20: [4]u8,
            ///  Baud Rate Select Register: This register derives the frequency of the serial clock that regulates the data transfer. It is impossible to write to this register when the SPI Master is enabled. The SPI Master is enabled and disabled by writing the SSIENR register (0x008).
            BAUDR: mmio.Mmio(packed struct(u16) {
                ///  From description of `SCKDV_15_1`: 'The LSB for this field is always set to 0 and is unaffected by a write operation, which ensures an even value is held in this register. ' `SCKDV` is broken into `SCK_DV_15_1` and `SCK_DV_0`.
                SCKDV_0: u1,
                ///  SSI Clock Divider. The LSB for this field is always set to 0 and is unaffected by a write operation, which ensures an even value is held in this register. If the value is 0, the serial output clock (sclk_out) is disabled. The frequency of the sclk_out is derived from the following equation: `Fsclk_out = Fssi_clk/SCKDV` where SCKDV is any even value between 2 and 65534. For example: for `Fssi_clk = 3.6864MHz` and `SCKDV` =2, `Fsclk_out = 3.6864/2 = 1.8432MHz`
                SCKDV_15_1: u1,
                padding: u14 = 0,
            }),
            reserved24: [2]u8,
            ///  Transmit FFIFO Threshold Level Register: This register controls the threshold value for the transmit FIFO memory.
            TXFTLR: mmio.Mmio(packed struct(u32) {
                ///  Transmit FIFO Threshold. Controls the level of entries (or below) at which the transmit FIFO controller triggers an interrupt ssi_txe_intr`. The FIFO depth is configurable in the range 2-256; this register is sized to the number of address bits needed to access the FIFO. If you attempt to set bits [7:0] of this register to a value greater than or equal to the depth of the FIFO, this field is not written and retains its current value. When the number of transmit FIFO entries is less than or equal to this value, the transmit FIFO empty interrupt is triggered. For field decode, refer to Table 6-4.
                TFT: u8,
                padding: u24 = 0,
            }),
            ///  Receive FIFO Threshold Level Register: This register controls the threshold value for the receive FIFO memory.
            RXFTLR: mmio.Mmio(packed struct(u32) {
                ///  Receive FIFO Threshold. Controls the level of entries (or above) at which the receive FIFO controller triggers an interrupt `ssi_rxf_intr`. The FIFO depth is configurable in the range 2-256. This register is sized to the number of address bits needed to access the FIFO. If you attempt to set this value greater than the depth of the FIFO, this field is not written and retains its current value. When the number of receive FIFO entries is greater than or equal to this value + 1, the receive FIFO full interrupt is triggered. For field decode, refer to Table 6-5.
                RFT: u3,
                padding: u29 = 0,
            }),
            ///  Transmit FIFO Level Register: This register contains the number of valid data entries in the transmit FIFO memory.
            TXFLR: mmio.Mmio(packed struct(u32) {
                ///  Transmit FIFO Level. Contains the number of valid data entries in the transmit FIFO.
                TXTFL: u3,
                padding: u29 = 0,
            }),
            ///  Receive FIFO Level Register: This register contains the number of valid data entries in FIFO memory. This register can be read at any time.
            RXFLR: mmio.Mmio(packed struct(u32) {
                ///  Receive FIFO Level. Contains the number of valid data entries in the receive FIFO.
                RXTFL: u3,
                padding: u29 = 0,
            }),
            ///  Status Register: This is a read-only register used to indicate the current transfer status, FIFO status, and any transmission/reception errors that may have occurred. This status register may be read at any time. None of the bits in this register request an interrupt.
            SR: mmio.Mmio(packed struct(u7) {
                ///  SSI Busy Flag. When set, indicates that a serial transfer is in progress; when cleared indicates that the SPI Master is idle or disabled.
                BUSY: u1,
                ///  Transmit FIFO Not Full. Set when the transmit FIFO contains one or more empty locations, and is cleared when the FIFO is full.
                TFNF: u1,
                ///  Transmit FIFO Empty. When the transmit FIFO is completely empty, this bit is set. When the transmit FIFO contains one or more valid entries, this bit is cleared. This bit field does not request an interrupt.
                TFE: u1,
                ///  Receive FIFO Not Empty. Set when the receive FIFO contains one or more entries and is cleared when the receive FIFO is empty. This bit can be polled by software to completely empty the receive FIFO.
                RFNE: u1,
                ///  Receive FIFO Full. When the receive FIFO is completely full, this bit is set. When the receive FIFO contains one or more empty location, this bit is cleared.
                RFF: u1,
                ///  No function for SPI Master. Slave usage only.
                TXE: u1,
                ///  Data Collision Error. Relevant only when the SPI Master is configured as a master device. This bit is set if the SPI Master is actively transmitting when another master selects this device as a slave. This informs the processor that the last data transfer was halted before completion. This bit is cleared when read.
                DCOL: u1,
            }),
            reserved44: [4]u8,
            ///  Interrupt Mask Register: This read/write register masks or enables all interrupts generated by the SPI Master.
            IMR: mmio.Mmio(packed struct(u32) {
                ///  Transmit FIFO Empty Interrupt Mask
                TXEIM: TXEIM,
                ///  Transmit FIFO Overflow Interrupt Mask
                TXOIM: TXEIM,
                ///  Receive FIFO Underflow Interrupt Mask
                RXUIM: TXEIM,
                ///  Receive FIFO Overflow Interrupt Mask
                RXFOIM: TXEIM,
                ///  Receive FIFO Full Interrupt Mask
                RXFIM: TXEIM,
                ///  Multi-Master Contention Interrupt Mask. This bit field is not present if the SPI Master is configured as a serial-slave device.
                MSTIM: TXEIM,
                padding: u26 = 0,
            }),
            ///  Interrupt Status Register: This register reports the status of SPI Master interrupts after they have been masked.
            ISR: mmio.Mmio(packed struct(u32) {
                ///  Transmit FIFO Empty Interrupt Status
                TXEIS: u1,
                ///  Transmit FIFO Overflow Interrupt Status
                TXOIS: u1,
                ///  Receive FIFO Underflow Interrupt Status
                RXUIS: u1,
                ///  Receive FIFO Overflow Interrupt Status
                RXOIS: u1,
                ///  Receive FIFO Full Interrupt Status
                RXFIS: u1,
                ///  Multi-Master Contention Interrupt Status. This bit field is not present if the SPI Master is configured as a serial-slave device.
                MSTIS: u1,
                padding: u26 = 0,
            }),
            ///  Raw Interrupt Status Register: This read-only register reports the status of the SPI Master interrupts prior to masking.
            RISR: mmio.Mmio(packed struct(u32) {
                ///  Transmit FIFO Empty Raw Interrupt Status
                TXEIS: u1,
                ///  Transmit FIFO Overflow Raw Interrupt Status
                TXOIS: u1,
                ///  Receive FIFO Underflow Raw Interrupt Status
                RXUIS: u1,
                ///  Receive FIFO Overflow Raw Interrupt Status
                RXOIS: u1,
                ///  Receive FIFO Full Raw Interrupt Status
                RXFIS: u1,
                ///  Multi-Master Contention Raw Interrupt Status. This bit field is not present if the SPI Master is configured as a serial-slave device.
                MSTIS: u1,
                padding: u26 = 0,
            }),
            ///  Transmit FIFO Overflow Interrupt Clear Register.
            TXOICR: mmio.Mmio(packed struct(u1) {
                ///  Clear Transmit FIFO Overflow Interrupt. This register reflects the status of the interrupt. A read from this register clears the ssi_txo_intr interrupt; writing has no effect.
                TXOICR: u1,
            }),
            reserved60: [4]u8,
            ///  Receive FIFO Overflow Interrupt Clear Register.
            RXOICR: mmio.Mmio(packed struct(u1) {
                ///  Clear Receive FIFO Overflow Interrupt. This register reflects the status of the interrupt. A read from this register clears the ssi_txo_intr interrupt; writing has no effect.
                TXOICR: u1,
            }),
            reserved64: [4]u8,
            ///  Receive FIFO Underflow Interrupt Clear Register.
            RXUICR: mmio.Mmio(packed struct(u1) {
                ///  Clear Receive FIFO Underflow Interrupt. This register reflects the status of the interrupt. A read from this register clears the ssi_rxu_intr interrupt; writing has no effect.
                TXOICR: u1,
            }),
            reserved68: [4]u8,
            ///  Multi-Master Interrupt Clear Register.
            MSTICR: mmio.Mmio(packed struct(u1) {
                ///  Clear Multi-Master Contention Interrupt. This register reflects the status of the interrupt. read from this register clears the ssi_mst_intr interrupt; writing has no effect.
                TXOICR: u1,
            }),
            reserved72: [4]u8,
            ///  Interrupt Clear Register.
            ICR: mmio.Mmio(packed struct(u1) {
                ///  Clear Interrupts. This register is set if any of the interrupts below are active. A read clears the ssi_txo_intr, ssi_rxu_intr, ssi_rxo_intr, and the ssi_mst_intr interrupts. Writing to this register has no effect.
                TXOICR: u1,
            }),
            reserved88: [16]u8,
            ///  Identification Code. This register contains the peripherals identification code.
            IDR: mmio.Mmio(packed struct(u32) {
                ///  Identification Code. This register contains the peripherals identification code.
                IDCODE: u32,
            }),
            ///  Contains the hex representation of the component version. Consists of ASCII value for each number in the version, followed by *. For example 32_30_31_2A represents the version 2.01*.
            SSI_COMP_VERSION: mmio.Mmio(packed struct(u32) {
                ///  Contains the hex representation of the component version. Consists of ASCII value for each number in the version, followed by *. For example 32_30_31_2A represents the version 2.01*.
                SSI_COMP_VERSION: u32,
            }),
        };

        ///  Simple Periodic Timer
        pub const SPT = extern struct {
            pub const SPT_EN = enum(u1) {
                ///  Except 30 bits Timer, all the counter will be reset to 0.
                disable = 0x0,
                ///  Turn on Counter/Timer
                enable = 0x1,
            };

            pub const CLK_SRC_SEL = enum(u1) {
                ///  Clock source is 32KHz
                clock_32khz = 0x0,
                ///  Clock source is 16KHz
                clock_16khz = 0x1,
            };

            pub const INT_MASK_N_0 = enum(u1) {
                ///  Unmask the interrupt
                unmask = 0x0,
                ///  Mask the interrupt
                mask = 0x1,
            };

            ///  Configuration register for the simple periodic timer
            SPT_CFG: mmio.Mmio(packed struct(u32) {
                ///  Field to enable the timer/counter
                SPT_EN: SPT_EN,
                ///  Select the clock source
                CLK_SRC_SEL: CLK_SRC_SEL,
                ///  Activate or deactive interrupt trigger signal 0
                INT_MASK_N_0: INT_MASK_N_0,
                ///  Activate or deactive interrupt trigger signal 1
                INT_MASK_N_1: INT_MASK_N_0,
                ///  Activate or deactive interrupt trigger signal 2
                INT_MASK_N_2: INT_MASK_N_0,
                ///  Activate or deactive interrupt trigger signal 3
                INT_MASK_N_3: INT_MASK_N_0,
                ///  Activate or deactive interrupt trigger signal 4
                INT_MASK_N_4: INT_MASK_N_0,
                ///  Activate or deactive interrupt trigger signal 5
                INT_MASK_N_5: INT_MASK_N_0,
                ///  Activate or deactive interrupt trigger signal 6
                INT_MASK_N_6: INT_MASK_N_0,
                ///  Activate or deactive interrupt trigger signal 7
                INT_MASK_N_7: INT_MASK_N_0,
                ///  FFE Kick Off (timeout) perdiod configuration (value in registers = period, max value is 100). NOTE : If 0x0, The Event Counter will be turn off and all the Signals to PMU will be de-asserted. NOTE : If PMU_TO_PERIOD is 0x0, FFE Kick off signal will not trigger until FFE is alive.
                FFE_TO_PERIOD: u8,
                ///  PMU Kick Off (Time out Period) Configuration PMU Kick Off signal will assert N cycles (value in field) before FFE kick signal asserting. NOTE : For 0x0, FFE Time out Event will be used to wake up FFE power domain.
                PMU_TO_PERIO: u4,
                padding: u10 = 0,
            }),
            ///  Allows blocking the PMU and FFE kickoff signal
            SLEEP_MODE: mmio.Mmio(packed struct(u32) {
                ///  If set, the PMU and FFE kick off signal will be blocked. This bit will be cleared by HW if any of non-Mask INT triggered
                SLEEP_MODE: u1,
                padding: u31 = 0,
            }),
            ///  40 msec increment error compensation register
            ERROR_CMP_40M: mmio.Mmio(packed struct(u32) {
                ///  Each 40ms period contains sub-events. For each sub-event, you can add 1ms when it triggers. Theres a sub-event every odd number, with each bit of this field corresponding to that event, so: [bit 0 = 1st ms event, bit 1 = 3rd ms event ... bit 19 = 39th ms event]
                ERROR_CMP_40M: u20,
                padding: u12 = 0,
            }),
            ///  1 sec Increment Error Compensation 0 Register
            ERROR_CMP_1S_0: mmio.Mmio(packed struct(u32) {
                ///  Each 1s period contains sub-events for every 40ms counted, and a subevent for the first ms counted. Each bit-pair in this field corresponds to one of those sub-events. Values of 0 or 2 in bit pairs do nothing. A value of 3 means the counter should decrease 1ms everytime the subevent is triggered, and a value of 1 means the counter should increment 1ms every time the event is triggered. [bits 1:0 = 1st 1ms event, bit 3:2 = 1st 40ms event ... 31:30 = 15th 40ms event]
                ERROR_CMP_1S_0: u32,
            }),
            ///  1 sec Incremente Error Compensation 1 Register
            ERROR_CMP_1S_1: mmio.Mmio(packed struct(u32) {
                ///  Each 1s period contains sub-events for every 40ms counted. Each bit-pair in this field corresponds to one of those sub-events. Values of 0 or 2 in bit pairs do nothing. A value of 3 means the counter should decrease 1ms everytime the sub-event is triggered, and a value of 1 means the counter should increment 1ms every time the event is triggered. Starts from the 16th 40ms event. [bits 1:0 = 16st 40ms event, bit 3:2 = 17st 40ms event ... 17:16 = 24th 40ms event]
                ERROR_CMP_1S_1: u18,
                padding: u14 = 0,
            }),
            ///  1 sec Incremente Error Compensation 2 Register
            ERROR_CMP_1S_2: mmio.Mmio(packed struct(u32) {
                ///  Each 1s period contains sub-events for every 80ms counted. Each bit-pair in this field corresponds to one of those sub-events. Values of 0 or 2 in bit pairs do nothing. A value of 3 means the counter should decrease 1ms everytime the sub-event is triggered, and a value of 1 means the counter should increment 1ms every time the event is triggered. [bits 1:0 = 1st 80ms event, bit 3:2 = 2nd 80ms event ... 23:22 = 12th 80ms event]
                ERROR_CMP_1S_2: u24,
                padding: u8 = 0,
            }),
            ///  1 sec Incremente Error Compensation 3 Register
            ERROR_CMP_1S_3: mmio.Mmio(packed struct(u32) {
                ///  Each 1s period contains sub-events for every 150ms counted. Each bit-pair in this field corresponds to one of those sub-events. Values of 0 or 2 in bit pairs do nothing. A value of 3 means the counter should decrease 1ms everytime the sub-event is triggered, and a value of 1 means the counter should increment 1ms every time the event is triggered. [bits 1:0 = 1st 150ms event, bit 3:2 = 2nd 150ms event ... 11:10 = 6th 150ms event]
                ERROR_CMP_1S_3: u12,
                padding: u20 = 0,
            }),
            ///  2, 4, 6, 8, 16 sec Increment Error Compensation Register
            ERROR_CMP_RTC_0: mmio.Mmio(packed struct(u32) {
                ///  Every 16s there are 4 sub-events. Each bit pair in this field corresponds to those sub-events. Values of 0 and 2 do nothing. A value of 3 means the counter should decrement 1ms, and a value of 1 means the counter must add 1ms. [bits 1:0 4002ms event, bits 3:2 4450ms event, bits 5:4 6002ms event, bits 7:6 6450ms event]
                ERROT_CMP_RTC_0_16: u8,
                ///  Every 8s there are 4 sub-events. Each bit pair in this field corresponds to those sub-events. Values of 0 and 2 do nothing. A value of 3 means the counter should decrement 1ms, and a value of 1 means the counter must add 1ms. [bits 9:8 4002ms event, bits 11:10 4450ms event, bits 13:12 6002ms event, bits 15:14 6450ms event]
                ERROT_CMP_RTC_0_8: u8,
                ///  Every 4s there are 4 sub-events. Each bit pair in this field corresponds to those sub-events. Values of 0 and 2 do nothing. A value of 3 means the counter should decrement 1ms, and a value of 1 means the counter must add 1ms. [bits 17:16 2002ms event, bits 19:18 2450ms event, bits 21:20 3002ms event, bits 23:22 3450ms event]
                ERROT_CMP_RTC_0_4: u8,
                ///  Every 2s there are 2 sub-events. Each bit pair in this field corresponds to those sub-events. Values of 0 and 2 do nothing. A value of 3 means the counter should decrement 1ms, and a value of 1 means the counter must add 1ms. [bits 25:24 1002ms event, bits 27:26 1450ms event]
                ERROT_CMP_RTC_0_2: u4,
                padding: u4 = 0,
            }),
            ///  32, 64, 128, 256 sec Increment Error Compensation Register
            ERROR_CMP_RTC_1: mmio.Mmio(packed struct(u32) {
                ///  Every 256s there are 4 sub-events. Each bit pair in this field corresponds to those sub-events. Values of 0 and 2 do nothing. A value of 3 means the counter should decrement 1ms, and a value of 1 means the counter must add 1ms. [bits 1:0 128002ms event, bits 3:2 128450ms event, bits 5:4 192002ms event, bits 7:6 192450ms event]
                ERROT_CMP_RTC_0_256: u8,
                ///  Every 128s there are 4 sub-events. Each bit pair in this field corresponds to those sub-events. Values of 0 and 2 do nothing. A value of 3 means the counter should decrement 1ms, and a value of 1 means the counter must add 1ms. [bits 9:8 64002ms event, bits 11:10 64450ms event, bits 13:12 96002ms event, bits 15:14 96450ms event]
                ERROT_CMP_RTC_0_128: u8,
                ///  Every 64s there are 4 sub-events. Each bit pair in this field corresponds to those sub-events. Values of 0 and 2 do nothing. A value of 3 means the counter should decrement 1ms, and a value of 1 means the counter must add 1ms. [bits 17:16 32002ms event, bits 19:18 32450ms event, bits 21:20 48002ms event, bits 23:22 48450ms event]
                ERROT_CMP_RTC_0_64: u8,
                ///  Every 32s there are 4 sub-events. Each bit pair in this field corresponds to those sub-events. Values of 0 and 2 do nothing. A value of 3 means the counter should decrement 1ms, and a value of 1 means the counter must add 1ms. [bits 25:24 16002ms event, bits 27:26 16450ms event, bits 29:28 24450 event, bits 31:30 24450 event]
                ERROT_CMP_RTC_0_32: u8,
            }),
            ///  512, 1024, 2048, 4096 sec Increment Error Compensation Register.
            ERROR_CMP_RTC_2: mmio.Mmio(packed struct(u32) {
                ///  Every 4096s there are 4 sub-events. Each bit pair in this field corresponds to those sub-events. Values of 0 and 2 do nothing. A value of 3 means the counter should decrement 1ms, and a value of 1 means the counter must add 1ms. [bits 1:0 2048002ms event, bits 3:2 2048450ms event, bits 5:4 3072002ms event, bits 7:6 3072450ms event]
                ERROT_CMP_RTC_0_4096: u8,
                ///  Every 2048s there are 4 sub-events. Each bit pair in this field corresponds to those sub-events. Values of 0 and 2 do nothing. A value of 3 means the counter should decrement 1ms, and a value of 1 means the counter must add 1ms. [bits 9:8 1024002ms event, bits 11:10 1024450ms event, bits 13:12 1536002ms event, bits 15:14 1536450ms event]
                ERROT_CMP_RTC_2_2048: u8,
                ///  Every 1024s there are 4 sub-events. Each bit pair in this field corresponds to those sub-events. Values of 0 and 2 do nothing. A value of 3 means the counter should decrement 1ms, and a value of 1 means the counter must add 1ms. [bits 17:16 512002ms event, bits 19:18 512450ms event, bits 21:20 768002ms event, bits 23:22 768450ms event]
                ERROT_CMP_RTC_0_1024: u8,
                ///  Every 512s there are 4 sub-events. Each bit pair in this field corresponds to those sub-events. Values of 0 and 2 do nothing. A value of 3 means the counter should decrement 1ms, and a value of 1 means the counter must add 1ms. [bits 25:24 256002ms event, bits 27:26 256450ms event, bits 29:28 384002 event, bits 31:30 384450 event]
                ERROT_CMP_RTC_0_512: u8,
            }),
            ///  8192, 16384 sec Increment Error Compensation Register
            ERROR_CMP_RTC_3: mmio.Mmio(packed struct(u32) {
                ///  Every 16384s there are 4 sub-events. Each bit pair in this field corresponds to those sub-events. Values of 0 and 2 do nothing. A value of 3 means the counter should decrement 1ms, and a value of 1 means the counter must add 1ms. [bits 1:0 8192002ms event, bits 3:2 8192450ms event, bits 5:4 12288002ms event, bits 7:6 12288450ms event]
                ERROT_CMP_RTC_0_16384: u8,
                ///  Every 8192s there are 4 sub-events. Each bit pair in this field corresponds to those sub-events. Values of 0 and 2 do nothing. A value of 3 means the counter should decrement 1ms, and a value of 1 means the counter must add 1ms. [bits 9:8 4096002ms event, bits 11:10 4096450ms event, bits 13:12 6144002ms event, bits 15:14 6144450ms event]
                ERROT_CMP_RTC_2_8192: u8,
                padding: u16 = 0,
            }),
            ///  Update the 30-Bit Timer once write. Note: Please programmed SPT_EN (0x000, bit 0) to 0 before write this register to avoid any potential issue
            UPDATE_TMR_VAL: mmio.Mmio(packed struct(u32) {
                ///  Update the 30-Bit Timer once write. Note: Please programmed SPT_EN (0x000, bit 0) to 0 before write this register to avoid any potential issue
                UPDATE_TIMER_VALUE: u30,
                padding: u2 = 0,
            }),
            ///  Not documented
            SPARE_BITS: mmio.Mmio(packed struct(u32) {
                ///  Not documented
                SPARE_BITS: u8,
                padding: u24 = 0,
            }),
            ///  Return the Value of 30-bits, in 1mS resoultion. This is the RTC value
            TIMER_VALUE: mmio.Mmio(packed struct(u32) {
                ///  Return the Value of 30-bits, in 1mS resoultion. This is the RTC value
                TIMER_VALUE: u30,
                padding: u2 = 0,
            }),
            ///  Return the Value of the Event counter generating FFE Time out event It is an upcount counter, in 1mS resoultion.
            EVENT_CNT_VALUE: mmio.Mmio(packed struct(u32) {
                ///  Return the Value of the Event counter generating FFE Time out event It is an upcount counter, in 1mS resoultion.
                EVENT_CNT_VALUE: u8,
                padding: u24 = 0,
            }),
        };

        ///  Communication Manager - Top Level controller
        pub const SPI_TLC = extern struct {
            pub const M4PowerStatus = enum(u2) {
                ///  Active mode.
                active = 0x0,
                ///  Deep Sleep mode.
                deep_sleep = 0x1,
                ///  Shut down mode.
                shut_down = 0x2,
                ///  Clock off mode.
                clock_off = 0x3,
            };

            pub const M4ResetStatus = enum(u1) {
                ///  M4 Subsystem reset is released.
                reset_released = 0x0,
                ///  M4 Subsystem reset is NOT released.
                reset_not_release = 0x1,
            };

            pub const M4RebootReq = enum(u1) {
                ///  No Code reload is neccesary
                no_reload_need = 0x0,
                ///  Need to Re-Load the Code in AP mode
                reload_needed = 0x1,
            };

            ///  Device ID, Read Only. 0x21, the Protocol of accessing this SFR is different, See Device ID read Page for detail
            DEVICEIDBYTE: mmio.Mmio(packed struct(u8) {
                ///  Device ID, Read Only. 0x21, the Protocol of accessing this SFR is different, See Device ID read Page for detail
                DeviceIDByte: u8,
            }),
            reserved9: [8]u8,
            ///  PF Bank FIFO 0 Read Port
            CM_FIFO_0_DATA: mmio.Mmio(packed struct(u8) {
                ///  PF FIFO Read Port
                DATA: u8,
            }),
            ///  PF Bank FIFO 1 Read Port
            CM_FIFO_1_DATA: mmio.Mmio(packed struct(u8) {
                ///  PF FIFO Read Port
                DATA: u8,
            }),
            ///  PF Bank FIFO 2 Read Port
            CM_FIFO_2_DATA: mmio.Mmio(packed struct(u8) {
                ///  PF FIFO Read Port
                DATA: u8,
            }),
            ///  PF Bank FIFO 3 Read Port
            CM_FIFO_3_DATA: mmio.Mmio(packed struct(u8) {
                ///  PF FIFO Read Port
                DATA: u8,
            }),
            reserved32: [19]u8,
            ///  Memory Address, It is representing AHB Byte Address bit [7:0].
            ///  Bit 7:0 R/W, Default All 0
            ///  Bit [1:0] will be ignored since only Support Word Access
            MemAddrByte0: mmio.Mmio(packed struct(u8) {
                ///  Memory Address, It is representing AHB Byte Address bit [7:0].
                ///  Bit 7:0 R/W, Default All 0
                ///  Bit [1:0] will be ignored since only Support Word Access
                MemAddrByte0: u8,
            }),
            ///  AHB Memory Address, It is representing AHB Byte Address bit [15:8]. Bit 7:0 R/W, Default All 0
            ///  Once write to this SFR, an AHB memory Read Could be Trigger. See 'TLC AHB Memory Read Trigger' worksheet for detail.
            MemAddrByte1: mmio.Mmio(packed struct(u8) {
                ///  AHB Memory Address, It is representing AHB Byte Address bit [15:8]. Bit 7:0 R/W, Default All 0
                ///  Once write to this SFR, an AHB memory Read Could be Trigger. See 'TLC AHB Memory Read Trigger' worksheet for detail.
                MemAddrByte1: u8,
            }),
            ///  AHB Memory Address, It is representing AHB Byte Address bit [23:16]. Bit 7:0 R/W, Default All 0
            MemAddrByte2: mmio.Mmio(packed struct(u8) {
                ///  AHB Memory Address, It is representing AHB Byte Address bit [23:16]. Bit 7:0 R/W, Default All 0
                MemAddrByte2: u8,
            }),
            ///  AHB Memory Address, It is representing AHB Byte Address bit [31:24]. Bit 7:0 R/W,Default All 0
            MemAddrByte3: mmio.Mmio(packed struct(u8) {
                ///  AHB Memory Address, It is representing AHB Byte Address bit [31:24]. Bit 7:0 R/W,Default All 0
                MemAddrByte3: u8,
            }),
            reserved40: [4]u8,
            ///  First Byte (LSB) of AHB memory data
            MemDataByte0: mmio.Mmio(packed struct(u8) {
                ///  First Byte (LSB) of AHB memory data
                MemDataByte0: u8,
            }),
            ///  Second byte of AHB memory data
            MemDataByte1: mmio.Mmio(packed struct(u8) {
                ///  Second byte of AHB memory data
                MemDataByte1: u8,
            }),
            ///  Third byte of AHB memory data
            MemDataByte2: mmio.Mmio(packed struct(u8) {
                ///  Third byte of AHB memory data
                MemDataByte2: u8,
            }),
            ///  Forth byte of AHB memory data, once write to this SFR
            ///  1. Trigger a AHB memory Write
            ///  2. Auto Increment the AHB memory address (MemAddrByte0/MemAddrByte1) by 4 since AHB memory Address is in Byte Granunality. (offset 0x20~0x21, 64KB range)
            MemDataByte3: mmio.Mmio(packed struct(u8) {
                ///  Forth byte of AHB memory data, once write to this SFR
                ///  1. Trigger a AHB memory Write
                ///  2. Auto Increment the AHB memory address (MemAddrByte0/MemAddrByte1) by 4 since AHB memory Address is in Byte Granunality. (offset 0x20~0x21, 64KB range)
                MemDataByte3: u8,
            }),
            reserved47: [3]u8,
            ///  AHB status register
            AHBSTATUS: mmio.Mmio(packed struct(u8) {
                ///  If set, there's pending AHB Memory Read/Write request
                NoPendingAhbReq: u1,
                ///  Set if AHB Read Data is Ready. This bit is Auto Clear Once a new AHB read Access kick off and Auto Set once AHB read data is valid.
                AhbReadDataValid: u1,
                ///  Set if AHB Address/Data/Command FIFO is Full. (Read Only)
                AhbReqFIFOFull: u1,
                ///  Set if AHB Address/Data/Command FIFO is less than half full.
                AhbReqFIFOhalfEmpty: u1,
                reserved6: u2 = 0,
                ///  0 if FIFO is 4 entries, 1 if FIFO is 8 entries.
                AhbReqFIFOSize: u2,
            }),
            ///  AHB access control register
            AHBACCESSCTL: mmio.Mmio(packed struct(u8) {
                ///  AHB Memory Read Option
                ///  2'b11 : If MemAddrByte[1:0] is 2'b11, then AHB Memory Read will not be automatically triggered once MemAddrByte1 is written Other : The AHB Memory Read behavior is same as S2, Once MemAddrByte1 is written, AHB Memory read is triggered.
                AhbReadReqMode: u2,
                ///  General Purpose Registers
                scratch0: u6,
            }),
            ///  General Purpose Registers, R/W, Default 0
            SCRATCHBYTE: mmio.Mmio(packed struct(u8) {
                ///  General Purpose Registers, R/W, Default 0
                ScratchByte: u8,
            }),
            ///  ???
            TAMARSTATUS: mmio.Mmio(packed struct(u8) {
                ///  Indicate the M4 Power Status
                M4PowerStatus: M4PowerStatus,
                ///  Indicates if the M4 Subsystem reset is released (not core reset)
                M4ResetStatus: M4ResetStatus,
                ///  This bit is reflect the value on RFUPMU offset 3EC. It will not set for cold start.
                M4RebootReq: M4RebootReq,
                ///  0xE value if POR trigger, It reflect the value of rfupmu offset 00C
                PORiniCond: u4,
            }),
            reserved54: [3]u8,
            ///  Set bit to clear the DMA FIFO. Firmware can only set this bit to 1 after set DmaClear bit to 1 and Program this bit to 0 after clear DmaClear bit
            DMADEBUGCTL0: mmio.Mmio(packed struct(u8) {
                ///  Set bit to clear the DMA FIFO. Firmware can only set this bit to 1 after set DmaClear bit to 1 and Program this bit to 0 after clear DmaClear bit
                DmaFifoClear: u1,
                padding: u7 = 0,
            }),
            ///  Set bit to Reset the DMA engineer. Firmware needs to clear it before kick off the new DMA Transfer. Need to do a dummy Read on this SFR after program this bit
            DMADEBUGCTL1: mmio.Mmio(packed struct(u8) {
                ///  Set bit to Reset the DMA engineer. Firmware needs to clear it before kick off the new DMA Transfer. Need to do a dummy Read on this SFR after program this bit
                DmaClear: u1,
                padding: u7 = 0,
            }),
            ///  DMA Starting Address, It is representing AHB Byte Address bit [7:0]. Bit [1:0] will be ignored since only Support Word Access
            DMAADDR0: mmio.Mmio(packed struct(u8) {
                ///  DMA Starting Address, It is representing AHB Byte Address bit [7:0]. Bit [1:0] will be ignored since only Support Word Access
                DMAAddr0: u8,
            }),
            ///  DMA Starting Address, It is representing AHB Byte Address bit [15:8].
            DMAADDR1: mmio.Mmio(packed struct(u8) {
                ///  DMA Starting Address, It is representing AHB Byte Address bit [15:8].
                DMAAddr1: u8,
            }),
            ///  DMA Starting Address, It is representing AHB Byte Address bit [23:16]
            DMAADDR2: mmio.Mmio(packed struct(u8) {
                ///  DMA Starting Address, It is representing AHB Byte Address bit [23:16]
                DMAAddr2: u8,
            }),
            ///  DMA Starting Address, It is representing AHB Byte Address bit [31:24]
            DMAADDR3: mmio.Mmio(packed struct(u8) {
                ///  DMA Starting Address, It is representing AHB Byte Address bit [31:24]
                DMAAddr3: u8,
            }),
            ///  DMA transfer size indicates the number of bytes to be read out ( X ). The minimum transfer size is 4 bytes.
            ///  Program the value for number of bytes to read minus 4 bytes ( X -4 ), into the 2 registers.
            ///  DmaBurstSize0 register represents the BurstSize[7:0].
            ///  DmaBurstSize1 register represents the BurstSize[15:8].
            ///  Lower 2 bits are ignored by hardware, since it only supports Word Access. This means only multiples of 4 are supported.
            ///  For example:
            ///  To read 4 bytes, you would write:
            ///  DmaBurstSize0 = 0, DmaBurstSize1 = 0
            ///  To read 8 bytes, you would write:
            ///  DmaBurstSize0 = 4, DmaBurstSize1 = 0
            ///  …
            ///  To read 256 bytes, you would write:
            ///  DmaBurstSize0 = FC, DmaBurstSize1 = 0
            ///  To read 260 bytes, you would write:
            ///  DmaBurstSize0 = 0, DmaBurstSize1 = 1
            ///  ... and so on, etc.
            DMABURSTSIZE0: mmio.Mmio(packed struct(u8) {
                ///  LSB Byte of DMA transfer size. It is representing BurstSize[7:0]
                DMABurstSize0: u8,
            }),
            ///  MSB Byte of DMA transfer size. it is representing BurstSize[15:8]. Max transfer size is 64KB, Once it is written, DMA will be kickoff unless DmaBurstSize0[1:0] = 2'b10. Min. Transfer Size will be 4 Bytes once DMA is Kick Off ({DmaBurstSize0, DmaBurstSize1} == 0x0}
            DMABURSTSIZE1: mmio.Mmio(packed struct(u8) {
                ///  MSB Byte of DMA transfer size. It is representing BurstSize[15:8]
                DMABurstSize1: u8,
            }),
            ///  For dummy write purpose.
            Reserved_dummy: mmio.Mmio(packed struct(u8) {
                ///  For dummy write purpose
                dummy: u8,
            }),
            ///  DMA Status register
            DMASTATUS: mmio.Mmio(packed struct(u8) {
                ///  Set if DMA FIFO is Empty
                DmaFIFO_Empty: u1,
                ///  Set if DMA hit underflow condition
                DmaFIFO_underflow: u1,
                padding: u6 = 0,
            }),
            ///  DMA Read Data Port
            DMARDDATA: mmio.Mmio(packed struct(u8) {
                ///  DMA Read Data Port
                DmaRdData: u8,
            }),
        };

        ///  Timer peripheral
        pub const TIMER = extern struct {
            ///  Timer control register
            CTRL: mmio.Mmio(packed struct(u32) {
                ///  Enable
                ENABLE: u1,
                ///  Select external input as enable
                SEL_EXTINT_AS_ENABLE: u1,
                ///  Select external input as clock
                SEL_EXINT_AS_CLOCK: u1,
                ///  Timer interrupt enable
                TIMER_INT_ENABLE: u1,
                padding: u28 = 0,
            }),
            ///  Current Value
            VALUE: mmio.Mmio(packed struct(u32) {
                ///  Current Value
                VALUE: u32,
            }),
            ///  Reload value. A write to this register sets the current value
            RELOAD: mmio.Mmio(packed struct(u32) {
                ///  Reload value. A write to this register sets the current value
                RELOAD: u32,
            }),
            ///  Timer interrupt. Write one to clear
            INTSTATUS_INTCLEAR: mmio.Mmio(packed struct(u32) {
                ///  Timer interrupt, Write one to clear
                INTSTATUS_INTCLEAR: u1,
                padding: u31 = 0,
            }),
            reserved4048: [4032]u8,
            ///  Peripheral ID register 4: [7:4] Block count. [3:0] jep106_c_code.
            PID4: mmio.Mmio(packed struct(u32) {
                ///  Peripheral ID
                PID: u8,
                padding: u24 = 0,
            }),
            ///  Peripheral ID register 5
            PID5: mmio.Mmio(packed struct(u32) {
                ///  Peripheral ID
                PID: u8,
                padding: u24 = 0,
            }),
            ///  Peripheral ID register 6
            PID6: mmio.Mmio(packed struct(u32) {
                ///  Peripheral ID
                PID: u8,
                padding: u24 = 0,
            }),
            ///  Peripheral ID register 7
            PID7: mmio.Mmio(packed struct(u32) {
                ///  Peripheral ID
                PID: u8,
                padding: u24 = 0,
            }),
            ///  Peripheral ID Register 0: [7:0] Part Number[7:0].
            PID0: mmio.Mmio(packed struct(u32) {
                ///  Peripheral ID
                PID: u8,
                padding: u24 = 0,
            }),
            ///  Peripheral ID register 1: [7:0] jep106_id_3_0. [3:0] Par number[11:8].
            PID1: mmio.Mmio(packed struct(u32) {
                ///  Peripheral ID
                PID: u8,
                padding: u24 = 0,
            }),
            ///  Peripheral ID register 2: [7:4] Revision. [3] jedec_used. [2:0] jep106_id_6_4.
            PID2: mmio.Mmio(packed struct(u32) {
                ///  Peripheral ID
                PID: u8,
                padding: u24 = 0,
            }),
            ///  Peripheral ID register 3: [7:4] ECO revision number. [3:0] Customer modification number.
            PID3: mmio.Mmio(packed struct(u32) {
                ///  Peripheral ID
                PID: u8,
                padding: u24 = 0,
            }),
            ///  Component ID register 0
            CID0: mmio.Mmio(packed struct(u32) {
                ///  Component ID
                PID: u8,
                padding: u24 = 0,
            }),
            ///  Component ID register 1
            CID1: mmio.Mmio(packed struct(u32) {
                ///  Component ID
                PID: u8,
                padding: u24 = 0,
            }),
            ///  Component ID register 2
            CID2: mmio.Mmio(packed struct(u32) {
                ///  Component ID
                PID: u8,
                padding: u24 = 0,
            }),
            ///  Component ID register 3
            CID3: mmio.Mmio(packed struct(u32) {
                ///  Component ID
                PID: u8,
                padding: u24 = 0,
            }),
        };

        ///  Universal Asynchronous Receiver Transmitter
        pub const UART = extern struct {
            pub const PEN = enum(u1) {
                ///  parity is disabled and no parity bit added to the data frame
                parity_disable = 0x0,
                ///  parity checking and generation is enabled.
                parity_enable = 0x1,
            };

            pub const EPS = enum(u1) {
                ///  Select odd parity. The UART generates or checks for an odd number of 1s in the data and parity bits.
                odd_parity = 0x0,
                ///  Select even parity. The UART generates or checks for an even number of 1s in the data and parity bits.
                even_parity = 0x1,
            };

            pub const FEN = enum(u1) {
                ///  FIFOs are disabled (character mode) that is, the FIFOs become 1-byte-deep holding registers
                disable_fifos = 0x0,
                ///  transmit and receive FIFO buffers are enabled (FIFO mode).
                enable_fifos = 0x1,
            };

            pub const WLEN = enum(u2) {
                ///  Word lenght of data bits is will be configured as 5 bit
                use_5_bit_word = 0x0,
                ///  Word lenght of data bits is will be configured as 6 bit
                use_6_bit_word = 0x1,
                ///  Word lenght of data bits is will be configured as 7 bit
                use_7_bit_word = 0x2,
                ///  Word lenght of data bits is will be configured as 8 bit
                use_8_bit_word = 0x3,
            };

            pub const SPS = enum(u1) {
                ///  Stick parity is disabled
                disable_stick_parity = 0x0,
                ///  If EPS = 1 => parity bit is trasmitted and checked as a 1, If EPS = 0 => parity bit is trasmitted an checked as a 0
                enable_stick_parity = 0x1,
            };

            pub const UARTEN = enum(u1) {
                ///  UART is disabled. If the UART is disabled in the middle of transmission or reception, it completes the current character before stopping.
                uart_disable = 0x0,
                ///  the UART is enabled. Data transmission and reception occurs for either UART signals or SIR signals depending on the setting of the SIREN bit.
                uart_enable = 0x1,
            };

            pub const SIREN = enum(u1) {
                ///  IrDA SIR ENDEC is disabled. nSIROUT remains LOW (no light pulse generated), and signal transitions on SIRIN have no effect.
                siren_disable = 0x0,
                ///  IrDA SIR ENDEC is enabled. Data is transmitted and received on nSIROUT and SIRIN. UARTTXD remains HIGH, in the marking state. Signal transitions on UARTRXD or modem status inputs have no effect.
                siren_enable = 0x1,
            };

            pub const TXIFLSEL = enum(u3) {
                ///  Trigger when corresponding FIFO becomes ≤ 1/8 full
                one_eight = 0x0,
                ///  Trigger when corresponding FIFO becomes ≤ 1/4 full
                one_quarter = 0x1,
                ///  Trigger when corresponding FIFO becomes ≤ 1/2 full
                one_half = 0x2,
                ///  Trigger when corresponding FIFO becomes ≤ 3/4 full
                three_quarters = 0x3,
                ///  Trigger when corresponding FIFO becomes ≤ 7/8 full
                seven_eights = 0x4,
                _,
            };

            ///  Uart Data register
            UART_DR: mmio.Mmio(packed struct(u32) {
                ///  Receive (read) data character. Transmit (write) data character.
                DATA: u8,
                ///  Framing error. When set to 1, it indicates that the received character did not have a valid stop bit (a valid stop bit is 1). In FIFO mode, this error is associated with the character at the top of the FIFO.
                FE: u1,
                ///  Parity error. When set to 1, it indicates that the parity of the received data character does not match the parity that the EPS and SPS bits in the Line Control Register, UARTLCR_H on page 3-12 select. In FIFO mode, this error is associated with the character at the top of the FIFO.
                PE: u1,
                ///  Break error. This bit is set to 1 if a break condition was detected, indicating that the received data input was held LOW for longer than a full-word transmission time (defined as start, data, parity and stop bits). In FIFO mode, this error is associated with the character at the top of the FIFO. When a break occurs, only one 0 character is loaded into the FIFO. The next character is only enabled after the receive data input goes to a 1 (marking state), and the next valid start bit is received.
                BE: u1,
                ///  Overrun error. This bit is set to 1 if data is received and the receive FIFO is already full. This is cleared to 0 once there is an empty space in the FIFO and a new character can be written to it.
                OE: u1,
                padding: u20 = 0,
            }),
            ///  UART receive status register/error clear register. (WC)
            UART_RSR: mmio.Mmio(packed struct(u32) {
                ///  Framing error. When set to 1, it indicates that the received character did not have a valid stop bit (a valid stop bit is 1). This bit is cleared to 0 by a write to UARTECR. In FIFO mode, this error is associated with the character at the top of the FIFO
                FE: u1,
                ///  Parity error. When set to 1, it indicates that the parity of the received data character does not match the parity that the EPS and SPS bits in the Line Control Register, UARTLCR_H on page 3-12 select. This bit is cleared to 0 by a write to UARTECR. In FIFO mode, this error is associated with the character at the top of the FIFO.
                PE: u1,
                ///  Break error. This bit is set to 1 if a break condition was detected, indicating that the received data input was held LOW for longer than a full-word transmission time (defined as start, data, parity, and stop bits). This bit is cleared to 0 after a write to UARTECR. In FIFO mode, this error is associated with the character at the top of the FIFO. When a break occurs, only one 0 character is loaded into the FIFO. The next character is only enabled after the receive data input goes to a 1 (marking state) and the next valid start bit is received.
                BE: u1,
                ///  Overrun error. This bit is set to 1 if data is received and the FIFO is already full. This bit is cleared to 0 by a write to UARTECR. The FIFO contents remain valid because no more data is written when the FIFO is full, only the contents of the shift register are overwritten. The CPU must now read the data, to empty the FIFO.
                OE: u1,
                padding: u28 = 0,
            }),
            reserved24: [16]u8,
            ///  UART Flag Register
            UART_TFR: mmio.Mmio(packed struct(u32) {
                ///  Clear to send. This bit is the complement of the UART clear to send, nUARTCTS, modem status input. That is, the bit is 1 when nUARTCTS is LOW.
                CTS: u1,
                ///  Data set ready. This bit is the complement of the UART data set ready, nUARTDSR, modem status input. That is, the bit is 1 when nUARTDSR is LOW.
                DSR: u1,
                ///  Data carrier detect. This bit is the complement of the UART data carrier detect, nUARTDCD, modem status input. That is, the bit is 1 when nUARTDCD is LOW.
                DCD: u1,
                ///  UART busy. If this bit is set to 1, the UART is busy transmitting data. This bit remains set until the complete byte, including all the stop bits, has been sent from the shift register. This bit is set as soon as the transmit FIFO becomes non-empty, regardless of whether the UART is enabled or not.
                BUSY: u1,
                ///  Receive FIFO empty. The meaning of this bit depends on the state of the FEN bit in the UARTLCR_H Register. If the FIFO is disabled, this bit is set when the receive holding register is empty. If the FIFO is enabled, the RXFE bit is set when the receive FIFO is empty.
                RXFE: u1,
                ///  Transmit FIFO full. The meaning of this bit depends on the state of the FEN bit in the UARTLCR_H Register. If the FIFO is disabled, this bit is set when the transmit holding register is full. If the FIFO is enabled, the TXFF bit is set when the transmit FIFO is full.
                TXFF: u1,
                ///  Receive FIFO full. The meaning of this bit depends on the state of the FEN bit in the UARTLCR_H Register. If the FIFO is disabled, this bit is set when the receive holding register is full. If the FIFO is enabled, the RXFF bit is set when the receive FIFO is full.
                RXFF: u1,
                ///  Transmit FIFO empty. The meaning of this bit depends on the state of the FEN bit in the Line Control Register, UARTLCR_H on page 3-12. If the FIFO is disabled, this bit is set when the transmit holding register is empty. If the FIFO is enabled, the TXFE bit is set when the transmit FIFO is empty. This bit does not indicate if there is data in the transmit shift register.
                TXFE: u1,
                ///  Ring indicator. This bit is the complement of the UART ring indicator, nUARTRI, modem status input. That is, the bit is 1 when nUARTRI is LOW.
                RI: u1,
                padding: u23 = 0,
            }),
            reserved32: [4]u8,
            ///  8-bit low-power divisor value.
            UART_ILPR: mmio.Mmio(packed struct(u32) {
                ///  8-bit low-power divisor value.
                UART_ILPR: u8,
                padding: u24,
            }),
            ///  Integer Baud Rate Register 0x24
            UART_IBRD: mmio.Mmio(packed struct(u32) {
                ///  Integer Baud Rate Register 0x24
                UART_IBRD: u32,
            }),
            ///  Fractional Baud Rate Register 0x28
            UART_FBRD: mmio.Mmio(packed struct(u32) {
                ///  Fractional Baud Rate Register 0x28
                UART_FBRD: u32,
            }),
            ///  UART Line Control Register. This register accesses bit 29 to 22 of the UART Line Control Register, UARTLCR.
            UART_LCR_H: mmio.Mmio(packed struct(u32) {
                ///  Send break. If this bit is set to 1, a low-level is continually output on the UARTTXD output, after completing transmission of the current character. For the proper execution of the break command, the software must set this bit for at least two complete frames. For normal use, this bit must be cleared to 0.
                BRK: u1,
                ///  Parity enable. See Table 3-11 on page 3-14 for the parity truth table.
                PEN: PEN,
                ///  Even parity select. Controls the type of parity the UART uses during transmission and reception. This bit has no effect when the PEN bit disables parity checking and generation. See Table 3-11 on page 3-14 for the parity truth table.
                EPS: EPS,
                ///  Two stop bits select. If this bit is set to 1, two stop bits are transmitted at the end of the frame. The receive logic does not check for two stop bits being received.
                STP2: u1,
                ///  Enable FIFOs:
                FEN: FEN,
                ///  Word length. These bits indicate the number of data bits transmitted or received in a frame
                WLEN: WLEN,
                ///  Stick parity select. This bit has no effect when the PEN bit disables parity checking and generation. See Table 3-11 on page 3-14 for the parity truth table.
                SPS: SPS,
                padding: u24 = 0,
            }),
            ///  UART Control Register
            UART_CR: mmio.Mmio(packed struct(u32) {
                ///  UART enable
                UARTEN: UARTEN,
                ///  Siren enable. This bit has no effect if the UARTEN bit disables the UART.
                SIREN: SIREN,
                ///  SIR low-power IrDA mode. This bit selects the IrDA encoding mode. If this bit is cleared to 0, low-level bits are transmitted as an active high pulse with a width of 3/16th of the bit period. If this bit is set to 1, low-level bits are transmitted with a pulse width that is 3 times the period of the IrLPBaud16 input signal, regardless of the selected bit rate. Setting this bit uses less power, but might reduce transmission distances.
                SIRLP: u1,
                reserved7: u4 = 0,
                ///  Loopback enable. If this bit is set to 1 and the SIREN bit is set to 1 and the SIRTEST bit in the Test Control Register, UARTTCR on page 4-5 is set to 1, then the nSIROUT path is inverted, and fed through to the SIRIN path. The SIRTEST bit in the Test register must be set to 1 to override the normal half-duplex SIR operation. This must be the requirement for accessing the Test registers during normal operation, and SIRTEST must be cleared to 0 when loopback testing is finished. This feature reduces the amount of external coupling required during system Test. If this bit is set to 1, and the SIRTEST bit is set to 0, the UARTTXD path is fed through to the UARTRXD path. In either SIR mode or UART mode, when this bit is set, the modem outputs are also fed through to the modem inputs. This bit is cleared to 0 on reset, to disable loopback.
                LBE: u1,
                ///  Transmit enable. If this bit is set to 1, the transmit section of the UART is enabled. Data transmission occurs for either UART signals, or SIR signals depending on the setting of the SIREN bit. When the UART is disabled in the middle of transmission, it completes the current character before stopping.
                TXE: u1,
                ///  Receive enable. If this bit is set to 1, the receive section of the UART is enabled. Data reception occurs for either UART signals or SIR signals depending on the setting of the SIREN bit. When the UART is disabled in the middle of reception, it completes the current character before stopping.
                RXE: u1,
                ///  Receive enable. If this bit is set to 1, the receive section of the UART is enabled. Data reception occurs for either UART signals or SIR signals depending on the setting of the SIREN bit. When the UART is disabled in the middle of reception, it completes the current character before stopping.
                DTR: u1,
                ///  Request to send. This bit is the complement of the UART request to send, nUARTRTS, modem status output. That is, when the bit is programmed to a 1 then nUARTRTS is LOW.
                RTS: u1,
                ///  This bit is the complement of the UART Out1 (nUARTOut1) modem status output. That is, when the bit is programmed to a 1 the output is 0. For DTE this can be used as Data Carrier Detect (DCD).
                Out1: u1,
                ///  This bit is the complement of the UART Out2 (nUARTOut2) modem status output. That is, when the bit is programmed to a 1, the output is 0. For DTE this can be used as Ring Indicator (RI).
                Out2: u1,
                ///  RTS hardware flow control enable. If this bit is set to 1, RTS hardware flow control is enabled. Data is only requested when there is space in the receive FIFO for it to be received.
                RTSEn: u1,
                ///  CTS hardware flow control enable. If this bit is set to 1, CTS hardware flow control is enabled. Data is only transmitted when the nUARTCTS signal is asserted.
                CTSEn: u1,
                padding: u16 = 0,
            }),
            ///  Interrupt FIFO Level Select Register
            UART_IFLS: mmio.Mmio(packed struct(u32) {
                ///  Transmit interrupt FIFO level select. The trigger points for the receive interrupt are as follows
                TXIFLSEL: TXIFLSEL,
                ///  Receive interrupt FIFO level select. The trigger points for the receive interrupt are as follows
                RXIFLSEL: TXIFLSEL,
                padding: u26 = 0,
            }),
            ///  Interrupt Mask Set/Clear Register
            UART_IMSC: mmio.Mmio(packed struct(u32) {
                ///  nUARTRI modem interrupt mask.
                RMIMIM: u1,
                ///  nUARTCTS modem interrupt mask.
                CTSMIM: u1,
                ///  nUARTDCD modem interrupt mask.
                DCDMIM: u1,
                ///  nUARTDSR interrupt mask.
                DSRMIM: u1,
                ///  Receive interrupt mask.
                RXIM: u1,
                ///  Transmit interrupt mask.
                TXMIM: u1,
                ///  Receive timeout interrupt mask.
                RTIM: u1,
                ///  Framing error interrupt mask.
                FEIM: u1,
                ///  Parity error interrupt mask.
                PEIM: u1,
                ///  Break error interrupt mask.
                BEIM: u1,
                ///  Overrun error interrupt mask.
                OEIM: u1,
                padding: u21 = 0,
            }),
            ///  Raw interrupt status register
            UART_RIS: mmio.Mmio(packed struct(u32) {
                ///  nUARTRI interrupt status (raw interrupt state)
                RIRMIS: u1,
                ///  nUARTCTS interrupt status (raw interrupt state)
                CTSRMIS: u1,
                ///  nUARTDCD interrupt status (raw interrupt state)
                DCDRMIS: u1,
                ///  nUARTDSR interrupt status (raw interrupt state)
                DSRRMIS: u1,
                ///  Receive interrupt status (raw interrupt state)
                RXRMIS: u1,
                ///  Transmit interrupt status (raw interrupt state)
                TXRMIS: u1,
                ///  Receive timeout interrupt status (raw interrupt state)
                RTRIS: u1,
                ///  Framing error interrupt status (raw interrupt state)
                FEIS: u1,
                ///  Parity error interrupt status (raw interrupt state)
                PEIS: u1,
                ///  Break error interrupt status (raw interrupt state)
                BEIS: u1,
                ///  Overrun error interrupt status (raw interrupt state)
                OERMIS: u1,
                padding: u21 = 0,
            }),
            ///  Masked interrupt status register
            UART_MIS: mmio.Mmio(packed struct(u32) {
                ///  nUARTRI modem masked interrupt status (masked interrupt state)
                RIMMIS: u1,
                ///  nUARTCTS modem masked interrupt status (masked interrupt state)
                CTSMMIS: u1,
                ///  nUARTDCD modem masked interrupt status (masked interrupt state)
                DCDMMIS: u1,
                ///  nUARTDSR modem masked interrupt status (masked interrupt state)
                DSRMMIS: u1,
                ///  Receive masked interrupt status (masked interrupt state)
                RXMIS: u1,
                ///  Transmit masked interrupt status (masked interrupt state)
                TXMIS: u1,
                ///  Receive timeout masked interrupt status (masked interrupt state)
                RTMIS: u1,
                ///  Framing error masked interrupt status (masked interrupt state)
                FEMIS: u1,
                ///  Parity error masked interrupt status (masked interrupt state)
                PEMIS: u1,
                ///  Break error masked interrupt status (masked interrupt state)
                BEMIS: u1,
                ///  Overrun error masked interrupt status (masked interrupt state)
                OEMIS: u1,
                padding: u21 = 0,
            }),
            ///  Interrupt clear register
            UART_ICR: mmio.Mmio(packed struct(u32) {
                ///  nUARTRI modem interrupt clear. Writing a 1 clears the interrupt.
                RIMIC: u1,
                ///  nUARTCTS modem interrupt clear. Writing a 1 clears the interrupt.
                CTSMIC: u1,
                ///  nUARTDCD modem interrupt clear. Writing a 1 clears the interrupt.
                DCDMIC: u1,
                ///  nUARTDSR modem interrupt clear. Writing a 1 clears the interrupt.
                DSRMIC: u1,
                ///  Receive interrupt clear. Writing a 1 clears the interrupt.
                RXIC: u1,
                ///  Transmit interrupt clear. Writing a 1 clears the interrupt.
                TXIC: u1,
                ///  Receive timeout interrupt clear. Writing a 1 clears the interrupt.
                RTIC: u1,
                ///  Framing error interrupt clear. Writing a 1 clears the interrupt.
                FEIC: u1,
                ///  Parity error interrupt clear. Writing a 1 clears the interrupt.
                PEIC: u1,
                ///  Break error interrupt clear. Writing a 1 clears the interrupt.
                BEIC: u1,
                ///  Overrun error interrupt clear. Writing a 1 clears the interrupt.
                OEIC: u1,
                padding: u21 = 0,
            }),
            reserved128: [56]u8,
            ///  Test Control Register
            UART_TCR: mmio.Mmio(packed struct(u32) {
                ///  Integration Test enable.
                ITEN: u1,
                ///  Test FIFO enable.
                TESTFINFO: u1,
                ///  Siren Test enable.
                SIRTEST: u1,
                padding: u29 = 0,
            }),
            ///  Integration Test input register
            UART_ITIP: mmio.Mmio(packed struct(u32) {
                UARTRXD: u1,
                SIRIN: u1,
                nUARTDSR: u1,
                nUARTCTS: u1,
                nUARTDCD: u1,
                nUARTRI: u1,
                UARTRXDMACLR: u1,
                UARTTXDMACLR: u1,
                padding: u24 = 0,
            }),
            ///  Integration Test output register
            UART_ITOP: mmio.Mmio(packed struct(u32) {
                ///  Integration Test output.
                UART_ITOP: u16,
                padding: u16 = 0,
            }),
            ///  Test data register
            UART_TDR: mmio.Mmio(packed struct(u32) {
                ///  Test data
                UART_TDR: u11,
                padding: u21 = 0,
            }),
            reserved4064: [3920]u8,
            ///  UART Peripheral ID 0 register
            UART_PeriphID0: mmio.Mmio(packed struct(u32) {
                ///  UART Peripheral ID 0 register
                UART_PeriphID0: u8,
                padding: u24 = 0,
            }),
            ///  UART Peripheral ID 1 register
            UART_PeriphID1: mmio.Mmio(packed struct(u32) {
                ///  UART Peripheral ID 1 register
                UART_PeriphID1: u8,
                padding: u24 = 0,
            }),
            ///  UART Peripheral ID 2 register
            UART_PeriphID2: mmio.Mmio(packed struct(u32) {
                ///  UART Peripheral ID 2 register
                UART_PeriphID2: u8,
                padding: u24 = 0,
            }),
            ///  UART Peripheral ID 3 register
            UART_PeriphID3: mmio.Mmio(packed struct(u32) {
                ///  UART Peripheral ID 3 register
                UART_PeriphID3: u8,
                padding: u24 = 0,
            }),
            ///  UART PCell ID 0 register
            UART_PCellID0: mmio.Mmio(packed struct(u32) {
                ///  UART PCell ID 0 register
                UART_PCellID0: u8,
                padding: u24 = 0,
            }),
            ///  UART PCell ID 1 register
            UART_PCellID1: mmio.Mmio(packed struct(u32) {
                ///  UART PCell ID 1 register
                UART_PCellID1: u8,
                padding: u24 = 0,
            }),
            ///  UART PCell ID 2 register
            UART_PCellID2: mmio.Mmio(packed struct(u32) {
                ///  UART PCell ID 2 register
                UART_PCellID2: u8,
                padding: u24 = 0,
            }),
            ///  UART PCell ID 4 register
            UART_PCellID4: mmio.Mmio(packed struct(u32) {
                ///  UART PCell ID 4 register
                UART_PCellID4: u8,
                padding: u24 = 0,
            }),
        };

        ///  WatchDog Timer
        pub const WDT = extern struct {
            pub const WDOGLOCK = enum(u32) {
                ///  Write access is enabled, not locked
                locked = 0x0,
                ///  Write access is disabled, locked
                not_locked = 0x1,
                _,
            };

            pub const WDOGITOP = enum(u2) {
                ///  Select integration Test with WDOCRES value
                wdocres = 0x0,
                ///  Select integration Test with WDOGINT value
                wdogint = 0x1,
                _,
            };

            ///  The WDOGLOAD Register contains the value from which the counter is to decrement. When this register is written to, the count is immediately restarted from the new value. The minimum valid value for WDOGLOAD is 1.
            WDOGLOAD: mmio.Mmio(packed struct(u32) {
                ///  Load value of the WhatchDog timer
                WDGLOAD: u32,
            }),
            ///  The WDOGVALUE Register gives the current value of the decrementing counter.
            WDOGVALUE: mmio.Mmio(packed struct(u32) {
                ///  The WDOGVALUE Register gives the current value of the decrementing counter.
                WDGVALUE: u32,
            }),
            ///  Control register for the WatchDog timer
            WDOGCONTROL: mmio.Mmio(packed struct(u32) {
                ///  Enable the interrupt event, WDOGINT. Set HIGH to enable the counter and the interrupt, or LOW to diable the counter and interrupt. Reloads the counter from the value in WDOGLAND when the interrupt is enabled, after previously being disabled.
                INTEN: u1,
                ///  Enable watchdog reset output, WDOGRES. Acts as a mask for the reset output. Set HIGH to enable the reset or LOW to disable the reset.
                RESEN: u1,
                padding: u30 = 0,
            }),
            ///  A write of any value to the WDOGINTCLR Register clears the watchdog interrupt, and reloads the counter from the value in WDOGLOAD.
            WDOGINTCLR: mmio.Mmio(packed struct(u32) {
                ///  A write of any value to the WDOGINTCLR Register clears the watchdog interrupt, and reloads the counter from the value in WDOGLOAD.
                WDOGINTCLR: u32,
            }),
            ///  The WDOGRIS Register indicates the raw interrupt status from the counter. This value is ANDed with the interrupt enable bit from the control register to create the masked interrupt, that is passed to the interrupt output pin.
            WDOGRIS: mmio.Mmio(packed struct(u32) {
                ///  The WDOGRIS Register indicates the raw interrupt status from the counter. This value is ANDed with the interrupt enable bit from the control register to create the masked interrupt, that is passed to the interrupt output pin.
                WDOGRIS: u1,
                padding: u31 = 0,
            }),
            ///  The WDOGMIS Register indicates the masked interrupt status from the counter. This value is the logical AND of the raw interrupt status with the INTEN bit from the control register, and is the same value that is passed to the interrupt output pin. Enabled interrupt status from the counter.
            WDOGMIS: mmio.Mmio(packed struct(u32) {
                ///  The WDOGMIS Register indicates the masked interrupt status from the counter. This value is the logical AND of the raw interrupt status with the INTEN bit from the control register, and is the same value that is passed to the interrupt output pin. Enabled interrupt status from the counter.
                WDOGMIS: u1,
                padding: u31 = 0,
            }),
            reserved3072: [3048]u8,
            ///  The WDOGLOCK Register diables write accesses to all other registers. This is to prevent rogue software from diabling the watchdog functionality. Writing a value 0x1ACCE551 enables write access to all other registers. Writing any other value disables write accesses.
            WDOGLOCK: mmio.Mmio(packed struct(u32) {
                ///  The WDOGLOCK Register diables write accesses to all other registers. This is to prevent rogue software from diabling the watchdog functionality. Writing a value 0x1ACCE551 enables write access to all other registers. Writing any other value disables write accesses.
                WDOGLOCK: WDOGLOCK,
            }),
            reserved3840: [764]u8,
            ///  The WDOGITCR Register enables integration Test mode. When in this more, the Test output register directly controls the masted interrup output, WDOGINT, and reset output, WDOGRES. Integration Test mode Enable [0] When set HIGH, places th watchdog into integration Test mode.
            WDOGITCR: mmio.Mmio(packed struct(u32) {
                ///  The WDOGITCR Register enables integration Test mode. When in this more, the Test output register directly controls the masted interrup output, WDOGINT, and reset output, WDOGRES. Integration Test mode Enable [0] When set HIGH, places th watchdog into integration Test mode.
                WDOGITCR: u1,
                padding: u31 = 0,
            }),
            ///  Watchdog Integration Test Output Set Register When the WDOGITOP Register is in integration Test mode, the values in this register directly drive the enabled interrupt output and reset output.
            WDOGITOP: mmio.Mmio(packed struct(u32) {
                ///  Watchdog Integration Test Output Set Register When the WDOGITOP Register is in integration Test mode, the values in this register directly drive the enabled interrupt output and reset output.
                WDOGITOP: WDOGITOP,
                padding: u30 = 0,
            }),
            reserved4048: [200]u8,
            ///  Peripheral ID Register 4: [7:4] Block count. [3:0] jep106_c_code.
            WDOGPERIPHID4: mmio.Mmio(packed struct(u32) {
                ///  Peripheral ID Register 4: [7:4] Block count. [3:0] jep106_c_code.
                WDOGPERIPHID4: u8,
                padding: u24 = 0,
            }),
            ///  Peripheral ID Register 5.
            WDOGPERIPHID5: mmio.Mmio(packed struct(u32) {
                ///  Peripheral ID Register 5.
                WDOGPERIPHID5: u8,
                padding: u24 = 0,
            }),
            ///  Peripheral ID Register 6.
            WDOGPERIPHID6: mmio.Mmio(packed struct(u32) {
                ///  Peripheral ID Register 6.
                WDOGPERIPHID6: u8,
                padding: u24 = 0,
            }),
            ///  Peripheral ID Register 7.
            WDOGPERIPHID7: mmio.Mmio(packed struct(u32) {
                ///  Peripheral ID Register 7.
                WDOGPERIPHID7: u8,
                padding: u24 = 0,
            }),
            ///  Periperhal ID Register 0. [7:0] Part number[7:0].
            WDOGPERIPHID0: mmio.Mmio(packed struct(u32) {
                ///  Periperhal ID Register 0. [7:0] Part number[7:0].
                WDOGPERIPHID0: u8,
                padding: u24 = 0,
            }),
            ///  Peripheral ID Register 1. [7:4] jep106_id_3_0. [3:0] Part number [11:8].
            WDOGPERIPHID1: mmio.Mmio(packed struct(u32) {
                ///  Peripheral ID Register 1. [7:4] jep106_id_3_0. [3:0] Part number [11:8].
                WDOGPERIPHID1: u8,
                padding: u24 = 0,
            }),
            ///  Peripheral ID Register 2. [7:4] Revision. [3] jedec_used. [2:0] jep106_id_6_4.
            WDOGPERIPHID2: mmio.Mmio(packed struct(u32) {
                ///  Peripheral ID Register 2. [7:4] Revision. [3] jedec_used. [2:0] jep106_id_6_4.
                WDOGPERIPHID2: u8,
                padding: u24 = 0,
            }),
            ///  Peripherial ID Register 3. [7:4] ECO revision number. [3:0] Customer modification number.
            WDOGPERIPHID3: mmio.Mmio(packed struct(u32) {
                ///  Peripherial ID Register 3. [7:4] ECO revision number. [3:0] Customer modification number.
                WDOGPERIPHID3: u8,
                padding: u24 = 0,
            }),
            ///  Component ID Register 0.
            WDOGPCELLID0: mmio.Mmio(packed struct(u32) {
                ///  Component ID Register 0.
                WDOGPCELLID0: u8,
                padding: u24 = 0,
            }),
            ///  Component ID Register 1.
            WDOGPCELLID1: mmio.Mmio(packed struct(u32) {
                ///  Component ID Register 1.
                WDOGPCELLID1: u8,
                padding: u24 = 0,
            }),
            ///  Component ID Register 2.
            WDOGPCELLID2: mmio.Mmio(packed struct(u32) {
                ///  Component ID Register 2.
                WDOGPCELLID2: u8,
                padding: u24 = 0,
            }),
            ///  Component ID Register 3.
            WDOGPCELLID3: mmio.Mmio(packed struct(u32) {
                ///  Component ID Register 3.
                WDOGPCELLID3: u8,
                padding: u24 = 0,
            }),
        };

        ///  External registers to control M4 Subsystem (not a core peripheral)
        pub const EXTM4Regs = extern struct {
            pub const BRCHSTAT = enum(u4) {
                ///  No hint.
                no_hint = 0x0,
                ///  Conditional branch backwards in decode
                cond_backwards_decode = 0x1,
                ///  Conditional branch in decode
                cond_decode = 0x2,
                ///  Conditional branch in execute
                cond_execute = 0x3,
                ///  Unconditional branch in decode
                uncond_decode = 0x4,
                ///  Unconditional branch in execute
                uncond_execute = 0x5,
                ///  Conditional branch in decode taken (cycle after IHTRANS)
                cond_decode_taken = 0x8,
                _,
            };

            pub const BIGEND = enum(u1) {
                ///  Select little endian as endiannes setting
                little_endian = 0x0,
                ///  Select big endian as endiannes setting
                big_endian = 0x1,
            };

            ///  System tick timer register
            SYSTICK_REG: mmio.Mmio(packed struct(u32) {
                ///  Provides an integer value to compute a 10ms (100Hz) delay. For example, apply the value 0x07A11F if no reference is implemented, and FCLK is 50MHz.
                SYSTICK_TENMS: u24,
                ///  Systick clock is an exact multiple of 10ms
                SYSTICK_SKEW: u1,
                ///  Indicates that no alternative reference clock source has been integrated.
                SYSTICK_NOREF: u1,
                padding: u6 = 0,
            }),
            reserved16: [12]u8,
            ///  Configuration register 1
            CONFIG1: mmio.Mmio(packed struct(u32) {
                ///  Indicates what priority interrupt, or base boost, is being used now. CURRPRI represents the preemption priority, and does not indicate secondary priority.
                CURRPRI: u8,
                ///  Branch status
                BRCHSTAT: BRCHSTAT,
                reserved15: u3 = 0,
                ///  In halting mode debug. HALTED remains asserted while the core is in debug.
                HALTED: u1,
                reserved22: u6 = 0,
                ///  Memory Attributes.
                ///
                ///  Bit 0 = Allocate
                ///
                ///  Bit 1 = Shareable.
                MEMATTRS: u2,
                ///  Memory attributes. Always 0b01 for this bus. They are always Non-shareable, Non-allocate.
                MEMATTRD: u2,
                ///  Memory attributes. Always 0b01 for this bus. They are always Non-shareable, Non-allocate.
                MEMATTRI: u2,
                reserved30: u2 = 0,
                ///  Exclusive Request. EXREQS is an address phase control signal that indicates if the access is because of a LDREX or STREX:
                ///
                ///  0 = No request
                ///
                ///  1 = Exclusive request
                ///
                ///  You can use EXREQS and EXRESPS to synchronize primitives and semaphores.
                EXREQS: u1,
                ///  Exclusive Request. EXREQD is an address phase control signal that indicates if the access is because of a LDREX or STREX:
                ///
                ///  0 = No request
                ///
                ///  1 = Exclusive request.
                ///
                ///  You can use EXREQD and EXRESPD to synchronize primitives and semaphores.
                EXREQD: u1,
            }),
            ///  Configuration register 2
            CONFIG2: mmio.Mmio(packed struct(u32) {
                ///  Set to disable the Floating Point Arithmetic Unit
                FPU_DISABLE: u1,
                ///  Set to disable de Memory Protection Unit
                MPU_DISABLE: u1,
                reserved4: u2 = 0,
                ///  Set to disable the M4 debugger
                DBG_DIS: u1,
                ///  External debug request. Internal use only
                EDBGEQ: u1,
                ///  Debugger restart. Internal use only
                DBGRESTART: u1,
                reserved8: u1 = 0,
                ///  Static endianness setting. This signal is sampled at reset, and cannot be changed when reset is inactive.
                BIGEND: BIGEND,
                reserved30: u21 = 0,
                ///  Exclusive Response. EXRESPS is a data phase response like HRESPS, but is only valid for exclusive accesses and indicates the success or failure of an exclusive operation:
                ///
                ///  0 = Exclusive request accepted
                ///
                ///  1 = Exclusive request failed.
                ///
                ///  You can use EXREQS and EXRESPS to synchronize primitives and semaphores.
                EXRESPS: u1,
                ///  Exclusive Response. EXRESPD is a data phase response like HRESPD, but is only valid for exclusive accesses and indicates the success or failure of an exclusive operation:
                ///
                ///  0 = Exclusive request accepted
                ///
                ///  1 = Exclusive request failed.
                ///
                ///  You can use EXREQD and EXRESPD to synchronize primitives and semaphores.
                EXRESPD: u1,
            }),
            reserved256: [232]u8,
            ///  FPU configuration register 1
            CONFIG_FP1: mmio.Mmio(packed struct(u32) {
                ///  Floating-point input denormal exception
                FPIDC: u1,
                ///  Floating-point divide-by-zero exception
                FPIZC: u1,
                ///  Floating-point invalid exception
                FPIOC: u1,
                ///  Floating-point underflow exception
                FPIFC: u1,
                ///  Floating-point overflow exception
                FPOFC: u1,
                ///  Floating-point inexact exception
                FPIXC: u1,
                padding: u26 = 0,
            }),
            ///  FPU configuration register 2
            CONFIG_FP2: mmio.Mmio(packed struct(u32) {
                reserved1: u1 = 0,
                ///  Mask exception to cpu; Floating-point divide-by-zero exception
                FPIDZC_EN: u1,
                ///  Mask exception to cpu; Floating-point invalid operation exception
                FPIOC_EN: u1,
                ///  Mask exception to cpu; Floating-point underflow exception
                FPIFC_EN: u1,
                ///  Mask exception to cpu; Floating-point overflow exception
                FPIDC_EN: u1,
                ///  Mask exception to cpu; Floating-point inexact exception
                FPIXC_EN: u1,
                padding: u26 = 0,
            }),
            reserved512: [248]u8,
            ///  Memory configuration register 1
            CONFIG_MEM1: mmio.Mmio(packed struct(u32) {
                ///  Read and write margin control. Recommended setting is 2’b10. 2’b00 provides the most margin (slowest speed). 2’b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM0_32K_RM: u2,
                reserved4: u2 = 0,
                ///  ‘Disable-Self-Time’. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2’b00. This pin is intended for debug/FA purposes only.
                MEM0_32K_DST: u1,
                ///  Read and write margin control. Recommended setting is 2’b10. 2’b00 provides the most margin (slowest speed). 2’b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM1_32K_RM: u2,
                reserved9: u2 = 0,
                ///  ‘Disable-Self-Time’. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2’b00. This pin is intended for debug/FA purposes only.
                MEM1_32K_DST: u1,
                ///  Read and write margin control. Recommended setting is 2’b10. 2’b00 provides the most margin (slowest speed). 2’b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM2_32K_RM: u2,
                reserved14: u2 = 0,
                ///  ‘Disable-Self-Time’. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2’b00. This pin is intended for debug/FA purposes only.
                MEM2_32K_DST: u1,
                ///  Read and write margin control. Recommended setting is 2’b10. 2’b00 provides the most margin (slowest speed). 2’b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM3_32K_RM: u2,
                reserved19: u2 = 0,
                ///  ‘Disable-Self-Time’. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2’b00. This pin is intended for debug/FA purposes only.
                MEM4_32K_DST: u1,
                padding: u12 = 0,
            }),
            ///  Memory configuration register 2
            CONFIG_MEM2: mmio.Mmio(packed struct(u32) {
                ///  Read and write margin control. Recommended setting is 2’b10. 2’b00 provides the most margin (slowest speed). 2’b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM0_32K_RM: u2,
                reserved4: u2 = 0,
                ///  ‘Disable-Self-Time’. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2’b00. This pin is intended for debug/FA purposes only.
                MEM0_32K_DST: u1,
                ///  Read and write margin control. Recommended setting is 2’b10. 2’b00 provides the most margin (slowest speed). 2’b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM1_32K_RM: u2,
                reserved9: u2 = 0,
                ///  ‘Disable-Self-Time’. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2’b00. This pin is intended for debug/FA purposes only.
                MEM1_32K_DST: u1,
                ///  Read and write margin control. Recommended setting is 2’b10. 2’b00 provides the most margin (slowest speed). 2’b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM2_32K_RM: u2,
                reserved14: u2 = 0,
                ///  ‘Disable-Self-Time’. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2’b00. This pin is intended for debug/FA purposes only.
                MEM2_32K_DST: u1,
                ///  Read and write margin control. Recommended setting is 2’b10. 2’b00 provides the most margin (slowest speed). 2’b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM3_32K_RM: u2,
                reserved19: u2 = 0,
                ///  ‘Disable-Self-Time’. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2’b00. This pin is intended for debug/FA purposes only.
                MEM4_32K_DST: u1,
                padding: u12 = 0,
            }),
            ///  Memory configuration register 3
            CONFIG_MEM3: mmio.Mmio(packed struct(u32) {
                ///  Read and write margin control. Recommended setting is 2’b10. 2’b00 provides the most margin (slowest speed). 2’b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM0_32K_RM: u2,
                reserved4: u2 = 0,
                ///  ‘Disable-Self-Time’. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2’b00. This pin is intended for debug/FA purposes only.
                MEM0_32K_DST: u1,
                ///  Read and write margin control. Recommended setting is 2’b10. 2’b00 provides the most margin (slowest speed). 2’b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM1_32K_RM: u2,
                reserved9: u2 = 0,
                ///  ‘Disable-Self-Time’. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2’b00. This pin is intended for debug/FA purposes only.
                MEM1_32K_DST: u1,
                ///  Read and write margin control. Recommended setting is 2’b10. 2’b00 provides the most margin (slowest speed). 2’b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM2_32K_RM: u2,
                reserved14: u2 = 0,
                ///  ‘Disable-Self-Time’. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2’b00. This pin is intended for debug/FA purposes only.
                MEM2_32K_DST: u1,
                ///  Read and write margin control. Recommended setting is 2’b10. 2’b00 provides the most margin (slowest speed). 2’b11 provides the least margin (fastest speed) memory. This setting is required for VDDMIN operation.
                MEM3_32K_RM: u2,
                reserved19: u2 = 0,
                ///  ‘Disable-Self-Time’. When asserted high, overrides the self-timed circuitry and causes the read margin to be controlled by the falling clk edge. Requires margin[] to be set to 2’b00. This pin is intended for debug/FA purposes only.
                MEM4_32K_DST: u1,
                padding: u12 = 0,
            }),
            reserved540: [16]u8,
            ///  SRAM access while in low power mode interrupt flag register (Set bit to clear)
            M4_MEM_INT: mmio.Mmio(packed struct(u32) {
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 0 32KB_0) while it in deep sleep or shut down mode
                MEMO_INTR0: u1,
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 0 32KB_1) while it in deep sleep or shut down mode
                MEMO_INTR1: u1,
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 0 32KB_2) while it in deep sleep or shut down mode
                MEMO_INTR2: u1,
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 0 32KB_3) while it in deep sleep or shut down mode
                MEMO_INTR3: u1,
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 1 32KB_0) while it in deep sleep or shut down mode
                MEM1_INTR0: u1,
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 1 32KB_1) while it in deep sleep or shut down mode
                MEM1_INTR1: u1,
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 1 32KB_2) while it in deep sleep or shut down mode
                MEM1_INTR2: u1,
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 1 32KB_3) while it in deep sleep or shut down mode
                MEM1_INTR3: u1,
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 2 32KB_0) while it in deep sleep or shut down mode
                MEM2_INTR0: u1,
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 2 32KB_1) while it in deep sleep or shut down mode
                MEM2_INTR1: u1,
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 2 32KB_2) while it in deep sleep or shut down mode
                MEM2_INTR2: u1,
                ///  Interrupt caused by a SRAM access (M4 SRAM segment 2 32KB_3) while it in deep sleep or shut down mode
                MEM2_INTR3: u1,
                padding: u20 = 0,
            }),
            ///  SRAM memory access while M4 in low power mode interrupts enable register
            M4_MEM_INTR_EN: mmio.Mmio(packed struct(u32) {
                ///  Interrupt enable (M4 SRAM segment 0 32KB_0)
                MEM0_INTR0_EN: u1,
                ///  Interrupt enable (M4 SRAM segment 0 32KB_1)
                MEM0_INTR1_EN: u1,
                ///  Interrupt enable (M4 SRAM segment 0 32KB_2)
                MEM0_INTR2_EN: u1,
                ///  Interrupt enable (M4 SRAM segment 0 32KB_3)
                MEM0_INTR3_EN: u1,
                ///  Interrupt enable (M4 SRAM segment 1 32KB_0)
                MEM1_INTR0_EN: u1,
                ///  Interrupt enable (M4 SRAM segment 1 32KB_1)
                MEM1_INTR1_EN: u1,
                ///  Interrupt enable (M4 SRAM segment 1 32KB_2)
                MEM1_INTR2_EN: u1,
                ///  Interrupt enable (M4 SRAM segment 1 32KB_3)
                MEM1_INTR3_EN: u1,
                ///  Interrupt enable (M4 SRAM segment 2 32KB_0)
                MEM2_INTR0_EN: u1,
                ///  Interrupt enable (M4 SRAM segment 2 32KB_1)
                MEM2_INTR1_EN: u1,
                ///  Interrupt enable (M4 SRAM segment 2 32KB_2)
                MEM2_INTR2_EN: u1,
                ///  Interrupt enable (M4 SRAM segment 2 32KB_3)
                MEM2_INTR3_EN: u1,
                padding: u20 = 0,
            }),
            reserved560: [12]u8,
            ///  No description provided
            TO_INTR: mmio.Mmio(packed struct(u32) {
                TO_INTR_TMR_MON: u1,
                TO_INTR_UART_MON: u1,
                TO_INTR_AON: u1,
                padding: u29 = 0,
            }),
            ///  No description provided
            TO_INTR_EN: mmio.Mmio(packed struct(u32) {
                TO_INTR_TMR_MON_EN: u1,
                TO_INTR_UART_MON_EN: u1,
                TO_INTR_AON_EN: u1,
                padding: u29 = 0,
            }),
            reserved592: [24]u8,
            ///  Status of the A1 subsystem power status
            A1_POWER_STAT: mmio.Mmio(packed struct(u32) {
                ///  Status of the A1 subsystem power status
                A1_POWER_STAT: u2,
                padding: u30 = 0,
            }),
            reserved768: [172]u8,
            ///  Sets Fabric in APB mode
            FB_RAMFIFO: mmio.Mmio(packed struct(u32) {
                ///  Sets Fabric in APB mode
                FB_RAMFIFO_MODE: u1,
                padding: u31 = 0,
            }),
        };

        ///  System control block ACTLR
        pub const SCB_ACTRL = extern struct {
            ///  Auxiliary control register
            ACTRL: mmio.Mmio(packed struct(u32) {
                ///  DISMCYCINT
                DISMCYCINT: u1,
                ///  DISDEFWBUF
                DISDEFWBUF: u1,
                ///  DISFOLD
                DISFOLD: u1,
                reserved8: u5 = 0,
                ///  DISFPCA
                DISFPCA: u1,
                ///  DISOOFP
                DISOOFP: u1,
                padding: u22 = 0,
            }),
        };
    };
};

//======= GEN_SOURCE
