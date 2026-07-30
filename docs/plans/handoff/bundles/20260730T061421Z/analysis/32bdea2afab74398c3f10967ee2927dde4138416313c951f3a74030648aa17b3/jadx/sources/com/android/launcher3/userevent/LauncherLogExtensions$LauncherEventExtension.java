package com.android.launcher3.userevent;

import c.b.b.C0491z0;
import c.b.b.F;
import c.b.b.G;
import c.b.b.InterfaceC0472p0;
import c.b.b.InterfaceC0483v0;
import c.b.b.K;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;

/* loaded from: classes.dex */
public final class LauncherLogExtensions$LauncherEventExtension extends K implements InterfaceC0472p0 {
    public static final LauncherLogExtensions$LauncherEventExtension DEFAULT_INSTANCE;
    public static volatile InterfaceC0483v0 PARSER;

    public final class Builder extends F implements InterfaceC0472p0 {
        public Builder(LauncherLogExtensions$1 launcherLogExtensions$1) {
            super(LauncherLogExtensions$LauncherEventExtension.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherLogExtensions$LauncherEventExtension launcherLogExtensions$LauncherEventExtension = new LauncherLogExtensions$LauncherEventExtension();
        DEFAULT_INSTANCE = launcherLogExtensions$LauncherEventExtension;
        K.defaultInstanceMap.put(LauncherLogExtensions$LauncherEventExtension.class, launcherLogExtensions$LauncherEventExtension);
    }

    @Override // c.b.b.K
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new C0491z0(DEFAULT_INSTANCE, "\u0001\u0000", null);
            case NEW_MUTABLE_INSTANCE:
                return new LauncherLogExtensions$LauncherEventExtension();
            case NEW_BUILDER:
                return new Builder(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC0483v0 interfaceC0483v0 = PARSER;
                if (interfaceC0483v0 == null) {
                    synchronized (LauncherLogExtensions$LauncherEventExtension.class) {
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
}
