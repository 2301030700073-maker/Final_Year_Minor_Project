package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import java.util.Collection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;
import org.wikipedia.settings.BasePreferenceLoader;
import org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SingleSubscriptionSnapshotFlowManager extends BasePreferenceLoader {
    public final DiskLruCache$$ExternalSyntheticLambda0 readObserverCache;
    public Object soleWatchedObject;
    public SendChannel subscribedChannel;
    public final YearInReviewGeoSlideKt$$ExternalSyntheticLambda5 unregisterApplyObserver;
    public MutableScatterSet watchSet;
    public Object workingSoleWatchedObject;
    public MutableScatterSet workingWatchSet;

    public SingleSubscriptionSnapshotFlowManager() {
        super(3);
        this.readObserverCache = new DiskLruCache$$ExternalSyntheticLambda0(7, this);
        HintHandler$$ExternalSyntheticLambda0 hintHandler$$ExternalSyntheticLambda0 = new HintHandler$$ExternalSyntheticLambda0(21, this);
        SnapshotKt.advanceGlobalSnapshot(SnapshotKt.emptyLambda);
        synchronized (SnapshotKt.lock) {
            SnapshotKt.applyObservers = CollectionsKt.plus((Collection) SnapshotKt.applyObservers, (Object) hintHandler$$ExternalSyntheticLambda0);
        }
        this.unregisterApplyObserver = new YearInReviewGeoSlideKt$$ExternalSyntheticLambda5(hintHandler$$ExternalSyntheticLambda0);
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final void clearWatchSet$runtime(SendChannel sendChannel) {
        this.workingSoleWatchedObject = null;
        this.workingWatchSet = null;
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final void commitSubscriptionChanges$runtime() {
        synchronized (this.fragment) {
            try {
                this.soleWatchedObject = this.workingSoleWatchedObject;
                if (this.workingWatchSet == null) {
                    this.watchSet = null;
                } else {
                    MutableScatterSet mutableScatterSet = this.watchSet;
                    if (mutableScatterSet == null) {
                        MutableScatterSet mutableScatterSet2 = ScatterSetKt.EmptyScatterSet;
                        mutableScatterSet = new MutableScatterSet();
                        this.watchSet = mutableScatterSet;
                    }
                    this.watchSet = this.workingWatchSet;
                    this.workingWatchSet = mutableScatterSet;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final void dispose$runtime() {
        this.unregisterApplyObserver.dispose();
        this.workingSoleWatchedObject = null;
        this.workingWatchSet = null;
        synchronized (this.fragment) {
            this.subscribedChannel = null;
            this.soleWatchedObject = null;
            this.watchSet = null;
        }
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final Function1 readObserverFor$runtime(SendChannel sendChannel) {
        SendChannel sendChannel2 = this.subscribedChannel;
        if (sendChannel2 != null && !sendChannel2.equals(sendChannel)) {
            PreconditionsKt.throwIllegalStateException("Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions");
        }
        this.subscribedChannel = sendChannel;
        return this.readObserverCache;
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final void reportSnapshotFlowCancellation$runtime(Channel channel) {
        this.subscribedChannel = null;
        this.workingSoleWatchedObject = null;
        this.workingWatchSet = null;
        commitSubscriptionChanges$runtime();
    }
}
