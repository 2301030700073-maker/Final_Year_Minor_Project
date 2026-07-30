package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.protobuf.Cthis;

/* renamed from: Mk, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0366Mk extends Cthis<C0366Mk, Cdo> implements InterfaceC0506Ss {
    public static final int CPU_CLOCK_RATE_KHZ_FIELD_NUMBER = 2;
    public static final int CPU_PROCESSOR_COUNT_FIELD_NUMBER = 6;
    private static final C0366Mk DEFAULT_INSTANCE;
    public static final int DEVICE_RAM_SIZE_KB_FIELD_NUMBER = 3;
    public static final int MAX_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER = 4;
    public static final int MAX_ENCOURAGED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER = 5;
    private static volatile InterfaceC4066yw<C0366Mk> PARSER = null;
    public static final int PROCESS_NAME_FIELD_NUMBER = 1;
    private int bitField0_;
    private int cpuClockRateKhz_;
    private int cpuProcessorCount_;
    private int deviceRamSizeKb_;
    private int maxAppJavaHeapMemoryKb_;
    private int maxEncouragedAppJavaHeapMemoryKb_;
    private String processName_ = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    /* renamed from: Mk$do, reason: invalid class name */
    public static final class Cdo extends Cthis.Cdo<C0366Mk, Cdo> implements InterfaceC0506Ss {
        public Cdo() {
            super(C0366Mk.DEFAULT_INSTANCE);
        }
    }

    static {
        C0366Mk c0366Mk = new C0366Mk();
        DEFAULT_INSTANCE = c0366Mk;
        Cthis.m6293abstract(C0366Mk.class, c0366Mk);
    }

    /* renamed from: implements, reason: not valid java name */
    public static Cdo m1449implements() {
        return DEFAULT_INSTANCE.m6302return();
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m1450interface(C0366Mk c0366Mk, int i) {
        c0366Mk.bitField0_ |= 8;
        c0366Mk.deviceRamSizeKb_ = i;
    }

    /* renamed from: protected, reason: not valid java name */
    public static C0366Mk m1451protected() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m1452strictfp(C0366Mk c0366Mk, int i) {
        c0366Mk.bitField0_ |= 16;
        c0366Mk.maxAppJavaHeapMemoryKb_ = i;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m1453volatile(C0366Mk c0366Mk, int i) {
        c0366Mk.bitField0_ |= 32;
        c0366Mk.maxEncouragedAppJavaHeapMemoryKb_ = i;
    }

    @Override // com.google.protobuf.Cthis
    /* renamed from: static */
    public final Object mo523static(Cthis.Ctry ctry) {
        switch (ctry) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new Py(DEFAULT_INSTANCE, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002င\u0001\u0003င\u0003\u0004င\u0004\u0005င\u0005\u0006င\u0002", new Object[]{"bitField0_", "processName_", "cpuClockRateKhz_", "deviceRamSizeKb_", "maxAppJavaHeapMemoryKb_", "maxEncouragedAppJavaHeapMemoryKb_", "cpuProcessorCount_"});
            case NEW_MUTABLE_INSTANCE:
                return new C0366Mk();
            case NEW_BUILDER:
                return new Cdo();
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC4066yw<C0366Mk> interfaceC4066yw = PARSER;
                if (interfaceC4066yw == null) {
                    synchronized (C0366Mk.class) {
                        try {
                            interfaceC4066yw = PARSER;
                            if (interfaceC4066yw == null) {
                                interfaceC4066yw = new Cthis.Cif<>(DEFAULT_INSTANCE);
                                PARSER = interfaceC4066yw;
                            }
                        } finally {
                        }
                    }
                }
                return interfaceC4066yw;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public final boolean m1454transient() {
        return (this.bitField0_ & 16) != 0;
    }
}
