package com.android.launcher3.dragndrop;

import android.annotation.TargetApi;
import android.content.pm.LauncherApps;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.view.DragEvent;
import android.view.View;
import android.widget.RemoteViews;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.launcher3.widget.PendingItemDragHelper;
import com.android.launcher3.widget.WidgetAddFlowHandler;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.ArrayList;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class PinItemDragListener extends BaseItemDragListener {
    public final CancellationSignal mCancelSignal;
    public final LauncherApps.PinItemRequest mRequest;

    public PinItemDragListener(LauncherApps.PinItemRequest pinItemRequest, Rect rect, int i, int i2) {
        super(rect, i, i2);
        this.mRequest = pinItemRequest;
        this.mCancelSignal = new CancellationSignal();
    }

    public static RemoteViews getPreview(LauncherApps.PinItemRequest pinItemRequest) {
        Bundle extras = pinItemRequest.getExtras();
        if (extras == null || !(extras.get("appWidgetPreview") instanceof RemoteViews)) {
            return null;
        }
        return (RemoteViews) extras.get("appWidgetPreview");
    }

    @Override // com.android.launcher3.dragndrop.BaseItemDragListener
    public PendingItemDragHelper createDragHelper() {
        Object obj;
        if (this.mRequest.getRequestType() == 1) {
            obj = new PendingAddShortcutInfo(new PinShortcutRequestActivityInfo(this.mRequest, this.mLauncher));
        } else {
            Launcher launcher = this.mLauncher;
            LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(launcher, this.mRequest.getAppWidgetProviderInfo(launcher));
            final PinWidgetFlowHandler pinWidgetFlowHandler = new PinWidgetFlowHandler(fromProviderInfo, this.mRequest);
            obj = new PendingAddWidgetInfo(this, fromProviderInfo) { // from class: com.android.launcher3.dragndrop.PinItemDragListener.1
                @Override // com.android.launcher3.widget.PendingAddWidgetInfo
                public WidgetAddFlowHandler getHandler() {
                    return pinWidgetFlowHandler;
                }
            };
        }
        View view = new View(this.mLauncher);
        view.setTag(obj);
        PendingItemDragHelper pendingItemDragHelper = new PendingItemDragHelper(view);
        if (this.mRequest.getRequestType() == 2) {
            pendingItemDragHelper.mPreview = getPreview(this.mRequest);
        }
        return pendingItemDragHelper;
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        arrayList.add(LoggerUtils.newContainerTarget(10));
    }

    @Override // com.android.launcher3.dragndrop.BaseItemDragListener, com.android.launcher3.util.ActivityTracker.SchedulerCallback
    public /* bridge */ /* synthetic */ boolean init(BaseActivity baseActivity, boolean z) {
        init((Launcher) baseActivity, z);
        return false;
    }

    @Override // com.android.launcher3.dragndrop.BaseItemDragListener
    public boolean onDragStart(DragEvent dragEvent) {
        if (this.mRequest.isValid()) {
            return onDragStart(dragEvent, this);
        }
        return false;
    }

    @Override // com.android.launcher3.dragndrop.BaseItemDragListener
    public void postCleanup() {
        super.postCleanup();
        this.mCancelSignal.cancel();
    }

    @Override // com.android.launcher3.dragndrop.BaseItemDragListener
    public boolean init(Launcher launcher, boolean z) {
        super.init(launcher, z);
        if (z) {
            return false;
        }
        launcher.useFadeOutAnimationForLauncherStart(this.mCancelSignal);
        return false;
    }
}
