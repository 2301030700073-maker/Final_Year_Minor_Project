package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ComposerKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ComposerKt$$ExternalSyntheticLambda0(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.f$0 = obj;
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
                                            if (!(obj3 instanceof StateObjectImpl) || ((StateObjectImpl) obj3).m385isReadInh_f27i8$runtime(1)) {
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
                            if (!(obj4 instanceof StateObjectImpl) || ((StateObjectImpl) obj4).m385isReadInh_f27i8$runtime(1)) {
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
        synchronized (singleSubscriptionSnapshotFlowManager.response) {
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
            sendChannel.mo1016trySendJP2dKIU(Unit.INSTANCE);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:184:0x045e, code lost:
    
        if (r9.containsKey(r5) != false) goto L169;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r30, java.lang.Object r31) {
        /*
            Method dump skipped, instructions count: 1546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public /* synthetic */ ComposerKt$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }
}
