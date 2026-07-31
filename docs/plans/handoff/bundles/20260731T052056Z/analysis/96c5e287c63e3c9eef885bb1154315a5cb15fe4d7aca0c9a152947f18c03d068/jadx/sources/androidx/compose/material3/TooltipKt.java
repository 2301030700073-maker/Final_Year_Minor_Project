package androidx.compose.material3;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ButtonKt$Button$2;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.material3.tokens.PlainTooltipTokens;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TooltipKt {
    public static final PaddingValuesImpl PlainTooltipContentPadding = new PaddingValuesImpl(8.0f, 4.0f, 8.0f, 4.0f);

    /* renamed from: PlainTooltip-gv3ox5I, reason: not valid java name */
    public static final void m310PlainTooltipgv3ox5I(TooltipScopeImpl tooltipScopeImpl, Modifier modifier, float f, Shape shape, long j, long j2, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        float f2;
        Shape shape2;
        long j3;
        final float f3;
        Shape value;
        final long value2;
        int i3;
        gapComposer.startRestartGroup(-343758958);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(tooltipScopeImpl) : gapComposer.changedInstance(tooltipScopeImpl) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        int i4 = i2 | 3456;
        if ((i & 24576) == 0) {
            i4 = i2 | 11648;
        }
        if ((196608 & i) == 0) {
            i4 |= 65536;
        }
        if ((1572864 & i) == 0) {
            i4 |= gapComposer.changed(j2) ? 1048576 : 524288;
        }
        int i5 = 113246208 | i4;
        if ((805306368 & i) == 0) {
            i5 |= gapComposer.changedInstance(composableLambdaImpl) ? 536870912 : 268435456;
        }
        if (gapComposer.shouldExecute(i5 & 1, (306783379 & i5) != 306783378)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                f3 = TooltipDefaults.plainTooltipMaxWidth;
                value = ShapesKt.getValue(PlainTooltipTokens.ContainerShape, gapComposer);
                value2 = ColorSchemeKt.getValue(PlainTooltipTokens.SupportingTextColor, gapComposer);
                i3 = i5 & (-516097);
            } else {
                gapComposer.skipToGroupEnd();
                i3 = i5 & (-516097);
                f3 = f;
                value = shape;
                value2 = j;
            }
            gapComposer.endDefaults();
            gapComposer.startReplaceGroup(-1719831991);
            gapComposer.end(false);
            int i6 = ((i3 >> 12) & 896) | 12582912;
            int i7 = i3 >> 9;
            int i8 = i6 | (57344 & i7) | (i7 & 458752);
            j3 = value2;
            SurfaceKt.m297SurfaceT9BRK9s(modifier, value, j2, 0L, RecyclerView.DECELERATION_RATE, null, Expect_jvmKt.rememberComposableLambda(-1573998995, new Function2() { // from class: androidx.compose.material3.TooltipKt$PlainTooltip$4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    GapComposer gapComposer2 = (GapComposer) obj;
                    int intValue = ((Number) obj2).intValue();
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        PaddingValuesImpl paddingValuesImpl = TooltipKt.PlainTooltipContentPadding;
                        Modifier padding = OffsetKt.padding(SizeKt.m148sizeInqDBjuR0$default(Modifier.Companion.$$INSTANCE, 40.0f, 24.0f, f3, 8), TooltipKt.PlainTooltipContentPadding);
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                        int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer2);
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, padding);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            Modifier.CC.m(currentCompositeKeyHash, gapComposer2, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
                        }
                        Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                        Updater.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(value2)), TextKt.LocalTextStyle.defaultProvidedValue$runtime(TypographyKt.getValue(PlainTooltipTokens.SupportingTextFont, gapComposer2))}, composableLambdaImpl, gapComposer2, 8);
                        gapComposer2.end(true);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, i8, 72);
            f2 = f3;
            shape2 = value;
        } else {
            gapComposer.skipToGroupEnd();
            f2 = f;
            shape2 = shape;
            j3 = j;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AppBarKt$$ExternalSyntheticLambda8(tooltipScopeImpl, modifier, f2, shape2, j3, j2, composableLambdaImpl, i);
        }
    }

    public static final void TooltipBox(PopupPositionProvider popupPositionProvider, ComposableLambdaImpl composableLambdaImpl, TooltipStateImpl tooltipStateImpl, boolean z, ComposableLambdaImpl composableLambdaImpl2, GapComposer gapComposer, int i) {
        int i2;
        boolean z2;
        gapComposer.startRestartGroup(-293753984);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(popupPositionProvider) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= (i & 512) == 0 ? gapComposer.changed(tooltipStateImpl) : gapComposer.changedInstance(tooltipStateImpl) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(Modifier.Companion.$$INSTANCE) ? 2048 : 1024;
        }
        int i3 = i2 | 14376960;
        if ((100663296 & i) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl2) ? 67108864 : 33554432;
        }
        int i4 = 0;
        if (gapComposer.shouldExecute(i3 & 1, (38347923 & i3) != 38347922)) {
            Transition rememberTransition = ArcSplineKt.rememberTransition(tooltipStateImpl.transition, "tooltip transition", gapComposer, 48);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(null);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                new ForYouCardKt$$ExternalSyntheticLambda2(mutableState, 10);
                rememberedValue2 = new TooltipScopeImpl();
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            LayoutUtilKt.BasicTooltipBox(popupPositionProvider, Expect_jvmKt.rememberComposableLambda(-527401546, new TooltipKt$TooltipBox$3(rememberTransition, composableLambdaImpl, (TooltipScopeImpl) rememberedValue2, i4), gapComposer), tooltipStateImpl, Expect_jvmKt.rememberComposableLambda(-23901870, new ButtonKt$Button$2.AnonymousClass1(5, mutableState, composableLambdaImpl2), gapComposer), gapComposer, (i3 & 14) | 100663344 | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (i3 & 29360128));
            z2 = true;
        } else {
            gapComposer.skipToGroupEnd();
            z2 = z;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TooltipKt$$ExternalSyntheticLambda1(popupPositionProvider, composableLambdaImpl, tooltipStateImpl, z2, composableLambdaImpl2, i);
        }
    }
}
