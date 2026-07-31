package androidx.compose.runtime;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingleSubscriptionSnapshotFlowManager extends DnsQueryResult {
    public final DiskLruCache$$ExternalSyntheticLambda0 readObserverCache;
    public Object soleWatchedObject;
    public SendChannel subscribedChannel;
    public final OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 unregisterApplyObserver;
    public MutableScatterSet watchSet;
    public Object workingSoleWatchedObject;
    public MutableScatterSet workingWatchSet;

    public SingleSubscriptionSnapshotFlowManager() {
        super(3);
        int i = 10;
        this.readObserverCache = new DiskLruCache$$ExternalSyntheticLambda0(10, this);
        ComposerKt$$ExternalSyntheticLambda0 composerKt$$ExternalSyntheticLambda0 = new ComposerKt$$ExternalSyntheticLambda0(18, this);
        SnapshotKt.advanceGlobalSnapshot(SnapshotKt.emptyLambda);
        synchronized (SnapshotKt.lock) {
            SnapshotKt.applyObservers = CollectionsKt.plus(SnapshotKt.applyObservers, composerKt$$ExternalSyntheticLambda0);
        }
        this.unregisterApplyObserver = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(i, composerKt$$ExternalSyntheticLambda0);
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final void clearWatchSet$runtime(SendChannel sendChannel) {
        this.workingSoleWatchedObject = null;
        this.workingWatchSet = null;
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final void commitSubscriptionChanges$runtime() {
        synchronized (this.response) {
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

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final void dispose$runtime() {
        this.unregisterApplyObserver.dispose();
        this.workingSoleWatchedObject = null;
        this.workingWatchSet = null;
        synchronized (this.response) {
            this.subscribedChannel = null;
            this.soleWatchedObject = null;
            this.watchSet = null;
        }
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final Function1 readObserverFor$runtime(SendChannel sendChannel) {
        SendChannel sendChannel2 = this.subscribedChannel;
        if (sendChannel2 != null && !sendChannel2.equals(sendChannel)) {
            PreconditionsKt.throwIllegalStateException("Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions");
        }
        this.subscribedChannel = sendChannel;
        return this.readObserverCache;
    }

    @Override // org.minidns.dnsqueryresult.DnsQueryResult
    public final void reportSnapshotFlowCancellation$runtime(Channel channel) {
        this.subscribedChannel = null;
        this.workingSoleWatchedObject = null;
        this.workingWatchSet = null;
        commitSubscriptionChanges$runtime();
    }
}
