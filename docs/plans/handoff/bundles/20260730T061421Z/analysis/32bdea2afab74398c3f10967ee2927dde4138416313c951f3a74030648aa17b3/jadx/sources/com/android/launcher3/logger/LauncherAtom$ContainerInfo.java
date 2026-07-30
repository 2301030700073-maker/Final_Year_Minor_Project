package com.android.launcher3.logger;

import c.b.b.C0491z0;
import c.b.b.F;
import c.b.b.G;
import c.b.b.InterfaceC0472p0;
import c.b.b.InterfaceC0483v0;
import c.b.b.K;
import c.b.b.M;
import com.android.launcher3.logger.LauncherAtom$FolderContainer;
import com.android.launcher3.logger.LauncherAtom$HotseatContainer;
import com.android.launcher3.logger.LauncherAtom$PredictedHotseatContainer;
import com.android.launcher3.logger.LauncherAtom$SearchResultContainer;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import java.util.Objects;

/* loaded from: classes.dex */
public final class LauncherAtom$ContainerInfo extends K implements InterfaceC0472p0 {
    public static final int ALL_APPS_CONTAINER_FIELD_NUMBER = 4;
    public static final LauncherAtom$ContainerInfo DEFAULT_INSTANCE;
    public static final int FOLDER_FIELD_NUMBER = 3;
    public static final int HOTSEAT_FIELD_NUMBER = 2;
    public static volatile InterfaceC0483v0 PARSER = null;
    public static final int PREDICTED_HOTSEAT_CONTAINER_FIELD_NUMBER = 10;
    public static final int PREDICTION_CONTAINER_FIELD_NUMBER = 6;
    public static final int SEARCH_RESULT_CONTAINER_FIELD_NUMBER = 7;
    public static final int SETTINGS_CONTAINER_FIELD_NUMBER = 9;
    public static final int SHORTCUTS_CONTAINER_FIELD_NUMBER = 8;
    public static final int TASK_SWITCHER_CONTAINER_FIELD_NUMBER = 11;
    public static final int WIDGETS_CONTAINER_FIELD_NUMBER = 5;
    public static final int WORKSPACE_FIELD_NUMBER = 1;
    public int bitField0_;
    public int containerCase_ = 0;
    public Object container_;

    public enum ContainerCase implements M {
        WORKSPACE(1),
        HOTSEAT(2),
        FOLDER(3),
        ALL_APPS_CONTAINER(4),
        WIDGETS_CONTAINER(5),
        PREDICTION_CONTAINER(6),
        SEARCH_RESULT_CONTAINER(7),
        SHORTCUTS_CONTAINER(8),
        SETTINGS_CONTAINER(9),
        PREDICTED_HOTSEAT_CONTAINER(10),
        TASK_SWITCHER_CONTAINER(11),
        CONTAINER_NOT_SET(0);

        public final int value;

        ContainerCase(int i) {
            this.value = i;
        }

        @Override // c.b.b.M
        public int getNumber() {
            return this.value;
        }
    }

    static {
        LauncherAtom$ContainerInfo launcherAtom$ContainerInfo = new LauncherAtom$ContainerInfo();
        DEFAULT_INSTANCE = launcherAtom$ContainerInfo;
        K.defaultInstanceMap.put(LauncherAtom$ContainerInfo.class, launcherAtom$ContainerInfo);
    }

    public static void access$3600(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$WorkspaceContainer.Builder builder) {
        Objects.requireNonNull(launcherAtom$ContainerInfo);
        launcherAtom$ContainerInfo.container_ = builder.build();
        launcherAtom$ContainerInfo.containerCase_ = 1;
    }

    public static void access$4000(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$HotseatContainer.Builder builder) {
        Objects.requireNonNull(launcherAtom$ContainerInfo);
        launcherAtom$ContainerInfo.container_ = builder.build();
        launcherAtom$ContainerInfo.containerCase_ = 2;
    }

    public static void access$4400(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$FolderContainer.Builder builder) {
        Objects.requireNonNull(launcherAtom$ContainerInfo);
        launcherAtom$ContainerInfo.container_ = builder.build();
        launcherAtom$ContainerInfo.containerCase_ = 3;
    }

    public static void access$4700(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$AllAppsContainer launcherAtom$AllAppsContainer) {
        if (launcherAtom$AllAppsContainer == null) {
            throw null;
        }
        launcherAtom$ContainerInfo.container_ = launcherAtom$AllAppsContainer;
        launcherAtom$ContainerInfo.containerCase_ = 4;
    }

    public static void access$5100(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$WidgetsContainer launcherAtom$WidgetsContainer) {
        if (launcherAtom$WidgetsContainer == null) {
            throw null;
        }
        launcherAtom$ContainerInfo.container_ = launcherAtom$WidgetsContainer;
        launcherAtom$ContainerInfo.containerCase_ = 5;
    }

    public static void access$5500(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$PredictionContainer launcherAtom$PredictionContainer) {
        if (launcherAtom$PredictionContainer == null) {
            throw null;
        }
        launcherAtom$ContainerInfo.container_ = launcherAtom$PredictionContainer;
        launcherAtom$ContainerInfo.containerCase_ = 6;
    }

