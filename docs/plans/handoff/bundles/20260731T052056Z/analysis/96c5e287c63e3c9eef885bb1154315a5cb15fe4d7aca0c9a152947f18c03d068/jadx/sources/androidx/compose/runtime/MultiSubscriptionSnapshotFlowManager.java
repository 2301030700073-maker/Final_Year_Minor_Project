package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.unit.DpKt;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import coil3.network.HttpException;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;
import org.wikipedia.settings.BasePreferenceLoader;
import org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MultiSubscriptionSnapshotFlowManager extends BasePreferenceLoader {
    public final ArrayList pendingChanges;
    public final MutableScatterMap readObserverCache;
    public final MutableScatterMap subscriptions;
    public final MutableScatterSet toNotify;
    public final YearInReviewGeoSlideKt$$ExternalSyntheticLambda5 unregisterApplyObserver;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Add implements SubscriptionChange {
        public final SendChannel channel;
        public final Object obj;

        public Add(Object obj, SendChannel sendChannel) {
            this.obj = obj;
            this.channel = sendChannel;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RemoveScope implements SubscriptionChange {
        public final SendChannel channel;

        public RemoveScope(SendChannel sendChannel) {
            this.channel = sendChannel;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface SubscriptionChange {
    }

    public MultiSubscriptionSnapshotFlowManager() {
        super(3);
        this.subscriptions = DpKt.m699constructorimpl$default();
        this.pendingChanges = new ArrayList();
        MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
        this.toNotify = new MutableScatterSet();
        this.readObserverCache = new MutableScatterMap();
        HintHandler$$ExternalSyntheticLambda0 hintHandler$$ExternalSyntheticLambda0 = new HintHandler$$ExternalSyntheticLambda0(19, this);
        SnapshotKt.advanceGlobalSnapshot(SnapshotKt.emptyLambda);
        synchronized (SnapshotKt.lock) {
            SnapshotKt.applyObservers = CollectionsKt.plus((Collection) SnapshotKt.applyObservers, (Object) hintHandler$$ExternalSyntheticLambda0);
        }
        this.unregisterApplyObserver = new YearInReviewGeoSlideKt$$ExternalSyntheticLambda5(hintHandler$$ExternalSyntheticLambda0);
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final void clearWatchSet$runtime(SendChannel sendChannel) {
        this.pendingChanges.add(new RemoveScope(sendChannel));
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final void commitSubscriptionChanges$runtime() {
        synchronized (this.fragment) {
            try {
                ArrayList arrayList = this.pendingChanges;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    SubscriptionChange subscriptionChange = (SubscriptionChange) arrayList.get(i);
                    if (subscriptionChange instanceof Add) {
                        DpKt.m697addimpl(this.subscriptions, ((Add) subscriptionChange).obj, ((Add) subscriptionChange).channel);
                    } else {
                        if (!(subscriptionChange instanceof RemoveScope)) {
                            throw new HttpException();
                        }
                        DpKt.m706removeScopeimpl(this.subscriptions, ((RemoveScope) subscriptionChange).channel);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.pendingChanges.clear();
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final void dispose$runtime() {
        this.unregisterApplyObserver.dispose();
        this.pendingChanges.clear();
        this.readObserverCache.clear();
        synchronized (this.fragment) {
            this.subscriptions.clear();
        }
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final Function1 readObserverFor$runtime(SendChannel sendChannel) {
        MutableScatterMap mutableScatterMap = this.readObserverCache;
        Function1 function1 = (Function1) mutableScatterMap.get(sendChannel);
        if (function1 == null) {
            function1 = new NavController$$ExternalSyntheticLambda3(18, this, sendChannel);
            int findInsertIndex = mutableScatterMap.findInsertIndex(sendChannel);
            if (findInsertIndex < 0) {
                findInsertIndex = ~findInsertIndex;
            }
            Object[] objArr = mutableScatterMap.values;
            Object obj = objArr[findInsertIndex];
            mutableScatterMap.keys[findInsertIndex] = sendChannel;
            objArr[findInsertIndex] = function1;
        }
        return function1;
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final void reportSnapshotFlowCancellation$runtime(Channel channel) {
        this.readObserverCache.remove(channel);
        clearWatchSet$runtime(channel);
        commitSubscriptionChanges$runtime();
    }
}
