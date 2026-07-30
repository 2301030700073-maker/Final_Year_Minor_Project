package com.android.launcher3.logger;

import c.b.b.C0491z0;
import c.b.b.F;
import c.b.b.G;
import c.b.b.InterfaceC0472p0;
import c.b.b.InterfaceC0483v0;
import c.b.b.K;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;

/* loaded from: classes.dex */
public final class LauncherAtom$ShortcutsContainer extends K implements InterfaceC0472p0 {
    public static final LauncherAtom$ShortcutsContainer DEFAULT_INSTANCE;
    public static volatile InterfaceC0483v0 PARSER;

    public final class Builder extends F implements InterfaceC0472p0 {
        public Builder(LauncherAtom$1 launcherAtom$1) {
            super(LauncherAtom$ShortcutsContainer.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$ShortcutsContainer launcherAtom$ShortcutsContainer = new LauncherAtom$ShortcutsContainer();
        DEFAULT_INSTANCE = launcherAtom$ShortcutsContainer;
        K.defaultInstanceMap.put(LauncherAtom$ShortcutsContainer.class, launcherAtom$ShortcutsContainer);
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
                return new LauncherAtom$ShortcutsContainer();
            case NEW_BUILDER:
                return new Builder(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC0483v0 interfaceC0483v0 = PARSER;
                if (interfaceC0483v0 == null) {
                    synchronized (LauncherAtom$ShortcutsContainer.class) {
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
