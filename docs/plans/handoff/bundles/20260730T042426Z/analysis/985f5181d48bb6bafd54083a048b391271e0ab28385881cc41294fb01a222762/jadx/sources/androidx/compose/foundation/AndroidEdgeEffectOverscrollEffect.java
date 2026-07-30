package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import android.widget.EdgeEffect;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* compiled from: AndroidOverscroll.android.kt */
/* loaded from: classes.dex */
public final class AndroidEdgeEffectOverscrollEffect implements OverscrollEffect {
    private long containerSize;
    private final EdgeEffectWrapper edgeEffectWrapper;
    private final Modifier effectModifier;
    private boolean invalidationEnabled;
    private PointerId pointerId;
    private Offset pointerPosition;
    private final MutableState redrawSignal;
    private boolean scrollCycleInProgress;

    public AndroidEdgeEffectOverscrollEffect(Context context, OverscrollConfiguration overscrollConfiguration) {
        Modifier drawGlowOverscrollModifier;
        EdgeEffectWrapper edgeEffectWrapper = new EdgeEffectWrapper(context, ColorKt.m1324toArgb8_81llA(overscrollConfiguration.m144getGlowColor0d7_KjU()));
        this.edgeEffectWrapper = edgeEffectWrapper;
        Unit unit = Unit.INSTANCE;
        this.redrawSignal = SnapshotStateKt.mutableStateOf(unit, SnapshotStateKt.neverEqualPolicy());
        this.invalidationEnabled = true;
        this.containerSize = Size.Companion.m1210getZeroNHjbRc();
        Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(Modifier.Companion, unit, new AndroidEdgeEffectOverscrollEffect$effectModifier$1(this, null));
        if (Build.VERSION.SDK_INT >= 31) {
            drawGlowOverscrollModifier = new DrawStretchOverscrollModifier(this, edgeEffectWrapper, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1() { // from class: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(obj);
                    invoke((InspectorInfo) null);
                    return Unit.INSTANCE;
                }

                public final void invoke(InspectorInfo inspectorInfo) {
                    throw null;
                }
            } : InspectableValueKt.getNoInspectorInfo());
        } else {
            drawGlowOverscrollModifier = new DrawGlowOverscrollModifier(this, edgeEffectWrapper, overscrollConfiguration, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1() { // from class: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(obj);
                    invoke((InspectorInfo) null);
                    return Unit.INSTANCE;
                }

                public final void invoke(InspectorInfo inspectorInfo) {
                    throw null;
                }
            } : InspectableValueKt.getNoInspectorInfo());
        }
        this.effectModifier = pointerInput.then(drawGlowOverscrollModifier);
    }

    public final MutableState getRedrawSignal$foundation_release() {
        return this.redrawSignal;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x011b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x010c  */
    @Override // androidx.compose.foundation.OverscrollEffect
    /* renamed from: applyToScroll-Rhakbz0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo96applyToScrollRhakbz0(long r11, int r13, kotlin.jvm.functions.Function1 r14) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect.mo96applyToScrollRhakbz0(long, int, kotlin.jvm.functions.Function1):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // androidx.compose.foundation.OverscrollEffect
    /* renamed from: applyToFling-BMRW4eQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo95applyToFlingBMRW4eQ(long r11, kotlin.jvm.functions.Function2 r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect.mo95applyToFlingBMRW4eQ(long, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public boolean isInProgress() {
        EdgeEffect edgeEffect;
        EdgeEffect edgeEffect2;
        EdgeEffect edgeEffect3;
        EdgeEffect edgeEffect4;
        EdgeEffectWrapper edgeEffectWrapper = this.edgeEffectWrapper;
        edgeEffect = edgeEffectWrapper.topEffect;
        if (edgeEffect != null && EdgeEffectCompat.INSTANCE.getDistanceCompat(edgeEffect) != 0.0f) {
            return true;
        }
        edgeEffect2 = edgeEffectWrapper.bottomEffect;
        if (edgeEffect2 != null && EdgeEffectCompat.INSTANCE.getDistanceCompat(edgeEffect2) != 0.0f) {
            return true;
        }
        edgeEffect3 = edgeEffectWrapper.leftEffect;
        if (edgeEffect3 != null && EdgeEffectCompat.INSTANCE.getDistanceCompat(edgeEffect3) != 0.0f) {
            return true;
        }
        edgeEffect4 = edgeEffectWrapper.rightEffect;
        return (edgeEffect4 == null || EdgeEffectCompat.INSTANCE.getDistanceCompat(edgeEffect4) == 0.0f) ? false : true;
    }

    private final boolean stopOverscrollAnimation() {
        boolean z;
        if (this.edgeEffectWrapper.isLeftStretched()) {
            m91pullLeftk4lQ0M(Offset.Companion.m1179getZeroF1C5BW0());
            z = true;
        } else {
            z = false;
        }
        if (this.edgeEffectWrapper.isRightStretched()) {
            m92pullRightk4lQ0M(Offset.Companion.m1179getZeroF1C5BW0());
            z = true;
        }
        if (this.edgeEffectWrapper.isTopStretched()) {
            m93pullTopk4lQ0M(Offset.Companion.m1179getZeroF1C5BW0());
            z = true;
        }
        if (!this.edgeEffectWrapper.isBottomStretched()) {
            return z;
        }
        m90pullBottomk4lQ0M(Offset.Companion.m1179getZeroF1C5BW0());
        return true;
    }

    /* renamed from: updateSize-uvyYCjk$foundation_release, reason: not valid java name */
    public final void m98updateSizeuvyYCjk$foundation_release(long j) {
        boolean m1201equalsimpl0 = Size.m1201equalsimpl0(this.containerSize, Size.Companion.m1210getZeroNHjbRc());
        boolean m1201equalsimpl02 = Size.m1201equalsimpl0(j, this.containerSize);
        this.containerSize = j;
        if (!m1201equalsimpl02) {
            this.edgeEffectWrapper.m135setSizeozmzZPI(IntSizeKt.IntSize(MathKt.roundToInt(Size.m1204getWidthimpl(j)), MathKt.roundToInt(Size.m1202getHeightimpl(j))));
        }
        if (m1201equalsimpl0 || m1201equalsimpl02) {
            return;
        }
        invalidateOverscroll$foundation_release();
        animateToRelease();
    }

    /* renamed from: displacement-F1C5BW0$foundation_release, reason: not valid java name */
    public final long m97displacementF1C5BW0$foundation_release() {
        Offset offset = this.pointerPosition;
        long m1176unboximpl = offset != null ? offset.m1176unboximpl() : SizeKt.m1211getCenteruvyYCjk(this.containerSize);
        return OffsetKt.Offset(Offset.m1167getXimpl(m1176unboximpl) / Size.m1204getWidthimpl(this.containerSize), Offset.m1168getYimpl(m1176unboximpl) / Size.m1202getHeightimpl(this.containerSize));
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public Modifier getEffectModifier() {
        return this.effectModifier;
    }

    public final void invalidateOverscroll$foundation_release() {
        if (this.invalidationEnabled) {
            this.redrawSignal.setValue(Unit.INSTANCE);
        }
    }

    private final void animateToRelease() {
        EdgeEffect edgeEffect;
        boolean z;
        EdgeEffect edgeEffect2;
        EdgeEffect edgeEffect3;
        EdgeEffect edgeEffect4;
        EdgeEffectWrapper edgeEffectWrapper = this.edgeEffectWrapper;
        edgeEffect = edgeEffectWrapper.topEffect;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = edgeEffect.isFinished();
        } else {
            z = false;
        }
        edgeEffect2 = edgeEffectWrapper.bottomEffect;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z = edgeEffect2.isFinished() || z;
        }
        edgeEffect3 = edgeEffectWrapper.leftEffect;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z = edgeEffect3.isFinished() || z;
        }
        edgeEffect4 = edgeEffectWrapper.rightEffect;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z = edgeEffect4.isFinished() || z;
        }
        if (z) {
            invalidateOverscroll$foundation_release();
        }
    }

    /* renamed from: releaseOppositeOverscroll-k-4lQ0M, reason: not valid java name */
    private final boolean m94releaseOppositeOverscrollk4lQ0M(long j) {
        boolean z;
        boolean z2 = true;
        if (!this.edgeEffectWrapper.isLeftAnimating() || Offset.m1167getXimpl(j) >= 0.0f) {
            z = false;
        } else {
            EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.edgeEffectWrapper.getOrCreateLeftEffect(), Offset.m1167getXimpl(j));
            z = !this.edgeEffectWrapper.isLeftAnimating();
        }
        if (this.edgeEffectWrapper.isRightAnimating() && Offset.m1167getXimpl(j) > 0.0f) {
            EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.edgeEffectWrapper.getOrCreateRightEffect(), Offset.m1167getXimpl(j));
            z = z || !this.edgeEffectWrapper.isRightAnimating();
        }
        if (this.edgeEffectWrapper.isTopAnimating() && Offset.m1168getYimpl(j) < 0.0f) {
            EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.edgeEffectWrapper.getOrCreateTopEffect(), Offset.m1168getYimpl(j));
            z = z || !this.edgeEffectWrapper.isTopAnimating();
        }
        if (!this.edgeEffectWrapper.isBottomAnimating() || Offset.m1168getYimpl(j) <= 0.0f) {
            return z;
        }
        EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.edgeEffectWrapper.getOrCreateBottomEffect(), Offset.m1168getYimpl(j));
        if (!z && this.edgeEffectWrapper.isBottomAnimating()) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: pullTop-k-4lQ0M, reason: not valid java name */
    private final float m93pullTopk4lQ0M(long j) {
        float m1167getXimpl = Offset.m1167getXimpl(m97displacementF1C5BW0$foundation_release());
        float m1168getYimpl = Offset.m1168getYimpl(j) / Size.m1202getHeightimpl(this.containerSize);
        EdgeEffect orCreateTopEffect = this.edgeEffectWrapper.getOrCreateTopEffect();
        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
        return edgeEffectCompat.getDistanceCompat(orCreateTopEffect) == 0.0f ? edgeEffectCompat.onPullDistanceCompat(orCreateTopEffect, m1168getYimpl, m1167getXimpl) * Size.m1202getHeightimpl(this.containerSize) : Offset.m1168getYimpl(j);
    }

    /* renamed from: pullBottom-k-4lQ0M, reason: not valid java name */
    private final float m90pullBottomk4lQ0M(long j) {
        float m1167getXimpl = Offset.m1167getXimpl(m97displacementF1C5BW0$foundation_release());
        float m1168getYimpl = Offset.m1168getYimpl(j) / Size.m1202getHeightimpl(this.containerSize);
        EdgeEffect orCreateBottomEffect = this.edgeEffectWrapper.getOrCreateBottomEffect();
        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
        return edgeEffectCompat.getDistanceCompat(orCreateBottomEffect) == 0.0f ? (-edgeEffectCompat.onPullDistanceCompat(orCreateBottomEffect, -m1168getYimpl, 1 - m1167getXimpl)) * Size.m1202getHeightimpl(this.containerSize) : Offset.m1168getYimpl(j);
    }

    /* renamed from: pullLeft-k-4lQ0M, reason: not valid java name */
    private final float m91pullLeftk4lQ0M(long j) {
        float m1168getYimpl = Offset.m1168getYimpl(m97displacementF1C5BW0$foundation_release());
        float m1167getXimpl = Offset.m1167getXimpl(j) / Size.m1204getWidthimpl(this.containerSize);
        EdgeEffect orCreateLeftEffect = this.edgeEffectWrapper.getOrCreateLeftEffect();
        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
        return edgeEffectCompat.getDistanceCompat(orCreateLeftEffect) == 0.0f ? edgeEffectCompat.onPullDistanceCompat(orCreateLeftEffect, m1167getXimpl, 1 - m1168getYimpl) * Size.m1204getWidthimpl(this.containerSize) : Offset.m1167getXimpl(j);
    }

    /* renamed from: pullRight-k-4lQ0M, reason: not valid java name */
    private final float m92pullRightk4lQ0M(long j) {
        float m1168getYimpl = Offset.m1168getYimpl(m97displacementF1C5BW0$foundation_release());
        float m1167getXimpl = Offset.m1167getXimpl(j) / Size.m1204getWidthimpl(this.containerSize);
        EdgeEffect orCreateRightEffect = this.edgeEffectWrapper.getOrCreateRightEffect();
        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
        return edgeEffectCompat.getDistanceCompat(orCreateRightEffect) == 0.0f ? (-edgeEffectCompat.onPullDistanceCompat(orCreateRightEffect, -m1167getXimpl, m1168getYimpl)) * Size.m1204getWidthimpl(this.containerSize) : Offset.m1167getXimpl(j);
    }
}
