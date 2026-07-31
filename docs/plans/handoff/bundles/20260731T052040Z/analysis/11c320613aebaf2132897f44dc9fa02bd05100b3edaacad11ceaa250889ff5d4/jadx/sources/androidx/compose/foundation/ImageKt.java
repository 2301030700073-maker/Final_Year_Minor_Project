package androidx.compose.foundation;

import android.content.res.Configuration;
import android.os.Build;
import android.view.KeyEvent;
import android.widget.EdgeEffect;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.pager.PagerBringIntoViewSpec;
import androidx.compose.material3.RippleNodeFactory;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.layout.ContentScale$Companion;
import androidx.compose.ui.layout.ContentScale$Companion$Fit$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.semantics.AppendedSemanticsElement;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ImageKt {
    public static final void Canvas(Modifier modifier, Function1 function1, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-932836462);
        int i2 = (gapComposer.changed(modifier) ? 4 : 2) | i | (gapComposer.changedInstance(function1) ? 32 : 16);
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            SpacerKt.Spacer(gapComposer, ClipKt.drawBehind(modifier, function1));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda2(i, modifier, function1, i3);
        }
    }

    public static final void Image(final Painter painter, final Modifier modifier, Alignment alignment, ContentScale$Companion$Fit$1 contentScale$Companion$Fit$1, float f, Composer composer, final int i) {
        final float f2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1142754848);
        int i2 = (gapComposer.changedInstance(painter) ? 4 : 2) | i | (gapComposer.changed(modifier) ? 256 : 128) | 1797120;
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
            alignment = Alignment.Companion.Center;
            gapComposer.startReplaceGroup(1899222916);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new ImageKt$$ExternalSyntheticLambda0(i3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            AppendedSemanticsElement appendedSemanticsElement = new AppendedSemanticsElement((Function1) rememberedValue, false);
            gapComposer.end(false);
            Modifier paint$default = ClipKt.paint$default(ClipKt.clipToBounds(modifier.then(appendedSemanticsElement)), painter, 1.0f, null, 2);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = ImageKt$Image$1$1.INSTANCE;
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue2;
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            Modifier materializeModifier = RangesKt.materializeModifier(gapComposer, paint$default);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m170setimpl(gapComposer, measurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m170setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m169reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m170setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Updater.m170setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            gapComposer.end(true);
            contentScale$Companion$Fit$1 = ContentScale$Companion.Fit;
            f2 = 1.0f;
        } else {
            gapComposer.skipToGroupEnd();
            f2 = f;
        }
        final Alignment alignment2 = alignment;
        final ContentScale$Companion$Fit$1 contentScale$Companion$Fit$12 = contentScale$Companion$Fit$1;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(modifier, alignment2, contentScale$Companion$Fit$12, f2, i) { // from class: androidx.compose.foundation.ImageKt$$ExternalSyntheticLambda1
                public final /* synthetic */ Modifier f$2;
                public final /* synthetic */ Alignment f$3;
                public final /* synthetic */ ContentScale$Companion$Fit$1 f$4;
                public final /* synthetic */ float f$5;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(57);
                    ImageKt.Image(Painter.this, this.f$2, this.f$3, this.f$4, this.f$5, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
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
    public static final Modifier m27backgroundbw27NRU(Modifier modifier, long j, Shape shape) {
        return modifier.then(new BackgroundElement(j, shape));
    }

    /* renamed from: checkScrollableContainerConstraints-K40F9xA, reason: not valid java name */
    public static final void m28checkScrollableContainerConstraintsK40F9xA(long j, Orientation orientation) {
        if (orientation == Orientation.Vertical) {
            if (Constraints.m433getMaxHeightimpl(j) != Integer.MAX_VALUE) {
                return;
            }
            InlineClassHelperKt.throwIllegalStateException("Vertically scrollable component was measured with an infinity maximum height constraints, which is disallowed. One of the common reasons is nesting layouts like LazyColumn and Column(Modifier.verticalScroll()). If you want to add a header before the list of items please add a header as a separate item() before the main items() inside the LazyColumn scope. There could be other reasons for this to happen: your ComposeView was added into a LinearLayout with some weight, you applied Modifier.wrapContentSize(unbounded = true) or wrote a custom layout. Please try to remove the source of infinite constraints in the hierarchy above the scrolling container.");
        } else {
            if (Constraints.m434getMaxWidthimpl(j) != Integer.MAX_VALUE) {
                return;
            }
            InlineClassHelperKt.throwIllegalStateException("Horizontally scrollable component was measured with an infinity maximum width constraints, which is disallowed. One of the common reasons is nesting layouts like LazyRow and Row(Modifier.horizontalScroll()). If you want to add a header before the list of items please add a header as a separate item() before the main items() inside the LazyRow scope. There could be other reasons for this to happen: your ComposeView was added into a LinearLayout with some weight, you applied Modifier.wrapContentSize(unbounded = true) or wrote a custom layout. Please try to remove the source of infinite constraints in the hierarchy above the scrolling container.");
        }
    }

    /* renamed from: clickable-O2vRcR0$default, reason: not valid java name */
    public static Modifier m29clickableO2vRcR0$default(Modifier modifier, MutableInteractionSource mutableInteractionSource, final RippleNodeFactory rippleNodeFactory, final boolean z, Role role, final Function0 function0, int i) {
        if ((i & 16) != 0) {
            role = null;
        }
        final Role role2 = role;
        return modifier.then(Modifier.CC.m182m((Object) rippleNodeFactory) ? new ClickableElement(mutableInteractionSource, rippleNodeFactory, false, z, role2, function0) : rippleNodeFactory == null ? new ClickableElement(mutableInteractionSource, null, false, z, role2, function0) : mutableInteractionSource != null ? IndicationKt.indication(mutableInteractionSource, rippleNodeFactory).then(new ClickableElement(mutableInteractionSource, null, false, z, role2, function0)) : new ComposedModifier(new Function3() { // from class: androidx.compose.foundation.ClickableKt$clickable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                ((Number) obj3).intValue();
                GapComposer gapComposer = (GapComposer) ((Composer) obj2);
                gapComposer.startReplaceGroup(-1525724089);
                Object rememberedValue = gapComposer.rememberedValue();
                if (rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = new MutableInteractionSourceImpl();
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                MutableInteractionSource mutableInteractionSource2 = (MutableInteractionSource) rememberedValue;
                Modifier then = IndicationKt.indication(mutableInteractionSource2, IndicationNodeFactory.this).then(new ClickableElement(mutableInteractionSource2, null, false, z, role2, function0));
                gapComposer.end(false);
                return then;
            }
        }));
    }

    /* renamed from: isEnter-ZmokQxo, reason: not valid java name */
    public static final boolean m32isEnterZmokQxo(KeyEvent keyEvent) {
        long m671getKeyZmokQxo = CharsKt.m671getKeyZmokQxo(keyEvent);
        int i = Key.$r8$clinit;
        return Key.m285equalsimpl0(m671getKeyZmokQxo, Key.DirectionCenter) || Key.m285equalsimpl0(m671getKeyZmokQxo, Key.Enter) || Key.m285equalsimpl0(m671getKeyZmokQxo, Key.NumPadEnter) || Key.m285equalsimpl0(m671getKeyZmokQxo, Key.Spacebar);
    }

    public static final boolean isSystemInDarkTheme(Composer composer) {
        return (((Configuration) ((GapComposer) composer).consume(AndroidCompositionLocals_androidKt.LocalConfiguration)).uiMode & 48) == 32;
    }

    public static final Modifier scrollableArea(Modifier modifier, ScrollableState scrollableState, Orientation orientation, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, boolean z, FlingBehavior flingBehavior, MutableInteractionSourceImpl mutableInteractionSourceImpl, PagerBringIntoViewSpec pagerBringIntoViewSpec) {
        Orientation orientation2 = Orientation.Vertical;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        return modifier.then(orientation == orientation2 ? ClipKt.clip(companion, VerticalScrollableClipShape.INSTANCE) : ClipKt.clip(companion, VerticalScrollableClipShape.INSTANCE$1)).then(new ScrollableAreaElement(androidEdgeEffectOverscrollEffect, pagerBringIntoViewSpec, flingBehavior, orientation, scrollableState, mutableInteractionSourceImpl, z));
    }
}
