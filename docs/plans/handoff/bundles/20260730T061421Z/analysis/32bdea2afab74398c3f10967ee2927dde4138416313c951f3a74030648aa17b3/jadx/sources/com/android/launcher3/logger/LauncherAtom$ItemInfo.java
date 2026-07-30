package com.android.launcher3.logger;

import c.b.b.C0491z0;
import c.b.b.F;
import c.b.b.G;
import c.b.b.InterfaceC0472p0;
import c.b.b.InterfaceC0483v0;
import c.b.b.K;
import c.b.b.M;
import com.android.launcher3.logger.LauncherAtom$Application;
import com.android.launcher3.logger.LauncherAtom$Attribute;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$FolderIcon;
import com.android.launcher3.logger.LauncherAtom$Shortcut;
import com.android.launcher3.logger.LauncherAtom$Task;
import com.android.launcher3.logger.LauncherAtom$Widget;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import java.util.Objects;

/* loaded from: classes.dex */
public final class LauncherAtom$ItemInfo extends K implements InterfaceC0472p0 {
    public static final int APPLICATION_FIELD_NUMBER = 1;
    public static final int ATTRIBUTE_FIELD_NUMBER = 8;
    public static final int CONTAINER_INFO_FIELD_NUMBER = 7;
    public static final LauncherAtom$ItemInfo DEFAULT_INSTANCE;
    public static final int FOLDER_ICON_FIELD_NUMBER = 9;
    public static final int IS_WORK_FIELD_NUMBER = 6;
    public static volatile InterfaceC0483v0 PARSER = null;
    public static final int RANK_FIELD_NUMBER = 5;
    public static final int SHORTCUT_FIELD_NUMBER = 3;
    public static final int TASK_FIELD_NUMBER = 2;
    public static final int WIDGET_FIELD_NUMBER = 4;
    public int attribute_;
    public int bitField0_;
    public LauncherAtom$ContainerInfo containerInfo_;
    public boolean isWork_;
    public int itemCase_ = 0;
    public Object item_;
    public int rank_;

    public enum ItemCase implements M {
        APPLICATION(1),
        TASK(2),
        SHORTCUT(3),
        WIDGET(4),
        FOLDER_ICON(9),
        ITEM_NOT_SET(0);

        public final int value;

        ItemCase(int i) {
            this.value = i;
        }

        @Override // c.b.b.M
        public int getNumber() {
            return this.value;
        }
    }

    static {
        LauncherAtom$ItemInfo launcherAtom$ItemInfo = new LauncherAtom$ItemInfo();
        DEFAULT_INSTANCE = launcherAtom$ItemInfo;
        K.defaultInstanceMap.put(LauncherAtom$ItemInfo.class, launcherAtom$ItemInfo);
    }

    public static void access$1100(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$Shortcut.Builder builder) {
        Objects.requireNonNull(launcherAtom$ItemInfo);
        launcherAtom$ItemInfo.item_ = builder.build();
        launcherAtom$ItemInfo.itemCase_ = 3;
    }

    public static void access$1500(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$Widget.Builder builder) {
        Objects.requireNonNull(launcherAtom$ItemInfo);
        launcherAtom$ItemInfo.item_ = builder.build();
        launcherAtom$ItemInfo.itemCase_ = 4;
    }

    public static void access$1900(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$FolderIcon.Builder builder) {
        Objects.requireNonNull(launcherAtom$ItemInfo);
        launcherAtom$ItemInfo.item_ = builder.build();
        launcherAtom$ItemInfo.itemCase_ = 9;
    }

    public static void access$2600(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$ContainerInfo launcherAtom$ContainerInfo) {
        if (launcherAtom$ContainerInfo == null) {
            throw null;
        }
        launcherAtom$ItemInfo.containerInfo_ = launcherAtom$ContainerInfo;
        launcherAtom$ItemInfo.bitField0_ |= 128;
    }

