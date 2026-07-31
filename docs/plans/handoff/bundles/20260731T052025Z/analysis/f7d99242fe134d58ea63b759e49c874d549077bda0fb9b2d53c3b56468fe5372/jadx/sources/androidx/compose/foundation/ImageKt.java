package androidx.compose.foundation;

import android.content.res.Configuration;
import android.os.Build;
import android.view.KeyEvent;
import android.widget.EdgeEffect;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.gestures.DefaultFlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.material3.RippleNodeFactory;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ImageKt {
    /* renamed from: BorderStroke-cXLIe8U, reason: not valid java name */
    public static final BorderStroke m131BorderStrokecXLIe8U(float f, long j) {
        return new BorderStroke(f, new SolidColor(j));
    }

    public static final void Canvas(int i, Composer composer, Modifier modifier, Function1 function1) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-932836462);
        int i2 = (gapComposer.changed(modifier) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16);
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            OffsetKt.Spacer(gapComposer, ClipKt.drawBehind(modifier, function1));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CanvasKt$$ExternalSyntheticLambda0(modifier, function1, i, i3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Image(final androidx.compose.ui.graphics.painter.Painter r18, final java.lang.String r19, final androidx.compose.ui.Modifier r20, androidx.compose.ui.Alignment r21, androidx.compose.ui.layout.ContentScale r22, float r23, androidx.compose.ui.graphics.ColorFilter r24, androidx.compose.runtime.Composer r25, final int r26, final int r27) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.ImageKt.Image(androidx.compose.ui.graphics.painter.Painter, java.lang.String, androidx.compose.ui.Modifier, androidx.compose.ui.Alignment, androidx.compose.ui.layout.ContentScale, float, androidx.compose.ui.graphics.ColorFilter, androidx.compose.runtime.Composer, int, int):void");
    }

    public static float absorbToRelaxIfNeeded(EdgeEffect edgeEffect, float f, float f2, Density density) {
        float f3 = EdgeEffectCompat_androidKt.PlatformFlingScrollFriction;
        double density2 = density.getDensity() * 386.0878f * 160.0f * 0.84f;
        double d = EdgeEffectCompat_androidKt.PlatformFlingScrollFriction * density2;
        float exp = (float) (Math.exp((EdgeEffectCompat_androidKt.DecelerationRate / EdgeEffectCompat_androidKt.DecelMinusOne) * Math.log((Math.abs(f) * 0.35f) / d)) * d);
        int i = Build.VERSION.SDK_INT;
        if (exp > (i >= 31 ? Api31Impl.getDistance(edgeEffect) : 0.0f) * f2) {
            return 0.0f;
        }
        int roundToInt = MathKt.roundToInt(f);
        if (i >= 31) {
            edgeEffect.onAbsorb(roundToInt);
            return f;
        }
        if (edgeEffect.isFinished()) {
            edgeEffect.onAbsorb(roundToInt);
        }
        return f;
    }

    /* renamed from: background-bw27NRU, reason: not valid java name */
    public static final Modifier m132backgroundbw27NRU(Modifier modifier, long j, Shape shape) {
        return modifier.then(new BackgroundElement(j, shape));
    }

    /* renamed from: border-xT4_qwU, reason: not valid java name */
    public static final Modifier m133borderxT4_qwU(Modifier modifier, float f, long j, Shape shape) {
        return modifier.then(new BorderModifierNodeElement(f, new SolidColor(j), shape));
    }

    /* renamed from: checkScrollableContainerConstraints-K40F9xA, reason: not valid java name */
    public static final void m134checkScrollableContainerConstraintsK40F9xA(long j, Orientation orientation) {
        if (orientation == Orientation.Vertical) {
            if (Constraints.m733getMaxHeightimpl(j) != Integer.MAX_VALUE) {
                return;
            }
            InlineClassHelperKt.throwIllegalStateException("Vertically scrollable component was measured with an infinity maximum height constraints, which is disallowed. One of the common reasons is nesting layouts like LazyColumn and Column(Modifier.verticalScroll()). If you want to add a header before the list of items please add a header as a separate item() before the main items() inside the LazyColumn scope. There could be other reasons for this to happen: your ComposeView was added into a LinearLayout with some weight, you applied Modifier.wrapContentSize(unbounded = true) or wrote a custom layout. Please try to remove the source of infinite constraints in the hierarchy above the scrolling container.");
        } else {
            if (Constraints.m734getMaxWidthimpl(j) != Integer.MAX_VALUE) {
                return;
            }
            InlineClassHelperKt.throwIllegalStateException("Horizontally scrollable component was measured with an infinity maximum width constraints, which is disallowed. One of the common reasons is nesting layouts like LazyRow and Row(Modifier.horizontalScroll()). If you want to add a header before the list of items please add a header as a separate item() before the main items() inside the LazyRow scope. There could be other reasons for this to happen: your ComposeView was added into a LinearLayout with some weight, you applied Modifier.wrapContentSize(unbounded = true) or wrote a custom layout. Please try to remove the source of infinite constraints in the hierarchy above the scrolling container.");
        }
    }

    /* renamed from: clickable-O2vRcR0$default, reason: not valid java name */
    public static Modifier m135clickableO2vRcR0$default(Modifier modifier, MutableInteractionSourceImpl mutableInteractionSourceImpl, RippleNodeFactory rippleNodeFactory, boolean z, Role role, Function0 function0, int i) {
        Modifier then;
        if ((i & 16) != 0) {
            role = null;
        }
        Role role2 = role;
        if (rippleNodeFactory != null) {
            then = new ClickableElement(mutableInteractionSourceImpl, rippleNodeFactory, false, z, null, role2, function0);
        } else if (rippleNodeFactory == null) {
            then = new ClickableElement(mutableInteractionSourceImpl, null, false, z, null, role2, function0);
        } else {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            then = mutableInteractionSourceImpl != null ? IndicationKt.indication(companion, mutableInteractionSourceImpl, rippleNodeFactory).then(new ClickableElement(mutableInteractionSourceImpl, null, false, z, null, role2, function0)) : companion.then(new ComposedModifier(new ClickableKt$clickableO2vRcR0$$inlined$clickableWithIndicationIfNeeded$1(rippleNodeFactory, z, role2, function0)));
        }
        return modifier.then(then);
    }

    /* renamed from: clickable-oSLSa3U$default, reason: not valid java name */
    public static Modifier m136clickableoSLSa3U$default(Modifier modifier, boolean z, String str, Function0 function0, int i) {
        if ((i & 1) != 0) {
            z = true;
        }
        boolean z2 = z;
        if ((i & 2) != 0) {
            str = null;
        }
        return modifier.then(new ClickableElement(null, null, true, z2, str, null, function0));
    }

    /* renamed from: combinedClickable-hoGz1lA$default, reason: not valid java name */
    public static Modifier m138combinedClickablehoGz1lA$default(Modifier modifier, Function0 function0, Function0 function02, int i) {
        if ((i & 16) != 0) {
            function0 = null;
        }
        return modifier.then(new CombinedClickableElement(null, function02, function0, true, true));
    }

    public static final Modifier focusable(Modifier modifier, boolean z, MutableInteractionSourceImpl mutableInteractionSourceImpl) {
        return modifier.then(z ? new FocusableElement(mutableInteractionSourceImpl) : Modifier.Companion.$$INSTANCE);
    }

    /* renamed from: isEnter-ZmokQxo, reason: not valid java name */
    public static final boolean m139isEnterZmokQxo(KeyEvent keyEvent) {
        long m557getKeyZmokQxo = Key_androidKt.m557getKeyZmokQxo(keyEvent);
        int i = Key.$r8$clinit;
        return Key.m556equalsimpl0(m557getKeyZmokQxo, Key.DirectionCenter) || Key.m556equalsimpl0(m557getKeyZmokQxo, Key.Enter) || Key.m556equalsimpl0(m557getKeyZmokQxo, Key.NumPadEnter) || Key.m556equalsimpl0(m557getKeyZmokQxo, Key.Spacebar);
    }

    public static final boolean isSystemInDarkTheme(Composer composer) {
        return (((Configuration) ((GapComposer) composer).consume(AndroidCompositionLocals_androidKt.LocalConfiguration)).uiMode & 48) == 32;
    }

    public static final ScrollState rememberScrollState(Composer composer) {
        Object[] objArr = new Object[0];
        boolean changed = ((GapComposer) composer).changed(0);
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new ImmLeaksCleaner$$ExternalSyntheticLambda0(12);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (ScrollState) SaverKt.rememberSaveable(objArr, ScrollState.Saver, (Function0) rememberedValue, gapComposer, 0);
    }

    public static Modifier scrollableArea$default(Modifier modifier, ScrollableState scrollableState, Orientation orientation, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, boolean z, DefaultFlingBehavior defaultFlingBehavior, MutableInteractionSourceImpl mutableInteractionSourceImpl) {
        Orientation orientation2 = Orientation.Vertical;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        return modifier.then(orientation == orientation2 ? ClipKt.clip(companion, VerticalScrollableClipShape.INSTANCE) : ClipKt.clip(companion, VerticalScrollableClipShape.INSTANCE$1)).then(new ScrollableAreaElement(androidEdgeEffectOverscrollEffect, defaultFlingBehavior, orientation, scrollableState, mutableInteractionSourceImpl, z, false));
    }

    /* renamed from: shrink-Kibmq7A, reason: not valid java name */
    public static final long m140shrinkKibmq7A(float f, long j) {
        float max = Math.max(0.0f, Float.intBitsToFloat((int) (j >> 32)) - f);
        float max2 = Math.max(0.0f, Float.intBitsToFloat((int) (j & 4294967295L)) - f);
        return (Float.floatToRawIntBits(max) << 32) | (Float.floatToRawIntBits(max2) & 4294967295L);
    }
}
