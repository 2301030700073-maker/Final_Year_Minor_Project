package androidx.compose.animation.core;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.paging.FlowExtKt$simpleScan$1;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InfiniteTransition {
    public final MutableVector _animations = new MutableVector(new TransitionAnimationState[16]);
    public final ParcelableSnapshotMutableState refreshChildNeeded$delegate = Updater.mutableStateOf$default(Boolean.FALSE);
    public long startTimeNanos = Long.MIN_VALUE;
    public final ParcelableSnapshotMutableState isRunning$delegate = Updater.mutableStateOf$default(Boolean.TRUE);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TransitionAnimationState implements State {
        public TargetBasedAnimation animation;
        public Float initialValue;
        public boolean isFinished;
        public long playTimeNanosOffset;
        public boolean startOnTheNextFrame;
        public Float targetValue;
        public final /* synthetic */ InfiniteTransition this$0;
        public final ParcelableSnapshotMutableState value$delegate;

        public TransitionAnimationState(InfiniteTransition infiniteTransition, Float f, Float f2, InfiniteRepeatableSpec infiniteRepeatableSpec) {
            TwoWayConverterImpl twoWayConverterImpl = ArcSplineKt.FloatToVector;
            this.this$0 = infiniteTransition;
            this.initialValue = f;
            this.targetValue = f2;
            this.value$delegate = Updater.mutableStateOf$default(f);
            this.animation = new TargetBasedAnimation(infiniteRepeatableSpec, twoWayConverterImpl, this.initialValue, this.targetValue, null);
        }

        @Override // androidx.compose.runtime.State
        public final Object getValue() {
            return this.value$delegate.getValue();
        }
    }

    public final void run$animation_core(int i, GapComposer gapComposer) {
        gapComposer.startRestartGroup(-318043801);
        int i2 = 2;
        int i3 = (gapComposer.changedInstance(this) ? 4 : 2) | i;
        int i4 = 1;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 3) != 2)) {
            Object rememberedValue = gapComposer.rememberedValue();
            Continuation continuation = null;
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(null);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            if (((Boolean) this.isRunning$delegate.getValue()).booleanValue() || ((Boolean) this.refreshChildNeeded$delegate.getValue()).booleanValue()) {
                gapComposer.startReplaceGroup(-144841960);
                boolean changedInstance = gapComposer.changedInstance(this);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new FlowExtKt$simpleScan$1(mutableState, this, continuation, i2);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Updater.LaunchedEffect(gapComposer, this, (Function2) rememberedValue2);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-143455237);
                gapComposer.end(false);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GamesHubScreenKt$$ExternalSyntheticLambda0(this, i, i4);
        }
    }
}
