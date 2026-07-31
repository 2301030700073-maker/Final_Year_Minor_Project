package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import android.widget.EdgeEffect;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.ExposedDropdownMenuKt$expandable$1;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.unit.Density;
import androidx.core.util.DebugUtils;
import kotlin.Unit;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidEdgeEffectOverscrollEffect {
    public long containerSize;
    public final Density density;
    public final EdgeEffectWrapper edgeEffectWrapper;
    public final boolean invalidationEnabled;
    public final DelegatingNode node;
    public long pointerId;
    public long pointerPosition = 9205357640488583168L;
    public final ParcelableSnapshotMutableState redrawSignal;
    public boolean scrollCycleInProgress;

    public AndroidEdgeEffectOverscrollEffect(Context context, Density density, long j, PaddingValues paddingValues) {
        this.density = density;
        EdgeEffectWrapper edgeEffectWrapper = new EdgeEffectWrapper(context, ColorKt.m500toArgb8_81llA(j));
        this.edgeEffectWrapper = edgeEffectWrapper;
        this.redrawSignal = new ParcelableSnapshotMutableState(Unit.INSTANCE, NeverEqualPolicy.INSTANCE);
        this.invalidationEnabled = true;
        this.containerSize = 0L;
        this.pointerId = -1L;
        ExposedDropdownMenuKt$expandable$1 exposedDropdownMenuKt$expandable$1 = new ExposedDropdownMenuKt$expandable$1(1, this);
        PointerEvent pointerEvent = SuspendingPointerInputFilterKt.EmptyPointerEvent;
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = new SuspendingPointerInputModifierNodeImpl(null, null, exposedDropdownMenuKt$expandable$1);
        this.node = Build.VERSION.SDK_INT >= 31 ? new StretchOverscrollNode(suspendingPointerInputModifierNodeImpl, this, edgeEffectWrapper) : new GlowOverscrollNode(suspendingPointerInputModifierNodeImpl, this, edgeEffectWrapper, paddingValues);
    }

    public final void animateToReleaseIfNeeded() {
        boolean z;
        EdgeEffectWrapper edgeEffectWrapper = this.edgeEffectWrapper;
        EdgeEffect edgeEffect = edgeEffectWrapper.topEffect;
        boolean z2 = true;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = !edgeEffect.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = edgeEffectWrapper.bottomEffect;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z = !edgeEffect2.isFinished() || z;
        }
        EdgeEffect edgeEffect3 = edgeEffectWrapper.leftEffect;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z = !edgeEffect3.isFinished() || z;
        }
        EdgeEffect edgeEffect4 = edgeEffectWrapper.rightEffect;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            if (edgeEffect4.isFinished() && !z) {
                z2 = false;
            }
            z = z2;
        }
        if (z) {
            invalidateOverscroll$foundation();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0137, code lost:
    
        if (r4 == r6) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /* renamed from: applyToFling-BMRW4eQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m123applyToFlingBMRW4eQ(long r19, androidx.compose.foundation.gestures.ScrollingLogic$onScrollStopped$performFling$1 r21, kotlin.coroutines.jvm.internal.ContinuationImpl r22) {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect.m123applyToFlingBMRW4eQ(long, androidx.compose.foundation.gestures.ScrollingLogic$onScrollStopped$performFling$1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: displacement-F1C5BW0$foundation, reason: not valid java name */
    public final long m124displacementF1C5BW0$foundation() {
        long j = this.pointerPosition;
        if ((9223372034707292159L & j) == 9205357640488583168L) {
            j = DebugUtils.m788getCenteruvyYCjk(this.containerSize);
        }
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) / Float.intBitsToFloat((int) (this.containerSize >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) / Float.intBitsToFloat((int) (this.containerSize & 4294967295L));
        return (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
    }

    public final void invalidateOverscroll$foundation() {
        if (this.invalidationEnabled) {
            this.redrawSignal.setValue(Unit.INSTANCE);
        }
    }

    /* renamed from: pullBottom-k-4lQ0M, reason: not valid java name */
    public final float m125pullBottomk4lQ0M(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (m124displacementF1C5BW0$foundation() >> 32));
        int i = (int) (j & 4294967295L);
        float intBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.containerSize & 4294967295L));
        EdgeEffect orCreateBottomEffect = this.edgeEffectWrapper.getOrCreateBottomEffect();
        float f = -intBitsToFloat2;
        float f2 = 1.0f - intBitsToFloat;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            f = Api31Impl.onPullDistance(orCreateBottomEffect, f, f2);
        } else {
            orCreateBottomEffect.onPull(f, f2);
        }
        return (i2 >= 31 ? Api31Impl.getDistance(orCreateBottomEffect) : 0.0f) == 0.0f ? Float.intBitsToFloat((int) (4294967295L & this.containerSize)) * (-f) : Float.intBitsToFloat(i);
    }

    /* renamed from: pullLeft-k-4lQ0M, reason: not valid java name */
    public final float m126pullLeftk4lQ0M(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (m124displacementF1C5BW0$foundation() & 4294967295L));
        int i = (int) (j >> 32);
        float intBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.containerSize >> 32));
        EdgeEffect orCreateLeftEffect = this.edgeEffectWrapper.getOrCreateLeftEffect();
        float f = 1.0f - intBitsToFloat;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            intBitsToFloat2 = Api31Impl.onPullDistance(orCreateLeftEffect, intBitsToFloat2, f);
        } else {
            orCreateLeftEffect.onPull(intBitsToFloat2, f);
        }
        return (i2 >= 31 ? Api31Impl.getDistance(orCreateLeftEffect) : 0.0f) == 0.0f ? Float.intBitsToFloat((int) (this.containerSize >> 32)) * intBitsToFloat2 : Float.intBitsToFloat(i);
    }

    /* renamed from: pullRight-k-4lQ0M, reason: not valid java name */
    public final float m127pullRightk4lQ0M(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (m124displacementF1C5BW0$foundation() & 4294967295L));
        int i = (int) (j >> 32);
        float intBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.containerSize >> 32));
        EdgeEffect orCreateRightEffect = this.edgeEffectWrapper.getOrCreateRightEffect();
        float f = -intBitsToFloat2;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            f = Api31Impl.onPullDistance(orCreateRightEffect, f, intBitsToFloat);
        } else {
            orCreateRightEffect.onPull(f, intBitsToFloat);
        }
        return (i2 >= 31 ? Api31Impl.getDistance(orCreateRightEffect) : 0.0f) == 0.0f ? Float.intBitsToFloat((int) (this.containerSize >> 32)) * (-f) : Float.intBitsToFloat(i);
    }

    /* renamed from: pullTop-k-4lQ0M, reason: not valid java name */
    public final float m128pullTopk4lQ0M(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (m124displacementF1C5BW0$foundation() >> 32));
        int i = (int) (j & 4294967295L);
        float intBitsToFloat2 = Float.intBitsToFloat(i) / Float.intBitsToFloat((int) (this.containerSize & 4294967295L));
        EdgeEffect orCreateTopEffect = this.edgeEffectWrapper.getOrCreateTopEffect();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            intBitsToFloat2 = Api31Impl.onPullDistance(orCreateTopEffect, intBitsToFloat2, intBitsToFloat);
        } else {
            orCreateTopEffect.onPull(intBitsToFloat2, intBitsToFloat);
        }
        return (i2 >= 31 ? Api31Impl.getDistance(orCreateTopEffect) : 0.0f) == 0.0f ? Float.intBitsToFloat((int) (4294967295L & this.containerSize)) * intBitsToFloat2 : Float.intBitsToFloat(i);
    }

    /* renamed from: updateSize-uvyYCjk$foundation, reason: not valid java name */
    public final void m129updateSizeuvyYCjk$foundation(long j) {
        boolean m449equalsimpl0 = Size.m449equalsimpl0(this.containerSize, 0L);
        boolean m449equalsimpl02 = Size.m449equalsimpl0(j, this.containerSize);
        this.containerSize = j;
        if (!m449equalsimpl02) {
            long roundToInt = (MathKt.roundToInt(Float.intBitsToFloat((int) (j & 4294967295L))) & 4294967295L) | (MathKt.roundToInt(Float.intBitsToFloat((int) (j >> 32))) << 32);
            EdgeEffectWrapper edgeEffectWrapper = this.edgeEffectWrapper;
            edgeEffectWrapper.size = roundToInt;
            EdgeEffect edgeEffect = edgeEffectWrapper.topEffect;
            if (edgeEffect != null) {
                edgeEffect.setSize((int) (roundToInt >> 32), (int) (roundToInt & 4294967295L));
            }
            EdgeEffect edgeEffect2 = edgeEffectWrapper.bottomEffect;
            if (edgeEffect2 != null) {
                edgeEffect2.setSize((int) (roundToInt >> 32), (int) (roundToInt & 4294967295L));
            }
            EdgeEffect edgeEffect3 = edgeEffectWrapper.leftEffect;
            if (edgeEffect3 != null) {
                edgeEffect3.setSize((int) (roundToInt & 4294967295L), (int) (roundToInt >> 32));
            }
            EdgeEffect edgeEffect4 = edgeEffectWrapper.rightEffect;
            if (edgeEffect4 != null) {
                edgeEffect4.setSize((int) (roundToInt & 4294967295L), (int) (roundToInt >> 32));
            }
            EdgeEffect edgeEffect5 = edgeEffectWrapper.topEffectNegation;
            if (edgeEffect5 != null) {
                edgeEffect5.setSize((int) (roundToInt >> 32), (int) (roundToInt & 4294967295L));
            }
            EdgeEffect edgeEffect6 = edgeEffectWrapper.bottomEffectNegation;
            if (edgeEffect6 != null) {
                edgeEffect6.setSize((int) (roundToInt >> 32), (int) (roundToInt & 4294967295L));
            }
            EdgeEffect edgeEffect7 = edgeEffectWrapper.leftEffectNegation;
            if (edgeEffect7 != null) {
                edgeEffect7.setSize((int) (roundToInt & 4294967295L), (int) (roundToInt >> 32));
            }
            EdgeEffect edgeEffect8 = edgeEffectWrapper.rightEffectNegation;
            if (edgeEffect8 != null) {
                edgeEffect8.setSize((int) (4294967295L & roundToInt), (int) (roundToInt >> 32));
            }
        }
        if (m449equalsimpl0 || m449equalsimpl02) {
            return;
        }
        animateToReleaseIfNeeded();
    }
}
