package com.android.launcher3.dragndrop;

import android.annotation.TargetApi;
import android.appwidget.AppWidgetProviderInfo;
import android.content.pm.LauncherApps;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.launcher3.Launcher;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.widget.WidgetAddFlowHandler;
import com.android.systemui.shared.recents.ISystemUiProxy;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class PinWidgetFlowHandler extends WidgetAddFlowHandler implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.android.launcher3.dragndrop.PinWidgetFlowHandler.1
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new PinWidgetFlowHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new PinWidgetFlowHandler[i];
        }
    };
    public final LauncherApps.PinItemRequest mRequest;

    public PinWidgetFlowHandler(AppWidgetProviderInfo appWidgetProviderInfo, LauncherApps.PinItemRequest pinItemRequest) {
        super(appWidgetProviderInfo);
        this.mRequest = pinItemRequest;
    }

    @Override // com.android.launcher3.widget.WidgetAddFlowHandler
    public boolean needsConfigure() {
        return false;
    }

    @Override // com.android.launcher3.widget.WidgetAddFlowHandler
    public boolean startConfigActivity(Launcher launcher, int i, ItemInfo itemInfo, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("appWidgetId", i);
        this.mRequest.accept(bundle);
        return false;
    }

    @Override // com.android.launcher3.widget.WidgetAddFlowHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        this.mProviderInfo.writeToParcel(parcel, i);
        this.mRequest.writeToParcel(parcel, i);
    }

    public PinWidgetFlowHandler(Parcel parcel) {
        super(parcel);
        this.mRequest = (LauncherApps.PinItemRequest) LauncherApps.PinItemRequest.CREATOR.createFromParcel(parcel);
    }
}
