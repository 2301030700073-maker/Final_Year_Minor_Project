package org.schabi.newpipe.util;

import android.content.Context;
import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.util.ListenerSet;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.local.subscription.SubscriptionManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SparseItemUtil$$ExternalSyntheticLambda3 implements ListenerSet.Event, Action, Consumer {
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ SparseItemUtil$$ExternalSyntheticLambda3(Object obj, Object obj2, int i) {
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = i;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        Context context = (Context) this.f$0;
        String str = (String) this.f$1;
        ErrorUtil.createNotification(context, new ErrorInfo((Throwable) obj, UserAction.REQUESTED_STREAM, Owner.CC.m("Loading stream info: ", str), Integer.valueOf(this.f$2), str));
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onMediaItemTransition((AnalyticsListener.EventTime) this.f$0, (MediaItem) this.f$1, this.f$2);
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        SubscriptionEntity subscriptionEntity = (SubscriptionEntity) this.f$0;
        SubscriptionManager subscriptionManager = (SubscriptionManager) this.f$1;
        subscriptionEntity.notificationMode = this.f$2;
        subscriptionManager.subscriptionTable.update(subscriptionEntity);
    }

    public /* synthetic */ SparseItemUtil$$ExternalSyntheticLambda3(SubscriptionEntity subscriptionEntity, int i, SubscriptionManager subscriptionManager) {
        this.f$0 = subscriptionEntity;
        this.f$2 = i;
        this.f$1 = subscriptionManager;
    }
}
