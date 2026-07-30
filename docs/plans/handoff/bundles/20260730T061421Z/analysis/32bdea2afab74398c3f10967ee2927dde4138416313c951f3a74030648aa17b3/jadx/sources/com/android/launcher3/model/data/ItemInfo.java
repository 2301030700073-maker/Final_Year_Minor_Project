package com.android.launcher3.model.data;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Intent;
import android.os.Process;
import android.os.UserHandle;
import c.a.c.a.a;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.logger.LauncherAtom$AllAppsContainer;
import com.android.launcher3.logger.LauncherAtom$Application;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$FolderContainer;
import com.android.launcher3.logger.LauncherAtom$HotseatContainer;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logger.LauncherAtom$PredictedHotseatContainer;
import com.android.launcher3.logger.LauncherAtom$PredictionContainer;
import com.android.launcher3.logger.LauncherAtom$SearchResultContainer;
import com.android.launcher3.logger.LauncherAtom$SettingsContainer;
import com.android.launcher3.logger.LauncherAtom$Shortcut;
import com.android.launcher3.logger.LauncherAtom$ShortcutsContainer;
import com.android.launcher3.logger.LauncherAtom$Task;
import com.android.launcher3.logger.LauncherAtom$TaskSwitcherContainer;
import com.android.launcher3.logger.LauncherAtom$Widget;
import com.android.launcher3.logger.LauncherAtom$WidgetsContainer;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.ContentWriter;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Function;

/* loaded from: classes.dex */
public class ItemInfo {
    public static final boolean DEBUG = true;
    public static final int NO_ID = -1;
    public int cellX;
    public int cellY;
    public int container;
    public CharSequence contentDescription;
    public int id;
    public int itemType;
    public ComponentName mComponentName;
    public int minSpanX;
    public int minSpanY;
    public int rank;
    public int screenId;
    public int spanX;
    public int spanY;
    public CharSequence title;
    public UserHandle user;

    public ItemInfo() {
        this.id = -1;
        this.container = -1;
        this.screenId = -1;
        this.cellX = -1;
        this.cellY = -1;
        this.spanX = 1;
        this.spanY = 1;
        this.minSpanX = 1;
        this.minSpanY = 1;
        this.rank = 0;
        this.user = Process.myUserHandle();
    }

    public LauncherAtom$ItemInfo buildProto() {
        return buildProto(null);
    }

    public void copyFrom(ItemInfo itemInfo) {
        this.id = itemInfo.id;
        this.cellX = itemInfo.cellX;
        this.cellY = itemInfo.cellY;
        this.spanX = itemInfo.spanX;
        this.spanY = itemInfo.spanY;
        this.rank = itemInfo.rank;
        this.screenId = itemInfo.screenId;
        this.itemType = itemInfo.itemType;
        this.container = itemInfo.container;
        this.user = itemInfo.user;
        this.contentDescription = itemInfo.contentDescription;
        this.mComponentName = itemInfo.getTargetComponent();
    }

    public String dumpProperties() {
        StringBuilder f = a.f("id=");
        f.append(this.id);
        f.append(" type=");
        f.append(LauncherSettings$Favorites.itemTypeToString(this.itemType));
        f.append(" container=");
        f.append(LauncherSettings$Favorites.containerToString(this.container));
        f.append(" targetComponent=");
        f.append(getTargetComponent());
        f.append(" screen=");
        f.append(this.screenId);
        f.append(" cell(");
        f.append(this.cellX);
        f.append(",");
        f.append(this.cellY);
        f.append(") span(");
        f.append(this.spanX);
        f.append(",");
        f.append(this.spanY);
        f.append(") minSpan(");
        f.append(this.minSpanX);
        f.append(",");
        f.append(this.minSpanY);
        f.append(") rank=");
        f.append(this.rank);
        f.append(" user=");
        f.append(this.user);
        f.append(" title=");
        f.append((Object) this.title);
        return f.toString();
    }

