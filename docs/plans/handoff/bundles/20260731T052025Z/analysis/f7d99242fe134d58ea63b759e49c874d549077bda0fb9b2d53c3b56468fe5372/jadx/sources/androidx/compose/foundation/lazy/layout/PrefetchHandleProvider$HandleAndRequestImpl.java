package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import androidx.appcompat.app.TwilightManager$TwilightState;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
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
import androidx.core.view.MenuHostHelper;
import androidx.tracing.TraceApi29Impl;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.InstantKt;
import kotlin.time.MonotonicTimeSource;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final MenuHostHelper prefetchMetrics;
    public Constraints premeasureConstraints;
    public long startTime = MonotonicTimeSource.read();
    public final /* synthetic */ Latch this$0;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    public PrefetchHandleProvider$HandleAndRequestImpl(Latch latch, int i, MenuHostHelper menuHostHelper, Function1 function1) {
        this.this$0 = latch;
        this.index = i;
        this.prefetchMetrics = menuHostHelper;
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
        TraceApi29Impl.traceValue(-1L, "compose:lazy:prefetch:execute:item");
        return executeRequest;
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x0208 A[Catch: all -> 0x0221, LOOP:2: B:107:0x01d7->B:119:0x0208, LOOP_END, TRY_ENTER, TryCatch #0 {all -> 0x0221, blocks: (B:91:0x0190, B:93:0x0198, B:95:0x019e, B:98:0x01ac, B:100:0x01b8, B:101:0x01ce, B:102:0x01bb, B:106:0x01d0, B:107:0x01d7, B:109:0x01df, B:116:0x01f5, B:117:0x01fa, B:119:0x0208, B:127:0x020e), top: B:90:0x0190 }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0204 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean executeRequest(androidx.appcompat.app.TwilightManager$TwilightState r22) {
        /*
            Method dump skipped, instructions count: 776
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
        if (layoutNodeSubcompositionsState$precomposePaused$12 == null) {
            Latch latch = this.this$0;
            Function2 content = ((LazyLayoutItemContentFactory) latch.lock).getContent(this.index, obj, obj2);
            LayoutNodeSubcompositionsState state = ((SubcomposeLayoutState) latch.awaiters).getState();
            if (state.root.isAttached$1()) {
                state.precompose(obj, content, true);
                layoutNodeSubcompositionsState$precomposePaused$1 = new LayoutNodeSubcompositionsState$precomposePaused$1(state, obj, 1);
            } else {
                layoutNodeSubcompositionsState$precomposePaused$1 = new LayoutNodeSubcompositionsState$precomposePaused$1(state, obj, i);
            }
            layoutNodeSubcompositionsState$precomposePaused$12 = layoutNodeSubcompositionsState$precomposePaused$1;
            this.pausedPrecomposition = layoutNodeSubcompositionsState$precomposePaused$12;
            this.keyUsedForComposition = obj;
        }
        this.pauseRequested = false;
        while (!layoutNodeSubcompositionsState$precomposePaused$12.isComplete() && !this.pauseRequested) {
            CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0 captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0 = new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(6, this, averages);
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
                            pausedCompositionImpl.resume(captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0);
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
        StringBuilder sb = new StringBuilder("HandleAndRequestImpl { index = ");
        sb.append(this.index);
        sb.append(", constraints = ");
        sb.append(this.premeasureConstraints);
        sb.append(", isComposed = ");
        sb.append(isComposed());
        sb.append(", isMeasured = ");
        sb.append(this.isMeasured);
        sb.append(", isCanceled = ");
        return CameraDevices$CC.m(" }", sb, this.isCanceled);
    }

    public final void updateElapsedAndAvailableTime() {
        long infinityOfSign;
        long read = MonotonicTimeSource.read();
        long j = this.startTime;
        long j2 = Long.MAX_VALUE;
        if (((j - 1) | 1) != Long.MAX_VALUE) {
            infinityOfSign = (1 | (read - 1)) == Long.MAX_VALUE ? InstantKt.infinityOfSign(read) : InstantKt.saturatingFiniteDiff(read, j);
        } else if (read == j) {
            Duration.Companion companion = Duration.Companion;
            infinityOfSign = 0;
        } else {
            infinityOfSign = Duration.m1003unaryMinusUwyO8pc(InstantKt.infinityOfSign(j));
        }
        long j3 = infinityOfSign >> 1;
        Duration.Companion companion2 = Duration.Companion;
        if ((((int) infinityOfSign) & 1) == 0) {
            j2 = j3;
        } else if (j3 <= 9223372036854L) {
            j2 = j3 < -9223372036854L ? Long.MIN_VALUE : j3 * 1000000;
        }
        this.elapsedTimeNanos = j2;
        long j4 = this.availableTimeNanos - j2;
        this.availableTimeNanos = j4;
        this.startTime = read;
        TraceApi29Impl.traceValue(j4, "compose:lazy:prefetch:available_time_nanos");
    }
}
