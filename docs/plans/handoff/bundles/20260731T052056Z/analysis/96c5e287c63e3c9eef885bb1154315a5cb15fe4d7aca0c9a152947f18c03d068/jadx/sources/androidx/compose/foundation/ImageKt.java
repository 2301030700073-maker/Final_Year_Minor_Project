package androidx.compose.foundation;

import android.os.Build;
import android.view.KeyEvent;
import android.widget.EdgeEffect;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.pager.PagerBringIntoViewSpec;
import androidx.compose.material3.RippleNodeFactory;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda31;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ImageKt {
    /* renamed from: BorderStroke-cXLIe8U, reason: not valid java name */
    public static final BorderStroke m45BorderStrokecXLIe8U(float f, long j) {
        return new BorderStroke(f, new SolidColor(j));
    }

    public static final void Canvas(Modifier modifier, Function1 function1, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(-932836462);
        int i3 = 2;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            OffsetKt.Spacer(gapComposer, ClipKt.drawBehind(modifier, function1));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ForYouCardKt$$ExternalSyntheticLambda31(modifier, function1, i, i3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Image(androidx.compose.ui.graphics.painter.Painter r19, java.lang.String r20, androidx.compose.ui.Modifier r21, androidx.compose.ui.Alignment r22, androidx.compose.ui.layout.ContentScale r23, float r24, androidx.compose.ui.graphics.BlendModeColorFilter r25, androidx.compose.runtime.GapComposer r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.ImageKt.Image(androidx.compose.ui.graphics.painter.Painter, java.lang.String, androidx.compose.ui.Modifier, androidx.compose.ui.Alignment, androidx.compose.ui.layout.ContentScale, float, androidx.compose.ui.graphics.BlendModeColorFilter, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static float absorbToRelaxIfNeeded(EdgeEffect edgeEffect, float f, float f2, Density density) {
        float f3 = EdgeEffectCompat_androidKt.PlatformFlingScrollFriction;
        double density2 = density.getDensity() * 386.0878f * 160.0f * 0.84f;
        double d = EdgeEffectCompat_androidKt.PlatformFlingScrollFriction * density2;
        float exp = (float) (Math.exp((EdgeEffectCompat_androidKt.DecelerationRate / EdgeEffectCompat_androidKt.DecelMinusOne) * Math.log((Math.abs(f) * 0.35f) / d)) * d);
        int i = Build.VERSION.SDK_INT;
        if (exp > (i >= 31 ? Api31Impl.getDistance(edgeEffect) : 0.0f) * f2) {
            return RecyclerView.DECELERATION_RATE;
        }
        int roundToInt = UnsignedKt.roundToInt(f);
        if (i >= 31) {
            edgeEffect.onAbsorb(roundToInt);
            return f;
        }
        if (edgeEffect.isFinished()) {
            edgeEffect.onAbsorb(roundToInt);
        }
        return f;
    }

    public static Modifier background$default(Modifier modifier, LinearGradient linearGradient, Shape shape, int i) {
        if ((i & 2) != 0) {
            shape = ColorKt.RectangleShape;
        }
        return modifier.then(new BackgroundElement(0L, linearGradient, shape, 1));
    }

    /* renamed from: background-bw27NRU, reason: not valid java name */
    public static final Modifier m46backgroundbw27NRU(Modifier modifier, long j, Shape shape) {
        return modifier.then(new BackgroundElement(j, null, shape, 2));
    }

    /* renamed from: border-xT4_qwU, reason: not valid java name */
    public static final Modifier m48borderxT4_qwU(Modifier modifier, float f, long j, Shape shape) {
        return modifier.then(new BorderModifierNodeElement(f, new SolidColor(j), shape));
    }

    /* renamed from: checkScrollableContainerConstraints-K40F9xA, reason: not valid java name */
    public static final void m49checkScrollableContainerConstraintsK40F9xA(long j, Orientation orientation) {
        if (orientation == Orientation.Vertical) {
            if (Constraints.m680getMaxHeightimpl(j) != Integer.MAX_VALUE) {
                return;
            }
            InlineClassHelperKt.throwIllegalStateException("Vertically scrollable component was measured with an infinity maximum height constraints, which is disallowed. One of the common reasons is nesting layouts like LazyColumn and Column(Modifier.verticalScroll()). If you want to add a header before the list of items please add a header as a separate item() before the main items() inside the LazyColumn scope. There could be other reasons for this to happen: your ComposeView was added into a LinearLayout with some weight, you applied Modifier.wrapContentSize(unbounded = true) or wrote a custom layout. Please try to remove the source of infinite constraints in the hierarchy above the scrolling container.");
        } else {
            if (Constraints.m681getMaxWidthimpl(j) != Integer.MAX_VALUE) {
                return;
            }
            InlineClassHelperKt.throwIllegalStateException("Horizontally scrollable component was measured with an infinity maximum width constraints, which is disallowed. One of the common reasons is nesting layouts like LazyRow and Row(Modifier.horizontalScroll()). If you want to add a header before the list of items please add a header as a separate item() before the main items() inside the LazyRow scope. There could be other reasons for this to happen: your ComposeView was added into a LinearLayout with some weight, you applied Modifier.wrapContentSize(unbounded = true) or wrote a custom layout. Please try to remove the source of infinite constraints in the hierarchy above the scrolling container.");
        }
    }

    /* renamed from: clickable-O2vRcR0$default, reason: not valid java name */
    public static Modifier m50clickableO2vRcR0$default(Modifier modifier, MutableInteractionSourceImpl mutableInteractionSourceImpl, final RippleNodeFactory rippleNodeFactory, boolean z, Role role, final Function0 function0, int i) {
        Modifier then;
        if ((i & 4) != 0) {
            z = true;
        }
        final boolean z2 = z;
        if ((i & 16) != 0) {
            role = null;
        }
        final Role role2 = role;
        final String str = null;
        if (rippleNodeFactory != null) {
            then = new ClickableElement(mutableInteractionSourceImpl, rippleNodeFactory, false, z2, null, role2, function0);
        } else if (rippleNodeFactory == null) {
            then = new ClickableElement(mutableInteractionSourceImpl, null, false, z2, null, role2, function0);
        } else {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            then = mutableInteractionSourceImpl != null ? IndicationKt.indication(companion, mutableInteractionSourceImpl, rippleNodeFactory).then(new ClickableElement(mutableInteractionSourceImpl, null, false, z2, null, role2, function0)) : companion.then(new ComposedModifier(new Function3() { // from class: androidx.compose.foundation.ClickableKt$clickable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    GapComposer gapComposer = (GapComposer) obj2;
                    ((Number) obj3).intValue();
                    gapComposer.startReplaceGroup(-1525724089);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new MutableInteractionSourceImpl();
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    MutableInteractionSourceImpl mutableInteractionSourceImpl2 = (MutableInteractionSourceImpl) rememberedValue;
                    Modifier then2 = IndicationKt.indication(Modifier.Companion.$$INSTANCE, mutableInteractionSourceImpl2, IndicationNodeFactory.this).then(new ClickableElement(mutableInteractionSourceImpl2, null, false, z2, str, role2, function0));
                    gapComposer.end(false);
                    return then2;
                }
            }));
        }
        return modifier.then(then);
    }

    /* renamed from: clickable-oSLSa3U$default, reason: not valid java name */
    public static Modifier m51clickableoSLSa3U$default(int i, Modifier modifier, String str, Function0 function0, boolean z) {
        if ((i & 1) != 0) {
            z = true;
        }
        boolean z2 = z;
        if ((i & 2) != 0) {
            str = null;
        }
        return modifier.then(new ClickableElement(null, null, true, z2, str, null, function0));
    }

    public static final Modifier focusable(Modifier modifier, boolean z, MutableInteractionSourceImpl mutableInteractionSourceImpl) {
        return modifier.then(z ? new FocusableElement(mutableInteractionSourceImpl) : Modifier.Companion.$$INSTANCE);
    }

    /* renamed from: isEnter-ZmokQxo, reason: not valid java name */
    public static final boolean m54isEnterZmokQxo(KeyEvent keyEvent) {
        long m499getKeyZmokQxo = Key_androidKt.m499getKeyZmokQxo(keyEvent);
        int i = Key.$r8$clinit;
        return Key.m498equalsimpl0(m499getKeyZmokQxo, Key.DirectionCenter) || Key.m498equalsimpl0(m499getKeyZmokQxo, Key.Enter) || Key.m498equalsimpl0(m499getKeyZmokQxo, Key.NumPadEnter) || Key.m498equalsimpl0(m499getKeyZmokQxo, Key.Spacebar);
    }

    public static final ScrollState rememberScrollState(GapComposer gapComposer) {
        Object[] objArr = new Object[0];
        boolean changed = gapComposer.changed(0);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new ImmLeaksCleaner$$ExternalSyntheticLambda0(8);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (ScrollState) SaverKt.rememberSaveable(objArr, ScrollState.Saver, (Function0) rememberedValue, gapComposer, 0);
    }

    public static Modifier scroll$default(Modifier modifier, ScrollState scrollState, boolean z) {
        Orientation orientation = z ? Orientation.Vertical : Orientation.Horizontal;
        MutableInteractionSourceImpl mutableInteractionSourceImpl = scrollState.internalInteractionSource;
        Orientation orientation2 = Orientation.Vertical;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        return modifier.then(orientation == orientation2 ? ClipKt.clip(companion, VerticalScrollableClipShape.INSTANCE) : ClipKt.clip(companion, VerticalScrollableClipShape.INSTANCE$1)).then(new ScrollableAreaElement(null, null, null, orientation, scrollState, mutableInteractionSourceImpl, true, true)).then(new ScrollingLayoutElement(scrollState, z));
    }

    public static final Modifier scrollableArea(Modifier modifier, ScrollableState scrollableState, Orientation orientation, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, boolean z, FlingBehavior flingBehavior, MutableInteractionSourceImpl mutableInteractionSourceImpl, PagerBringIntoViewSpec pagerBringIntoViewSpec) {
        Orientation orientation2 = Orientation.Vertical;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        return modifier.then(orientation == orientation2 ? ClipKt.clip(companion, VerticalScrollableClipShape.INSTANCE) : ClipKt.clip(companion, VerticalScrollableClipShape.INSTANCE$1)).then(new ScrollableAreaElement(androidEdgeEffectOverscrollEffect, pagerBringIntoViewSpec, flingBehavior, orientation, scrollableState, mutableInteractionSourceImpl, z, false));
    }

    /* renamed from: shrink-Kibmq7A, reason: not valid java name */
    public static final long m55shrinkKibmq7A(float f, long j) {
        float max = Math.max(RecyclerView.DECELERATION_RATE, Float.intBitsToFloat((int) (j >> 32)) - f);
        float max2 = Math.max(RecyclerView.DECELERATION_RATE, Float.intBitsToFloat((int) (j & 4294967295L)) - f);
        return (Float.floatToRawIntBits(max) << 32) | (Float.floatToRawIntBits(max2) & 4294967295L);
    }
}