    public LauncherAtom$ContainerInfo getContainerInfo() {
        switch (this.container) {
            case -109:
                LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$TaskSwitcherContainer launcherAtom$TaskSwitcherContainer = LauncherAtom$TaskSwitcherContainer.DEFAULT_INSTANCE;
                newBuilder.copyOnWrite();
                LauncherAtom$ContainerInfo.access$7500((LauncherAtom$ContainerInfo) newBuilder.instance, launcherAtom$TaskSwitcherContainer);
                return (LauncherAtom$ContainerInfo) newBuilder.build();
            case -108:
                LauncherAtom$ContainerInfo.Builder newBuilder2 = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$SettingsContainer launcherAtom$SettingsContainer = LauncherAtom$SettingsContainer.DEFAULT_INSTANCE;
                newBuilder2.copyOnWrite();
                LauncherAtom$ContainerInfo.access$6700((LauncherAtom$ContainerInfo) newBuilder2.instance, launcherAtom$SettingsContainer);
                return (LauncherAtom$ContainerInfo) newBuilder2.build();
            case -107:
                LauncherAtom$ContainerInfo.Builder newBuilder3 = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$ShortcutsContainer launcherAtom$ShortcutsContainer = LauncherAtom$ShortcutsContainer.DEFAULT_INSTANCE;
                newBuilder3.copyOnWrite();
                LauncherAtom$ContainerInfo.access$6300((LauncherAtom$ContainerInfo) newBuilder3.instance, launcherAtom$ShortcutsContainer);
                return (LauncherAtom$ContainerInfo) newBuilder3.build();
            case -106:
                LauncherAtom$ContainerInfo.Builder newBuilder4 = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$SearchResultContainer launcherAtom$SearchResultContainer = LauncherAtom$SearchResultContainer.DEFAULT_INSTANCE;
                newBuilder4.copyOnWrite();
                LauncherAtom$ContainerInfo.access$5900((LauncherAtom$ContainerInfo) newBuilder4.instance, launcherAtom$SearchResultContainer);
                return (LauncherAtom$ContainerInfo) newBuilder4.build();
            case -105:
                LauncherAtom$ContainerInfo.Builder newBuilder5 = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$WidgetsContainer launcherAtom$WidgetsContainer = LauncherAtom$WidgetsContainer.DEFAULT_INSTANCE;
                newBuilder5.copyOnWrite();
                LauncherAtom$ContainerInfo.access$5100((LauncherAtom$ContainerInfo) newBuilder5.instance, launcherAtom$WidgetsContainer);
                return (LauncherAtom$ContainerInfo) newBuilder5.build();
            case -104:
                LauncherAtom$ContainerInfo.Builder newBuilder6 = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$AllAppsContainer launcherAtom$AllAppsContainer = LauncherAtom$AllAppsContainer.DEFAULT_INSTANCE;
                newBuilder6.copyOnWrite();
                LauncherAtom$ContainerInfo.access$4700((LauncherAtom$ContainerInfo) newBuilder6.instance, launcherAtom$AllAppsContainer);
                return (LauncherAtom$ContainerInfo) newBuilder6.build();
            case -103:
                LauncherAtom$ContainerInfo.Builder newBuilder7 = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$PredictedHotseatContainer.Builder builder = (LauncherAtom$PredictedHotseatContainer.Builder) LauncherAtom$PredictedHotseatContainer.DEFAULT_INSTANCE.createBuilder();
                int i = this.screenId;
                builder.copyOnWrite();
                LauncherAtom$PredictedHotseatContainer launcherAtom$PredictedHotseatContainer = (LauncherAtom$PredictedHotseatContainer) builder.instance;
                launcherAtom$PredictedHotseatContainer.bitField0_ |= 1;
                launcherAtom$PredictedHotseatContainer.index_ = i;
                newBuilder7.copyOnWrite();
                LauncherAtom$ContainerInfo.access$7200((LauncherAtom$ContainerInfo) newBuilder7.instance, builder);
                return (LauncherAtom$ContainerInfo) newBuilder7.build();
            case -102:
                LauncherAtom$ContainerInfo.Builder newBuilder8 = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$PredictionContainer launcherAtom$PredictionContainer = LauncherAtom$PredictionContainer.DEFAULT_INSTANCE;
                newBuilder8.copyOnWrite();
                LauncherAtom$ContainerInfo.access$5500((LauncherAtom$ContainerInfo) newBuilder8.instance, launcherAtom$PredictionContainer);
                return (LauncherAtom$ContainerInfo) newBuilder8.build();
            case -101:
                LauncherAtom$ContainerInfo.Builder newBuilder9 = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$HotseatContainer.Builder builder2 = (LauncherAtom$HotseatContainer.Builder) LauncherAtom$HotseatContainer.DEFAULT_INSTANCE.createBuilder();
                int i2 = this.screenId;
                builder2.copyOnWrite();
                LauncherAtom$HotseatContainer launcherAtom$HotseatContainer = (LauncherAtom$HotseatContainer) builder2.instance;
                launcherAtom$HotseatContainer.bitField0_ |= 1;
                launcherAtom$HotseatContainer.index_ = i2;
                newBuilder9.copyOnWrite();
                LauncherAtom$ContainerInfo.access$4000((LauncherAtom$ContainerInfo) newBuilder9.instance, builder2);
                return (LauncherAtom$ContainerInfo) newBuilder9.build();
            case -100:
                LauncherAtom$ContainerInfo.Builder newBuilder10 = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$WorkspaceContainer.Builder newBuilder11 = LauncherAtom$WorkspaceContainer.newBuilder();
                int i3 = this.cellX;
                newBuilder11.copyOnWrite();
                LauncherAtom$WorkspaceContainer launcherAtom$WorkspaceContainer = (LauncherAtom$WorkspaceContainer) newBuilder11.instance;
                launcherAtom$WorkspaceContainer.bitField0_ |= 2;
                launcherAtom$WorkspaceContainer.gridX_ = i3;
                int i4 = this.cellY;
                newBuilder11.copyOnWrite();
                LauncherAtom$WorkspaceContainer launcherAtom$WorkspaceContainer2 = (LauncherAtom$WorkspaceContainer) newBuilder11.instance;
                launcherAtom$WorkspaceContainer2.bitField0_ |= 4;
                launcherAtom$WorkspaceContainer2.gridY_ = i4;
                newBuilder11.setPageIndex(this.screenId);
                newBuilder10.copyOnWrite();
                LauncherAtom$ContainerInfo.access$3600((LauncherAtom$ContainerInfo) newBuilder10.instance, newBuilder11);
                return (LauncherAtom$ContainerInfo) newBuilder10.build();
            default:
                return LauncherAtom$ContainerInfo.DEFAULT_INSTANCE;
        }
    }

