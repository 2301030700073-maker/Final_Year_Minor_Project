package com.android.launcher3.logger;

import c.b.b.C0491z0;
import c.b.b.F;
import c.b.b.G;
import c.b.b.InterfaceC0472p0;
import c.b.b.InterfaceC0483v0;
import c.b.b.K;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;

/* loaded from: classes.dex */
public final class LauncherAtom$WorkspaceContainer extends K implements InterfaceC0472p0 {
    public static final LauncherAtom$WorkspaceContainer DEFAULT_INSTANCE;
    public static final int GRID_X_FIELD_NUMBER = 2;
    public static final int GRID_Y_FIELD_NUMBER = 3;
    public static final int PAGE_INDEX_FIELD_NUMBER = 1;
    public static volatile InterfaceC0483v0 PARSER;
    public int bitField0_;
    public int pageIndex_ = -2;
    public int gridX_ = -1;
    public int gridY_ = -1;

    static {
        LauncherAtom$WorkspaceContainer launcherAtom$WorkspaceContainer = new LauncherAtom$WorkspaceContainer();
        DEFAULT_INSTANCE = launcherAtom$WorkspaceContainer;
        K.defaultInstanceMap.put(LauncherAtom$WorkspaceContainer.class, launcherAtom$WorkspaceContainer);
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
                return new C0491z0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001\u0003\u0004\u0002", new Object[]{"bitField0_", "pageIndex_", "gridX_", "gridY_"});
            case NEW_MUTABLE_INSTANCE:
                return new LauncherAtom$WorkspaceContainer();
            case NEW_BUILDER:
                return new Builder(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC0483v0 interfaceC0483v0 = PARSER;
                if (interfaceC0483v0 == null) {
                    synchronized (LauncherAtom$WorkspaceContainer.class) {
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
            super(LauncherAtom$WorkspaceContainer.DEFAULT_INSTANCE);
        }

        public Builder setPageIndex(int i) {
            copyOnWrite();
            LauncherAtom$WorkspaceContainer launcherAtom$WorkspaceContainer = (LauncherAtom$WorkspaceContainer) this.instance;
            launcherAtom$WorkspaceContainer.bitField0_ |= 1;
            launcherAtom$WorkspaceContainer.pageIndex_ = i;
            return this;
        }

        public Builder(LauncherAtom$1 launcherAtom$1) {
            super(LauncherAtom$WorkspaceContainer.DEFAULT_INSTANCE);
        }
    }
}
