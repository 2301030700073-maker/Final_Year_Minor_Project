package androidx.compose.runtime;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.navigation.Navigator$$ExternalSyntheticLambda1;
import androidx.work.OperationKt;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;
import org.jsoup.SerializationException;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MultiSubscriptionSnapshotFlowManager extends DnsQueryResult {
    public final ArrayList pendingChanges;
    public final MutableScatterMap readObserverCache;
    public final MutableScatterMap subscriptions;
    public final MutableScatterSet toNotify;
    public final OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 unregisterApplyObserver;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Add implements SubscriptionChange {
        public final SendChannel channel;
        public final Object obj;

        public Add(Object obj, SendChannel sendChannel) {
            this.obj = obj;
            this.channel = sendChannel;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RemoveScope implements SubscriptionChange {
        public final SendChannel channel;

        public RemoveScope(SendChannel sendChannel) {
            this.channel = sendChannel;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface SubscriptionChange {
    }

    public MultiSubscriptionSnapshotFlowManager() {
        super(3);
        this.subscriptions = OperationKt.m838constructorimpl$default();
        this.pendingChanges = new ArrayList();
        MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
        this.toNotify = new MutableScatterSet();
        this.readObserverCache = new MutableScatterMap();
        ComposerKt$$ExternalSyntheticLambda0 composerKt$$ExternalSyntheticLambda0 = new ComposerKt$$ExternalSyntheticLambda0(16, this);
        SnapshotKt.advanceGlobalSnapshot(SnapshotKt.emptyLambda);
        synchronized (SnapshotKt.lock) {
            SnapshotKt.applyObservers = CollectionsKt.plus(SnapshotKt.applyObservers, composerKt$$ExternalSyntheticLambda0);
        }
        this.unregisterApplyObserver = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(10, composerKt$$ExternalSyntheticLambda0);
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final void clearWatchSet$runtime(SendChannel sendChannel) {
        this.pendingChanges.add(new RemoveScope(sendChannel));
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final void commitSubscriptionChanges$runtime() {
        synchronized (this.response) {
            try {
                ArrayList arrayList = this.pendingChanges;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    SubscriptionChange subscriptionChange = (SubscriptionChange) arrayList.get(i);
                    if (subscriptionChange instanceof Add) {
                        OperationKt.m837addimpl(this.subscriptions, ((Add) subscriptionChange).obj, ((Add) subscriptionChange).channel);
                    } else {
                        if (!(subscriptionChange instanceof RemoveScope)) {
                            throw new SerializationException();
                        }
                        OperationKt.m840removeScopeimpl(this.subscriptions, ((RemoveScope) subscriptionChange).channel);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.pendingChanges.clear();
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final void dispose$runtime() {
        this.unregisterApplyObserver.dispose();
        this.pendingChanges.clear();
        this.readObserverCache.clear();
        synchronized (this.response) {
            this.subscriptions.clear();
        }
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final Function1 readObserverFor$runtime(SendChannel sendChannel) {
        MutableScatterMap mutableScatterMap = this.readObserverCache;
        Function1 function1 = (Function1) mutableScatterMap.get(sendChannel);
        if (function1 == null) {
            function1 = new Navigator$$ExternalSyntheticLambda1(23, this, sendChannel);
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

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final void reportSnapshotFlowCancellation$runtime(Channel channel) {
        this.readObserverCache.remove(channel);
        clearWatchSet$runtime(channel);
        commitSubscriptionChanges$runtime();
    }
}
