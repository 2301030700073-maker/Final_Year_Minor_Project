package com.android.launcher3.widget;

import android.appwidget.AppWidgetProviderInfo;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.launcher3.Launcher;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.PendingRequestArgs;

/* loaded from: classes.dex */
public class WidgetAddFlowHandler implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.android.launcher3.widget.WidgetAddFlowHandler.1
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new WidgetAddFlowHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new WidgetAddFlowHandler[i];
        }
    };
    public final AppWidgetProviderInfo mProviderInfo;

    public WidgetAddFlowHandler(AppWidgetProviderInfo appWidgetProviderInfo) {
        this.mProviderInfo = appWidgetProviderInfo;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean needsConfigure() {
        return this.mProviderInfo.configure != null;
    }

    public boolean startConfigActivity(Launcher launcher, int i, ItemInfo itemInfo, int i2) {
        if (!needsConfigure()) {
            return false;
        }
        PendingRequestArgs pendingRequestArgs = new PendingRequestArgs(i, 2, this);
        pendingRequestArgs.copyFrom(itemInfo);
        launcher.mPendingRequestArgs = pendingRequestArgs;
        launcher.mAppWidgetHost.startConfigActivity(launcher, i, i2);
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        this.mProviderInfo.writeToParcel(parcel, i);
    }

    public WidgetAddFlowHandler(Parcel parcel) {
        this.mProviderInfo = (AppWidgetProviderInfo) AppWidgetProviderInfo.CREATOR.createFromParcel(parcel);
    }
}
