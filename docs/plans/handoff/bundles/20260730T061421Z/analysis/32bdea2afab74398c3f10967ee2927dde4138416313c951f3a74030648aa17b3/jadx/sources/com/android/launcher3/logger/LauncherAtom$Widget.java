package com.android.launcher3.logger;

import c.b.b.C0491z0;
import c.b.b.F;
import c.b.b.G;
import c.b.b.InterfaceC0472p0;
import c.b.b.InterfaceC0483v0;
import c.b.b.K;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;

/* loaded from: classes.dex */
public final class LauncherAtom$Widget extends K implements InterfaceC0472p0 {
    public static final int APP_WIDGET_ID_FIELD_NUMBER = 3;
    public static final int COMPONENT_NAME_FIELD_NUMBER = 5;
    public static final LauncherAtom$Widget DEFAULT_INSTANCE;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 4;
    public static volatile InterfaceC0483v0 PARSER = null;
    public static final int SPAN_X_FIELD_NUMBER = 1;
    public static final int SPAN_Y_FIELD_NUMBER = 2;
    public int appWidgetId_;
    public int bitField0_;
    public int spanX_ = 1;
    public int spanY_ = 1;
    public String packageName_ = "";
    public String componentName_ = "";

    static {
        LauncherAtom$Widget launcherAtom$Widget = new LauncherAtom$Widget();
        DEFAULT_INSTANCE = launcherAtom$Widget;
        K.defaultInstanceMap.put(LauncherAtom$Widget.class, launcherAtom$Widget);
    }

    public static void access$12500(LauncherAtom$Widget launcherAtom$Widget, String str) {
        if (str == null) {
            throw null;
        }
        launcherAtom$Widget.bitField0_ |= 8;
        launcherAtom$Widget.packageName_ = str;
    }

    public static void access$12800(LauncherAtom$Widget launcherAtom$Widget, String str) {
        if (str == null) {
            throw null;
        }
        launcherAtom$Widget.bitField0_ |= 16;
        launcherAtom$Widget.componentName_ = str;
    }

    public static Builder newBuilder() {
        return (Builder) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // c.b.b.K
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new C0491z0(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001\u0003\u0004\u0002\u0004\b\u0003\u0005\b\u0004", new Object[]{"bitField0_", "spanX_", "spanY_", "appWidgetId_", "packageName_", "componentName_"});
            case NEW_MUTABLE_INSTANCE:
                return new LauncherAtom$Widget();
            case NEW_BUILDER:
                return new Builder(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC0483v0 interfaceC0483v0 = PARSER;
                if (interfaceC0483v0 == null) {
                    synchronized (LauncherAtom$Widget.class) {
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
            super(LauncherAtom$Widget.DEFAULT_INSTANCE);
        }

        public Builder(LauncherAtom$1 launcherAtom$1) {
            super(LauncherAtom$Widget.DEFAULT_INSTANCE);
        }
    }
}
