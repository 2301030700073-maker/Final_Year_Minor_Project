package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.snapshots.Snapshot$Companion$$ExternalSyntheticLambda0;
import androidx.compose.runtime.snapshots.SnapshotKt;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.properties.ObservableProperty;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SingleSubscriptionSnapshotFlowManager extends ObservableProperty {
    public final DiskLruCache$$ExternalSyntheticLambda0 readObserverCache = new DiskLruCache$$ExternalSyntheticLambda0(this, 14);
    public Object soleWatchedObject;
    public SendChannel subscribedChannel;
    public final Snapshot$Companion$$ExternalSyntheticLambda0 unregisterApplyObserver;
    public MutableScatterSet watchSet;
    public Object workingSoleWatchedObject;
    public MutableScatterSet workingWatchSet;

    public SingleSubscriptionSnapshotFlowManager() {
        Updater$$ExternalSyntheticLambda0 updater$$ExternalSyntheticLambda0 = new Updater$$ExternalSyntheticLambda0(this, 10);
        SnapshotKt.advanceGlobalSnapshot(SnapshotKt.emptyLambda);
        synchronized (SnapshotKt.lock) {
            SnapshotKt.applyObservers = CollectionsKt.plus(SnapshotKt.applyObservers, updater$$ExternalSyntheticLambda0);
        }
        this.unregisterApplyObserver = new Snapshot$Companion$$ExternalSyntheticLambda0(updater$$ExternalSyntheticLambda0);
    }

    @Override // kotlin.properties.ObservableProperty
    public final void clearWatchSet$runtime(SendChannel sendChannel) {
        this.workingSoleWatchedObject = null;
        this.workingWatchSet = null;
    }

    @Override // kotlin.properties.ObservableProperty
    public final void commitSubscriptionChanges$runtime() {
        synchronized (this.value) {
            try {
                this.soleWatchedObject = this.workingSoleWatchedObject;
                if (this.workingWatchSet == null) {
                    this.watchSet = null;
                } else {
                    if (this.watchSet == null) {
                        MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
                        this.watchSet = new MutableScatterSet();
                    }
                    MutableScatterSet mutableScatterSet2 = this.watchSet;
                    this.watchSet = this.workingWatchSet;
                    this.workingWatchSet = mutableScatterSet2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // kotlin.properties.ObservableProperty
    public final void dispose$runtime() {
        this.unregisterApplyObserver.dispose();
        this.workingSoleWatchedObject = null;
        this.workingWatchSet = null;
        synchronized (this.value) {
            this.subscribedChannel = null;
            this.soleWatchedObject = null;
            this.watchSet = null;
        }
    }

    @Override // kotlin.properties.ObservableProperty
    public final Function1 readObserverFor$runtime(SendChannel sendChannel) {
        SendChannel sendChannel2 = this.subscribedChannel;
        if (sendChannel2 != null && !sendChannel2.equals(sendChannel)) {
            PreconditionsKt.throwIllegalStateException("Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions");
        }
        this.subscribedChannel = sendChannel;
        return this.readObserverCache;
    }

    @Override // kotlin.properties.ObservableProperty
    public final void reportSnapshotFlowCancellation$runtime(Channel channel) {
        this.subscribedChannel = null;
        this.workingSoleWatchedObject = null;
        this.workingWatchSet = null;
        commitSubscriptionChanges$runtime();
    }
}
