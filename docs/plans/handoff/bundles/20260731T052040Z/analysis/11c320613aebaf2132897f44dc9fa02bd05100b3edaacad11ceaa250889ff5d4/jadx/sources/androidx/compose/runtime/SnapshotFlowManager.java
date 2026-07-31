package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.MultiSubscriptionSnapshotFlowManager;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.properties.ObservableProperty;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SnapshotFlowManager {
    public ObservableProperty managerImpl;

    public final Object runAndWatch$runtime(Channel channel, Function0 function0) {
        SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager;
        SendChannel sendChannel;
        int i;
        if (this.managerImpl == null) {
            PreconditionsKt.throwIllegalStateException("Called runAndWatch on a manager that has been disposed of");
        }
        ObservableProperty observableProperty = this.managerImpl;
        if ((observableProperty instanceof SingleSubscriptionSnapshotFlowManager) && (sendChannel = (singleSubscriptionSnapshotFlowManager = (SingleSubscriptionSnapshotFlowManager) observableProperty).subscribedChannel) != null && !sendChannel.equals(channel)) {
            MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager = new MultiSubscriptionSnapshotFlowManager();
            SendChannel sendChannel2 = singleSubscriptionSnapshotFlowManager.subscribedChannel;
            if (sendChannel2 == null) {
                PreconditionsKt.throwIllegalStateException("promote must only be called when a manager is managing subscriptions for one channel and needs to start managing them for a second");
            }
            MutableScatterSet mutableScatterSet = singleSubscriptionSnapshotFlowManager.watchSet;
            ArrayList arrayList = multiSubscriptionSnapshotFlowManager.pendingChanges;
            if (mutableScatterSet == null) {
                Object obj = singleSubscriptionSnapshotFlowManager.soleWatchedObject;
                obj.getClass();
                arrayList.add(new MultiSubscriptionSnapshotFlowManager.Add(obj, sendChannel2));
            } else {
                Object[] objArr = mutableScatterSet.elements;
                long[] jArr = mutableScatterSet.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i2 = 0;
                    while (true) {
                        long j = jArr[i2];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i3 = 8;
                            int i4 = 8 - ((~(i2 - length)) >>> 31);
                            int i5 = 0;
                            while (i5 < i4) {
                                if ((j & 255) < 128) {
                                    i = i3;
                                    arrayList.add(new MultiSubscriptionSnapshotFlowManager.Add(objArr[(i2 << 3) + i5], sendChannel2));
                                } else {
                                    i = i3;
                                }
                                j >>= i;
                                i5++;
                                i3 = i;
                            }
                            if (i4 != i3) {
                                break;
                            }
                        }
                        if (i2 == length) {
                            break;
                        }
                        i2++;
                    }
                }
            }
            multiSubscriptionSnapshotFlowManager.commitSubscriptionChanges$runtime();
            singleSubscriptionSnapshotFlowManager.dispose$runtime();
            this.managerImpl = multiSubscriptionSnapshotFlowManager;
        }
        ObservableProperty observableProperty2 = this.managerImpl;
        observableProperty2.getClass();
        Snapshot takeNestedSnapshot = SnapshotKt.currentSnapshot().takeNestedSnapshot(observableProperty2.readObserverFor$runtime(channel));
        observableProperty2.clearWatchSet$runtime(channel);
        try {
            Snapshot makeCurrent = takeNestedSnapshot.makeCurrent();
            try {
                Object invoke = function0.invoke();
                takeNestedSnapshot.dispose();
                observableProperty2.commitSubscriptionChanges$runtime();
                return invoke;
            } finally {
                Snapshot.restoreCurrent(makeCurrent);
            }
        } catch (Throwable th) {
            takeNestedSnapshot.dispose();
            throw th;
        }
    }
}
