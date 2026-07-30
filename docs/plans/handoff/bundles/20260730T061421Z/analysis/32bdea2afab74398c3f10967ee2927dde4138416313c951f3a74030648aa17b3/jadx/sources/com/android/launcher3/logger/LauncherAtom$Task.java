package com.android.launcher3.logger;

import c.b.b.C0491z0;
import c.b.b.F;
import c.b.b.G;
import c.b.b.InterfaceC0472p0;
import c.b.b.InterfaceC0483v0;
import c.b.b.K;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;

/* loaded from: classes.dex */
public final class LauncherAtom$Task extends K implements InterfaceC0472p0 {
    public static final int COMPONENT_NAME_FIELD_NUMBER = 2;
    public static final LauncherAtom$Task DEFAULT_INSTANCE;
    public static final int INDEX_FIELD_NUMBER = 3;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 1;
    public static volatile InterfaceC0483v0 PARSER;
    public int bitField0_;
    public int index_;
    public String packageName_ = "";
    public String componentName_ = "";

    static {
        LauncherAtom$Task launcherAtom$Task = new LauncherAtom$Task();
        DEFAULT_INSTANCE = launcherAtom$Task;
        K.defaultInstanceMap.put(LauncherAtom$Task.class, launcherAtom$Task);
    }

    public static void access$13600(LauncherAtom$Task launcherAtom$Task, String str) {
        if (str == null) {
            throw null;
        }
        launcherAtom$Task.bitField0_ |= 2;
        launcherAtom$Task.componentName_ = str;
    }

    @Override // c.b.b.K
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new C0491z0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001\u0003\u0004\u0002", new Object[]{"bitField0_", "packageName_", "componentName_", "index_"});
            case 3:
                return new LauncherAtom$Task();
            case 4:
                return new Builder(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0483v0 interfaceC0483v0 = PARSER;
                if (interfaceC0483v0 == null) {
                    synchronized (LauncherAtom$Task.class) {
                        interfaceC0483v0 = PARSER;
                        if (interfaceC0483v0 == null) {
                            interfaceC0483v0 = new G(DEFAULT_INSTANCE);
                            PARSER = interfaceC0483v0;
                        }
                    }
                }
                return interfaceC0483v0;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final class Builder extends F implements InterfaceC0472p0 {
        public Builder() {
            super(LauncherAtom$Task.DEFAULT_INSTANCE);
        }

        public Builder(LauncherAtom$1 launcherAtom$1) {
            super(LauncherAtom$Task.DEFAULT_INSTANCE);
        }
    }
}