    public LauncherAtom$ItemInfo.Builder getDefaultItemInfoBuilder() {
        LauncherAtom$ItemInfo.Builder builder = (LauncherAtom$ItemInfo.Builder) LauncherAtom$ItemInfo.DEFAULT_INSTANCE.createBuilder();
        boolean z = this.user != Process.myUserHandle();
        builder.copyOnWrite();
        LauncherAtom$ItemInfo launcherAtom$ItemInfo = (LauncherAtom$ItemInfo) builder.instance;
        launcherAtom$ItemInfo.bitField0_ |= 64;
        launcherAtom$ItemInfo.isWork_ = z;
        return builder;
    }

    public Intent getIntent() {
        return null;
    }

    public ComponentName getTargetComponent() {
        return (ComponentName) Optional.ofNullable(getIntent()).map(new Function() { // from class: c.a.a.N0.h0.g
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Intent) obj).getComponent();
            }
        }).orElse(this.mComponentName);
    }

    public int getViewId() {
        return this.id;
    }

    public boolean isDisabled() {
        return false;
    }

    public boolean isPredictedItem() {
        int i = this.container;
        return i == -103 || i == -102;
    }

    public ItemInfo makeShallowCopy() {
        ItemInfo itemInfo = new ItemInfo();
        itemInfo.copyFrom(this);
        return itemInfo;
    }

    public void onAddToDatabase(ContentWriter contentWriter) {
        if (this.screenId == -201) {
            throw new RuntimeException("Screen id should not be EXTRA_EMPTY_SCREEN_ID");
        }
        writeToValues(contentWriter);
        UserHandle userHandle = this.user;
        Objects.requireNonNull(contentWriter);
        contentWriter.mValues.put("profileId", Long.valueOf(((UserCache) UserCache.INSTANCE.b(contentWriter.mContext)).getSerialNumberForUser(userHandle)));
    }

    public void readFromValues(ContentValues contentValues) {
        this.itemType = contentValues.getAsInteger("itemType").intValue();
        this.container = contentValues.getAsInteger("container").intValue();
        this.screenId = contentValues.getAsInteger("screen").intValue();
        this.cellX = contentValues.getAsInteger("cellX").intValue();
        this.cellY = contentValues.getAsInteger("cellY").intValue();
        this.spanX = contentValues.getAsInteger("spanX").intValue();
        this.spanY = contentValues.getAsInteger("spanY").intValue();
        this.rank = contentValues.getAsInteger("rank").intValue();
    }

    public void setItemBuilder(LauncherAtom$ItemInfo.Builder builder) {
    }

    public void setTitle(CharSequence charSequence, ModelWriter modelWriter) {
        this.title = charSequence;
    }

    public final String toString() {
        return getClass().getSimpleName() + "(" + dumpProperties() + ")";
    }

    public void writeToValues(ContentWriter contentWriter) {
        contentWriter.mValues.put("itemType", Integer.valueOf(this.itemType));
        contentWriter.mValues.put("container", Integer.valueOf(this.container));
        contentWriter.mValues.put("screen", Integer.valueOf(this.screenId));
        contentWriter.mValues.put("cellX", Integer.valueOf(this.cellX));
        contentWriter.mValues.put("cellY", Integer.valueOf(this.cellY));
        contentWriter.mValues.put("spanX", Integer.valueOf(this.spanX));
        contentWriter.mValues.put("spanY", Integer.valueOf(this.spanY));
        contentWriter.mValues.put("rank", Integer.valueOf(this.rank));
    }

    public LauncherAtom$ItemInfo buildProto(FolderInfo folderInfo) {
        LauncherAtom$ItemInfo.Builder defaultItemInfoBuilder = getDefaultItemInfoBuilder();
        Optional ofNullable = Optional.ofNullable(getTargetComponent());
        int i = this.itemType;
        if (i != 0) {
            if (i != 1) {
                if (i == 4) {
                    LauncherAtom$Widget.Builder builder = (LauncherAtom$Widget.Builder) ofNullable.map(new Function() { // from class: c.a.a.N0.h0.f
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            ComponentName componentName = (ComponentName) obj;
                            LauncherAtom$Widget.Builder newBuilder = LauncherAtom$Widget.newBuilder();
                            String flattenToShortString = componentName.flattenToShortString();
                            newBuilder.copyOnWrite();
                            LauncherAtom$Widget.access$12800((LauncherAtom$Widget) newBuilder.instance, flattenToShortString);
                            String packageName = componentName.getPackageName();
                            newBuilder.copyOnWrite();
                            LauncherAtom$Widget.access$12500((LauncherAtom$Widget) newBuilder.instance, packageName);
                            return newBuilder;
                        }
                    }).orElse(LauncherAtom$Widget.newBuilder());
                    int i2 = this.spanX;
                    builder.copyOnWrite();
                    LauncherAtom$Widget launcherAtom$Widget = (LauncherAtom$Widget) builder.instance;
                    launcherAtom$Widget.bitField0_ |= 1;
                    launcherAtom$Widget.spanX_ = i2;
                    int i3 = this.spanY;
                    builder.copyOnWrite();
                    LauncherAtom$Widget launcherAtom$Widget2 = (LauncherAtom$Widget) builder.instance;
                    launcherAtom$Widget2.bitField0_ |= 2;
                    launcherAtom$Widget2.spanY_ = i3;
                    defaultItemInfoBuilder.copyOnWrite();
                    LauncherAtom$ItemInfo.access$1500((LauncherAtom$ItemInfo) defaultItemInfoBuilder.instance, builder);
                } else if (i != 6) {
                    if (i == 7) {
                        LauncherAtom$Task.Builder builder2 = (LauncherAtom$Task.Builder) LauncherAtom$Task.DEFAULT_INSTANCE.createBuilder();
                        String flattenToShortString = getTargetComponent().flattenToShortString();
                        builder2.copyOnWrite();
                        LauncherAtom$Task.access$13600((LauncherAtom$Task) builder2.instance, flattenToShortString);
                        int i4 = this.screenId;
                        builder2.copyOnWrite();
                        LauncherAtom$Task launcherAtom$Task = (LauncherAtom$Task) builder2.instance;
                        launcherAtom$Task.bitField0_ |= 4;
                        launcherAtom$Task.index_ = i4;
                        defaultItemInfoBuilder.copyOnWrite();
                        LauncherAtom$ItemInfo.access$700((LauncherAtom$ItemInfo) defaultItemInfoBuilder.instance, builder2);
                    }
                }
            }
            LauncherAtom$Shortcut.Builder builder3 = (LauncherAtom$Shortcut.Builder) ofNullable.map(new Function() { // from class: c.a.a.N0.h0.d
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    LauncherAtom$Shortcut.Builder builder4 = (LauncherAtom$Shortcut.Builder) LauncherAtom$Shortcut.DEFAULT_INSTANCE.createBuilder();
                    String flattenToShortString2 = ((ComponentName) obj).flattenToShortString();
                    builder4.copyOnWrite();
                    LauncherAtom$Shortcut.access$11400((LauncherAtom$Shortcut) builder4.instance, flattenToShortString2);
                    return builder4;
                }
            }).orElse((LauncherAtom$Shortcut.Builder) LauncherAtom$Shortcut.DEFAULT_INSTANCE.createBuilder());
            defaultItemInfoBuilder.copyOnWrite();
            LauncherAtom$ItemInfo.access$1100((LauncherAtom$ItemInfo) defaultItemInfoBuilder.instance, builder3);
        } else {
            LauncherAtom$Application.Builder builder4 = (LauncherAtom$Application.Builder) ofNullable.map(new Function() { // from class: c.a.a.N0.h0.e
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    ComponentName componentName = (ComponentName) obj;
                    LauncherAtom$Application.Builder builder5 = (LauncherAtom$Application.Builder) LauncherAtom$Application.DEFAULT_INSTANCE.createBuilder();
                    String flattenToShortString2 = componentName.flattenToShortString();
                    builder5.copyOnWrite();
                    LauncherAtom$Application.access$10900((LauncherAtom$Application) builder5.instance, flattenToShortString2);
                    String packageName = componentName.getPackageName();
                    builder5.copyOnWrite();
                    LauncherAtom$Application.access$10600((LauncherAtom$Application) builder5.instance, packageName);
                    return builder5;
                }
            }).orElse((LauncherAtom$Application.Builder) LauncherAtom$Application.DEFAULT_INSTANCE.createBuilder());
            defaultItemInfoBuilder.copyOnWrite();
            LauncherAtom$ItemInfo.access$300((LauncherAtom$ItemInfo) defaultItemInfoBuilder.instance, builder4);
        }
        if (folderInfo != null) {
            LauncherAtom$FolderContainer.Builder builder5 = (LauncherAtom$FolderContainer.Builder) LauncherAtom$FolderContainer.DEFAULT_INSTANCE.createBuilder();
            int i5 = this.cellX;
            builder5.copyOnWrite();
            LauncherAtom$FolderContainer launcherAtom$FolderContainer = (LauncherAtom$FolderContainer) builder5.instance;
            launcherAtom$FolderContainer.bitField0_ |= 2;
            launcherAtom$FolderContainer.gridX_ = i5;
            int i6 = this.cellY;
            builder5.copyOnWrite();
            LauncherAtom$FolderContainer launcherAtom$FolderContainer2 = (LauncherAtom$FolderContainer) builder5.instance;
            launcherAtom$FolderContainer2.bitField0_ |= 4;
            launcherAtom$FolderContainer2.gridY_ = i6;
            int i7 = this.screenId;
            builder5.copyOnWrite();
            LauncherAtom$FolderContainer launcherAtom$FolderContainer3 = (LauncherAtom$FolderContainer) builder5.instance;
            launcherAtom$FolderContainer3.bitField0_ |= 1;
            launcherAtom$FolderContainer3.pageIndex_ = i7;
            int i8 = folderInfo.container;
            if (i8 == -103 || i8 == -101) {
                LauncherAtom$HotseatContainer.Builder builder6 = (LauncherAtom$HotseatContainer.Builder) LauncherAtom$HotseatContainer.DEFAULT_INSTANCE.createBuilder();
                int i9 = folderInfo.screenId;
                builder6.copyOnWrite();
                LauncherAtom$HotseatContainer launcherAtom$HotseatContainer = (LauncherAtom$HotseatContainer) builder6.instance;
                launcherAtom$HotseatContainer.bitField0_ |= 1;
                launcherAtom$HotseatContainer.index_ = i9;
                builder5.copyOnWrite();
                LauncherAtom$FolderContainer.access$18400((LauncherAtom$FolderContainer) builder5.instance, builder6);
            } else if (i8 == -100) {
                LauncherAtom$WorkspaceContainer.Builder newBuilder = LauncherAtom$WorkspaceContainer.newBuilder();
                newBuilder.setPageIndex(folderInfo.screenId);
                int i10 = folderInfo.cellX;
                newBuilder.copyOnWrite();
                LauncherAtom$WorkspaceContainer launcherAtom$WorkspaceContainer = (LauncherAtom$WorkspaceContainer) newBuilder.instance;
                launcherAtom$WorkspaceContainer.bitField0_ |= 2;
                launcherAtom$WorkspaceContainer.gridX_ = i10;
                int i11 = folderInfo.cellY;
                newBuilder.copyOnWrite();
                LauncherAtom$WorkspaceContainer launcherAtom$WorkspaceContainer2 = (LauncherAtom$WorkspaceContainer) newBuilder.instance;
                launcherAtom$WorkspaceContainer2.bitField0_ = 4 | launcherAtom$WorkspaceContainer2.bitField0_;
                launcherAtom$WorkspaceContainer2.gridY_ = i11;
                builder5.copyOnWrite();
                LauncherAtom$FolderContainer.access$18000((LauncherAtom$FolderContainer) builder5.instance, newBuilder);
            }
            LauncherAtom$ContainerInfo.Builder newBuilder2 = LauncherAtom$ContainerInfo.newBuilder();
            newBuilder2.copyOnWrite();
            LauncherAtom$ContainerInfo.access$4400((LauncherAtom$ContainerInfo) newBuilder2.instance, builder5);
            defaultItemInfoBuilder.copyOnWrite();
            LauncherAtom$ItemInfo.access$2700((LauncherAtom$ItemInfo) defaultItemInfoBuilder.instance, newBuilder2);
        } else {
            LauncherAtom$ContainerInfo containerInfo = getContainerInfo();
            if (!containerInfo.getContainerCase().equals(LauncherAtom$ContainerInfo.ContainerCase.CONTAINER_NOT_SET)) {
                defaultItemInfoBuilder.copyOnWrite();
                LauncherAtom$ItemInfo.access$2600((LauncherAtom$ItemInfo) defaultItemInfoBuilder.instance, containerInfo);
            }
        }
        return (LauncherAtom$ItemInfo) defaultItemInfoBuilder.build();
    }

    public ItemInfo(ItemInfo itemInfo) {
        this.id = -1;
        this.container = -1;
        this.screenId = -1;
        this.cellX = -1;
        this.cellY = -1;
        this.spanX = 1;
        this.spanY = 1;
        this.minSpanX = 1;
        this.minSpanY = 1;
        this.rank = 0;
        copyFrom(itemInfo);
    }
}
