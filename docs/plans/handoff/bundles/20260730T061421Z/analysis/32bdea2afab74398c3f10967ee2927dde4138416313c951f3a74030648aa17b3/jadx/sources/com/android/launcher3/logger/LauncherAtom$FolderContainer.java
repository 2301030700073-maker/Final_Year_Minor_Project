package com.android.launcher3.logger;

import c.b.b.C0491z0;
import c.b.b.F;
import c.b.b.G;
import c.b.b.InterfaceC0472p0;
import c.b.b.InterfaceC0483v0;
import c.b.b.K;
import c.b.b.M;
import com.android.launcher3.logger.LauncherAtom$HotseatContainer;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import java.util.Objects;

/* loaded from: classes.dex */
public final class LauncherAtom$FolderContainer extends K implements InterfaceC0472p0 {
    public static final LauncherAtom$FolderContainer DEFAULT_INSTANCE;
    public static final int GRID_X_FIELD_NUMBER = 2;
    public static final int GRID_Y_FIELD_NUMBER = 3;
    public static final int HOTSEAT_FIELD_NUMBER = 5;
    public static final int PAGE_INDEX_FIELD_NUMBER = 1;
    public static volatile InterfaceC0483v0 PARSER = null;
    public static final int WORKSPACE_FIELD_NUMBER = 4;
    public int bitField0_;
    public Object parentContainer_;
    public int parentContainerCase_ = 0;
    public int pageIndex_ = -1;
    public int gridX_ = -1;
    public int gridY_ = -1;

    public enum ParentContainerCase implements M {
        WORKSPACE(4),
        HOTSEAT(5),
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
        LauncherAtom$FolderContainer launcherAtom$FolderContainer = new LauncherAtom$FolderContainer();
        DEFAULT_INSTANCE = launcherAtom$FolderContainer;
        K.defaultInstanceMap.put(LauncherAtom$FolderContainer.class, launcherAtom$FolderContainer);
    }

    public static void access$18000(LauncherAtom$FolderContainer launcherAtom$FolderContainer, LauncherAtom$WorkspaceContainer.Builder builder) {
        Objects.requireNonNull(launcherAtom$FolderContainer);
        launcherAtom$FolderContainer.parentContainer_ = builder.build();
        launcherAtom$FolderContainer.parentContainerCase_ = 4;
    }

    public static void access$18400(LauncherAtom$FolderContainer launcherAtom$FolderContainer, LauncherAtom$HotseatContainer.Builder builder) {
        Objects.requireNonNull(launcherAtom$FolderContainer);
        launcherAtom$FolderContainer.parentContainer_ = builder.build();
        launcherAtom$FolderContainer.parentContainerCase_ = 5;
    }

    @Override // c.b.b.K
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new C0491z0(DEFAULT_INSTANCE, "\u0001\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001\u0003\u0004\u0002\u0004<\u0000\u0005<\u0000", new Object[]{"parentContainer_", "parentContainerCase_", "bitField0_", "pageIndex_", "gridX_", "gridY_", LauncherAtom$WorkspaceContainer.class, LauncherAtom$HotseatContainer.class});
            case 3:
                return new LauncherAtom$FolderContainer();
            case 4:
                return new Builder(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0483v0 interfaceC0483v0 = PARSER;
                if (interfaceC0483v0 == null) {
                    synchronized (LauncherAtom$FolderContainer.class) {
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

    public LauncherAtom$WorkspaceContainer getWorkspace() {
        return this.parentContainerCase_ == 4 ? (LauncherAtom$WorkspaceContainer) this.parentContainer_ : LauncherAtom$WorkspaceContainer.DEFAULT_INSTANCE;
    }

    public final class Builder extends F implements InterfaceC0472p0 {
        public Builder() {
            super(LauncherAtom$FolderContainer.DEFAULT_INSTANCE);
        }

        public Builder(LauncherAtom$1 launcherAtom$1) {
            super(LauncherAtom$FolderContainer.DEFAULT_INSTANCE);
        }
    }
}