    public static void access$2700(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$ContainerInfo.Builder builder) {
        Objects.requireNonNull(launcherAtom$ItemInfo);
        launcherAtom$ItemInfo.containerInfo_ = (LauncherAtom$ContainerInfo) builder.build();
        launcherAtom$ItemInfo.bitField0_ |= 128;
    }

    public static void access$300(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$Application.Builder builder) {
        Objects.requireNonNull(launcherAtom$ItemInfo);
        launcherAtom$ItemInfo.item_ = builder.build();
        launcherAtom$ItemInfo.itemCase_ = 1;
    }

    public static void access$3000(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$Attribute launcherAtom$Attribute) {
        if (launcherAtom$Attribute == null) {
            throw null;
        }
        launcherAtom$ItemInfo.bitField0_ |= 256;
        launcherAtom$ItemInfo.attribute_ = launcherAtom$Attribute.value;
    }

    public static void access$700(LauncherAtom$ItemInfo launcherAtom$ItemInfo, LauncherAtom$Task.Builder builder) {
        Objects.requireNonNull(launcherAtom$ItemInfo);
        launcherAtom$ItemInfo.item_ = builder.build();
        launcherAtom$ItemInfo.itemCase_ = 2;
    }

    @Override // c.b.b.K
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new C0491z0(DEFAULT_INSTANCE, "\u0001\t\u0001\u0001\u0001\t\t\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005\u0004\u0005\u0006\u0007\u0006\u0007\t\u0007\b\f\b\t<\u0000", new Object[]{"item_", "itemCase_", "bitField0_", LauncherAtom$Application.class, LauncherAtom$Task.class, LauncherAtom$Shortcut.class, LauncherAtom$Widget.class, "rank_", "isWork_", "containerInfo_", "attribute_", LauncherAtom$Attribute.AttributeVerifier.INSTANCE, LauncherAtom$FolderIcon.class});
            case 3:
                return new LauncherAtom$ItemInfo();
            case 4:
                return new Builder(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0483v0 interfaceC0483v0 = PARSER;
                if (interfaceC0483v0 == null) {
                    synchronized (LauncherAtom$ItemInfo.class) {
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

    public LauncherAtom$ContainerInfo getContainerInfo() {
        LauncherAtom$ContainerInfo launcherAtom$ContainerInfo = this.containerInfo_;
        return launcherAtom$ContainerInfo == null ? LauncherAtom$ContainerInfo.DEFAULT_INSTANCE : launcherAtom$ContainerInfo;
    }

    public LauncherAtom$FolderIcon getFolderIcon() {
        return this.itemCase_ == 9 ? (LauncherAtom$FolderIcon) this.item_ : LauncherAtom$FolderIcon.DEFAULT_INSTANCE;
    }

    public ItemCase getItemCase() {
        int i = this.itemCase_;
        if (i == 0) {
            return ItemCase.ITEM_NOT_SET;
        }
        if (i == 1) {
            return ItemCase.APPLICATION;
        }
        if (i == 2) {
            return ItemCase.TASK;
        }
        if (i == 3) {
            return ItemCase.SHORTCUT;
        }
        if (i == 4) {
            return ItemCase.WIDGET;
        }
        if (i != 9) {
            return null;
        }
        return ItemCase.FOLDER_ICON;
    }

    public LauncherAtom$Widget getWidget() {
        return this.itemCase_ == 4 ? (LauncherAtom$Widget) this.item_ : LauncherAtom$Widget.DEFAULT_INSTANCE;
    }

    public final class Builder extends F implements InterfaceC0472p0 {
        public Builder() {
            super(LauncherAtom$ItemInfo.DEFAULT_INSTANCE);
        }

        public Builder setContainerInfo(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo) {
            copyOnWrite();
            LauncherAtom$ItemInfo.access$2600((LauncherAtom$ItemInfo) this.instance, launcherAtom$ContainerInfo);
            return this;
        }

        public Builder(LauncherAtom$1 launcherAtom$1) {
            super(LauncherAtom$ItemInfo.DEFAULT_INSTANCE);
        }
    }
}
