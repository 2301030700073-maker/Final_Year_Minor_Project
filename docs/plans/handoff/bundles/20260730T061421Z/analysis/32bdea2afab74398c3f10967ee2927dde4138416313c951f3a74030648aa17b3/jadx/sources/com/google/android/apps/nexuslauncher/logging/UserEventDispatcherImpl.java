package com.google.android.apps.nexuslauncher.logging;

import android.content.Context;
import android.content.Intent;
import android.os.Message;
import android.view.View;
import c.b.a.b.b.j.d;
import c.b.a.b.b.j.g;
import com.android.launcher3.appprediction.PredictionUiStateManager;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogExtensions$TargetExtension;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.systemui.plugins.UserEventPlugin;
import java.util.ArrayList;
import java.util.function.Consumer;

@Deprecated
/* loaded from: classes.dex */
public class UserEventDispatcherImpl extends UserEventConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final d f3298a;

    /* renamed from: b, reason: collision with root package name */
    public final PredictionUiStateManager f3299b;

    /* renamed from: c, reason: collision with root package name */
    public final g f3300c;

    public UserEventDispatcherImpl(Context context) {
        super(context);
        this.f3298a = new d(context);
        this.f3299b = (PredictionUiStateManager) PredictionUiStateManager.INSTANCE.b(context);
        this.f3300c = (g) g.f2593b.b(context);
    }

    @Override // com.google.android.apps.nexuslauncher.logging.UserEventConsumer
    public LauncherLogProto$LauncherEvent c(LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent) {
        LauncherLogProto$Target[] launcherLogProto$TargetArr = launcherLogProto$LauncherEvent.srcTarget;
        if (launcherLogProto$TargetArr.length > 0 && this.f3299b.mActiveClient == PredictionUiStateManager.Client.OVERVIEW) {
            launcherLogProto$TargetArr[0].extension = new LauncherLogExtensions$TargetExtension();
            launcherLogProto$LauncherEvent.srcTarget[0].extension.predictionType = 1;
        }
        return launcherLogProto$LauncherEvent;
    }

    public void d(View view, ItemInfo itemInfo, int i) {
        LauncherLogProto$LauncherEvent newLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(0), LoggerUtils.newItemTarget(view, this.mInstantAppResolver), LoggerUtils.newTarget(3), LoggerUtils.newTarget(3));
        LauncherLogProto$Target newItemTarget = LoggerUtils.newItemTarget(view, this.mInstantAppResolver);
        if (fillLogContainer(view, newItemTarget, UserEventDispatcher.makeTargetsList(newItemTarget))) {
            fillIntentInfo(newLauncherEvent.srcTarget[0], itemInfo.getIntent(), itemInfo.user);
        }
        newLauncherEvent.srcTarget[2].containerType = i;
        dispatchUserEvent(newLauncherEvent, itemInfo.getIntent());
    }

    @Override // com.google.android.apps.nexuslauncher.logging.UserEventConsumer, com.android.launcher3.logging.UserEventDispatcher
    public void dispatchUserEvent(final LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent, Intent intent) {
        super.dispatchUserEvent(launcherLogProto$LauncherEvent, intent);
        if (FeatureFlags.USER_EVENT_DISPATCHER.get()) {
            Message.obtain(this.f3298a.f2583b, 1, launcherLogProto$LauncherEvent).sendToTarget();
        }
        this.f3300c.f2594a.forEach(new Consumer() { // from class: c.b.a.b.b.j.c
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((UserEventPlugin) obj).onUserEvent(LauncherLogProto$LauncherEvent.this);
            }
        });
    }

    @Override // com.android.launcher3.logging.UserEventDispatcher
    public void onFillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        PredictionUiStateManager.fillInPredictedRank(itemInfo, launcherLogProto$Target);
    }
}
