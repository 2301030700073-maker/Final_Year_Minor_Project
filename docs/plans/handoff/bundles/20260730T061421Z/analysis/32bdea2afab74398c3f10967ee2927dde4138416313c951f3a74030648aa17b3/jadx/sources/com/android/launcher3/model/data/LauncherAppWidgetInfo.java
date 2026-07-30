package com.android.launcher3.model.data;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Process;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logger.LauncherAtom$Widget;
import com.android.launcher3.util.ContentWriter;

/* loaded from: classes.dex */
public class LauncherAppWidgetInfo extends ItemInfo {
    public int appWidgetId;
    public Intent bindOptions;
    public int installProgress;
    public boolean mHasNotifiedInitialWidgetSizeChanged;
    public int options;
    public PackageItemInfo pendingItemInfo;
    public ComponentName providerName;
    public int restoreStatus;

    public LauncherAppWidgetInfo(int i, ComponentName componentName) {
        this.appWidgetId = -1;
        this.installProgress = -1;
        this.appWidgetId = i;
        this.providerName = componentName;
        if (i <= -100) {
            this.itemType = 5;
        } else {
            this.itemType = 4;
        }
        this.spanX = -1;
        this.spanY = -1;
        this.user = Process.myUserHandle();
        this.restoreStatus = 0;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public String dumpProperties() {
        return super.dumpProperties() + " providerName=" + this.providerName + " appWidgetId=" + this.appWidgetId;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public ComponentName getTargetComponent() {
        return this.providerName;
    }

    public final boolean hasRestoreFlag(int i) {
        return (this.restoreStatus & i) == i;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public void onAddToDatabase(ContentWriter contentWriter) {
        super.onAddToDatabase(contentWriter);
        contentWriter.mValues.put("appWidgetId", Integer.valueOf(this.appWidgetId));
        contentWriter.mValues.put("appWidgetProvider", this.providerName.flattenToString());
        contentWriter.mValues.put("restored", Integer.valueOf(this.restoreStatus));
        contentWriter.mValues.put("options", Integer.valueOf(this.options));
        Intent intent = this.bindOptions;
        contentWriter.mValues.put("intent", intent == null ? null : intent.toUri(0));
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public void setItemBuilder(LauncherAtom$ItemInfo.Builder builder) {
        LauncherAtom$Widget.Builder newBuilder = LauncherAtom$Widget.newBuilder();
        int i = this.spanX;
        newBuilder.copyOnWrite();
        LauncherAtom$Widget launcherAtom$Widget = (LauncherAtom$Widget) newBuilder.instance;
        launcherAtom$Widget.bitField0_ |= 1;
        launcherAtom$Widget.spanX_ = i;
        int i2 = this.spanY;
        newBuilder.copyOnWrite();
        LauncherAtom$Widget launcherAtom$Widget2 = (LauncherAtom$Widget) newBuilder.instance;
        launcherAtom$Widget2.bitField0_ |= 2;
        launcherAtom$Widget2.spanY_ = i2;
        String componentName = this.providerName.toString();
        newBuilder.copyOnWrite();
        LauncherAtom$Widget.access$12800((LauncherAtom$Widget) newBuilder.instance, componentName);
        String packageName = this.providerName.getPackageName();
        newBuilder.copyOnWrite();
        LauncherAtom$Widget.access$12500((LauncherAtom$Widget) newBuilder.instance, packageName);
        builder.copyOnWrite();
        LauncherAtom$ItemInfo.access$1500((LauncherAtom$ItemInfo) builder.instance, newBuilder);
    }

    public LauncherAppWidgetInfo() {
        this.appWidgetId = -1;
        this.installProgress = -1;
        this.itemType = 4;
    }
}