    public static void access$5900(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$SearchResultContainer launcherAtom$SearchResultContainer) {
        if (launcherAtom$SearchResultContainer == null) {
            throw null;
        }
        launcherAtom$ContainerInfo.container_ = launcherAtom$SearchResultContainer;
        launcherAtom$ContainerInfo.containerCase_ = 7;
    }

    public static void access$6000(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$SearchResultContainer.Builder builder) {
        Objects.requireNonNull(launcherAtom$ContainerInfo);
        launcherAtom$ContainerInfo.container_ = builder.build();
        launcherAtom$ContainerInfo.containerCase_ = 7;
    }

    public static void access$6300(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$ShortcutsContainer launcherAtom$ShortcutsContainer) {
        if (launcherAtom$ShortcutsContainer == null) {
            throw null;
        }
        launcherAtom$ContainerInfo.container_ = launcherAtom$ShortcutsContainer;
        launcherAtom$ContainerInfo.containerCase_ = 8;
    }

    public static void access$6700(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$SettingsContainer launcherAtom$SettingsContainer) {
        if (launcherAtom$SettingsContainer == null) {
            throw null;
        }
        launcherAtom$ContainerInfo.container_ = launcherAtom$SettingsContainer;
        launcherAtom$ContainerInfo.containerCase_ = 9;
    }

    public static void access$7200(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$PredictedHotseatContainer.Builder builder) {
        Objects.requireNonNull(launcherAtom$ContainerInfo);
        launcherAtom$ContainerInfo.container_ = builder.build();
        launcherAtom$ContainerInfo.containerCase_ = 10;
    }

    public static void access$7500(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$TaskSwitcherContainer launcherAtom$TaskSwitcherContainer) {
        if (launcherAtom$TaskSwitcherContainer == null) {
            throw null;
        }
        launcherAtom$ContainerInfo.container_ = launcherAtom$TaskSwitcherContainer;
        launcherAtom$ContainerInfo.containerCase_ = 11;
    }

    public static Builder newBuilder() {
        return (Builder) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // c.b.b.K
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new C0491z0(DEFAULT_INSTANCE, "\u0001\u000b\u0001\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\b<\u0000\t<\u0000\n<\u0000\u000b<\u0000", new Object[]{"container_", "containerCase_", "bitField0_", LauncherAtom$WorkspaceContainer.class, LauncherAtom$HotseatContainer.class, LauncherAtom$FolderContainer.class, LauncherAtom$AllAppsContainer.class, LauncherAtom$WidgetsContainer.class, LauncherAtom$PredictionContainer.class, LauncherAtom$SearchResultContainer.class, LauncherAtom$ShortcutsContainer.class, LauncherAtom$SettingsContainer.class, LauncherAtom$PredictedHotseatContainer.class, LauncherAtom$TaskSwitcherContainer.class});
            case 3:
                return new LauncherAtom$ContainerInfo();
            case 4:
                return new Builder(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0483v0 interfaceC0483v0 = PARSER;
                if (interfaceC0483v0 == null) {
                    synchronized (LauncherAtom$ContainerInfo.class) {
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

    public ContainerCase getContainerCase() {
        switch (this.containerCase_) {
            case 0:
                return ContainerCase.CONTAINER_NOT_SET;
            case 1:
                return ContainerCase.WORKSPACE;
            case 2:
                return ContainerCase.HOTSEAT;
            case 3:
                return ContainerCase.FOLDER;
            case 4:
                return ContainerCase.ALL_APPS_CONTAINER;
            case 5:
                return ContainerCase.WIDGETS_CONTAINER;
            case 6:
                return ContainerCase.PREDICTION_CONTAINER;
            case 7:
                return ContainerCase.SEARCH_RESULT_CONTAINER;
            case 8:
                return ContainerCase.SHORTCUTS_CONTAINER;
            case 9:
                return ContainerCase.SETTINGS_CONTAINER;
            case 10:
                return ContainerCase.PREDICTED_HOTSEAT_CONTAINER;
            case 11:
                return ContainerCase.TASK_SWITCHER_CONTAINER;
            default:
                return null;
        }
    }

    public LauncherAtom$FolderContainer getFolder() {
        return this.containerCase_ == 3 ? (LauncherAtom$FolderContainer) this.container_ : LauncherAtom$FolderContainer.DEFAULT_INSTANCE;
    }

    public LauncherAtom$SearchResultContainer getSearchResultContainer() {
        return this.containerCase_ == 7 ? (LauncherAtom$SearchResultContainer) this.container_ : LauncherAtom$SearchResultContainer.DEFAULT_INSTANCE;
    }

    public LauncherAtom$WorkspaceContainer getWorkspace() {
        return this.containerCase_ == 1 ? (LauncherAtom$WorkspaceContainer) this.container_ : LauncherAtom$WorkspaceContainer.DEFAULT_INSTANCE;
    }

    public final class Builder extends F implements InterfaceC0472p0 {
        public Builder() {
            super(LauncherAtom$ContainerInfo.DEFAULT_INSTANCE);
        }

        public Builder(LauncherAtom$1 launcherAtom$1) {
            super(LauncherAtom$ContainerInfo.DEFAULT_INSTANCE);
        }
    }
}
