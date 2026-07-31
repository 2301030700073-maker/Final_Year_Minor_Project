package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.foundation.gestures.DraggableNode$onDragStarted$1;
import androidx.compose.foundation.layout.IntrinsicSizeModifier;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SizeAnimationModifierNode extends IntrinsicSizeModifier {
    public final ParcelableSnapshotMutableState animData$delegate;
    public AnimationSpec animationSpec;
    public long lookaheadConstraints;
    public boolean lookaheadConstraintsAvailable;
    public long lookaheadSize;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AnimData {
        public final Animatable anim;
        public long startSize;

        public AnimData(Animatable animatable, long j) {
            this.anim = animatable;
            this.startSize = j;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof AnimData) {
                AnimData animData = (AnimData) obj;
                if (this.anim == animData.anim && IntSize.m768equalsimpl0(this.startSize, animData.startSize)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return IntSize.m769hashCodeimpl(this.startSize) + (this.anim.hashCode() * 31);
        }

        public final String toString() {
            return "AnimData(anim=" + this.anim + ", startSize=" + ((Object) IntSize.m770toStringimpl(this.startSize)) + ')';
        }
    }

    public SizeAnimationModifierNode(AnimationSpec animationSpec) {
        super(1);
        this.animationSpec = animationSpec;
        this.lookaheadSize = -9223372034707292160L;
        this.lookaheadConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15);
        this.animData$delegate = Updater.mutableStateOf$default(null);
    }

    @Override // androidx.compose.foundation.layout.IntrinsicSizeModifier, androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo109measure3p2s80s(final MeasureScope measureScope, Measurable measurable, long j) {
        Placeable mo571measureBRTryo0;
        char c;
        long j2;
        AnimData animData;
        long m738constrain4WqzIAM;
        AnimData animData2;
        if (measureScope.isLookingAhead()) {
            this.lookaheadConstraints = j;
            this.lookaheadConstraintsAvailable = true;
            mo571measureBRTryo0 = measurable.mo571measureBRTryo0(j);
        } else {
            mo571measureBRTryo0 = measurable.mo571measureBRTryo0(this.lookaheadConstraintsAvailable ? this.lookaheadConstraints : j);
        }
        final Placeable placeable = mo571measureBRTryo0;
        long j3 = (placeable.height & 4294967295L) | (placeable.width << 32);
        if (measureScope.isLookingAhead()) {
            this.lookaheadSize = j3;
            c = ' ';
            m738constrain4WqzIAM = j3;
            j2 = m738constrain4WqzIAM;
        } else {
            long j4 = !IntSize.m768equalsimpl0(this.lookaheadSize, -9223372034707292160L) ? this.lookaheadSize : j3;
            ParcelableSnapshotMutableState parcelableSnapshotMutableState = this.animData$delegate;
            AnimData animData3 = (AnimData) parcelableSnapshotMutableState.getValue();
            if (animData3 != null) {
                Animatable animatable = animData3.anim;
                c = ' ';
                j2 = j3;
                boolean z = (IntSize.m768equalsimpl0(j4, ((IntSize) animatable.getValue()).packedValue) || animatable.isRunning()) ? false : true;
                if (!IntSize.m768equalsimpl0(j4, ((IntSize) animatable.targetValue$delegate.getValue()).packedValue) || z) {
                    animData3.startSize = ((IntSize) animatable.getValue()).packedValue;
                    animData2 = animData3;
                    JobKt.launch$default(getCoroutineScope(), null, null, new DraggableNode$onDragStarted$1(animData2, j4, this, (Continuation) null), 3);
                } else {
                    animData2 = animData3;
                }
                animData = animData2;
            } else {
                long j5 = j4;
                c = ' ';
                j2 = j3;
                animData = new AnimData(new Animatable(new IntSize(j5), ArcSplineKt.IntSizeToVector, new IntSize(4294967297L), 8), j5);
            }
            parcelableSnapshotMutableState.setValue(animData);
            m738constrain4WqzIAM = ConstraintsKt.m738constrain4WqzIAM(j, ((IntSize) animData.anim.getValue()).packedValue);
        }
        final int i = (int) (m738constrain4WqzIAM >> c);
        final int i2 = (int) (m738constrain4WqzIAM & 4294967295L);
        final long j6 = j2;
        return measureScope.layout(i, i2, EmptyMap.INSTANCE, new Function1(this) { // from class: androidx.compose.animation.SizeAnimationModifierNode$measure$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                long j7 = (i << 32) | (i2 & 4294967295L);
                LayoutDirection layoutDirection = measureScope.getLayoutDirection();
                long j8 = j6;
                float f = (((int) (j7 >> 32)) - ((int) (j8 >> 32))) / 2.0f;
                float f2 = (((int) (j7 & 4294967295L)) - ((int) (j8 & 4294967295L))) / 2.0f;
                float f3 = layoutDirection == LayoutDirection.Ltr ? -1.0f : (-1.0f) * (-1.0f);
                float f4 = (1.0f - 1.0f) * f2;
                int round = Math.round((f3 + 1.0f) * f);
                Placeable.PlacementScope.m592place70tqf50$default(placementScope, placeable, (Math.round(f4) & 4294967295L) | (round << 32));
                return Unit.INSTANCE;
            }
        });
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        this.lookaheadSize = -9223372034707292160L;
        this.lookaheadConstraintsAvailable = false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onReset() {
        this.animData$delegate.setValue(null);
    }
}
