package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.snapshots.Snapshot$Companion$$ExternalSyntheticLambda0;
import androidx.compose.runtime.snapshots.SnapshotKt;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.properties.ObservableProperty;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;
import org.jsoup.Jsoup;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MultiSubscriptionSnapshotFlowManager extends ObservableProperty {
    public final MutableScatterMap readObserverCache;
    public final MutableScatterSet toNotify;
    public final Snapshot$Companion$$ExternalSyntheticLambda0 unregisterApplyObserver;
    public final MutableScatterMap subscriptions = Jsoup.m733constructorimpl$default();
    public final ArrayList pendingChanges = new ArrayList();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Add implements SubscriptionChange {
        public final SendChannel channel;
        public final Object obj;

        public Add(Object obj, SendChannel sendChannel) {
            this.obj = obj;
            this.channel = sendChannel;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class RemoveScope implements SubscriptionChange {
        public final SendChannel channel;

        public RemoveScope(SendChannel sendChannel) {
            this.channel = sendChannel;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface SubscriptionChange {
    }

    public MultiSubscriptionSnapshotFlowManager() {
        MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
        this.toNotify = new MutableScatterSet();
        this.readObserverCache = new MutableScatterMap();
        Updater$$ExternalSyntheticLambda0 updater$$ExternalSyntheticLambda0 = new Updater$$ExternalSyntheticLambda0(this, 8);
        SnapshotKt.advanceGlobalSnapshot(SnapshotKt.emptyLambda);
        synchronized (SnapshotKt.lock) {
            SnapshotKt.applyObservers = CollectionsKt.plus(SnapshotKt.applyObservers, updater$$ExternalSyntheticLambda0);
        }
        this.unregisterApplyObserver = new Snapshot$Companion$$ExternalSyntheticLambda0(updater$$ExternalSyntheticLambda0);
    }

    @Override // kotlin.properties.ObservableProperty
    public final void clearWatchSet$runtime(SendChannel sendChannel) {
        this.pendingChanges.add(new RemoveScope(sendChannel));
    }

    @Override // kotlin.properties.ObservableProperty
    public final void commitSubscriptionChanges$runtime() {
        synchronized (this.value) {
            try {
                ArrayList arrayList = this.pendingChanges;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    SubscriptionChange subscriptionChange = (SubscriptionChange) arrayList.get(i);
                    if (subscriptionChange instanceof Add) {
                        Jsoup.m732addimpl(this.subscriptions, ((Add) subscriptionChange).obj, ((Add) subscriptionChange).channel);
                    } else {
                        if (!(subscriptionChange instanceof RemoveScope)) {
                            throw new SerializationException();
                        }
                        Jsoup.m736removeScopeimpl(this.subscriptions, ((RemoveScope) subscriptionChange).channel);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.pendingChanges.clear();
    }

    @Override // kotlin.properties.ObservableProperty
    public final void dispose$runtime() {
        this.unregisterApplyObserver.dispose();
        this.pendingChanges.clear();
        this.readObserverCache.clear();
        synchronized (this.value) {
            this.subscriptions.clear();
        }
    }

    @Override // kotlin.properties.ObservableProperty
    public final Function1 readObserverFor$runtime(SendChannel sendChannel) {
        MutableScatterMap mutableScatterMap = this.readObserverCache;
        Function1 function1 = (Function1) mutableScatterMap.get(sendChannel);
        if (function1 == null) {
            function1 = new Recomposer$$ExternalSyntheticLambda4(this, sendChannel, 23);
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

    @Override // kotlin.properties.ObservableProperty
    public final void reportSnapshotFlowCancellation$runtime(Channel channel) {
        this.readObserverCache.remove(channel);
        clearWatchSet$runtime(channel);
        commitSubscriptionChanges$runtime();
    }
}
