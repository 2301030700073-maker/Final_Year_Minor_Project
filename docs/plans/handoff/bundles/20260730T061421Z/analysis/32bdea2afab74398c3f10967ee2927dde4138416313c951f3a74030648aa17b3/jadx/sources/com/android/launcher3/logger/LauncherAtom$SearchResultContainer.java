package com.android.launcher3.logger;

import c.b.b.C0491z0;
import c.b.b.F;
import c.b.b.G;
import c.b.b.InterfaceC0472p0;
import c.b.b.InterfaceC0483v0;
import c.b.b.K;
import c.b.b.M;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import java.util.Objects;

/* loaded from: classes.dex */
public final class LauncherAtom$SearchResultContainer extends K implements InterfaceC0472p0 {
    public static final int ALL_APPS_CONTAINER_FIELD_NUMBER = 3;
    public static final LauncherAtom$SearchResultContainer DEFAULT_INSTANCE;
    public static volatile InterfaceC0483v0 PARSER = null;
    public static final int QUERY_LENGTH_FIELD_NUMBER = 1;
    public static final int WORKSPACE_FIELD_NUMBER = 2;
    public int bitField0_;
    public int parentContainerCase_ = 0;
    public Object parentContainer_;
    public int queryLength_;

    public enum ParentContainerCase implements M {
        WORKSPACE(2),
        ALL_APPS_CONTAINER(3),
        PARENTCONTAINER_NOT_SET(0);

        public final int value;

        ParentContainerCase(int i) {
            this.value = i;
        }

        @Override // c.b.b.M
        public int getNumber() {
            return this.value;
        }
    }

    static {
        LauncherAtom$SearchResultContainer launcherAtom$SearchResultContainer = new LauncherAtom$SearchResultContainer();
        DEFAULT_INSTANCE = launcherAtom$SearchResultContainer;
        K.defaultInstanceMap.put(LauncherAtom$SearchResultContainer.class, launcherAtom$SearchResultContainer);
    }

    public static void access$9100(LauncherAtom$SearchResultContainer launcherAtom$SearchResultContainer, LauncherAtom$WorkspaceContainer.Builder builder) {
        Objects.requireNonNull(launcherAtom$SearchResultContainer);
        launcherAtom$SearchResultContainer.parentContainer_ = builder.build();
        launcherAtom$SearchResultContainer.parentContainerCase_ = 2;
    }

    public static void access$9400(LauncherAtom$SearchResultContainer launcherAtom$SearchResultContainer, LauncherAtom$AllAppsContainer launcherAtom$AllAppsContainer) {
        if (launcherAtom$AllAppsContainer == null) {
            throw null;
        }
        launcherAtom$SearchResultContainer.parentContainer_ = launcherAtom$AllAppsContainer;
        launcherAtom$SearchResultContainer.parentContainerCase_ = 3;
    }

    @Override // c.b.b.K
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new C0491z0(DEFAULT_INSTANCE, "\u0001\u0003\u0001\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0000\u0002<\u0000\u0003<\u0000", new Object[]{"parentContainer_", "parentContainerCase_", "bitField0_", "queryLength_", LauncherAtom$WorkspaceContainer.class, LauncherAtom$AllAppsContainer.class});
            case NEW_MUTABLE_INSTANCE:
                return new LauncherAtom$SearchResultContainer();
            case NEW_BUILDER:
                return new Builder(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                InterfaceC0483v0 interfaceC0483v0 = PARSER;
                if (interfaceC0483v0 == null) {
                    synchronized (LauncherAtom$SearchResultContainer.class) {
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
            super(LauncherAtom$SearchResultContainer.DEFAULT_INSTANCE);
        }

        public Builder(LauncherAtom$1 launcherAtom$1) {
            super(LauncherAtom$SearchResultContainer.DEFAULT_INSTANCE);
        }
    }
}
