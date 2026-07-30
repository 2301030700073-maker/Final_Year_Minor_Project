package com.android.launcher3.widget.custom;

import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Parcel;
import android.os.Parcelable;
import c.a.c.a.a;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.Utilities;

/* loaded from: classes.dex */
public class CustomAppWidgetProviderInfo extends LauncherAppWidgetProviderInfo implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.android.launcher3.widget.custom.CustomAppWidgetProviderInfo.1
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new CustomAppWidgetProviderInfo(parcel, true, 0);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new CustomAppWidgetProviderInfo[i];
        }
    };
    public final int providerId;

    public CustomAppWidgetProviderInfo(Parcel parcel, boolean z, int i) {
        super(parcel);
        if (!z) {
            this.providerId = i;
            return;
        }
        this.providerId = parcel.readInt();
        ((AppWidgetProviderInfo) this).provider = new ComponentName(parcel.readString(), a.c("#custom-widget-", i));
        ((AppWidgetProviderInfo) this).label = parcel.readString();
        ((AppWidgetProviderInfo) this).initialLayout = parcel.readInt();
        ((AppWidgetProviderInfo) this).icon = parcel.readInt();
        ((AppWidgetProviderInfo) this).previewImage = parcel.readInt();
        ((AppWidgetProviderInfo) this).resizeMode = parcel.readInt();
        this.spanX = parcel.readInt();
        this.spanY = parcel.readInt();
        this.minSpanX = parcel.readInt();
        this.minSpanY = parcel.readInt();
    }

    @Override // com.android.launcher3.LauncherAppWidgetProviderInfo, com.android.launcher3.icons.ComponentWithLabel
    public CharSequence getLabel(PackageManager packageManager) {
        return Utilities.trim(((AppWidgetProviderInfo) this).label);
    }

    @Override // com.android.launcher3.LauncherAppWidgetProviderInfo
    public void initSpans(Context context) {
    }

    @Override // android.appwidget.AppWidgetProviderInfo
    public String toString() {
        StringBuilder f = a.f("WidgetProviderInfo(");
        f.append(((AppWidgetProviderInfo) this).provider);
        f.append(")");
        return f.toString();
    }

    @Override // android.appwidget.AppWidgetProviderInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.providerId);
        parcel.writeString(((AppWidgetProviderInfo) this).provider.getPackageName());
        parcel.writeString(((AppWidgetProviderInfo) this).label);
        parcel.writeInt(((AppWidgetProviderInfo) this).initialLayout);
        parcel.writeInt(((AppWidgetProviderInfo) this).icon);
        parcel.writeInt(((AppWidgetProviderInfo) this).previewImage);
        parcel.writeInt(((AppWidgetProviderInfo) this).resizeMode);
        parcel.writeInt(this.spanX);
        parcel.writeInt(this.spanY);
        parcel.writeInt(this.minSpanX);
        parcel.writeInt(this.minSpanY);
    }

    @Override // com.android.launcher3.LauncherAppWidgetProviderInfo, com.android.launcher3.icons.ComponentWithLabel
    public String getLabel(PackageManager packageManager) {
        return Utilities.trim(((AppWidgetProviderInfo) this).label);
    }
}
