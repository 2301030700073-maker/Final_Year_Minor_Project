package com.android.launcher3.logger;

import c.b.b.C0491z0;
import c.b.b.F;
import c.b.b.G;
import c.b.b.InterfaceC0472p0;
import c.b.b.InterfaceC0483v0;
import c.b.b.K;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;

/* loaded from: classes.dex */
public final class LauncherAtom$Application extends K implements InterfaceC0472p0 {
    public static final int COMPONENT_NAME_FIELD_NUMBER = 2;
    public static final LauncherAtom$Application DEFAULT_INSTANCE;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 1;
    public static volatile InterfaceC0483v0 PARSER;
    public int bitField0_;
    public String packageName_ = "";
    public String componentName_ = "";

    static {
        LauncherAtom$Application launcherAtom$Application = new LauncherAtom$Application();
        DEFAULT_INSTANCE = launcherAtom$Application;
        K.defaultInstanceMap.put(LauncherAtom$Application.class, launcherAtom$Application);
    }

    public static void access$10600(LauncherAtom$Application launcherAtom$Application, String str) {
        if (str == null) {
            throw null;
        }
        launcherAtom$Application.bitField0_ |= 1;
        launcherAtom$Application.packageName_ = str;
    }

    public static void access$10900(LauncherAtom$Application launcherAtom$Application, String str) {
        if (str == null) {
            throw null;
        }
        launcherAtom$Application.bitField0_ |= 2;
        launcherAtom$Application.componentName_ = str;
    }

    @Override // c.b.b.K
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new C0491z0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001", new Object[]{"bitField0_", "packageName_", "componentName_"});
            case NEW_MUTABLE_INSTANCE:
                return new LauncherAtom$Application();
            case NEW_BUILDER:
                return new Builder(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC0483v0 interfaceC0483v0 = PARSER;
                if (interfaceC0483v0 == null) {
                    synchronized (LauncherAtom$Application.class) {
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
            super(LauncherAtom$Application.DEFAULT_INSTANCE);
        }

        public Builder(LauncherAtom$1 launcherAtom$1) {
            super(LauncherAtom$Application.DEFAULT_INSTANCE);
        }
    }
}
