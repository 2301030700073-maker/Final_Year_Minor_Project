package androidx.paging;

import androidx.collection.MutableScatterSet;
import androidx.compose.foundation.layout.Arrangement$Horizontal;
import androidx.compose.foundation.lazy.grid.GridCells$Fixed;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.SingleSubscriptionSnapshotFlowManager;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HintHandler$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ HintHandler$$ExternalSyntheticLambda0(GridCells$Fixed gridCells$Fixed, Arrangement$Horizontal arrangement$Horizontal) {
        this.$r8$classId = 5;
        this.f$0 = arrangement$Horizontal;
    }

    private final Object invoke$androidx$compose$runtime$Recomposer$recompositionRunner$2$$ExternalSyntheticLambda0(Object obj, Object obj2) {
        CancellableContinuation cancellableContinuation;
        Recomposer recomposer = (Recomposer) this.f$0;
        Set set = (Set) obj;
        synchronized (recomposer.stateLock) {
            try {
                if (((Recomposer.State) recomposer._state.getValue()).compareTo(Recomposer.State.Idle) >= 0) {
                    MutableScatterSet mutableScatterSet = recomposer.snapshotInvalidations;
                    if (set instanceof ScatterSetWrapper) {
                        MutableScatterSet mutableScatterSet2 = ((ScatterSetWrapper) set).set;
                        Object[] objArr = mutableScatterSet2.elements;
                        long[] jArr = mutableScatterSet2.metadata;
                        int length = jArr.length - 2;
                        if (length >= 0) {
                            int i = 0;
                            while (true) {
                                long j = jArr[i];
                                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                    int i2 = 8 - ((~(i - length)) >>> 31);
                                    for (int i3 = 0; i3 < i2; i3++) {
                                        if ((255 & j) < 128) {
                                            Object obj3 = objArr[(i << 3) + i3];
                                            if (!(obj3 instanceof StateObjectImpl) || ((StateObjectImpl) obj3).m331isReadInh_f27i8$runtime(1)) {
                                                mutableScatterSet.add(obj3);
                                            }
                                        }
                                        j >>= 8;
                                    }
                                    if (i2 != 8) {
                                        break;
                                    }
                                }
                                if (i == length) {
                                    break;
                                }
                                i++;
                            }
                        }
                    } else {
                        for (Object obj4 : set) {
                            if (!(obj4 instanceof StateObjectImpl) || ((StateObjectImpl) obj4).m331isReadInh_f27i8$runtime(1)) {
                                mutableScatterSet.add(obj4);
                            }
                        }
                    }
                    cancellableContinuation = recomposer.deriveStateLocked();
                } else {
                    cancellableContinuation = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (cancellableContinuation != null) {
            ((CancellableContinuationImpl) cancellableContinuation).resumeWith(Unit.INSTANCE);
        }
        return Unit.INSTANCE;
    }

    private final Object invoke$androidx$compose$runtime$SingleSubscriptionSnapshotFlowManager$$ExternalSyntheticLambda1(Object obj, Object obj2) {
        SendChannel sendChannel;
        SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager = (SingleSubscriptionSnapshotFlowManager) this.f$0;
        Set set = (Set) obj;
        synchronized (singleSubscriptionSnapshotFlowManager.fragment) {
            try {
                MutableScatterSet mutableScatterSet = singleSubscriptionSnapshotFlowManager.watchSet;
                if (mutableScatterSet == null) {
                    if (CollectionsKt.contains(set, singleSubscriptionSnapshotFlowManager.soleWatchedObject)) {
                        sendChannel = singleSubscriptionSnapshotFlowManager.subscribedChannel;
                    }
                    sendChannel = null;
                } else {
                    Object[] objArr = mutableScatterSet.elements;
                    long[] jArr = mutableScatterSet.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i = 0;
                        loop0: while (true) {
                            long j = jArr[i];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i2 = 8 - ((~(i - length)) >>> 31);
                                for (int i3 = 0; i3 < i2; i3++) {
                                    if ((255 & j) < 128 && set.contains(objArr[(i << 3) + i3])) {
                                        sendChannel = singleSubscriptionSnapshotFlowManager.subscribedChannel;
                                        break loop0;
                                    }
                                    j >>= 8;
                                }
                                if (i2 != 8) {
                                    break;
                                }
                            }
                            if (i == length) {
                                break;
                            }
                            i++;
                        }
                    }
                    sendChannel = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (sendChannel != null) {
            sendChannel.mo757trySendJP2dKIU(Unit.INSTANCE);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x01d0, code lost:
    
        if (r3 == null) goto L53;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:211:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01d7  */
    /* JADX WARN: Type inference failed for: r1v86, types: [kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r1v87 */
    /* JADX WARN: Type inference failed for: r1v92 */
    /* JADX WARN: Type inference failed for: r1v93 */
    /* JADX WARN: Type inference failed for: r1v94 */
    /* JADX WARN: Type inference failed for: r4v41, types: [java.lang.Object[], java.util.Set[]] */
    /* JADX WARN: Type inference failed for: r4v42, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v45, types: [java.util.Collection] */
    @Override // kotlin.jvm.functions.Function2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r36, java.lang.Object r37) {
        /*
            Method dump skipped, instructions count: 2130
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.HintHandler$$ExternalSyntheticLambda0.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public /* synthetic */ HintHandler$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    public /* synthetic */ HintHandler$$ExternalSyntheticLambda0(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.f$0 = obj;
    }
}
