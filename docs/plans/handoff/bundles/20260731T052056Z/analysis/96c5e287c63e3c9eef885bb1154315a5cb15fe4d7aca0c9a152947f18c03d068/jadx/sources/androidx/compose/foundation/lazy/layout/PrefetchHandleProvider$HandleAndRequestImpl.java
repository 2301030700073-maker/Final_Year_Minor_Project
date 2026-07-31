package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import androidx.appcompat.app.TwilightManager$TwilightState;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.PausedCompositionImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState$precomposePaused$1;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.unit.Constraints;
import androidx.paging.FlattenedPageEventStorage;
import com.caverock.androidsvg.SVG;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.InstantKt;
import kotlin.time.MonotonicTimeSource;
import okio.Path;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public FlattenedPageEventStorage nestedPrefetchController;
    public final Function1 onItemPremeasured;
    public boolean pauseRequested;
    public LayoutNodeSubcompositionsState$precomposePaused$1 pausedPrecomposition;
    public SubcomposeLayoutState.PrecomposedSlotHandle precomposeHandle;
    public final SVG prefetchMetrics;
    public Constraints premeasureConstraints;
    public long startTime = MonotonicTimeSource.read();
    public final /* synthetic */ Latch this$0;

    public PrefetchHandleProvider$HandleAndRequestImpl(Latch latch, int i, SVG svg, Function1 function1) {
        this.this$0 = latch;
        this.index = i;
        this.prefetchMetrics = svg;
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
                        layoutNodeSubcompositionsState$precomposePaused$1.this$0.disposePrecomposedSlot(layoutNodeSubcompositionsState$precomposePaused$1.$slotId);
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
        FileUtil.traceValue("compose:lazy:prefetch:execute:item", -1L);
        return executeRequest;
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x020a A[Catch: all -> 0x0223, LOOP:2: B:107:0x01d9->B:119:0x020a, LOOP_END, TRY_ENTER, TryCatch #1 {all -> 0x0223, blocks: (B:91:0x0192, B:93:0x019a, B:95:0x01a0, B:98:0x01ae, B:100:0x01ba, B:101:0x01d0, B:102:0x01bd, B:106:0x01d2, B:107:0x01d9, B:109:0x01e1, B:116:0x01f7, B:117:0x01fc, B:119:0x020a, B:127:0x0210), top: B:90:0x0192 }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0206 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v8 */
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
            Function2 content = ((LazyLayoutItemContentFactory) latch.lock).getContent(this.index, obj, obj2);
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
            TextLinkScope$$ExternalSyntheticLambda3 textLinkScope$$ExternalSyntheticLambda3 = new TextLinkScope$$ExternalSyntheticLambda3(i2, this, averages);
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
                            pausedCompositionImpl.resume(textLinkScope$$ExternalSyntheticLambda3);
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
        long read = MonotonicTimeSource.read();
        long j = this.startTime;
        int i = MonotonicTimeSource.$r8$clinit;
        DurationUnit durationUnit = DurationUnit.NANOSECONDS;
        durationUnit.getClass();
        long j2 = 0;
        if (((j - 1) | 1) == Long.MAX_VALUE) {
            if (read == j) {
                Path.Companion companion = Duration.Companion;
            } else {
                j2 = Duration.m856unaryMinusUwyO8pc(j < 0 ? Duration.NEG_INFINITE : Duration.INFINITE);
            }
        } else if (((read - 1) | 1) == Long.MAX_VALUE) {
            j2 = read < 0 ? Duration.NEG_INFINITE : Duration.INFINITE;
        } else {
            long j3 = read - j;
            if (((~(j3 ^ j)) & (j3 ^ read)) < 0) {
                DurationUnit durationUnit2 = DurationUnit.MILLISECONDS;
                if (durationUnit.compareTo(durationUnit2) < 0) {
                    durationUnit2.getClass();
                    long convert = durationUnit.getTimeUnit$kotlin_stdlib().convert(1L, durationUnit2.getTimeUnit$kotlin_stdlib());
                    long j4 = (read / convert) - (j / convert);
                    long j5 = (read % convert) - (j % convert);
                    Path.Companion companion2 = Duration.Companion;
                    j2 = Duration.m853plusLRDsOJo(InstantKt.toDuration(j4, durationUnit2), InstantKt.toDuration(j5, durationUnit));
                } else {
                    j2 = Duration.m856unaryMinusUwyO8pc(j3 < 0 ? Duration.NEG_INFINITE : Duration.INFINITE);
                }
            } else {
                j2 = InstantKt.toDuration(j3, durationUnit);
            }
        }
        long j6 = j2 >> 1;
        Path.Companion companion3 = Duration.Companion;
        long j7 = (1 & ((int) j2)) == 0 ? j6 : j6 > 9223372036854L ? Long.MAX_VALUE : j6 < -9223372036854L ? Long.MIN_VALUE : j6 * 1000000;
        this.elapsedTimeNanos = j7;
        long j8 = this.availableTimeNanos - j7;
        this.availableTimeNanos = j8;
        this.startTime = read;
        FileUtil.traceValue("compose:lazy:prefetch:available_time_nanos", j8);
    }
}
