package androidx.compose.material3;

import androidx.compose.animation.AnimatedContentKt$AnimatedContent$4$1;
import androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1$2;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.foundation.CombinedClickableElement;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.PxCornerSize;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.internal.AnimatedCornerBasedShapeState;
import androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$1$1;
import androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$3$1;
import androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$4$1;
import androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$6$1;
import androidx.compose.material3.internal.AnimatedShapeState;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.TypographyKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MultiContentMeasurePolicyImpl;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.AppendedSemanticsElement;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.RendererCapabilities;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.ClosedFloatRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ProduceKt;
import net.newpipe.app.ComposeActivity$$ExternalSyntheticLambda2;
import org.jsoup.Jsoup;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ListItemKt {
    public static final float InteractiveListBottomPadding;
    public static final float InteractiveListTopPadding;
    public static final float InteractiveListVerticalAlignmentBreakpoint;
    public static final float InteractiveListStartPadding = ListTokens.ItemLeadingSpace;
    public static final float InteractiveListEndPadding = ListTokens.ItemTrailingSpace;

    static {
        float f = ListTokens.ItemTopSpace;
        InteractiveListTopPadding = f;
        float f2 = ListTokens.ItemBottomSpace;
        InteractiveListBottomPadding = f2;
        InteractiveListVerticalAlignmentBreakpoint = (((ListTokens.ItemThreeLineContainerHeight + ListTokens.ItemTwoLineContainerHeight) / 2.0f) - f) - f2;
    }

    public static final void CollectInteractionsAsState(InteractionSource interactionSource, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(844822063);
        int i2 = (gapComposer.changed(interactionSource) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            boolean z = (i2 & 14) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new ListItemKt$CollectInteractionsAsState$1$1(mutableState, mutableState2, mutableState3, mutableState4, interactionSource, null);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Updater.LaunchedEffect(gapComposer, interactionSource, (Function2) rememberedValue);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ListItemKt$$ExternalSyntheticLambda5(interactionSource, mutableState, mutableState2, mutableState3, mutableState4, i, 1);
        }
    }

    /* renamed from: ContentDecorator-3J-VO9M, reason: not valid java name */
    public static final void m148ContentDecorator3JVO9M(long j, TypographyKeyTokens typographyKeyTokens, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(747020814);
        int i2 = i | (gapComposer.changed(j) ? 4 : 2) | (gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & Token.EXPR_VOID) != 146)) {
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j2 = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = RangesKt.materializeModifier(gapComposer, Modifier.Companion.$$INSTANCE);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m170setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m170setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m170setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m169reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m170setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            LayoutUtilKt.m165ProvideContentColorTextStyle3JVO9M(j, TypographyKt.getValue(typographyKeyTokens, gapComposer), composableLambdaImpl, gapComposer, i2 & 910);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ButtonKt$$ExternalSyntheticLambda2(j, typographyKeyTokens, composableLambdaImpl, i, 1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v20, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v54 */
    public static final void InteractiveListItem(final ComposableLambdaImpl composableLambdaImpl, final Alignment.Vertical vertical, final boolean z, final Function1 function1, final Function0 function0, ListItemColors listItemColors, ListItemShapes listItemShapes, ListItemElevation listItemElevation, final PaddingValues paddingValues, Composer composer, int i, int i2) {
        int i3;
        int i4;
        GapComposer gapComposer;
        ?? r11;
        Shape shape;
        boolean z2;
        Object currentState;
        TransitionState transitionState;
        boolean z3;
        Object currentState2;
        Shape shape2;
        boolean z4;
        Object currentState3;
        Transition.TransitionAnimationState transitionAnimationState;
        boolean z5;
        Object currentState4;
        Transition.TransitionAnimationState transitionAnimationState2;
        boolean z6;
        Object currentState5;
        boolean z7;
        Object currentState6;
        float f;
        AnimatedContentKt$AnimatedContent$4$1 animatedContentKt$AnimatedContent$4$1 = AnimatedContentKt$AnimatedContent$4$1.INSTANCE$2;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-1408227475);
        if ((i & 6) == 0) {
            i3 = (gapComposer2.changed(Modifier.Companion.$$INSTANCE) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer2.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i3 |= gapComposer2.changedInstance(null) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer2.changedInstance(null) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer2.changedInstance(null) ? 16384 : 8192;
        }
        if ((i & 196608) == 0) {
            i3 |= gapComposer2.changedInstance(null) ? 131072 : 65536;
        }
        if ((i & 1572864) == 0) {
            i3 |= gapComposer2.changed(vertical) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i3 |= gapComposer2.changed(z) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i3 |= gapComposer2.changed(false) ? 67108864 : 33554432;
        }
        if ((i & C.ENCODING_PCM_32BIT) == 0) {
            i3 |= gapComposer2.changedInstance(function1) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposer2.changedInstance(function0) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposer2.changedInstance(null) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i4 |= gapComposer2.changed((Object) null) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposer2.changed((Object) null) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposer2.changed(listItemColors) ? 16384 : 8192;
        }
        if ((i2 & 196608) == 0) {
            i4 |= gapComposer2.changed(listItemShapes) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposer2.changed(listItemElevation) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposer2.changed(paddingValues) ? 8388608 : 4194304;
        }
        if (gapComposer2.shouldExecute(i3 & 1, ((306783379 & i3) == 306783378 && (i4 & 4793491) == 4793490) ? false : true)) {
            gapComposer2.startReplaceGroup(736607630);
            Object rememberedValue = gapComposer2.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (rememberedValue == obj) {
                rememberedValue = new MutableInteractionSourceImpl();
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            final MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) rememberedValue;
            gapComposer2.end(false);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState = (MutableState) rememberedValue2;
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (rememberedValue3 == obj) {
                rememberedValue3 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            MutableState mutableState2 = (MutableState) rememberedValue3;
            Object rememberedValue4 = gapComposer2.rememberedValue();
            if (rememberedValue4 == obj) {
                rememberedValue4 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer2.updateRememberedValue(rememberedValue4);
            }
            MutableState mutableState3 = (MutableState) rememberedValue4;
            Object rememberedValue5 = gapComposer2.rememberedValue();
            if (rememberedValue5 == obj) {
                rememberedValue5 = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer2.updateRememberedValue(rememberedValue5);
            }
            MutableState mutableState4 = (MutableState) rememberedValue5;
            CollectInteractionsAsState(mutableInteractionSource, mutableState, mutableState2, mutableState3, mutableState4, gapComposer2, 28080);
            FiniteAnimationSpec value = BadgeKt.value(MotionSchemeKeyTokens.DefaultEffects, gapComposer2);
            MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.FastSpatial;
            FiniteAnimationSpec value2 = BadgeKt.value(motionSchemeKeyTokens, gapComposer2);
            FiniteAnimationSpec value3 = BadgeKt.value(motionSchemeKeyTokens, gapComposer2);
            boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
            boolean booleanValue2 = ((Boolean) mutableState2.getValue()).booleanValue();
            boolean booleanValue3 = ((Boolean) mutableState3.getValue()).booleanValue();
            boolean booleanValue4 = ((Boolean) mutableState4.getValue()).booleanValue();
            gapComposer2.startReplaceGroup(2080718032);
            Shape shape3 = booleanValue ? listItemShapes.pressedShape : booleanValue4 ? listItemShapes.draggedShape : booleanValue2 ? listItemShapes.focusedShape : booleanValue3 ? listItemShapes.hoveredShape : listItemShapes.shape;
            Shape shape4 = listItemShapes.shape;
            Shape shape5 = listItemShapes.draggedShape;
            Shape shape6 = listItemShapes.hoveredShape;
            Shape shape7 = listItemShapes.focusedShape;
            Shape shape8 = shape3;
            Shape shape9 = listItemShapes.pressedShape;
            Shape shape10 = listItemShapes.selectedShape;
            if ((shape4 instanceof RoundedCornerShape) && (shape10 instanceof RoundedCornerShape) && (shape9 instanceof RoundedCornerShape) && (shape7 instanceof RoundedCornerShape) && (shape6 instanceof RoundedCornerShape) && (shape5 instanceof RoundedCornerShape)) {
                gapComposer2.startReplaceGroup(1703365676);
                gapComposer2.startMovableGroup(-1884714849, listItemShapes);
                shape8.getClass();
                RoundedCornerShape roundedCornerShape = (RoundedCornerShape) shape8;
                boolean changed = gapComposer2.changed(value2);
                Object rememberedValue6 = gapComposer2.rememberedValue();
                if (changed || rememberedValue6 == obj) {
                    rememberedValue6 = new AnimatedShapeState(roundedCornerShape, value2);
                    gapComposer2.updateRememberedValue(rememberedValue6);
                }
                final AnimatedShapeState animatedShapeState = (AnimatedShapeState) rememberedValue6;
                Object rememberedValue7 = gapComposer2.rememberedValue();
                if (rememberedValue7 == obj) {
                    rememberedValue7 = ProduceKt.Channel$default(-1, 6, null);
                    gapComposer2.updateRememberedValue(rememberedValue7);
                }
                Channel channel = (Channel) rememberedValue7;
                boolean changedInstance = gapComposer2.changedInstance(channel) | gapComposer2.changed(roundedCornerShape);
                Object rememberedValue8 = gapComposer2.rememberedValue();
                if (changedInstance || rememberedValue8 == obj) {
                    rememberedValue8 = new ComponentRegistry$Builder$$ExternalSyntheticLambda0(channel, roundedCornerShape, 6);
                    gapComposer2.updateRememberedValue(rememberedValue8);
                }
                Updater.SideEffect((Function0) rememberedValue8, gapComposer2);
                boolean changedInstance2 = gapComposer2.changedInstance(channel) | gapComposer2.changed(animatedShapeState);
                Object rememberedValue9 = gapComposer2.rememberedValue();
                if (changedInstance2 || rememberedValue9 == obj) {
                    rememberedValue9 = new AnimatedShapeKt$rememberAnimatedShape$3$1(channel, animatedShapeState, null);
                    gapComposer2.updateRememberedValue(rememberedValue9);
                }
                Updater.LaunchedEffect(animatedShapeState, channel, (Function2) rememberedValue9, gapComposer2);
                Density density = (Density) gapComposer2.consume(CompositionLocalsKt.LocalDensity);
                animatedShapeState.density = density;
                boolean changed2 = gapComposer2.changed(density) | gapComposer2.changed(animatedShapeState);
                Object rememberedValue10 = gapComposer2.rememberedValue();
                if (changed2 || rememberedValue10 == obj) {
                    rememberedValue10 = new Shape() { // from class: androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$1$1
                        public final ParcelableSnapshotMutableState clampedRange$delegate = Updater.mutableStateOf$default(new ClosedFloatRange(1.0f));

                        @Override // androidx.compose.ui.graphics.Shape
                        /* renamed from: createOutline-Pq9zytI */
                        public final Brush mo35createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density2) {
                            AnimatedShapeState animatedShapeState2 = AnimatedShapeState.this;
                            animatedShapeState2.size = j;
                            ClosedFloatRange closedFloatRange = new ClosedFloatRange(Float.intBitsToFloat((int) (4294967295L & j)) / 2.0f);
                            ParcelableSnapshotMutableState parcelableSnapshotMutableState = this.clampedRange$delegate;
                            parcelableSnapshotMutableState.setValue(closedFloatRange);
                            RoundedCornerShape roundedCornerShape2 = animatedShapeState2.shape;
                            long j2 = animatedShapeState2.size;
                            Density density3 = animatedShapeState2.density;
                            Animatable animatable = animatedShapeState2.topStart;
                            if (animatable == null) {
                                animatable = ArcSplineKt.Animatable$default(roundedCornerShape2.topStart.mo115toPxTmRCtEA(j2, density3));
                                animatedShapeState2.topStart = animatable;
                            }
                            PxCornerSize pxCornerSize = new PxCornerSize(((Number) RangesKt.coerceIn(Float.valueOf(((Number) animatable.getValue()).floatValue()), (ClosedFloatRange) parcelableSnapshotMutableState.getValue())).floatValue());
                            long j3 = animatedShapeState2.size;
                            Density density4 = animatedShapeState2.density;
                            Animatable animatable2 = animatedShapeState2.topEnd;
                            if (animatable2 == null) {
                                animatable2 = ArcSplineKt.Animatable$default(roundedCornerShape2.topEnd.mo115toPxTmRCtEA(j3, density4));
                                animatedShapeState2.topEnd = animatable2;
                            }
                            PxCornerSize pxCornerSize2 = new PxCornerSize(((Number) RangesKt.coerceIn(Float.valueOf(((Number) animatable2.getValue()).floatValue()), (ClosedFloatRange) parcelableSnapshotMutableState.getValue())).floatValue());
                            long j4 = animatedShapeState2.size;
                            Density density5 = animatedShapeState2.density;
                            Animatable animatable3 = animatedShapeState2.bottomStart;
                            if (animatable3 == null) {
                                animatable3 = ArcSplineKt.Animatable$default(roundedCornerShape2.bottomStart.mo115toPxTmRCtEA(j4, density5));
                                animatedShapeState2.bottomStart = animatable3;
                            }
                            PxCornerSize pxCornerSize3 = new PxCornerSize(((Number) RangesKt.coerceIn(Float.valueOf(((Number) animatable3.getValue()).floatValue()), (ClosedFloatRange) parcelableSnapshotMutableState.getValue())).floatValue());
                            long j5 = animatedShapeState2.size;
                            Density density6 = animatedShapeState2.density;
                            Animatable animatable4 = animatedShapeState2.bottomEnd;
                            if (animatable4 == null) {
                                animatable4 = ArcSplineKt.Animatable$default(roundedCornerShape2.bottomEnd.mo115toPxTmRCtEA(j5, density6));
                                animatedShapeState2.bottomEnd = animatable4;
                            }
                            return new RoundedCornerShape(pxCornerSize, pxCornerSize2, new PxCornerSize(((Number) RangesKt.coerceIn(Float.valueOf(((Number) animatable4.getValue()).floatValue()), (ClosedFloatRange) parcelableSnapshotMutableState.getValue())).floatValue()), pxCornerSize3).mo35createOutlinePq9zytI(j, layoutDirection, density2);
                        }
                    };
                    gapComposer2.updateRememberedValue(rememberedValue10);
                }
                r11 = 0;
                gapComposer2.end(false);
                gapComposer2.end(false);
                gapComposer2.end(false);
                shape = (AnimatedShapeKt$rememberAnimatedShape$1$1) rememberedValue10;
            } else if ((shape4 instanceof CornerBasedShape) && (shape10 instanceof CornerBasedShape) && (shape9 instanceof CornerBasedShape) && (shape7 instanceof CornerBasedShape) && (shape6 instanceof CornerBasedShape) && (shape5 instanceof CornerBasedShape)) {
                gapComposer2.startReplaceGroup(1703498542);
                gapComposer2.startMovableGroup(-1884710563, listItemShapes);
                shape8.getClass();
                CornerBasedShape cornerBasedShape = (CornerBasedShape) shape8;
                boolean changed3 = gapComposer2.changed(value2);
                Object rememberedValue11 = gapComposer2.rememberedValue();
                if (changed3 || rememberedValue11 == obj) {
                    rememberedValue11 = new AnimatedCornerBasedShapeState(cornerBasedShape, value2);
                    gapComposer2.updateRememberedValue(rememberedValue11);
                }
                final AnimatedCornerBasedShapeState animatedCornerBasedShapeState = (AnimatedCornerBasedShapeState) rememberedValue11;
                Object rememberedValue12 = gapComposer2.rememberedValue();
                if (rememberedValue12 == obj) {
                    rememberedValue12 = ProduceKt.Channel$default(-1, 6, null);
                    gapComposer2.updateRememberedValue(rememberedValue12);
                }
                Channel channel2 = (Channel) rememberedValue12;
                boolean changedInstance3 = gapComposer2.changedInstance(channel2) | gapComposer2.changed(cornerBasedShape);
                Object rememberedValue13 = gapComposer2.rememberedValue();
                if (changedInstance3 || rememberedValue13 == obj) {
                    rememberedValue13 = new ComponentRegistry$Builder$$ExternalSyntheticLambda0(channel2, cornerBasedShape, 7);
                    gapComposer2.updateRememberedValue(rememberedValue13);
                }
                Updater.SideEffect((Function0) rememberedValue13, gapComposer2);
                boolean changedInstance4 = gapComposer2.changedInstance(channel2) | gapComposer2.changed(animatedCornerBasedShapeState);
                Object rememberedValue14 = gapComposer2.rememberedValue();
                if (changedInstance4 || rememberedValue14 == obj) {
                    rememberedValue14 = new AnimatedShapeKt$rememberAnimatedShape$6$1(channel2, animatedCornerBasedShapeState, null);
                    gapComposer2.updateRememberedValue(rememberedValue14);
                }
                Updater.LaunchedEffect(animatedCornerBasedShapeState, channel2, (Function2) rememberedValue14, gapComposer2);
                Density density2 = (Density) gapComposer2.consume(CompositionLocalsKt.LocalDensity);
                animatedCornerBasedShapeState.density = density2;
                boolean changed4 = gapComposer2.changed(density2) | gapComposer2.changed(animatedCornerBasedShapeState);
                Object rememberedValue15 = gapComposer2.rememberedValue();
                if (changed4 || rememberedValue15 == obj) {
                    rememberedValue15 = new Shape() { // from class: androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$4$1
                        public final ParcelableSnapshotMutableState clampedRange$delegate = Updater.mutableStateOf$default(new ClosedFloatRange(1.0f));

                        @Override // androidx.compose.ui.graphics.Shape
                        /* renamed from: createOutline-Pq9zytI */
                        public final Brush mo35createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density3) {
                            AnimatedCornerBasedShapeState animatedCornerBasedShapeState2 = AnimatedCornerBasedShapeState.this;
                            CornerBasedShape cornerBasedShape2 = animatedCornerBasedShapeState2.shape;
                            animatedCornerBasedShapeState2.size = j;
                            ClosedFloatRange closedFloatRange = new ClosedFloatRange(Float.intBitsToFloat((int) (4294967295L & j)) / 2.0f);
                            ParcelableSnapshotMutableState parcelableSnapshotMutableState = this.clampedRange$delegate;
                            parcelableSnapshotMutableState.setValue(closedFloatRange);
                            long j2 = animatedCornerBasedShapeState2.size;
                            Density density4 = animatedCornerBasedShapeState2.density;
                            Animatable animatable = animatedCornerBasedShapeState2.topStart;
                            if (animatable == null) {
                                animatable = ArcSplineKt.Animatable$default(cornerBasedShape2.topStart.mo115toPxTmRCtEA(j2, density4));
                                animatedCornerBasedShapeState2.topStart = animatable;
                            }
                            float floatValue = ((Number) RangesKt.coerceIn(Float.valueOf(((Number) animatable.getValue()).floatValue()), (ClosedFloatRange) parcelableSnapshotMutableState.getValue())).floatValue();
                            long j3 = animatedCornerBasedShapeState2.size;
                            Density density5 = animatedCornerBasedShapeState2.density;
                            Animatable animatable2 = animatedCornerBasedShapeState2.topEnd;
                            if (animatable2 == null) {
                                animatable2 = ArcSplineKt.Animatable$default(cornerBasedShape2.topEnd.mo115toPxTmRCtEA(j3, density5));
                                animatedCornerBasedShapeState2.topEnd = animatable2;
                            }
                            float floatValue2 = ((Number) RangesKt.coerceIn(Float.valueOf(((Number) animatable2.getValue()).floatValue()), (ClosedFloatRange) parcelableSnapshotMutableState.getValue())).floatValue();
                            long j4 = animatedCornerBasedShapeState2.size;
                            Density density6 = animatedCornerBasedShapeState2.density;
                            Animatable animatable3 = animatedCornerBasedShapeState2.bottomStart;
                            if (animatable3 == null) {
                                animatable3 = ArcSplineKt.Animatable$default(cornerBasedShape2.bottomStart.mo115toPxTmRCtEA(j4, density6));
                                animatedCornerBasedShapeState2.bottomStart = animatable3;
                            }
                            float floatValue3 = ((Number) RangesKt.coerceIn(Float.valueOf(((Number) animatable3.getValue()).floatValue()), (ClosedFloatRange) parcelableSnapshotMutableState.getValue())).floatValue();
                            long j5 = animatedCornerBasedShapeState2.size;
                            Density density7 = animatedCornerBasedShapeState2.density;
                            Animatable animatable4 = animatedCornerBasedShapeState2.bottomEnd;
                            if (animatable4 == null) {
                                animatable4 = ArcSplineKt.Animatable$default(cornerBasedShape2.bottomEnd.mo115toPxTmRCtEA(j5, density7));
                                animatedCornerBasedShapeState2.bottomEnd = animatable4;
                            }
                            float floatValue4 = ((Number) RangesKt.coerceIn(Float.valueOf(((Number) animatable4.getValue()).floatValue()), (ClosedFloatRange) parcelableSnapshotMutableState.getValue())).floatValue();
                            RoundedCornerShape roundedCornerShape2 = RoundedCornerShapeKt.CircleShape;
                            return new RoundedCornerShape(new PxCornerSize(floatValue), new PxCornerSize(floatValue2), new PxCornerSize(floatValue4), new PxCornerSize(floatValue3)).mo35createOutlinePq9zytI(j, layoutDirection, density3);
                        }
                    };
                    gapComposer2.updateRememberedValue(rememberedValue15);
                }
                r11 = 0;
                gapComposer2.end(false);
                gapComposer2.end(false);
                gapComposer2.end(false);
                shape = (AnimatedShapeKt$rememberAnimatedShape$4$1) rememberedValue15;
            } else {
                r11 = 0;
                gapComposer2.startReplaceGroup(1703594642);
                gapComposer2.end(false);
                gapComposer2.end(false);
                shape = shape8;
            }
            Transition updateTransition = ArcSplineKt.updateTransition(48, r11, gapComposer2, new InteractiveListColorState(z, ((Boolean) mutableState4.getValue()).booleanValue()));
            ParcelableSnapshotMutableState parcelableSnapshotMutableState = updateTransition.targetState$delegate;
            TransitionState transitionState2 = updateTransition.transitionState;
            InteractiveListColorState interactiveListColorState = (InteractiveListColorState) parcelableSnapshotMutableState.getValue();
            gapComposer2.startReplaceGroup(519559029);
            long m142containerColorXeAY9LY = listItemColors.m142containerColorXeAY9LY(interactiveListColorState.enabled, r11, interactiveListColorState.dragged);
            gapComposer2.end(r11);
            ColorSpace m247getColorSpaceimpl = Color.m247getColorSpaceimpl(m142containerColorXeAY9LY);
            boolean changed5 = gapComposer2.changed(m247getColorSpaceimpl);
            Object rememberedValue16 = gapComposer2.rememberedValue();
            if (changed5 || rememberedValue16 == obj) {
                rememberedValue16 = new TwoWayConverterImpl(animatedContentKt$AnimatedContent$4$1, new ColorVectorConverterKt$ColorToVector$1$2(m247getColorSpaceimpl));
                gapComposer2.updateRememberedValue(rememberedValue16);
            }
            TwoWayConverterImpl twoWayConverterImpl = (TwoWayConverterImpl) rememberedValue16;
            if (updateTransition.isSeeking()) {
                z2 = false;
                gapComposer2.startReplaceGroup(1666827533);
                gapComposer2.end(false);
                currentState = transitionState2.getCurrentState();
            } else {
                gapComposer2.startReplaceGroup(1666573488);
                boolean changed6 = gapComposer2.changed(updateTransition);
                currentState = gapComposer2.rememberedValue();
                if (changed6 || currentState == obj) {
                    Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                    Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
                    Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
                    try {
                        Object currentState7 = transitionState2.getCurrentState();
                        SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                        gapComposer2.updateRememberedValue(currentState7);
                        currentState = currentState7;
                    } finally {
                    }
                }
                z2 = false;
                gapComposer2.end(false);
            }
            InteractiveListColorState interactiveListColorState2 = (InteractiveListColorState) currentState;
            gapComposer2.startReplaceGroup(519559029);
            long m142containerColorXeAY9LY2 = listItemColors.m142containerColorXeAY9LY(interactiveListColorState2.enabled, z2, interactiveListColorState2.dragged);
            gapComposer2.end(z2);
            Color color = new Color(m142containerColorXeAY9LY2);
            boolean changed7 = gapComposer2.changed(updateTransition);
            Object rememberedValue17 = gapComposer2.rememberedValue();
            if (changed7 || rememberedValue17 == obj) {
                rememberedValue17 = Updater.derivedStateOf(new TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(updateTransition, 4));
                gapComposer2.updateRememberedValue(rememberedValue17);
            }
            InteractiveListColorState interactiveListColorState3 = (InteractiveListColorState) ((State) rememberedValue17).getValue();
            gapComposer2.startReplaceGroup(519559029);
            long m142containerColorXeAY9LY3 = listItemColors.m142containerColorXeAY9LY(interactiveListColorState3.enabled, false, interactiveListColorState3.dragged);
            gapComposer2.end(false);
            Color color2 = new Color(m142containerColorXeAY9LY3);
            boolean changed8 = gapComposer2.changed(updateTransition);
            Object rememberedValue18 = gapComposer2.rememberedValue();
            if (changed8 || rememberedValue18 == obj) {
                rememberedValue18 = Updater.derivedStateOf(new TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(updateTransition, 5));
                gapComposer2.updateRememberedValue(rememberedValue18);
            }
            gapComposer2.startReplaceGroup(1215615335);
            gapComposer2.end(false);
            final Transition.TransitionAnimationState createTransitionAnimation = ArcSplineKt.createTransitionAnimation(updateTransition, color, color2, value, twoWayConverterImpl, gapComposer2);
            InteractiveListColorState interactiveListColorState4 = (InteractiveListColorState) parcelableSnapshotMutableState.getValue();
            gapComposer2.startReplaceGroup(-154619267);
            long m143contentColorXeAY9LY = listItemColors.m143contentColorXeAY9LY(interactiveListColorState4.enabled, false, interactiveListColorState4.dragged);
            gapComposer2.end(false);
            ColorSpace m247getColorSpaceimpl2 = Color.m247getColorSpaceimpl(m143contentColorXeAY9LY);
            boolean changed9 = gapComposer2.changed(m247getColorSpaceimpl2);
            Object rememberedValue19 = gapComposer2.rememberedValue();
            if (changed9 || rememberedValue19 == obj) {
                rememberedValue19 = new TwoWayConverterImpl(animatedContentKt$AnimatedContent$4$1, new ColorVectorConverterKt$ColorToVector$1$2(m247getColorSpaceimpl2));
                gapComposer2.updateRememberedValue(rememberedValue19);
            }
            TwoWayConverterImpl twoWayConverterImpl2 = (TwoWayConverterImpl) rememberedValue19;
            if (updateTransition.isSeeking()) {
                transitionState = transitionState2;
                z3 = false;
                gapComposer2.startReplaceGroup(1666827533);
                gapComposer2.end(false);
                currentState2 = transitionState.getCurrentState();
            } else {
                gapComposer2.startReplaceGroup(1666573488);
                boolean changed10 = gapComposer2.changed(updateTransition);
                currentState2 = gapComposer2.rememberedValue();
                if (changed10 || currentState2 == obj) {
                    Snapshot currentThreadSnapshot2 = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                    Function1 readObserver2 = currentThreadSnapshot2 != null ? currentThreadSnapshot2.getReadObserver() : null;
                    Snapshot makeCurrentNonObservable2 = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot2);
                    transitionState = transitionState2;
                    try {
                        Object currentState8 = transitionState.getCurrentState();
                        SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot2, makeCurrentNonObservable2, readObserver2);
                        gapComposer2.updateRememberedValue(currentState8);
                        currentState2 = currentState8;
                    } finally {
                    }
                } else {
                    transitionState = transitionState2;
                }
                z3 = false;
                gapComposer2.end(false);
            }
            InteractiveListColorState interactiveListColorState5 = (InteractiveListColorState) currentState2;
            gapComposer2.startReplaceGroup(-154619267);
            long m143contentColorXeAY9LY2 = listItemColors.m143contentColorXeAY9LY(interactiveListColorState5.enabled, z3, interactiveListColorState5.dragged);
            gapComposer2.end(z3);
            Color color3 = new Color(m143contentColorXeAY9LY2);
            boolean changed11 = gapComposer2.changed(updateTransition);
            Object rememberedValue20 = gapComposer2.rememberedValue();
            if (changed11 || rememberedValue20 == obj) {
                rememberedValue20 = Updater.derivedStateOf(new TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(updateTransition, 6));
                gapComposer2.updateRememberedValue(rememberedValue20);
            }
            InteractiveListColorState interactiveListColorState6 = (InteractiveListColorState) ((State) rememberedValue20).getValue();
            gapComposer2.startReplaceGroup(-154619267);
            long m143contentColorXeAY9LY3 = listItemColors.m143contentColorXeAY9LY(interactiveListColorState6.enabled, false, interactiveListColorState6.dragged);
            gapComposer2.end(false);
            Color color4 = new Color(m143contentColorXeAY9LY3);
            boolean changed12 = gapComposer2.changed(updateTransition);
            Object rememberedValue21 = gapComposer2.rememberedValue();
            if (changed12 || rememberedValue21 == obj) {
                rememberedValue21 = Updater.derivedStateOf(new TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(updateTransition, 7));
                gapComposer2.updateRememberedValue(rememberedValue21);
            }
            gapComposer2.startReplaceGroup(1119846639);
            gapComposer2.end(false);
            final Transition.TransitionAnimationState createTransitionAnimation2 = ArcSplineKt.createTransitionAnimation(updateTransition, color3, color4, value, twoWayConverterImpl2, gapComposer2);
            InteractiveListColorState interactiveListColorState7 = (InteractiveListColorState) parcelableSnapshotMutableState.getValue();
            gapComposer2.startReplaceGroup(-836285680);
            long m144leadingContentColorXeAY9LY = listItemColors.m144leadingContentColorXeAY9LY(interactiveListColorState7.enabled, false, interactiveListColorState7.dragged);
            gapComposer2.end(false);
            ColorSpace m247getColorSpaceimpl3 = Color.m247getColorSpaceimpl(m144leadingContentColorXeAY9LY);
            boolean changed13 = gapComposer2.changed(m247getColorSpaceimpl3);
            Object rememberedValue22 = gapComposer2.rememberedValue();
            if (changed13 || rememberedValue22 == obj) {
                rememberedValue22 = new TwoWayConverterImpl(animatedContentKt$AnimatedContent$4$1, new ColorVectorConverterKt$ColorToVector$1$2(m247getColorSpaceimpl3));
                gapComposer2.updateRememberedValue(rememberedValue22);
            }
            TwoWayConverterImpl twoWayConverterImpl3 = (TwoWayConverterImpl) rememberedValue22;
            if (updateTransition.isSeeking()) {
                shape2 = shape;
                z4 = false;
                gapComposer2.startReplaceGroup(1666827533);
                gapComposer2.end(false);
                currentState3 = transitionState.getCurrentState();
            } else {
                gapComposer2.startReplaceGroup(1666573488);
                boolean changed14 = gapComposer2.changed(updateTransition);
                currentState3 = gapComposer2.rememberedValue();
                if (changed14 || currentState3 == obj) {
                    Snapshot currentThreadSnapshot3 = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                    Function1 readObserver3 = currentThreadSnapshot3 != null ? currentThreadSnapshot3.getReadObserver() : null;
                    Snapshot makeCurrentNonObservable3 = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot3);
                    shape2 = shape;
                    try {
                        Object currentState9 = transitionState.getCurrentState();
                        SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot3, makeCurrentNonObservable3, readObserver3);
                        gapComposer2.updateRememberedValue(currentState9);
                        currentState3 = currentState9;
                    } finally {
                    }
                } else {
                    shape2 = shape;
                }
                z4 = false;
                gapComposer2.end(false);
            }
            InteractiveListColorState interactiveListColorState8 = (InteractiveListColorState) currentState3;
            gapComposer2.startReplaceGroup(-836285680);
            long m144leadingContentColorXeAY9LY2 = listItemColors.m144leadingContentColorXeAY9LY(interactiveListColorState8.enabled, z4, interactiveListColorState8.dragged);
            gapComposer2.end(z4);
            Color color5 = new Color(m144leadingContentColorXeAY9LY2);
            boolean changed15 = gapComposer2.changed(updateTransition);
            Object rememberedValue23 = gapComposer2.rememberedValue();
            if (changed15 || rememberedValue23 == obj) {
                rememberedValue23 = Updater.derivedStateOf(new TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(updateTransition, 8));
                gapComposer2.updateRememberedValue(rememberedValue23);
            }
            InteractiveListColorState interactiveListColorState9 = (InteractiveListColorState) ((State) rememberedValue23).getValue();
            gapComposer2.startReplaceGroup(-836285680);
            long m144leadingContentColorXeAY9LY3 = listItemColors.m144leadingContentColorXeAY9LY(interactiveListColorState9.enabled, false, interactiveListColorState9.dragged);
            gapComposer2.end(false);
            Color color6 = new Color(m144leadingContentColorXeAY9LY3);
            boolean changed16 = gapComposer2.changed(updateTransition);
            Object rememberedValue24 = gapComposer2.rememberedValue();
            if (changed16 || rememberedValue24 == obj) {
                rememberedValue24 = Updater.derivedStateOf(new TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(updateTransition, 9));
                gapComposer2.updateRememberedValue(rememberedValue24);
            }
            gapComposer2.startReplaceGroup(438180226);
            gapComposer2.end(false);
            Transition.TransitionAnimationState createTransitionAnimation3 = ArcSplineKt.createTransitionAnimation(updateTransition, color5, color6, value, twoWayConverterImpl3, gapComposer2);
            InteractiveListColorState interactiveListColorState10 = (InteractiveListColorState) parcelableSnapshotMutableState.getValue();
            gapComposer2.startReplaceGroup(-1629003078);
            long m147trailingContentColorXeAY9LY = listItemColors.m147trailingContentColorXeAY9LY(interactiveListColorState10.enabled, false, interactiveListColorState10.dragged);
            gapComposer2.end(false);
            ColorSpace m247getColorSpaceimpl4 = Color.m247getColorSpaceimpl(m147trailingContentColorXeAY9LY);
            boolean changed17 = gapComposer2.changed(m247getColorSpaceimpl4);
            Object rememberedValue25 = gapComposer2.rememberedValue();
            if (changed17 || rememberedValue25 == obj) {
                rememberedValue25 = new TwoWayConverterImpl(animatedContentKt$AnimatedContent$4$1, new ColorVectorConverterKt$ColorToVector$1$2(m247getColorSpaceimpl4));
                gapComposer2.updateRememberedValue(rememberedValue25);
            }
            TwoWayConverterImpl twoWayConverterImpl4 = (TwoWayConverterImpl) rememberedValue25;
            if (updateTransition.isSeeking()) {
                transitionAnimationState = createTransitionAnimation3;
                z5 = false;
                gapComposer2.startReplaceGroup(1666827533);
                gapComposer2.end(false);
                currentState4 = transitionState.getCurrentState();
            } else {
                gapComposer2.startReplaceGroup(1666573488);
                boolean changed18 = gapComposer2.changed(updateTransition);
                currentState4 = gapComposer2.rememberedValue();
                if (changed18 || currentState4 == obj) {
                    Snapshot currentThreadSnapshot4 = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                    Function1 readObserver4 = currentThreadSnapshot4 != null ? currentThreadSnapshot4.getReadObserver() : null;
                    Snapshot makeCurrentNonObservable4 = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot4);
                    transitionAnimationState = createTransitionAnimation3;
                    try {
                        Object currentState10 = transitionState.getCurrentState();
                        SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot4, makeCurrentNonObservable4, readObserver4);
                        gapComposer2.updateRememberedValue(currentState10);
                        currentState4 = currentState10;
                    } finally {
                    }
                } else {
                    transitionAnimationState = createTransitionAnimation3;
                }
                z5 = false;
                gapComposer2.end(false);
            }
            InteractiveListColorState interactiveListColorState11 = (InteractiveListColorState) currentState4;
            gapComposer2.startReplaceGroup(-1629003078);
            long m147trailingContentColorXeAY9LY2 = listItemColors.m147trailingContentColorXeAY9LY(interactiveListColorState11.enabled, z5, interactiveListColorState11.dragged);
            gapComposer2.end(z5);
            Color color7 = new Color(m147trailingContentColorXeAY9LY2);
            boolean changed19 = gapComposer2.changed(updateTransition);
            Object rememberedValue26 = gapComposer2.rememberedValue();
            if (changed19 || rememberedValue26 == obj) {
                rememberedValue26 = Updater.derivedStateOf(new TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(updateTransition, 10));
                gapComposer2.updateRememberedValue(rememberedValue26);
            }
            InteractiveListColorState interactiveListColorState12 = (InteractiveListColorState) ((State) rememberedValue26).getValue();
            gapComposer2.startReplaceGroup(-1629003078);
            long m147trailingContentColorXeAY9LY3 = listItemColors.m147trailingContentColorXeAY9LY(interactiveListColorState12.enabled, false, interactiveListColorState12.dragged);
            gapComposer2.end(false);
            Color color8 = new Color(m147trailingContentColorXeAY9LY3);
            boolean changed20 = gapComposer2.changed(updateTransition);
            Object rememberedValue27 = gapComposer2.rememberedValue();
            if (changed20 || rememberedValue27 == obj) {
                rememberedValue27 = Updater.derivedStateOf(new TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(updateTransition, 11));
                gapComposer2.updateRememberedValue(rememberedValue27);
            }
            gapComposer2.startReplaceGroup(-775265656);
            gapComposer2.end(false);
            Transition.TransitionAnimationState createTransitionAnimation4 = ArcSplineKt.createTransitionAnimation(updateTransition, color7, color8, value, twoWayConverterImpl4, gapComposer2);
            InteractiveListColorState interactiveListColorState13 = (InteractiveListColorState) parcelableSnapshotMutableState.getValue();
            gapComposer2.startReplaceGroup(984715150);
            long m145overlineContentColorXeAY9LY = listItemColors.m145overlineContentColorXeAY9LY(interactiveListColorState13.enabled, false, interactiveListColorState13.dragged);
            gapComposer2.end(false);
            ColorSpace m247getColorSpaceimpl5 = Color.m247getColorSpaceimpl(m145overlineContentColorXeAY9LY);
            boolean changed21 = gapComposer2.changed(m247getColorSpaceimpl5);
            Object rememberedValue28 = gapComposer2.rememberedValue();
            if (changed21 || rememberedValue28 == obj) {
                rememberedValue28 = new TwoWayConverterImpl(animatedContentKt$AnimatedContent$4$1, new ColorVectorConverterKt$ColorToVector$1$2(m247getColorSpaceimpl5));
                gapComposer2.updateRememberedValue(rememberedValue28);
            }
            TwoWayConverterImpl twoWayConverterImpl5 = (TwoWayConverterImpl) rememberedValue28;
            if (updateTransition.isSeeking()) {
                transitionAnimationState2 = createTransitionAnimation4;
                z6 = false;
                gapComposer2.startReplaceGroup(1666827533);
                gapComposer2.end(false);
                currentState5 = transitionState.getCurrentState();
            } else {
                gapComposer2.startReplaceGroup(1666573488);
                boolean changed22 = gapComposer2.changed(updateTransition);
                currentState5 = gapComposer2.rememberedValue();
                if (changed22 || currentState5 == obj) {
                    Snapshot currentThreadSnapshot5 = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                    Function1 readObserver5 = currentThreadSnapshot5 != null ? currentThreadSnapshot5.getReadObserver() : null;
                    Snapshot makeCurrentNonObservable5 = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot5);
                    transitionAnimationState2 = createTransitionAnimation4;
                    try {
                        Object currentState11 = transitionState.getCurrentState();
                        SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot5, makeCurrentNonObservable5, readObserver5);
                        gapComposer2.updateRememberedValue(currentState11);
                        currentState5 = currentState11;
                    } finally {
                    }
                } else {
                    transitionAnimationState2 = createTransitionAnimation4;
                }
                z6 = false;
                gapComposer2.end(false);
            }
            InteractiveListColorState interactiveListColorState14 = (InteractiveListColorState) currentState5;
            gapComposer2.startReplaceGroup(984715150);
            long m145overlineContentColorXeAY9LY2 = listItemColors.m145overlineContentColorXeAY9LY(interactiveListColorState14.enabled, z6, interactiveListColorState14.dragged);
            gapComposer2.end(z6);
            Color color9 = new Color(m145overlineContentColorXeAY9LY2);
            boolean changed23 = gapComposer2.changed(updateTransition);
            Object rememberedValue29 = gapComposer2.rememberedValue();
            if (changed23 || rememberedValue29 == obj) {
                rememberedValue29 = Updater.derivedStateOf(new TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(updateTransition, 12));
                gapComposer2.updateRememberedValue(rememberedValue29);
            }
            InteractiveListColorState interactiveListColorState15 = (InteractiveListColorState) ((State) rememberedValue29).getValue();
            gapComposer2.startReplaceGroup(984715150);
            long m145overlineContentColorXeAY9LY3 = listItemColors.m145overlineContentColorXeAY9LY(interactiveListColorState15.enabled, false, interactiveListColorState15.dragged);
            gapComposer2.end(false);
            Color color10 = new Color(m145overlineContentColorXeAY9LY3);
            boolean changed24 = gapComposer2.changed(updateTransition);
            Object rememberedValue30 = gapComposer2.rememberedValue();
            if (changed24 || rememberedValue30 == obj) {
                rememberedValue30 = Updater.derivedStateOf(new TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(updateTransition, 1));
                gapComposer2.updateRememberedValue(rememberedValue30);
            }
            gapComposer2.startReplaceGroup(1838452572);
            gapComposer2.end(false);
            final Transition.TransitionAnimationState createTransitionAnimation5 = ArcSplineKt.createTransitionAnimation(updateTransition, color9, color10, value, twoWayConverterImpl5, gapComposer2);
            InteractiveListColorState interactiveListColorState16 = (InteractiveListColorState) parcelableSnapshotMutableState.getValue();
            gapComposer2.startReplaceGroup(-1535703933);
            long m146supportingContentColorXeAY9LY = listItemColors.m146supportingContentColorXeAY9LY(interactiveListColorState16.enabled, false, interactiveListColorState16.dragged);
            gapComposer2.end(false);
            ColorSpace m247getColorSpaceimpl6 = Color.m247getColorSpaceimpl(m146supportingContentColorXeAY9LY);
            boolean changed25 = gapComposer2.changed(m247getColorSpaceimpl6);
            Object rememberedValue31 = gapComposer2.rememberedValue();
            if (changed25 || rememberedValue31 == obj) {
                rememberedValue31 = new TwoWayConverterImpl(animatedContentKt$AnimatedContent$4$1, new ColorVectorConverterKt$ColorToVector$1$2(m247getColorSpaceimpl6));
                gapComposer2.updateRememberedValue(rememberedValue31);
            }
            TwoWayConverterImpl twoWayConverterImpl6 = (TwoWayConverterImpl) rememberedValue31;
            if (updateTransition.isSeeking()) {
                z7 = false;
                gapComposer2.startReplaceGroup(1666827533);
                gapComposer2.end(false);
                currentState6 = transitionState.getCurrentState();
            } else {
                gapComposer2.startReplaceGroup(1666573488);
                boolean changed26 = gapComposer2.changed(updateTransition);
                currentState6 = gapComposer2.rememberedValue();
                if (changed26 || currentState6 == obj) {
                    Snapshot currentThreadSnapshot6 = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                    Function1 readObserver6 = currentThreadSnapshot6 != null ? currentThreadSnapshot6.getReadObserver() : null;
                    Snapshot makeCurrentNonObservable6 = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot6);
                    try {
                        Object currentState12 = transitionState.getCurrentState();
                        SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot6, makeCurrentNonObservable6, readObserver6);
                        gapComposer2.updateRememberedValue(currentState12);
                        currentState6 = currentState12;
                    } finally {
                    }
                }
                z7 = false;
                gapComposer2.end(false);
            }
            InteractiveListColorState interactiveListColorState17 = (InteractiveListColorState) currentState6;
            gapComposer2.startReplaceGroup(-1535703933);
            long m146supportingContentColorXeAY9LY2 = listItemColors.m146supportingContentColorXeAY9LY(interactiveListColorState17.enabled, z7, interactiveListColorState17.dragged);
            gapComposer2.end(z7);
            Color color11 = new Color(m146supportingContentColorXeAY9LY2);
            boolean changed27 = gapComposer2.changed(updateTransition);
            Object rememberedValue32 = gapComposer2.rememberedValue();
            if (changed27 || rememberedValue32 == obj) {
                rememberedValue32 = Updater.derivedStateOf(new TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(updateTransition, 2));
                gapComposer2.updateRememberedValue(rememberedValue32);
            }
            InteractiveListColorState interactiveListColorState18 = (InteractiveListColorState) ((State) rememberedValue32).getValue();
            gapComposer2.startReplaceGroup(-1535703933);
            long m146supportingContentColorXeAY9LY3 = listItemColors.m146supportingContentColorXeAY9LY(interactiveListColorState18.enabled, false, interactiveListColorState18.dragged);
            gapComposer2.end(false);
            Color color12 = new Color(m146supportingContentColorXeAY9LY3);
            boolean changed28 = gapComposer2.changed(updateTransition);
            Object rememberedValue33 = gapComposer2.rememberedValue();
            if (changed28 || rememberedValue33 == obj) {
                rememberedValue33 = Updater.derivedStateOf(new TabKt$TabTransitionKlgxPg$$inlined$animateColor$1(updateTransition, 3));
                gapComposer2.updateRememberedValue(rememberedValue33);
            }
            gapComposer2.startReplaceGroup(-1432794927);
            gapComposer2.end(false);
            final Transition.TransitionAnimationState createTransitionAnimation6 = ArcSplineKt.createTransitionAnimation(updateTransition, color11, color12, value, twoWayConverterImpl6, gapComposer2);
            final TypographyKeyTokens typographyKeyTokens = ListTokens.ItemLeadingAvatarLabelFont;
            final TypographyKeyTokens typographyKeyTokens2 = ListTokens.ItemTrailingSupportingTextFont;
            final TypographyKeyTokens typographyKeyTokens3 = ListTokens.ItemOverlineFont;
            final TypographyKeyTokens typographyKeyTokens4 = ListTokens.ItemSupportingTextFont;
            final TypographyKeyTokens typographyKeyTokens5 = ListTokens.ItemLabelTextFont;
            if (((Boolean) mutableState4.getValue()).booleanValue()) {
                f = listItemElevation.draggedElevation;
            } else {
                listItemElevation.getClass();
                f = 0.0f;
            }
            int i5 = AnimateAsStateKt.$r8$clinit;
            final State animateValueAsState = AnimateAsStateKt.animateValueAsState(new Dp(f), ArcSplineKt.DpToVector, value3, "DpAnimation", gapComposer2, 0);
            final Density density3 = (Density) gapComposer2.consume(CompositionLocalsKt.LocalDensity);
            final LayoutDirection layoutDirection = (LayoutDirection) gapComposer2.consume(CompositionLocalsKt.LocalLayoutDirection);
            final Shape shape11 = shape2;
            final Transition.TransitionAnimationState transitionAnimationState3 = transitionAnimationState;
            final Transition.TransitionAnimationState transitionAnimationState4 = transitionAnimationState2;
            GapComposer gapComposer3 = gapComposer2;
            Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(((Color) createTransitionAnimation2.value$delegate.getValue()).value)), Expect_jvmKt.rememberComposableLambda(-1377981779, new Function2() { // from class: androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    Modifier then;
                    Composer composer2 = (Composer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    final int i6 = 0;
                    final int i7 = 1;
                    GapComposer gapComposer4 = (GapComposer) composer2;
                    if (gapComposer4.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        AtomicInteger atomicInteger = SemanticsModifierKt.lastIdentifier;
                        Modifier m87defaultMinSizeVpY3zN4 = SizeKt.m87defaultMinSizeVpY3zN4(new AppendedSemanticsElement(Function1.this, true), Float.NaN, ListTokens.ItemOneLineContainerHeight);
                        HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
                        Modifier then2 = m87defaultMinSizeVpY3zN4.then(MinimumInteractiveModifier.INSTANCE);
                        final State state = animateValueAsState;
                        boolean changed29 = gapComposer4.changed(state);
                        Object rememberedValue34 = gapComposer4.rememberedValue();
                        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                        if (changed29 || rememberedValue34 == neverEqualPolicy) {
                            rememberedValue34 = new FloatProducer() { // from class: androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda12
                                @Override // androidx.compose.material3.internal.FloatProducer
                                public final float invoke() {
                                    return Dp.m442compareTo0680j_4(((Dp) State.this.getValue()).value, 0.0f) > 0 ? 1.0f : 0.0f;
                                }
                            };
                            gapComposer4.updateRememberedValue(rememberedValue34);
                        }
                        Modifier layout = RulerKt.layout(then2, new TabKt$$ExternalSyntheticLambda1((FloatProducer) rememberedValue34, i7));
                        Density density4 = density3;
                        boolean changed30 = gapComposer4.changed(density4) | gapComposer4.changed(state);
                        Shape shape12 = shape11;
                        boolean changed31 = changed30 | gapComposer4.changed(shape12);
                        Object rememberedValue35 = gapComposer4.rememberedValue();
                        if (changed31 || rememberedValue35 == neverEqualPolicy) {
                            rememberedValue35 = new ComposeActivity$$ExternalSyntheticLambda2(3, density4, shape12, state);
                            gapComposer4.updateRememberedValue(rememberedValue35);
                        }
                        then = ClipKt.clip(ImageKt.m27backgroundbw27NRU(Brush.graphicsLayer(layout, (Function1) rememberedValue35), ((Color) createTransitionAnimation.getValue()).value, shape12), shape12).then(Modifier.CC.m182m((Object) r4) ? new CombinedClickableElement(r0, r15, r1, r4) : r4 == null ? new CombinedClickableElement(r0, null, r1, r4) : r3 != null ? IndicationKt.indication(r0, r15).then(new CombinedClickableElement(mutableInteractionSource, null, r1, r4)) : new ComposedModifier(
                        /*  JADX ERROR: Method code generation error
                            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x00a0: INVOKE (r14v11 'then' androidx.compose.ui.Modifier) = 
                              (wrap:androidx.compose.ui.Modifier:0x008f: INVOKE 
                              (wrap:androidx.compose.ui.Modifier:0x008b: INVOKE 
                              (wrap:androidx.compose.ui.Modifier:0x007d: INVOKE 
                              (r14v7 'layout' androidx.compose.ui.Modifier)
                              (wrap:kotlin.jvm.functions.Function1:0x007b: CHECK_CAST (kotlin.jvm.functions.Function1) (r6v3 'rememberedValue35' java.lang.Object))
                             STATIC call: androidx.compose.ui.graphics.Brush.graphicsLayer(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1):androidx.compose.ui.Modifier A[MD:(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function1):androidx.compose.ui.Modifier (m), WRAPPED] (LINE:126))
                              (wrap:long:0x0089: IGET 
                              (wrap:androidx.compose.ui.graphics.Color:0x0087: CHECK_CAST (androidx.compose.ui.graphics.Color) (wrap:java.lang.Object:0x0083: INVOKE 
                              (wrap:androidx.compose.runtime.State:0x0081: IGET (r13v0 'this' androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda10 A[IMMUTABLE_TYPE, THIS]) A[WRAPPED] (LINE:130) androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda10.f$12 androidx.compose.runtime.State)
                             INTERFACE call: androidx.compose.runtime.State.getValue():java.lang.Object A[MD:():java.lang.Object (m), WRAPPED] (LINE:132)))
                             A[WRAPPED] (LINE:138) androidx.compose.ui.graphics.Color.value long)
                              (r5v1 'shape12' androidx.compose.ui.graphics.Shape)
                             STATIC call: androidx.compose.foundation.ImageKt.background-bw27NRU(androidx.compose.ui.Modifier, long, androidx.compose.ui.graphics.Shape):androidx.compose.ui.Modifier A[MD:(androidx.compose.ui.Modifier, long, androidx.compose.ui.graphics.Shape):androidx.compose.ui.Modifier (m), WRAPPED] (LINE:140))
                              (r5v1 'shape12' androidx.compose.ui.graphics.Shape)
                             STATIC call: androidx.compose.ui.draw.ClipKt.clip(androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape):androidx.compose.ui.Modifier A[MD:(androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape):androidx.compose.ui.Modifier (m), WRAPPED] (LINE:144))
                              (wrap:androidx.compose.ui.Modifier:?: TERNARY null = ((wrap:boolean:0x0000: INVOKE (wrap:java.lang.Object:?: CAST (java.lang.Object) (r4v0 androidx.compose.material3.RippleNodeFactory)) STATIC call: androidx.compose.ui.Modifier.-CC.m(java.lang.Object):boolean A[MD:(java.lang.Object):boolean (m), WRAPPED] (LINE:1)) != false) ? (wrap:??:0x0008: CONSTRUCTOR 
                              (r0v9 androidx.compose.foundation.interaction.MutableInteractionSource)
                              (r15v13 androidx.compose.material3.RippleNodeFactory)
                              (r1v9 boolean)
                              (r4v1 kotlin.jvm.functions.Function0)
                             A[MD:(androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.material3.RippleNodeFactory, boolean, kotlin.jvm.functions.Function0):void (m), WRAPPED] (LINE:9) call: androidx.compose.foundation.CombinedClickableElement.<init>(androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.material3.RippleNodeFactory, boolean, kotlin.jvm.functions.Function0):void type: CONSTRUCTOR) : (wrap:androidx.compose.ui.Modifier:?: TERNARY null = ((r4v0 androidx.compose.material3.RippleNodeFactory) == (null androidx.compose.material3.RippleNodeFactory)) ? (wrap:androidx.compose.ui.Modifier:0x0014: CONSTRUCTOR 
                              (r0v9 androidx.compose.foundation.interaction.MutableInteractionSource)
                              (null androidx.compose.material3.RippleNodeFactory)
                              (r1v9 boolean)
                              (r4v1 kotlin.jvm.functions.Function0)
                             A[MD:(androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.material3.RippleNodeFactory, boolean, kotlin.jvm.functions.Function0):void (m), WRAPPED] (LINE:18) call: androidx.compose.foundation.CombinedClickableElement.<init>(androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.material3.RippleNodeFactory, boolean, kotlin.jvm.functions.Function0):void type: CONSTRUCTOR) : (wrap:androidx.compose.ui.Modifier:?: TERNARY null = ((r3v0 androidx.compose.foundation.interaction.MutableInteractionSource) != (null androidx.compose.foundation.interaction.MutableInteractionSource)) ? (wrap:androidx.compose.ui.Modifier:0x0021: INVOKE 
                              (wrap:androidx.compose.ui.Modifier:0x0018: INVOKE 
                              (r0v9 androidx.compose.foundation.interaction.MutableInteractionSource)
                              (r15v13 androidx.compose.material3.RippleNodeFactory)
                             STATIC call: androidx.compose.foundation.IndicationKt.indication(androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.foundation.IndicationNodeFactory):androidx.compose.ui.Modifier A[MD:(androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.foundation.IndicationNodeFactory):androidx.compose.ui.Modifier (m), WRAPPED] (LINE:25))
                              (wrap:androidx.compose.foundation.CombinedClickableElement:0x001e: CONSTRUCTOR 
                              (wrap:androidx.compose.foundation.interaction.MutableInteractionSource:0x009a: IGET (r13v0 'this' androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda10 A[IMMUTABLE_TYPE, THIS]) A[WRAPPED] (LINE:155) androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda10.f$5 androidx.compose.foundation.interaction.MutableInteractionSource)
                              (null androidx.compose.material3.RippleNodeFactory)
                              (r1v9 boolean)
                              (r4v1 kotlin.jvm.functions.Function0)
                             A[MD:(androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.material3.RippleNodeFactory, boolean, kotlin.jvm.functions.Function0):void (m), WRAPPED] (LINE:31) call: androidx.compose.foundation.CombinedClickableElement.<init>(androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.material3.RippleNodeFactory, boolean, kotlin.jvm.functions.Function0):void type: CONSTRUCTOR)
                             INTERFACE call: androidx.compose.ui.Modifier.then(androidx.compose.ui.Modifier):androidx.compose.ui.Modifier A[MD:(androidx.compose.ui.Modifier):androidx.compose.ui.Modifier (m), WRAPPED] (LINE:34)) : (wrap:androidx.compose.ui.Modifier:0x002d: CONSTRUCTOR 
                              (wrap:kotlin.jvm.functions.Function3:0x0028: CONSTRUCTOR 
                              (wrap:androidx.compose.material3.RippleNodeFactory:0x0096: INVOKE (7 int), (0 long) STATIC call: androidx.compose.material3.RippleKt.ripple-H2RKhps$default(int, long):androidx.compose.material3.RippleNodeFactory A[MD:(int, long):androidx.compose.material3.RippleNodeFactory (m), WRAPPED] (LINE:151))
                              (wrap:boolean:0x009c: IGET (r13v0 'this' androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda10 A[IMMUTABLE_TYPE, THIS]) A[WRAPPED] (LINE:157) androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda10.f$6 boolean)
                              (wrap:kotlin.jvm.functions.Function0:0x009e: IGET (r13v0 'this' androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda10 A[IMMUTABLE_TYPE, THIS]) A[WRAPPED] (LINE:159) androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda10.f$9 kotlin.jvm.functions.Function0)
                             A[MD:(androidx.compose.foundation.IndicationNodeFactory, boolean, kotlin.jvm.functions.Function0):void (m), WRAPPED] (LINE:41) call: androidx.compose.foundation.ClickableKt$combinedClickable-auXiCPI$$inlined$clickableWithIndicationIfNeeded$1.<init>(androidx.compose.foundation.IndicationNodeFactory, boolean, kotlin.jvm.functions.Function0):void type: CONSTRUCTOR)
                             A[MD:(kotlin.jvm.functions.Function3):void (m), WRAPPED] (LINE:46) call: androidx.compose.ui.ComposedModifier.<init>(kotlin.jvm.functions.Function3):void type: CONSTRUCTOR))))
                             INTERFACE call: androidx.compose.ui.Modifier.then(androidx.compose.ui.Modifier):androidx.compose.ui.Modifier A[MD:(androidx.compose.ui.Modifier):androidx.compose.ui.Modifier (m), WRAPPED] (LINE:49) in method: androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda10.invoke(java.lang.Object, java.lang.Object):java.lang.Object, file: classes.dex
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                            	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                            Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: androidx.compose.foundation.ClickableKt$combinedClickable-auXiCPI$$inlined$clickableWithIndicationIfNeeded$1, state: NOT_LOADED
                            	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:305)
                            	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                            	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
                            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:782)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                            	at jadx.core.codegen.InsnGen.makeTernary(InsnGen.java:1189)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:536)
                            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                            	at jadx.core.codegen.InsnGen.makeTernary(InsnGen.java:1189)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:536)
                            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                            	at jadx.core.codegen.InsnGen.makeTernary(InsnGen.java:1189)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:536)
                            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                            	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
                            	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:910)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                            	... 21 more
                            */
                        /*
                            Method dump skipped, instructions count: 273
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda10.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
                    }
                }, gapComposer3), gapComposer3, 56);
                gapComposer = gapComposer3;
            } else {
                gapComposer2.skipToGroupEnd();
                gapComposer = gapComposer2;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new ListItemKt$$ExternalSyntheticLambda11(composableLambdaImpl, vertical, z, function1, function0, listItemColors, listItemShapes, listItemElevation, paddingValues, i, i2);
            }
        }

        public static final void InteractiveListItemLayout(final Modifier modifier, final Alignment.Vertical vertical, final ComposableLambdaImpl composableLambdaImpl, final ComposableLambdaImpl composableLambdaImpl2, final ComposableLambdaImpl composableLambdaImpl3, final ComposableLambdaImpl composableLambdaImpl4, final ComposableLambdaImpl composableLambdaImpl5, Composer composer, final int i) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-1118275927);
            int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changed(vertical) ? 32 : 16);
            if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
                boolean z = (i2 & Token.ASSIGN_MOD) == 32;
                Object rememberedValue = gapComposer.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                if (z || rememberedValue == neverEqualPolicy) {
                    rememberedValue = new InteractiveListItemMeasurePolicy(vertical);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                InteractiveListItemMeasurePolicy interactiveListItemMeasurePolicy = (InteractiveListItemMeasurePolicy) rememberedValue;
                ComposableLambdaImpl combineAsVirtualLayouts = RulerKt.combineAsVirtualLayouts(Jsoup.listOf((Object[]) new Function2[]{composableLambdaImpl, composableLambdaImpl2, composableLambdaImpl3, composableLambdaImpl4, composableLambdaImpl5}));
                boolean changed = gapComposer.changed(interactiveListItemMeasurePolicy);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new MultiContentMeasurePolicyImpl(interactiveListItemMeasurePolicy);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue2;
                long j = gapComposer.compositeKeyHashCode;
                int i3 = (int) ((j >>> 32) ^ j);
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier = RangesKt.materializeModifier(gapComposer, modifier);
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
                Updater.m170setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m169reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m170setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                combineAsVirtualLayouts.invoke((Object) gapComposer, (Object) 0);
                gapComposer.end(true);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new Function2(vertical, composableLambdaImpl, composableLambdaImpl2, composableLambdaImpl3, composableLambdaImpl4, composableLambdaImpl5, i) { // from class: androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda26
                    public final /* synthetic */ Alignment.Vertical f$1;
                    public final /* synthetic */ ComposableLambdaImpl f$2;
                    public final /* synthetic */ ComposableLambdaImpl f$3;
                    public final /* synthetic */ ComposableLambdaImpl f$4;
                    public final /* synthetic */ ComposableLambdaImpl f$5;
                    public final /* synthetic */ ComposableLambdaImpl f$6;

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int updateChangedFlags = Updater.updateChangedFlags(1797505);
                        ListItemKt.InteractiveListItemLayout(Modifier.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, (Composer) obj, updateChangedFlags);
                        return Unit.INSTANCE;
                    }
                };
            }
        }

        /* renamed from: LeadingDecorator-8s8adOk, reason: not valid java name */
        public static final void m149LeadingDecorator8s8adOk(float f, long j, TypographyKeyTokens typographyKeyTokens, Composer composer, int i) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(748132977);
            int i2 = (gapComposer.changed(f) ? 4 : 2) | i | (gapComposer.changed(j) ? 32 : 16) | (gapComposer.changedInstance(null) ? 2048 : 1024);
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
                gapComposer.startReplaceGroup(1045077937);
                gapComposer.end(false);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new DividerKt$$ExternalSyntheticLambda1(f, j, typographyKeyTokens, i, 1);
            }
        }

        public static final void ListItem(final Function0 function0, final boolean z, Alignment.Vertical vertical, ListItemShapes listItemShapes, ListItemColors listItemColors, ListItemElevation listItemElevation, PaddingValues paddingValues, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
            int i2;
            GapComposer gapComposer;
            final Alignment.Vertical vertical2;
            final ListItemShapes listItemShapes2;
            final ListItemColors listItemColors2;
            final ListItemElevation listItemElevation2;
            final PaddingValues paddingValues2;
            int i3;
            ListItemShapes listItemShapes3;
            Alignment.Vertical vertical3;
            PaddingValues paddingValues3;
            ListItemElevation listItemElevation3;
            ListItemShapes listItemShapes4;
            ListItemColors listItemColors3;
            GapComposer gapComposer2 = (GapComposer) composer;
            gapComposer2.startRestartGroup(185717924);
            if ((i & 6) == 0) {
                i2 = (gapComposer2.changedInstance(function0) ? 4 : 2) | i;
            } else {
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= gapComposer2.changed(Modifier.Companion.$$INSTANCE) ? 32 : 16;
            }
            if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
                i2 |= gapComposer2.changed(z) ? 256 : 128;
            }
            int i4 = 1797120 | i2;
            if ((12582912 & i) == 0) {
                i4 = 5991424 | i2;
            }
            int i5 = 905969664 | i4;
            if (gapComposer2.shouldExecute(i5 & 1, (306783379 & i5) != 306783378)) {
                gapComposer2.startDefaults();
                int i6 = i & 1;
                Object obj = Composer.Companion.Empty;
                if (i6 == 0 || gapComposer2.getDefaultsInvalid()) {
                    PaddingValuesImpl paddingValuesImpl = ListItemDefaults.ContentPadding;
                    final Density density = (Density) gapComposer2.consume(CompositionLocalsKt.LocalDensity);
                    boolean changed = gapComposer2.changed(density);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changed || rememberedValue == obj) {
                        rememberedValue = new Alignment.Vertical() { // from class: androidx.compose.material3.ListItemDefaults$$ExternalSyntheticLambda0
                            @Override // androidx.compose.ui.Alignment.Vertical
                            public final int align(int i7, int i8) {
                                return (i8 < Density.this.mo58roundToPx0680j_4(ListItemKt.InteractiveListVerticalAlignmentBreakpoint) ? Alignment.Companion.CenterVertically : Alignment.Companion.Top).align(i7, i8);
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Alignment.Vertical vertical4 = (Alignment.Vertical) rememberedValue;
                    i3 = i5 & (-29360129);
                    Shapes shapes = ((MaterialTheme$Values) gapComposer2.consume(MaterialThemeKt._localMaterialTheme)).shapes;
                    ListItemShapes listItemShapes5 = shapes.defaultListItemShapesCached;
                    if (listItemShapes5 == null) {
                        listItemShapes3 = new ListItemShapes(ShapesKt.fromToken(shapes, ListTokens.ItemContainerExpressiveShape), ShapesKt.fromToken(shapes, ListTokens.ItemSelectedContainerExpressiveShape), ShapesKt.fromToken(shapes, ListTokens.ItemPressedContainerExpressiveShape), ShapesKt.fromToken(shapes, ListTokens.ItemFocusedContainerExpressiveShape), ShapesKt.fromToken(shapes, ListTokens.ItemHoveredContainerExpressiveShape), ShapesKt.fromToken(shapes, ListTokens.ItemShape));
                        shapes.defaultListItemShapesCached = listItemShapes3;
                    } else {
                        listItemShapes3 = listItemShapes5;
                    }
                    ListItemColors colors = ListItemDefaults.colors(gapComposer2);
                    ListItemElevation listItemElevation4 = new ListItemElevation(ListTokens.ItemDraggedContainerElevation);
                    vertical3 = vertical4;
                    paddingValues3 = ListItemDefaults.ContentPadding;
                    listItemElevation3 = listItemElevation4;
                    listItemShapes4 = listItemShapes3;
                    listItemColors3 = colors;
                } else {
                    gapComposer2.skipToGroupEnd();
                    i3 = i5 & (-29360129);
                    vertical3 = vertical;
                    listItemShapes4 = listItemShapes;
                    listItemColors3 = listItemColors;
                    listItemElevation3 = listItemElevation;
                    paddingValues3 = paddingValues;
                }
                gapComposer2.endDefaults();
                Object rememberedValue2 = gapComposer2.rememberedValue();
                if (rememberedValue2 == obj) {
                    rememberedValue2 = new SaversKt$$ExternalSyntheticLambda2(8);
                    gapComposer2.updateRememberedValue(rememberedValue2);
                }
                Function1 function1 = (Function1) rememberedValue2;
                int i7 = i3 >> 3;
                int i8 = (i7 & 458752) | (i7 & 14) | 905969712 | (i7 & 896) | (i7 & 7168) | (57344 & i7) | ((i3 << 15) & 29360128);
                int i9 = i3 & 14;
                int i10 = i3 >> 21;
                gapComposer = gapComposer2;
                InteractiveListItem(composableLambdaImpl, vertical3, z, function1, function0, listItemColors3, listItemShapes4, listItemElevation3, paddingValues3, gapComposer, i8, (i10 & 896) | i9 | (i10 & Token.ASSIGN_MOD) | 12585984);
                vertical2 = vertical3;
                listItemColors2 = listItemColors3;
                listItemShapes2 = listItemShapes4;
                listItemElevation2 = listItemElevation3;
                paddingValues2 = paddingValues3;
            } else {
                gapComposer = gapComposer2;
                gapComposer.skipToGroupEnd();
                vertical2 = vertical;
                listItemShapes2 = listItemShapes;
                listItemColors2 = listItemColors;
                listItemElevation2 = listItemElevation;
                paddingValues2 = paddingValues;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        ((Integer) obj3).getClass();
                        ListItemKt.ListItem(Function0.this, z, vertical2, listItemShapes2, listItemColors2, listItemElevation2, paddingValues2, composableLambdaImpl, (Composer) obj2, Updater.updateChangedFlags(i | 1));
                        return Unit.INSTANCE;
                    }
                };
            }
        }

        /* renamed from: ListItem-HXNGIdc, reason: not valid java name */
        public static final void m150ListItemHXNGIdc(ComposableLambdaImpl composableLambdaImpl, Modifier modifier, final Function2 function2, final Function2 function22, ListItemColors listItemColors, Composer composer, int i) {
            ComposableLambdaImpl composableLambdaImpl2;
            ListItemColors listItemColors2;
            final ListItemColors colors;
            ComposableLambdaImpl composableLambdaImpl3;
            ComposableLambdaImpl composableLambdaImpl4;
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(487133126);
            int i2 = i | (gapComposer.changed(modifier) ? 32 : 16) | RendererCapabilities.MODE_SUPPORT_MASK | (gapComposer.changedInstance(function2) ? 2048 : 1024) | (gapComposer.changedInstance(function22) ? 16384 : 8192) | 113967104;
            final int i3 = 0;
            final int i4 = 1;
            if (gapComposer.shouldExecute(i2 & 1, (38347923 & i2) != 38347922)) {
                gapComposer.startDefaults();
                if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                    colors = ListItemDefaults.colors(gapComposer);
                } else {
                    gapComposer.skipToGroupEnd();
                    colors = listItemColors;
                }
                gapComposer.endDefaults();
                composableLambdaImpl2 = composableLambdaImpl;
                ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(629852750, new TextKt$$ExternalSyntheticLambda2(colors, composableLambdaImpl2, 9), gapComposer);
                ComposableLambdaImpl composableLambdaImpl5 = null;
                if (function2 == null) {
                    gapComposer.startReplaceGroup(-510691457);
                    gapComposer.end(false);
                    composableLambdaImpl3 = null;
                } else {
                    gapComposer.startReplaceGroup(-510691456);
                    ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(-1291211644, new Function2() { // from class: androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i5 = i3;
                            Unit unit = Unit.INSTANCE;
                            ListItemColors listItemColors3 = colors;
                            Composer composer2 = (Composer) obj;
                            int intValue = ((Integer) obj2).intValue();
                            switch (i5) {
                                case 0:
                                    GapComposer gapComposer2 = (GapComposer) composer2;
                                    if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                        gapComposer2.skipToGroupEnd();
                                        break;
                                    } else {
                                        ListItemKt.m152ProvideTextStyleFromToken3JVO9M(listItemColors3.supportingContentColor, ListTokens.ItemSupportingTextFont, function2, gapComposer2, 48);
                                        break;
                                    }
                                default:
                                    GapComposer gapComposer3 = (GapComposer) composer2;
                                    if (!gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                        gapComposer3.skipToGroupEnd();
                                        break;
                                    } else {
                                        Modifier m100paddingqDBjuR0$default = SpacerKt.m100paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 0.0f, 0.0f, 16.0f, 11);
                                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                        long j = gapComposer3.compositeKeyHashCode;
                                        int i6 = (int) (j ^ (j >>> 32));
                                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
                                        Modifier materializeModifier = RangesKt.materializeModifier(gapComposer3, m100paddingqDBjuR0$default);
                                        ComposeUiNode.Companion.getClass();
                                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                                        gapComposer3.startReusableNode();
                                        if (gapComposer3.inserting) {
                                            gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                                        } else {
                                            gapComposer3.useNode();
                                        }
                                        Updater.m170setimpl(gapComposer3, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                        Updater.m170setimpl(gapComposer3, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                        Updater.m170setimpl(gapComposer3, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                                        Updater.m169reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                        Updater.m170setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
                                        Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(listItemColors3.leadingContentColor)), function2, gapComposer3, 8);
                                        gapComposer3.end(true);
                                        break;
                                    }
                            }
                            return unit;
                        }
                    }, gapComposer);
                    gapComposer.end(false);
                    composableLambdaImpl3 = rememberComposableLambda2;
                }
                gapComposer.startReplaceGroup(-510230394);
                gapComposer.end(false);
                if (function22 == null) {
                    gapComposer.startReplaceGroup(-509862641);
                    gapComposer.end(false);
                    composableLambdaImpl4 = null;
                } else {
                    gapComposer.startReplaceGroup(-509862640);
                    ComposableLambdaImpl rememberComposableLambda3 = Expect_jvmKt.rememberComposableLambda(449548451, new Function2() { // from class: androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i5 = i4;
                            Unit unit = Unit.INSTANCE;
                            ListItemColors listItemColors3 = colors;
                            Composer composer2 = (Composer) obj;
                            int intValue = ((Integer) obj2).intValue();
                            switch (i5) {
                                case 0:
                                    GapComposer gapComposer2 = (GapComposer) composer2;
                                    if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                        gapComposer2.skipToGroupEnd();
                                        break;
                                    } else {
                                        ListItemKt.m152ProvideTextStyleFromToken3JVO9M(listItemColors3.supportingContentColor, ListTokens.ItemSupportingTextFont, function22, gapComposer2, 48);
                                        break;
                                    }
                                default:
                                    GapComposer gapComposer3 = (GapComposer) composer2;
                                    if (!gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                        gapComposer3.skipToGroupEnd();
                                        break;
                                    } else {
                                        Modifier m100paddingqDBjuR0$default = SpacerKt.m100paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 0.0f, 0.0f, 16.0f, 11);
                                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                        long j = gapComposer3.compositeKeyHashCode;
                                        int i6 = (int) (j ^ (j >>> 32));
                                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
                                        Modifier materializeModifier = RangesKt.materializeModifier(gapComposer3, m100paddingqDBjuR0$default);
                                        ComposeUiNode.Companion.getClass();
                                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                                        gapComposer3.startReusableNode();
                                        if (gapComposer3.inserting) {
                                            gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                                        } else {
                                            gapComposer3.useNode();
                                        }
                                        Updater.m170setimpl(gapComposer3, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                        Updater.m170setimpl(gapComposer3, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                        Updater.m170setimpl(gapComposer3, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                                        Updater.m169reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                        Updater.m170setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
                                        Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(listItemColors3.leadingContentColor)), function22, gapComposer3, 8);
                                        gapComposer3.end(true);
                                        break;
                                    }
                            }
                            return unit;
                        }
                    }, gapComposer);
                    gapComposer.end(false);
                    composableLambdaImpl4 = rememberComposableLambda3;
                }
                gapComposer.startReplaceGroup(-509255444);
                gapComposer.end(false);
                Object rememberedValue = gapComposer.rememberedValue();
                if (rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = new SaversKt$$ExternalSyntheticLambda2(8);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Modifier $default$then = Modifier.CC.$default$then(new AppendedSemanticsElement((Function1) rememberedValue, true), modifier);
                PaddingValuesImpl paddingValuesImpl = ListItemDefaults.ContentPadding;
                SurfaceKt.m157SurfaceT9BRK9s($default$then, ShapesKt.getValue(ListTokens.ItemContainerShape, gapComposer), colors.containerColor, colors.contentColor, Expect_jvmKt.rememberComposableLambda(1192488737, new ListItemKt$$ExternalSyntheticLambda4(composableLambdaImpl4, composableLambdaImpl5, rememberComposableLambda, composableLambdaImpl5, composableLambdaImpl3), gapComposer), gapComposer, 12804096, 64);
                listItemColors2 = colors;
            } else {
                composableLambdaImpl2 = composableLambdaImpl;
                gapComposer.skipToGroupEnd();
                listItemColors2 = listItemColors;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new ListItemKt$$ExternalSyntheticLambda5(composableLambdaImpl2, modifier, function2, function22, listItemColors2, i, 0);
            }
        }

        public static final void ListItemLayout(Function2 function2, Function2 function22, ComposableLambdaImpl composableLambdaImpl, Function2 function23, Function2 function24, Composer composer, int i) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-61277522);
            int i2 = i | (gapComposer.changedInstance(function2) ? 4 : 2) | (gapComposer.changedInstance(function22) ? 32 : 16) | (gapComposer.changedInstance(function23) ? 2048 : 1024) | (gapComposer.changedInstance(function24) ? 16384 : 8192);
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
                Object rememberedValue = gapComposer.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = new ListItemMeasurePolicy();
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                ListItemMeasurePolicy listItemMeasurePolicy = (ListItemMeasurePolicy) rememberedValue;
                ComposableLambdaImpl combineAsVirtualLayouts = RulerKt.combineAsVirtualLayouts(Jsoup.listOf((Object[]) new Function2[]{composableLambdaImpl, function23 == null ? BadgeKt.f4lambda$489887388 : function23, function24 == null ? BadgeKt.lambda$1629163587 : function24, function2 == null ? BadgeKt.f5lambda$546752734 : function2, function22 == null ? BadgeKt.lambda$1572298241 : function22}));
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new MultiContentMeasurePolicyImpl(listItemMeasurePolicy);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue2;
                long j = gapComposer.compositeKeyHashCode;
                int i3 = (int) ((j >>> 32) ^ j);
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier = RangesKt.materializeModifier(gapComposer, Modifier.Companion.$$INSTANCE);
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
                Updater.m170setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m169reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m170setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                combineAsVirtualLayouts.invoke((Object) gapComposer, (Object) 0);
                gapComposer.end(true);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new ListItemKt$$ExternalSyntheticLambda4(function2, function22, composableLambdaImpl, function23, function24, i);
            }
        }

        /* renamed from: OverlineDecorator-3J-VO9M, reason: not valid java name */
        public static final void m151OverlineDecorator3JVO9M(long j, TypographyKeyTokens typographyKeyTokens, Composer composer, int i) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(899793657);
            int i2 = (gapComposer.changed(j) ? 4 : 2) | i | (gapComposer.changedInstance(null) ? 256 : 128);
            if (gapComposer.shouldExecute(i2 & 1, (i2 & Token.EXPR_VOID) != 146)) {
                gapComposer.startReplaceGroup(862289545);
                gapComposer.end(false);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new ListItemKt$$ExternalSyntheticLambda22(j, typographyKeyTokens, i, 0);
            }
        }

        /* renamed from: ProvideTextStyleFromToken-3J-VO9M, reason: not valid java name */
        public static final void m152ProvideTextStyleFromToken3JVO9M(long j, TypographyKeyTokens typographyKeyTokens, Function2 function2, Composer composer, int i) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-285397024);
            int i2 = i | (gapComposer.changed(j) ? 4 : 2) | (gapComposer.changedInstance(function2) ? 256 : 128);
            if (gapComposer.shouldExecute(i2 & 1, (i2 & Token.EXPR_VOID) != 146)) {
                LayoutUtilKt.m165ProvideContentColorTextStyle3JVO9M(j, TypographyKt.getValue(typographyKeyTokens, gapComposer), function2, gapComposer, i2 & 910);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new ButtonKt$$ExternalSyntheticLambda2(j, typographyKeyTokens, function2, i, 2);
            }
        }

        /* renamed from: SupportingDecorator-3J-VO9M, reason: not valid java name */
        public static final void m153SupportingDecorator3JVO9M(long j, TypographyKeyTokens typographyKeyTokens, Composer composer, int i) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-3493404);
            int i2 = (gapComposer.changed(j) ? 4 : 2) | i | (gapComposer.changedInstance(null) ? 256 : 128);
            if (gapComposer.shouldExecute(i2 & 1, (i2 & Token.EXPR_VOID) != 146)) {
                gapComposer.startReplaceGroup(-992433282);
                gapComposer.end(false);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new ListItemKt$$ExternalSyntheticLambda22(j, typographyKeyTokens, i, 1);
            }
        }

        /* renamed from: TrailingDecorator-8s8adOk, reason: not valid java name */
        public static final void m154TrailingDecorator8s8adOk(float f, long j, TypographyKeyTokens typographyKeyTokens, Composer composer, int i) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startRestartGroup(-2086562817);
            int i2 = (gapComposer.changed(f) ? 4 : 2) | i | (gapComposer.changed(j) ? 32 : 16) | (gapComposer.changedInstance(null) ? 2048 : 1024);
            if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
                gapComposer.startReplaceGroup(269651843);
                gapComposer.end(false);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new DividerKt$$ExternalSyntheticLambda1(f, j, typographyKeyTokens, i, 2);
            }
        }

        /* renamed from: access$calculateHeight-N4Jib3Y, reason: not valid java name */
        public static final int m155access$calculateHeightN4Jib3Y(IntrinsicMeasureScope intrinsicMeasureScope, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j) {
            int max = Math.max(Math.max(Constraints.m435getMinHeightimpl(j), intrinsicMeasureScope.mo58roundToPx0680j_4(i6 == 1 ? ListTokens.ItemOneLineContainerHeight : i6 == 2 ? ListTokens.ItemTwoLineContainerHeight : ListTokens.ItemThreeLineContainerHeight)), Math.max(i, Math.max(i3 + i4 + i5, i2)) + i7);
            int m433getMaxHeightimpl = Constraints.m433getMaxHeightimpl(j);
            return max > m433getMaxHeightimpl ? m433getMaxHeightimpl : max;
        }
    }
