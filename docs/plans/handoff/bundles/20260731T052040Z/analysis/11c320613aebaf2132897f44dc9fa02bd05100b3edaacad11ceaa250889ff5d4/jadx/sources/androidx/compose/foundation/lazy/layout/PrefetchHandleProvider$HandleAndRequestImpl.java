package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import androidx.appcompat.app.TwilightManager$TwilightState;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.PausedCompositionImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState$precomposePaused$1;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.unit.Constraints;
import coil3.decode.StaticImageDecoderKt;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.InstantKt;
import kotlin.time.MonotonicTimeSource;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PrefetchHandleProvider$HandleAndRequestImpl implements LazyLayoutPrefetchState.PrefetchHandle {
    public long availableTimeNanos;
    public long elapsedTimeNanos;
    public boolean hasResolvedNestedPrefetches;
    public final int index;
    public boolean isApplied;
    public boolean isCanceled;
    public boolean isMeasured;
    public boolean isUrgent;
    public Object keyUsedForComposition;
    public NestedPrefetchController nestedPrefetchController;
    public final Function1 onItemPremeasured;
    public boolean pauseRequested;
    public LayoutNodeSubcompositionsState$precomposePaused$1 pausedPrecomposition;
    public SubcomposeLayoutState.PrecomposedSlotHandle precomposeHandle;
    public final ProcessFinisher prefetchMetrics;
    public Constraints premeasureConstraints;
    public long startTime = MonotonicTimeSource.read();
    public final /* synthetic */ Latch this$0;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NestedPrefetchController {
        public boolean executedNestedPrefetch;
        public int requestIndex;
        public final List[] requestsByState;
        public int stateIndex;
        public final List states;

        public NestedPrefetchController(List list) {
            this.states = list;
            this.requestsByState = new List[list.size()];
            if (list.isEmpty()) {
                InlineClassHelperKt.throwIllegalArgumentException("NestedPrefetchController shouldn't be created with no states");
            }
        }
    }

    public PrefetchHandleProvider$HandleAndRequestImpl(Latch latch, int i, ProcessFinisher processFinisher, Function1 function1) {
        this.this$0 = latch;
        this.index = i;
        this.prefetchMetrics = processFinisher;
        this.onItemPremeasured = function1;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchHandle
    public final void cancel() {
        if (this.isCanceled) {
            return;
        }
        this.isCanceled = true;
        cleanUp();
    }

    public final void cleanUp() {
        LayoutNodeSubcompositionsState$precomposePaused$1 layoutNodeSubcompositionsState$precomposePaused$1 = this.pausedPrecomposition;
        if (layoutNodeSubcompositionsState$precomposePaused$1 != null) {
            switch (layoutNodeSubcompositionsState$precomposePaused$1.$r8$classId) {
                case 0:
                    break;
                default:
                    LayoutNodeSubcompositionsState.NodeState nodeState = layoutNodeSubcompositionsState$precomposePaused$1.getNodeState();
                    if ((nodeState != null ? nodeState.pausedComposition : null) != null) {
                        LayoutNodeSubcompositionsState.access$disposePrecomposedSlot(layoutNodeSubcompositionsState$precomposePaused$1.this$0, layoutNodeSubcompositionsState$precomposePaused$1.$slotId);
                        break;
                    }
                    break;
            }
        }
        this.pausedPrecomposition = null;
        SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.precomposeHandle;
        if (precomposedSlotHandle != null) {
            precomposedSlotHandle.dispose();
        }
        this.precomposeHandle = null;
        this.nestedPrefetchController = null;
    }

    public final boolean execute(TwilightManager$TwilightState twilightManager$TwilightState) {
        boolean executeRequest;
        if (!this.this$0._isOpen) {
            return false;
        }
        if (this.isUrgent) {
            Trace.beginSection("compose:lazy:prefetch:execute:urgent");
            try {
                executeRequest = executeRequest(twilightManager$TwilightState);
            } finally {
                Trace.endSection();
            }
        } else {
            executeRequest = executeRequest(twilightManager$TwilightState);
        }
        StaticImageDecoderKt.traceValue("compose:lazy:prefetch:execute:item", -1L);
        return executeRequest;
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x0209 A[Catch: all -> 0x0222, LOOP:2: B:107:0x01d8->B:119:0x0209, LOOP_END, TRY_ENTER, TryCatch #1 {all -> 0x0222, blocks: (B:91:0x0191, B:93:0x0199, B:95:0x019f, B:98:0x01ad, B:100:0x01b9, B:101:0x01cf, B:102:0x01bc, B:106:0x01d1, B:107:0x01d8, B:109:0x01e0, B:116:0x01f6, B:117:0x01fb, B:119:0x0209, B:127:0x020f), top: B:90:0x0191 }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0205 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean executeRequest(androidx.appcompat.app.TwilightManager$TwilightState r22) {
        /*
            Method dump skipped, instructions count: 778
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.PrefetchHandleProvider$HandleAndRequestImpl.executeRequest(androidx.appcompat.app.TwilightManager$TwilightState):boolean");
    }

    public final boolean isComposed() {
        LayoutNodeSubcompositionsState$precomposePaused$1 layoutNodeSubcompositionsState$precomposePaused$1;
        return this.isApplied || ((layoutNodeSubcompositionsState$precomposePaused$1 = this.pausedPrecomposition) != null && layoutNodeSubcompositionsState$precomposePaused$1.isComplete());
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchHandle
    public final void markAsUrgent() {
        this.isUrgent = true;
    }

    public final void performPausableComposition(Object obj, Object obj2, Averages averages) {
        LayoutNodeSubcompositionsState$precomposePaused$1 layoutNodeSubcompositionsState$precomposePaused$1;
        LayoutNodeSubcompositionsState$precomposePaused$1 layoutNodeSubcompositionsState$precomposePaused$12 = this.pausedPrecomposition;
        int i = 0;
        int i2 = 1;
        if (layoutNodeSubcompositionsState$precomposePaused$12 == null) {
            Latch latch = this.this$0;
            Function2 content = ((LazyLayoutItemContentFactory) latch.lock).getContent(obj, obj2, this.index);
            LayoutNodeSubcompositionsState state = ((SubcomposeLayoutState) latch.awaiters).getState();
            if (state.root.isAttached()) {
                state.precompose(obj, content, true);
                layoutNodeSubcompositionsState$precomposePaused$1 = new LayoutNodeSubcompositionsState$precomposePaused$1(state, obj, i2);
            } else {
                layoutNodeSubcompositionsState$precomposePaused$1 = new LayoutNodeSubcompositionsState$precomposePaused$1(state, obj, i);
            }
            layoutNodeSubcompositionsState$precomposePaused$12 = layoutNodeSubcompositionsState$precomposePaused$1;
            this.pausedPrecomposition = layoutNodeSubcompositionsState$precomposePaused$12;
            this.keyUsedForComposition = obj;
        }
        this.pauseRequested = false;
        while (!layoutNodeSubcompositionsState$precomposePaused$12.isComplete() && !this.pauseRequested) {
            RxConvertKt$$ExternalSyntheticLambda0 rxConvertKt$$ExternalSyntheticLambda0 = new RxConvertKt$$ExternalSyntheticLambda0(this, averages, i2);
            switch (layoutNodeSubcompositionsState$precomposePaused$12.$r8$classId) {
                case 0:
                    break;
                default:
                    LayoutNodeSubcompositionsState.NodeState nodeState = layoutNodeSubcompositionsState$precomposePaused$12.getNodeState();
                    PausedCompositionImpl pausedCompositionImpl = nodeState != null ? nodeState.pausedComposition : null;
                    if (pausedCompositionImpl != null && !pausedCompositionImpl.isComplete()) {
                        Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                        Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
                        Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
                        try {
                            pausedCompositionImpl.resume(rxConvertKt$$ExternalSyntheticLambda0);
                            break;
                        } finally {
                        }
                    }
                    break;
            }
        }
        updateElapsedAndAvailableTime();
        boolean z = this.pauseRequested;
        long j = this.elapsedTimeNanos;
        if (z) {
            averages.pauseTimeNanos = Averages.calculateAverageTime(j, averages.pauseTimeNanos);
        } else {
            averages.resumeTimeNanos = Averages.calculateAverageTime(j, averages.resumeTimeNanos);
        }
    }

    public final boolean shouldExecute(long j, long j2) {
        if (this.isUrgent) {
            j2 = 0;
        }
        return j > j2;
    }

    public final String toString() {
        return "HandleAndRequestImpl { index = " + this.index + ", constraints = " + this.premeasureConstraints + ", isComposed = " + isComposed() + ", isMeasured = " + this.isMeasured + ", isCanceled = " + this.isCanceled + " }";
    }

    public final void updateElapsedAndAvailableTime() {
        long infinityOfSign;
        long read = MonotonicTimeSource.read();
        long j = this.startTime;
        long j2 = Long.MAX_VALUE;
        if (((j - 1) | 1) != Long.MAX_VALUE) {
            infinityOfSign = (1 | (read - 1)) == Long.MAX_VALUE ? InstantKt.infinityOfSign(read) : InstantKt.saturatingFiniteDiff(read, j);
        } else if (read == j) {
            ByteString.Companion companion = Duration.Companion;
            infinityOfSign = 0;
        } else {
            infinityOfSign = Duration.m684unaryMinusUwyO8pc(InstantKt.infinityOfSign(j));
        }
        long j3 = infinityOfSign >> 1;
        ByteString.Companion companion2 = Duration.Companion;
        if ((((int) infinityOfSign) & 1) == 0) {
            j2 = j3;
        } else if (j3 <= 9223372036854L) {
            j2 = j3 < -9223372036854L ? Long.MIN_VALUE : j3 * 1000000;
        }
        this.elapsedTimeNanos = j2;
        long j4 = this.availableTimeNanos - j2;
        this.availableTimeNanos = j4;
        this.startTime = read;
        StaticImageDecoderKt.traceValue("compose:lazy:prefetch:available_time_nanos", j4);
    }
}
