package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.material3.ButtonKt$Button$2;
import androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.internal.ChildSemanticsNodeElement;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.material3.tokens.ButtonSmallTokens;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.DialogTokens;
import androidx.compose.material3.tokens.FilledCardTokens;
import androidx.compose.material3.tokens.FilledTextFieldTokens;
import androidx.compose.material3.tokens.FilledTonalButtonTokens;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.OutlinedButtonTokens;
import androidx.compose.material3.tokens.RadioButtonTokens;
import androidx.compose.material3.tokens.SmallIconButtonTokens;
import androidx.compose.material3.tokens.SwitchTokens;
import androidx.compose.material3.tokens.TypographyKeyTokens;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MultiContentMeasurePolicyImpl;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AccessibilityManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.VisualTransformation$Companion;
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.window.DialogProperties;
import androidx.datastore.core.SimpleActor$offer$2;
import androidx.glance.layout.SpacerKt$Spacer$3;
import androidx.navigation.compose.DialogHostKt$$ExternalSyntheticLambda2;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.OperationKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import kotlin.Function;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda5;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;
import org.wikipedia.settings.BasePreferenceLoader;
import org.wikipedia.talk.TalkTopicsViewModel$subscribeTopic$1;
import org.wikipedia.talk.TalkTopicsViewModel$watchOrUnwatch$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CardKt {
    public static final RippleAlpha RippleAlpha = new RippleAlpha();

    /* renamed from: AlertDialog-Oix01E0, reason: not valid java name */
    public static final void m264AlertDialogOix01E0(final Function0 function0, final ComposableLambdaImpl composableLambdaImpl, final Modifier modifier, final Function2 function2, final Function2 function22, final Function2 function23, final Function2 function24, Shape shape, final long j, long j2, long j3, long j4, DialogProperties dialogProperties, GapComposer gapComposer, final int i) {
        Function0 function02;
        int i2;
        ComposableLambdaImpl composableLambdaImpl2;
        Modifier modifier2;
        Function2 function25;
        Function2 function26;
        Function2 function27;
        Function2 function28;
        final Shape shape2;
        final long j5;
        final long j6;
        final long j7;
        final DialogProperties dialogProperties2;
        Shape value;
        int i3;
        long value2;
        DialogProperties dialogProperties3;
        long j8;
        long j9;
        gapComposer.startRestartGroup(94478519);
        if ((i & 6) == 0) {
            function02 = function0;
            i2 = (gapComposer.changedInstance(function02) ? 4 : 2) | i;
        } else {
            function02 = function0;
            i2 = i;
        }
        if ((i & 48) == 0) {
            composableLambdaImpl2 = composableLambdaImpl;
            i2 |= gapComposer.changedInstance(composableLambdaImpl2) ? 32 : 16;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
        }
        if ((i & 384) == 0) {
            modifier2 = modifier;
            i2 |= gapComposer.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        if ((i & 3072) == 0) {
            function25 = function2;
            i2 |= gapComposer.changedInstance(function25) ? 2048 : 1024;
        } else {
            function25 = function2;
        }
        if ((i & 24576) == 0) {
            function26 = function22;
            i2 |= gapComposer.changedInstance(function26) ? 16384 : 8192;
        } else {
            function26 = function22;
        }
        if ((196608 & i) == 0) {
            function27 = function23;
            i2 |= gapComposer.changedInstance(function27) ? 131072 : 65536;
        } else {
            function27 = function23;
        }
        if ((1572864 & i) == 0) {
            function28 = function24;
            i2 |= gapComposer.changedInstance(function28) ? 1048576 : 524288;
        } else {
            function28 = function24;
        }
        if ((12582912 & i) == 0) {
            i2 |= 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= gapComposer.changed(j) ? 67108864 : 33554432;
        }
        if ((805306368 & i) == 0) {
            i2 |= 268435456;
        }
        if (gapComposer.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                value = ShapesKt.getValue(DialogTokens.ContainerShape, gapComposer);
                long value3 = ColorSchemeKt.getValue(DialogTokens.IconColor, gapComposer);
                i3 = i2 & (-1908408321);
                value2 = ColorSchemeKt.getValue(DialogTokens.HeadlineColor, gapComposer);
                long value4 = ColorSchemeKt.getValue(DialogTokens.SupportingTextColor, gapComposer);
                dialogProperties3 = new DialogProperties();
                j8 = value3;
                j9 = value4;
            } else {
                gapComposer.skipToGroupEnd();
                i3 = i2 & (-1908408321);
                value = shape;
                j8 = j2;
                value2 = j3;
                j9 = j4;
                dialogProperties3 = dialogProperties;
            }
            gapComposer.endDefaults();
            Shape shape3 = value;
            long j10 = value2;
            DialogProperties dialogProperties4 = dialogProperties3;
            AlertDialogKt.m251AlertDialogImplwrnwzgE(function02, composableLambdaImpl2, modifier2, function25, function26, function27, function28, shape3, j, j8, j10, j9, dialogProperties4, gapComposer, i3 & 2147483646, 3456);
            shape2 = shape3;
            dialogProperties2 = dialogProperties4;
            j7 = j9;
            j6 = j10;
            j5 = j8;
        } else {
            gapComposer.skipToGroupEnd();
            shape2 = shape;
            j5 = j2;
            j6 = j3;
            j7 = j4;
            dialogProperties2 = dialogProperties;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.AndroidAlertDialog_androidKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i | 1);
                    CardKt.m264AlertDialogOix01E0(Function0.this, composableLambdaImpl, modifier, function2, function22, function23, function24, shape2, j, j5, j6, j7, dialogProperties2, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:94:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Button(kotlin.jvm.functions.Function0 r29, androidx.compose.ui.Modifier r30, boolean r31, androidx.compose.ui.graphics.Shape r32, androidx.compose.material3.ButtonColors r33, androidx.compose.material3.ButtonElevation r34, androidx.compose.foundation.BorderStroke r35, androidx.compose.foundation.layout.PaddingValues r36, kotlin.jvm.functions.Function3 r37, androidx.compose.runtime.GapComposer r38, int r39, int r40) {
        /*
            Method dump skipped, instructions count: 820
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.Button(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, androidx.compose.material3.ButtonColors, androidx.compose.material3.ButtonElevation, androidx.compose.foundation.BorderStroke, androidx.compose.foundation.layout.PaddingValues, kotlin.jvm.functions.Function3, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Card(androidx.compose.ui.Modifier r19, androidx.compose.ui.graphics.Shape r20, androidx.compose.material3.CardColors r21, androidx.compose.material3.CardElevation r22, androidx.compose.foundation.BorderStroke r23, androidx.compose.runtime.internal.ComposableLambdaImpl r24, androidx.compose.runtime.GapComposer r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.Card(androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, androidx.compose.material3.CardColors, androidx.compose.material3.CardElevation, androidx.compose.foundation.BorderStroke, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* renamed from: DropdownMenuContent-Qj0Zi0g, reason: not valid java name */
    public static final void m265DropdownMenuContentQj0Zi0g(final Modifier modifier, final MutableTransitionState mutableTransitionState, final MutableState mutableState, final ScrollState scrollState, final Shape shape, final long j, final float f, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, final int i) {
        Object menuKt$$ExternalSyntheticLambda0;
        int i2;
        gapComposer.startRestartGroup(848986741);
        int i3 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changed(mutableTransitionState) ? 32 : 16) | (gapComposer.changed(scrollState) ? 2048 : 1024) | (gapComposer.changed(shape) ? 16384 : 8192) | (gapComposer.changed(j) ? 131072 : 65536) | (gapComposer.changed(RecyclerView.DECELERATION_RATE) ? 1048576 : 524288) | (gapComposer.changed(f) ? 8388608 : 4194304) | (gapComposer.changed((Object) null) ? 67108864 : 33554432) | (gapComposer.changedInstance(composableLambdaImpl) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 306783379) != 306783378)) {
            Transition rememberTransition = ArcSplineKt.rememberTransition(mutableTransitionState, "DropDownMenu", gapComposer, (((i3 >> 3) & 14) | 48) & 126);
            SpringSpec value = value(MotionSchemeKeyTokens.FastSpatial, gapComposer);
            SpringSpec value2 = value(MotionSchemeKeyTokens.FastEffects, gapComposer);
            TwoWayConverterImpl twoWayConverterImpl = ArcSplineKt.FloatToVector;
            BasePreferenceLoader basePreferenceLoader = rememberTransition.transitionState;
            ParcelableSnapshotMutableState parcelableSnapshotMutableState = rememberTransition.targetState$delegate;
            boolean booleanValue = ((Boolean) basePreferenceLoader.getCurrentState()).booleanValue();
            gapComposer.startReplaceGroup(143964305);
            float f2 = booleanValue ? 1.0f : 0.8f;
            gapComposer.end(false);
            Float valueOf = Float.valueOf(f2);
            boolean booleanValue2 = ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
            gapComposer.startReplaceGroup(143964305);
            float f3 = booleanValue2 ? 1.0f : 0.8f;
            gapComposer.end(false);
            Float valueOf2 = Float.valueOf(f3);
            rememberTransition.getSegment();
            gapComposer.startReplaceGroup(-745957716);
            gapComposer.end(false);
            Transition.TransitionAnimationState createTransitionAnimation = ArcSplineKt.createTransitionAnimation(rememberTransition, valueOf, valueOf2, value, twoWayConverterImpl, gapComposer, 0);
            boolean booleanValue3 = ((Boolean) rememberTransition.transitionState.getCurrentState()).booleanValue();
            gapComposer.startReplaceGroup(892761509);
            float f4 = booleanValue3 ? 1.0f : RecyclerView.DECELERATION_RATE;
            gapComposer.end(false);
            Float valueOf3 = Float.valueOf(f4);
            boolean booleanValue4 = ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
            gapComposer.startReplaceGroup(892761509);
            float f5 = booleanValue4 ? 1.0f : RecyclerView.DECELERATION_RATE;
            gapComposer.end(false);
            Float valueOf4 = Float.valueOf(f5);
            rememberTransition.getSegment();
            gapComposer.startReplaceGroup(2839488);
            gapComposer.end(false);
            Transition.TransitionAnimationState createTransitionAnimation2 = ArcSplineKt.createTransitionAnimation(rememberTransition, valueOf3, valueOf4, value2, twoWayConverterImpl, gapComposer, 0);
            boolean booleanValue5 = ((Boolean) gapComposer.consume(InspectionModeKt.LocalInspectionMode)).booleanValue();
            boolean changed = gapComposer.changed(booleanValue5) | gapComposer.changed(createTransitionAnimation) | ((i3 & 112) == 32) | gapComposer.changed(createTransitionAnimation2);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer$Companion.Empty) {
                i2 = 1;
                menuKt$$ExternalSyntheticLambda0 = new MenuKt$$ExternalSyntheticLambda0(booleanValue5, mutableTransitionState, mutableState, createTransitionAnimation, createTransitionAnimation2);
                gapComposer.updateRememberedValue(menuKt$$ExternalSyntheticLambda0);
            } else {
                menuKt$$ExternalSyntheticLambda0 = rememberedValue;
                i2 = 1;
            }
            int i4 = i3 >> 9;
            int i5 = i3 >> 6;
            SurfaceKt.m297SurfaceT9BRK9s(ColorKt.graphicsLayer(Modifier.Companion.$$INSTANCE, (Function1) menuKt$$ExternalSyntheticLambda0), shape, j, 0L, f, null, Expect_jvmKt.rememberComposableLambda(-1463404422, new TooltipKt$TooltipBox$3((Object) modifier, (Object) scrollState, composableLambdaImpl, i2), gapComposer), gapComposer, (i4 & 896) | (i4 & 112) | 12582912 | (57344 & i5) | (458752 & i5) | (i5 & 3670016), 8);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(mutableTransitionState, mutableState, scrollState, shape, j, f, composableLambdaImpl, i) { // from class: androidx.compose.material3.MenuKt$$ExternalSyntheticLambda1
                public final /* synthetic */ MutableTransitionState f$1;
                public final /* synthetic */ MutableState f$2;
                public final /* synthetic */ ScrollState f$3;
                public final /* synthetic */ Shape f$4;
                public final /* synthetic */ long f$5;
                public final /* synthetic */ float f$7;
                public final /* synthetic */ ComposableLambdaImpl f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(385);
                    CardKt.m265DropdownMenuContentQj0Zi0g(Modifier.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$7, this.f$9, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void DropdownMenuItemContent(final ComposableLambdaImpl composableLambdaImpl, Function0 function0, Modifier modifier, final Function2 function2, final Function2 function22, final boolean z, final MenuItemColors menuItemColors, PaddingValues paddingValues, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(-1325192924);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(composableLambdaImpl) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(function22) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changed(z) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changed(menuItemColors) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= gapComposer.changed(paddingValues) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= gapComposer.changed((Object) null) ? 67108864 : 33554432;
        }
        if (gapComposer.shouldExecute(i2 & 1, (38347923 & i2) != 38347922)) {
            Modifier padding = OffsetKt.padding(SizeKt.m148sizeInqDBjuR0$default(SizeKt.fillMaxWidth(ImageKt.m50clickableO2vRcR0$default(modifier, null, RippleKt.m294rippleH2RKhps$default(RecyclerView.DECELERATION_RATE, 6, true), z, null, function0, 24), 1.0f), 112.0f, 48.0f, 280.0f, 8), paddingValues);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer, 48);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, padding);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
            }
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            TextKt.ProvideTextStyle(((Typography) gapComposer.consume(TypographyKt.LocalTypography)).labelLarge, Expect_jvmKt.rememberComposableLambda(865999929, new Function2() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1

                /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
                /* renamed from: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1$1, reason: invalid class name */
                public final class AnonymousClass1 implements Function2 {
                    public final /* synthetic */ Function2 $leadingIcon;
                    public final /* synthetic */ int $r8$classId;

                    public /* synthetic */ AnonymousClass1(int i, Function2 function2) {
                        this.$r8$classId = i;
                        this.$leadingIcon = function2;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i = this.$r8$classId;
                        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                        Unit unit = Unit.INSTANCE;
                        Function2 function2 = this.$leadingIcon;
                        switch (i) {
                            case 0:
                                GapComposer gapComposer = (GapComposer) obj;
                                int intValue = ((Number) obj2).intValue();
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    Modifier m139defaultMinSizeVpY3zN4$default = SizeKt.m139defaultMinSizeVpY3zN4$default(ListTokens.ListItemLeadingIconSize, RecyclerView.DECELERATION_RATE, 2);
                                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                    int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m139defaultMinSizeVpY3zN4$default);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                                    gapComposer.startReusableNode();
                                    if (gapComposer.inserting) {
                                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                                    } else {
                                        gapComposer.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
                                    }
                                    Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                                    function2.invoke(gapComposer, 0);
                                    gapComposer.end(true);
                                    break;
                                }
                                break;
                            case 1:
                                GapComposer gapComposer2 = (GapComposer) obj;
                                int intValue2 = ((Number) obj2).intValue();
                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    Modifier then = OffsetKt.padding(companion, AlertDialogKt.IconPadding).then(new HorizontalAlignElement(Alignment.Companion.CenterHorizontally));
                                    MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                    int currentCompositeKeyHash2 = Updater.getCurrentCompositeKeyHash(gapComposer2);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, then);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                                    gapComposer2.startReusableNode();
                                    if (gapComposer2.inserting) {
                                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                                    } else {
                                        gapComposer2.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                        Modifier.CC.m(currentCompositeKeyHash2, gapComposer2, currentCompositeKeyHash2, composeUiNode$Companion$SetModifier$12);
                                    }
                                    Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                                    function2.invoke(gapComposer2, 0);
                                    gapComposer2.end(true);
                                    break;
                                }
                                break;
                            case 2:
                                GapComposer gapComposer3 = (GapComposer) obj;
                                int intValue3 = ((Number) obj2).intValue();
                                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                                    gapComposer3.skipToGroupEnd();
                                    break;
                                } else {
                                    Modifier then2 = OffsetKt.padding(new LayoutWeightElement(1.0f, false), AlertDialogKt.TextPadding).then(new HorizontalAlignElement(Alignment.Companion.Start));
                                    MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                    int currentCompositeKeyHash3 = Updater.getCurrentCompositeKeyHash(gapComposer3);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer3.currentCompositionLocalScope();
                                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer3, then2);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                                    gapComposer3.startReusableNode();
                                    if (gapComposer3.inserting) {
                                        gapComposer3.createNode(layoutNode$Companion$Constructor$13);
                                    } else {
                                        gapComposer3.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer3, maybeCachedBoxMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m327setimpl(gapComposer3, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    if (gapComposer3.inserting || !Intrinsics.areEqual(gapComposer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                        Modifier.CC.m(currentCompositeKeyHash3, gapComposer3, currentCompositeKeyHash3, composeUiNode$Companion$SetModifier$13);
                                    }
                                    Updater.m327setimpl(gapComposer3, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                                    function2.invoke(gapComposer3, 0);
                                    gapComposer3.end(true);
                                    break;
                                }
                                break;
                            case 3:
                                GapComposer gapComposer4 = (GapComposer) obj;
                                int intValue4 = ((Number) obj2).intValue();
                                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                                    gapComposer4.skipToGroupEnd();
                                    break;
                                } else {
                                    Modifier m139defaultMinSizeVpY3zN4$default2 = SizeKt.m139defaultMinSizeVpY3zN4$default(ListTokens.ListItemTrailingIconSize, RecyclerView.DECELERATION_RATE, 2);
                                    MeasurePolicy maybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                    int currentCompositeKeyHash4 = Updater.getCurrentCompositeKeyHash(gapComposer4);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer4.currentCompositionLocalScope();
                                    Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer4, m139defaultMinSizeVpY3zN4$default2);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$14 = ComposeUiNode.Companion.Constructor;
                                    gapComposer4.startReusableNode();
                                    if (gapComposer4.inserting) {
                                        gapComposer4.createNode(layoutNode$Companion$Constructor$14);
                                    } else {
                                        gapComposer4.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer4, maybeCachedBoxMeasurePolicy4, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m327setimpl(gapComposer4, currentCompositionLocalScope4, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    if (gapComposer4.inserting || !Intrinsics.areEqual(gapComposer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash4))) {
                                        Modifier.CC.m(currentCompositeKeyHash4, gapComposer4, currentCompositeKeyHash4, composeUiNode$Companion$SetModifier$14);
                                    }
                                    Updater.m327setimpl(gapComposer4, materializeModifier4, ComposeUiNode.Companion.SetModifier);
                                    function2.invoke(gapComposer4, 0);
                                    gapComposer4.end(true);
                                    break;
                                }
                                break;
                            case 4:
                                GapComposer gapComposer5 = (GapComposer) obj;
                                int intValue5 = ((Number) obj2).intValue();
                                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                                    gapComposer5.skipToGroupEnd();
                                    break;
                                } else {
                                    MeasurePolicy maybeCachedBoxMeasurePolicy5 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                    int currentCompositeKeyHash5 = Updater.getCurrentCompositeKeyHash(gapComposer5);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer5.currentCompositionLocalScope();
                                    Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer5, companion);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$15 = ComposeUiNode.Companion.Constructor;
                                    gapComposer5.startReusableNode();
                                    if (gapComposer5.inserting) {
                                        gapComposer5.createNode(layoutNode$Companion$Constructor$15);
                                    } else {
                                        gapComposer5.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer5, maybeCachedBoxMeasurePolicy5, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m327setimpl(gapComposer5, currentCompositionLocalScope5, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    if (gapComposer5.inserting || !Intrinsics.areEqual(gapComposer5.rememberedValue(), Integer.valueOf(currentCompositeKeyHash5))) {
                                        Modifier.CC.m(currentCompositeKeyHash5, gapComposer5, currentCompositeKeyHash5, composeUiNode$Companion$SetModifier$15);
                                    }
                                    Updater.m327setimpl(gapComposer5, materializeModifier5, ComposeUiNode.Companion.SetModifier);
                                    function2.invoke(gapComposer5, 0);
                                    gapComposer5.end(true);
                                    break;
                                }
                                break;
                            case 5:
                                GapComposer gapComposer6 = (GapComposer) obj;
                                int intValue6 = ((Number) obj2).intValue();
                                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                                    gapComposer6.skipToGroupEnd();
                                    break;
                                } else {
                                    MeasurePolicy maybeCachedBoxMeasurePolicy6 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                    int currentCompositeKeyHash6 = Updater.getCurrentCompositeKeyHash(gapComposer6);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope6 = gapComposer6.currentCompositionLocalScope();
                                    Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(gapComposer6, companion);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$16 = ComposeUiNode.Companion.Constructor;
                                    gapComposer6.startReusableNode();
                                    if (gapComposer6.inserting) {
                                        gapComposer6.createNode(layoutNode$Companion$Constructor$16);
                                    } else {
                                        gapComposer6.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer6, maybeCachedBoxMeasurePolicy6, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m327setimpl(gapComposer6, currentCompositionLocalScope6, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    if (gapComposer6.inserting || !Intrinsics.areEqual(gapComposer6.rememberedValue(), Integer.valueOf(currentCompositeKeyHash6))) {
                                        Modifier.CC.m(currentCompositeKeyHash6, gapComposer6, currentCompositeKeyHash6, composeUiNode$Companion$SetModifier$16);
                                    }
                                    Updater.m327setimpl(gapComposer6, materializeModifier6, ComposeUiNode.Companion.SetModifier);
                                    function2.invoke(gapComposer6, 0);
                                    gapComposer6.end(true);
                                    break;
                                }
                                break;
                            case 6:
                                GapComposer gapComposer7 = (GapComposer) obj;
                                int intValue7 = ((Number) obj2).intValue();
                                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                                    gapComposer7.skipToGroupEnd();
                                    break;
                                } else {
                                    MeasurePolicy maybeCachedBoxMeasurePolicy7 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                    int currentCompositeKeyHash7 = Updater.getCurrentCompositeKeyHash(gapComposer7);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope7 = gapComposer7.currentCompositionLocalScope();
                                    Modifier materializeModifier7 = AbsoluteAlignment.materializeModifier(gapComposer7, companion);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$17 = ComposeUiNode.Companion.Constructor;
                                    gapComposer7.startReusableNode();
                                    if (gapComposer7.inserting) {
                                        gapComposer7.createNode(layoutNode$Companion$Constructor$17);
                                    } else {
                                        gapComposer7.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer7, maybeCachedBoxMeasurePolicy7, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m327setimpl(gapComposer7, currentCompositionLocalScope7, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    if (gapComposer7.inserting || !Intrinsics.areEqual(gapComposer7.rememberedValue(), Integer.valueOf(currentCompositeKeyHash7))) {
                                        Modifier.CC.m(currentCompositeKeyHash7, gapComposer7, currentCompositeKeyHash7, composeUiNode$Companion$SetModifier$17);
                                    }
                                    Updater.m327setimpl(gapComposer7, materializeModifier7, ComposeUiNode.Companion.SetModifier);
                                    function2.invoke(gapComposer7, 0);
                                    gapComposer7.end(true);
                                    break;
                                }
                                break;
                            case 7:
                                GapComposer gapComposer8 = (GapComposer) obj;
                                int intValue8 = ((Number) obj2).intValue();
                                if (!gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                                    gapComposer8.skipToGroupEnd();
                                    break;
                                } else {
                                    MeasurePolicy maybeCachedBoxMeasurePolicy8 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                    int currentCompositeKeyHash8 = Updater.getCurrentCompositeKeyHash(gapComposer8);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope8 = gapComposer8.currentCompositionLocalScope();
                                    Modifier materializeModifier8 = AbsoluteAlignment.materializeModifier(gapComposer8, companion);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$18 = ComposeUiNode.Companion.Constructor;
                                    gapComposer8.startReusableNode();
                                    if (gapComposer8.inserting) {
                                        gapComposer8.createNode(layoutNode$Companion$Constructor$18);
                                    } else {
                                        gapComposer8.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer8, maybeCachedBoxMeasurePolicy8, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m327setimpl(gapComposer8, currentCompositionLocalScope8, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$18 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    if (gapComposer8.inserting || !Intrinsics.areEqual(gapComposer8.rememberedValue(), Integer.valueOf(currentCompositeKeyHash8))) {
                                        Modifier.CC.m(currentCompositeKeyHash8, gapComposer8, currentCompositeKeyHash8, composeUiNode$Companion$SetModifier$18);
                                    }
                                    Updater.m327setimpl(gapComposer8, materializeModifier8, ComposeUiNode.Companion.SetModifier);
                                    function2.invoke(gapComposer8, 0);
                                    gapComposer8.end(true);
                                    break;
                                }
                                break;
                            default:
                                GapComposer gapComposer9 = (GapComposer) obj;
                                int intValue9 = ((Number) obj2).intValue();
                                if (!gapComposer9.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                                    gapComposer9.skipToGroupEnd();
                                    break;
                                } else {
                                    Modifier layoutId = RulerKt.layoutId(companion, "Container");
                                    MeasurePolicy maybeCachedBoxMeasurePolicy9 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
                                    int currentCompositeKeyHash9 = Updater.getCurrentCompositeKeyHash(gapComposer9);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope9 = gapComposer9.currentCompositionLocalScope();
                                    Modifier materializeModifier9 = AbsoluteAlignment.materializeModifier(gapComposer9, layoutId);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$19 = ComposeUiNode.Companion.Constructor;
                                    gapComposer9.startReusableNode();
                                    if (gapComposer9.inserting) {
                                        gapComposer9.createNode(layoutNode$Companion$Constructor$19);
                                    } else {
                                        gapComposer9.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer9, maybeCachedBoxMeasurePolicy9, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m327setimpl(gapComposer9, currentCompositionLocalScope9, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$19 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    if (gapComposer9.inserting || !Intrinsics.areEqual(gapComposer9.rememberedValue(), Integer.valueOf(currentCompositeKeyHash9))) {
                                        Modifier.CC.m(currentCompositeKeyHash9, gapComposer9, currentCompositeKeyHash9, composeUiNode$Companion$SetModifier$19);
                                    }
                                    Updater.m327setimpl(gapComposer9, materializeModifier9, ComposeUiNode.Companion.SetModifier);
                                    function2.invoke(gapComposer9, 0);
                                    gapComposer9.end(true);
                                    break;
                                }
                                break;
                        }
                        return unit;
                    }
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    GapComposer gapComposer2 = (GapComposer) obj;
                    int intValue = ((Number) obj2).intValue();
                    int i3 = 0;
                    int i4 = 2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        boolean z2 = z;
                        MenuItemColors menuItemColors2 = menuItemColors;
                        Function2 function23 = Function2.this;
                        if (function23 != null) {
                            gapComposer2.startReplaceGroup(-864613220);
                            Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(z2 ? menuItemColors2.leadingIconColor : menuItemColors2.disabledLeadingIconColor)), Expect_jvmKt.rememberComposableLambda(1241781204, new AnonymousClass1(i3, function23), gapComposer2), gapComposer2, 56);
                            gapComposer2.end(false);
                        } else {
                            gapComposer2.startReplaceGroup(-864293207);
                            gapComposer2.end(false);
                        }
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = ContentColorKt.LocalContentColor;
                        ProvidedValue defaultProvidedValue$runtime = staticProvidableCompositionLocal.defaultProvidedValue$runtime(new Color(z2 ? menuItemColors2.textColor : menuItemColors2.disabledTextColor));
                        ComposableLambdaImpl composableLambdaImpl2 = composableLambdaImpl;
                        Function2 function24 = function22;
                        Updater.CompositionLocalProvider(defaultProvidedValue$runtime, Expect_jvmKt.rememberComposableLambda(-893579015, new TooltipKt$TooltipBox$3((Object) function23, (Object) function24, composableLambdaImpl2, i4), gapComposer2), gapComposer2, 56);
                        if (function24 != null) {
                            gapComposer2.startReplaceGroup(-863394951);
                            Updater.CompositionLocalProvider(staticProvidableCompositionLocal.defaultProvidedValue$runtime(new Color(z2 ? menuItemColors2.trailingIconColor : menuItemColors2.disabledTrailingIconColor)), Expect_jvmKt.rememberComposableLambda(-782441013, new AnonymousClass1(3, function24), gapComposer2), gapComposer2, 56);
                            gapComposer2.end(false);
                        } else {
                            gapComposer2.startReplaceGroup(-863072055);
                            gapComposer2.end(false);
                        }
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 48);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MenuKt$$ExternalSyntheticLambda2(composableLambdaImpl, function0, modifier, function2, function22, z, menuItemColors, paddingValues, i);
        }
    }

    public static final void ElevatedButton(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, ButtonElevation buttonElevation, PaddingValues paddingValues, GapComposer gapComposer, int i) {
        boolean z2;
        Shape shape2;
        PaddingValues paddingValues2;
        int i2;
        PaddingValues paddingValues3;
        boolean z3;
        Shape shape3;
        ComposableLambdaImpl composableLambdaImpl = ImpactModuleKt.lambda$653983946;
        gapComposer.startRestartGroup(-1943994298);
        int i3 = i | (gapComposer.changedInstance(function0) ? 4 : 2) | 1408 | (gapComposer.changed(buttonColors) ? 16384 : 8192) | (gapComposer.changed(buttonElevation) ? 131072 : 65536) | 114819072;
        if (gapComposer.shouldExecute(i3 & 1, (306783379 & i3) != 306783378)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                Shape value = ShapesKt.getValue(ButtonSmallTokens.ContainerShapeRound, gapComposer);
                i2 = i3 & (-7169);
                paddingValues3 = ButtonDefaults.ContentPadding;
                z3 = true;
                shape3 = value;
            } else {
                gapComposer.skipToGroupEnd();
                i2 = i3 & (-7169);
                z3 = z;
                shape3 = shape;
                paddingValues3 = paddingValues;
            }
            gapComposer.endDefaults();
            Button(function0, modifier, z3, shape3, buttonColors, buttonElevation, null, paddingValues3, composableLambdaImpl, gapComposer, i2 & 2147483646, 0);
            z2 = z3;
            shape2 = shape3;
            paddingValues2 = paddingValues3;
        } else {
            gapComposer.skipToGroupEnd();
            z2 = z;
            shape2 = shape;
            paddingValues2 = paddingValues;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ButtonKt$$ExternalSyntheticLambda4(function0, modifier, z2, shape2, buttonColors, buttonElevation, paddingValues2, i);
        }
    }

    public static final void FadeInFadeOutWithScale(final SnackbarHostState.SnackbarDataImpl snackbarDataImpl, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        boolean z;
        gapComposer.startRestartGroup(-977568115);
        int i2 = (i & 6) == 0 ? (gapComposer.changed(snackbarDataImpl) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128;
        }
        boolean z2 = true;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            final String m318getString2EP1pXo = LayoutUtilKt.m318getString2EP1pXo(R.string.m3c_snackbar_pane_title, gapComposer);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = rememberedValue;
            if (rememberedValue == Composer$Companion.Empty) {
                FadeInFadeOutState fadeInFadeOutState = new FadeInFadeOutState();
                fadeInFadeOutState.current = new Object();
                fadeInFadeOutState.items = new ArrayList();
                gapComposer.updateRememberedValue(fadeInFadeOutState);
                obj = fadeInFadeOutState;
            }
            final FadeInFadeOutState fadeInFadeOutState2 = (FadeInFadeOutState) obj;
            Object obj2 = fadeInFadeOutState2.current;
            ArrayList arrayList = fadeInFadeOutState2.items;
            if (Intrinsics.areEqual(snackbarDataImpl, obj2)) {
                z = true;
                gapComposer.startReplaceGroup(1443908949);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(1154891761);
                fadeInFadeOutState2.current = snackbarDataImpl;
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    arrayList2.add((SnackbarHostState.SnackbarDataImpl) ((FadeInFadeOutAnimationItem) arrayList.get(i3)).key);
                }
                ArrayList arrayList3 = new ArrayList(arrayList2);
                if (!arrayList3.contains(snackbarDataImpl)) {
                    arrayList3.add(snackbarDataImpl);
                }
                arrayList.clear();
                ArrayList arrayList4 = new ArrayList(arrayList3.size());
                int size2 = arrayList3.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    Object obj3 = arrayList3.get(i4);
                    if (obj3 != null) {
                        arrayList4.add(obj3);
                    }
                }
                int size3 = arrayList4.size();
                int i5 = 0;
                while (i5 < size3) {
                    final SnackbarHostState.SnackbarDataImpl snackbarDataImpl2 = (SnackbarHostState.SnackbarDataImpl) arrayList4.get(i5);
                    arrayList.add(new FadeInFadeOutAnimationItem(snackbarDataImpl2, Expect_jvmKt.rememberComposableLambda(-1952400805, new Function3() { // from class: androidx.compose.material3.SnackbarHostKt$FadeInFadeOutWithScale$1$1
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj4, Object obj5, Object obj6) {
                            Boolean bool;
                            Function2 function2 = (Function2) obj4;
                            GapComposer gapComposer2 = (GapComposer) obj5;
                            int intValue = ((Number) obj6).intValue();
                            if ((intValue & 6) == 0) {
                                intValue |= gapComposer2.changedInstance(function2) ? 4 : 2;
                            }
                            if (gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                                SnackbarHostState.SnackbarDataImpl snackbarDataImpl3 = snackbarDataImpl;
                                Object obj7 = SnackbarHostState.SnackbarDataImpl.this;
                                boolean areEqual = Intrinsics.areEqual(obj7, snackbarDataImpl3);
                                SpringSpec value = CardKt.value(MotionSchemeKeyTokens.FastEffects, gapComposer2);
                                boolean changed = gapComposer2.changed(obj7);
                                Object obj8 = fadeInFadeOutState2;
                                boolean changedInstance = changed | gapComposer2.changedInstance(obj8);
                                Object rememberedValue2 = gapComposer2.rememberedValue();
                                Object obj9 = Composer$Companion.Empty;
                                if (changedInstance || rememberedValue2 == obj9) {
                                    rememberedValue2 = new Recomposer$$ExternalSyntheticLambda6(20, obj7, obj8);
                                    gapComposer2.updateRememberedValue(rememberedValue2);
                                }
                                Function0 function0 = (Function0) rememberedValue2;
                                Object rememberedValue3 = gapComposer2.rememberedValue();
                                if (rememberedValue3 == obj9) {
                                    rememberedValue3 = ArcSplineKt.Animatable$default(!areEqual ? 1.0f : RecyclerView.DECELERATION_RATE);
                                    gapComposer2.updateRememberedValue(rememberedValue3);
                                }
                                Animatable animatable = (Animatable) rememberedValue3;
                                Boolean valueOf = Boolean.valueOf(areEqual);
                                boolean changedInstance2 = gapComposer2.changedInstance(animatable) | gapComposer2.changed(areEqual) | gapComposer2.changedInstance(value) | gapComposer2.changed(function0);
                                Object rememberedValue4 = gapComposer2.rememberedValue();
                                if (changedInstance2 || rememberedValue4 == obj9) {
                                    Object talkTopicsViewModel$watchOrUnwatch$1 = new TalkTopicsViewModel$watchOrUnwatch$1(animatable, areEqual, value, function0, (Continuation) null);
                                    gapComposer2.updateRememberedValue(talkTopicsViewModel$watchOrUnwatch$1);
                                    rememberedValue4 = talkTopicsViewModel$watchOrUnwatch$1;
                                }
                                Updater.LaunchedEffect(gapComposer2, valueOf, (Function2) rememberedValue4);
                                AnimationState animationState = animatable.internalState;
                                Object value2 = CardKt.value(MotionSchemeKeyTokens.FastSpatial, gapComposer2);
                                Object rememberedValue5 = gapComposer2.rememberedValue();
                                if (rememberedValue5 == obj9) {
                                    rememberedValue5 = ArcSplineKt.Animatable$default(areEqual ? 0.8f : 1.0f);
                                    gapComposer2.updateRememberedValue(rememberedValue5);
                                }
                                Animatable animatable2 = (Animatable) rememberedValue5;
                                Boolean valueOf2 = Boolean.valueOf(areEqual);
                                boolean changedInstance3 = gapComposer2.changedInstance(animatable2) | gapComposer2.changed(areEqual) | gapComposer2.changedInstance(value2);
                                Object rememberedValue6 = gapComposer2.rememberedValue();
                                if (changedInstance3 || rememberedValue6 == obj9) {
                                    bool = valueOf2;
                                    Object talkTopicsViewModel$subscribeTopic$1 = new TalkTopicsViewModel$subscribeTopic$1(animatable2, areEqual, value2, null, 1);
                                    gapComposer2.updateRememberedValue(talkTopicsViewModel$subscribeTopic$1);
                                    rememberedValue6 = talkTopicsViewModel$subscribeTopic$1;
                                } else {
                                    bool = valueOf2;
                                }
                                Updater.LaunchedEffect(gapComposer2, bool, (Function2) rememberedValue6);
                                AnimationState animationState2 = animatable2.internalState;
                                Modifier m438graphicsLayerAp8cVGQ$default = ColorKt.m438graphicsLayerAp8cVGQ$default(Modifier.Companion.$$INSTANCE, ((Number) animationState2.value$delegate.getValue()).floatValue(), ((Number) animationState2.value$delegate.getValue()).floatValue(), ((Number) animationState.value$delegate.getValue()).floatValue(), RecyclerView.DECELERATION_RATE, null, 131064);
                                boolean changed2 = gapComposer2.changed(areEqual) | gapComposer2.changed(obj7);
                                Object obj10 = m318getString2EP1pXo;
                                boolean changed3 = changed2 | gapComposer2.changed(obj10);
                                Object rememberedValue7 = gapComposer2.rememberedValue();
                                if (changed3 || rememberedValue7 == obj9) {
                                    rememberedValue7 = new DialogHostKt$$ExternalSyntheticLambda2(2, obj10, obj7, areEqual);
                                    gapComposer2.updateRememberedValue(rememberedValue7);
                                }
                                Modifier semantics = SemanticsModifierKt.semantics(m438graphicsLayerAp8cVGQ$default, false, (Function1) rememberedValue7);
                                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer2);
                                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, semantics);
                                ComposeUiNode.Companion.getClass();
                                Function0 function02 = ComposeUiNode.Companion.Constructor;
                                gapComposer2.startReusableNode();
                                if (gapComposer2.inserting) {
                                    gapComposer2.createNode(function02);
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
                                function2.invoke(gapComposer2, Integer.valueOf(intValue & 14));
                                gapComposer2.end(true);
                            } else {
                                gapComposer2.skipToGroupEnd();
                            }
                            return Unit.INSTANCE;
                        }
                    }, gapComposer)));
                    i5++;
                    z2 = z2;
                }
                z = z2;
                gapComposer.end(false);
            }
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            Function0 function0 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(function0);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
            }
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            RecomposeScopeImpl currentRecomposeScope$runtime = gapComposer.getCurrentRecomposeScope$runtime();
            if (currentRecomposeScope$runtime == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("no recompose scope found");
                return;
            }
            currentRecomposeScope$runtime.flags |= 1;
            fadeInFadeOutState2.scope = currentRecomposeScope$runtime;
            gapComposer.startReplaceGroup(-1888182177);
            int size4 = arrayList.size();
            for (int i6 = 0; i6 < size4; i6++) {
                FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem = (FadeInFadeOutAnimationItem) arrayList.get(i6);
                Object obj4 = (SnackbarHostState.SnackbarDataImpl) fadeInFadeOutAnimationItem.key;
                ComposableLambdaImpl composableLambdaImpl2 = fadeInFadeOutAnimationItem.transition;
                gapComposer.startMovableGroup(1325010085, obj4);
                composableLambdaImpl2.invoke((Object) Expect_jvmKt.rememberComposableLambda(-1893791890, new ButtonKt$Button$2.AnonymousClass1(4, composableLambdaImpl, obj4), gapComposer), (Object) gapComposer, (Object) 6);
                gapComposer.end(false);
            }
            gapComposer.end(false);
            gapComposer.end(z);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9((Object) snackbarDataImpl, (Object) modifier, (Function) composableLambdaImpl, i, 9);
        }
    }

    public static final void FilledTonalButton(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, ButtonElevation buttonElevation, PaddingValues paddingValues, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i, int i2) {
        int i3;
        Modifier modifier2;
        boolean z2;
        Shape shape2;
        ButtonElevation buttonElevation2;
        PaddingValues paddingValues2;
        Shape value;
        int i4;
        Modifier modifier3;
        boolean z3;
        PaddingValues paddingValues3;
        ButtonElevation buttonElevation3;
        gapComposer.startRestartGroup(-102343472);
        int i5 = i | (gapComposer.changedInstance(function0) ? 4 : 2);
        int i6 = i2 & 2;
        if (i6 != 0) {
            i3 = i5 | 48;
        } else {
            i3 = i5 | (gapComposer.changed(modifier) ? 32 : 16);
        }
        int i7 = i3 | 1408 | (gapComposer.changed(buttonColors) ? 16384 : 8192) | 114884608;
        if (gapComposer.shouldExecute(i7 & 1, (306783379 & i7) != 306783378)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                Modifier modifier4 = i6 != 0 ? Modifier.Companion.$$INSTANCE : modifier;
                PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                value = ShapesKt.getValue(ButtonSmallTokens.ContainerShapeRound, gapComposer);
                ButtonElevation buttonElevation4 = new ButtonElevation(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, FilledTonalButtonTokens.HoverContainerElevation);
                i4 = i7 & (-465921);
                modifier3 = modifier4;
                z3 = true;
                paddingValues3 = ButtonDefaults.ContentPadding;
                buttonElevation3 = buttonElevation4;
            } else {
                gapComposer.skipToGroupEnd();
                z3 = z;
                value = shape;
                buttonElevation3 = buttonElevation;
                paddingValues3 = paddingValues;
                i4 = i7 & (-465921);
                modifier3 = modifier;
            }
            gapComposer.endDefaults();
            Button(function0, modifier3, z3, value, buttonColors, buttonElevation3, null, paddingValues3, composableLambdaImpl, gapComposer, i4 & 2147483646, 0);
            z2 = z3;
            paddingValues2 = paddingValues3;
            buttonElevation2 = buttonElevation3;
            shape2 = value;
            modifier2 = modifier3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            z2 = z;
            shape2 = shape;
            buttonElevation2 = buttonElevation;
            paddingValues2 = paddingValues;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MenuKt$$ExternalSyntheticLambda2(function0, modifier2, z2, shape2, buttonColors, buttonElevation2, paddingValues2, composableLambdaImpl, i, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008d  */
    /* renamed from: HorizontalDivider-9IZ8Weo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m266HorizontalDivider9IZ8Weo(androidx.compose.ui.Modifier r14, float r15, final long r16, androidx.compose.runtime.GapComposer r18, final int r19, final int r20) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.m266HorizontalDivider9IZ8Weo(androidx.compose.ui.Modifier, float, long, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void IconButton(kotlin.jvm.functions.Function0 r28, androidx.compose.ui.Modifier r29, boolean r30, androidx.compose.material3.IconButtonColors r31, androidx.compose.ui.graphics.Shape r32, kotlin.jvm.functions.Function2 r33, androidx.compose.runtime.GapComposer r34, int r35, int r36) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.IconButton(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.material3.IconButtonColors, androidx.compose.ui.graphics.Shape, kotlin.jvm.functions.Function2, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void IconButtonImpl(Modifier modifier, Function0 function0, boolean z, Shape shape, IconButtonColors iconButtonColors, Function2 function2, GapComposer gapComposer, int i) {
        int i2;
        Modifier then;
        gapComposer.startRestartGroup(-1134296466);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(shape) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(iconButtonColors) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changed((Object) null) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 1048576 : 524288;
        }
        int i3 = i2;
        if (gapComposer.shouldExecute(i3 & 1, (599187 & i3) != 599186)) {
            gapComposer.startReplaceGroup(977045485);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new MutableInteractionSourceImpl();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableInteractionSourceImpl mutableInteractionSourceImpl = (MutableInteractionSourceImpl) rememberedValue;
            gapComposer.end(false);
            HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
            Modifier then2 = modifier.then(MinimumInteractiveModifier.INSTANCE);
            float f = SmallIconButtonTokens.DefaultLeadingSpace;
            long m695DpSizeYgX7TsA = DpKt.m695DpSizeYgX7TsA(SmallIconButtonTokens.IconSize + f + f, 40.0f);
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            then = ImageKt.m50clickableO2vRcR0$default(ImageKt.m46backgroundbw27NRU(ClipKt.clip(SizeKt.m146sizeVpY3zN4(then2, DpSize.m712getWidthD9Ej5fM(m695DpSizeYgX7TsA), DpSize.m711getHeightD9Ej5fM(m695DpSizeYgX7TsA)), shape), z ? iconButtonColors.containerColor : iconButtonColors.disabledContainerColor, shape), mutableInteractionSourceImpl, RippleKt.m294rippleH2RKhps$default(RecyclerView.DECELERATION_RATE, 7, false), z, new Role(0), function0, 8).then(new ChildSemanticsNodeElement(new ChipKt$$ExternalSyntheticLambda2(27)));
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
            }
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(z ? iconButtonColors.contentColor : iconButtonColors.disabledContentColor)), function2, gapComposer, ((i3 >> 15) & 112) | 8);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new IconButtonKt$$ExternalSyntheticLambda1(modifier, function0, z, shape, iconButtonColors, function2, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0057  */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9, types: [boolean, int] */
    /* renamed from: ListItem-HXNGIdc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m267ListItemHXNGIdc(androidx.compose.runtime.internal.ComposableLambdaImpl r23, androidx.compose.ui.Modifier r24, kotlin.jvm.functions.Function2 r25, kotlin.jvm.functions.Function2 r26, kotlin.jvm.functions.Function2 r27, final androidx.compose.material3.ListItemColors r28, androidx.compose.runtime.GapComposer r29, int r30, int r31) {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.m267ListItemHXNGIdc(androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.material3.ListItemColors, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void ListItemLayout(Function2 function2, Function2 function22, ComposableLambdaImpl composableLambdaImpl, Function2 function23, Function2 function24, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-61277522);
        int i2 = i | (gapComposer.changedInstance(function2) ? 4 : 2) | (gapComposer.changedInstance(function22) ? 32 : 16) | (gapComposer.changedInstance(function23) ? 2048 : 1024) | (gapComposer.changedInstance(function24) ? 16384 : 8192);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new ListItemMeasurePolicy();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ListItemMeasurePolicy listItemMeasurePolicy = (ListItemMeasurePolicy) rememberedValue;
            ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(new SpacerKt$Spacer$3(3, Room.listOf((Object[]) new Function2[]{composableLambdaImpl, function23 == null ? ComposableSingletons$ListItemKt.f8lambda$489887388 : function23, function24 == null ? ComposableSingletons$ListItemKt.lambda$1629163587 : function24, function2 == null ? ComposableSingletons$ListItemKt.f9lambda$546752734 : function2, function22 == null ? ComposableSingletons$ListItemKt.lambda$1572298241 : function22})), true, 1271844412);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new MultiContentMeasurePolicyImpl(listItemMeasurePolicy);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue2;
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, Modifier.Companion.$$INSTANCE);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, measurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
            }
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            composableLambdaImpl2.invoke((Object) gapComposer, (Object) 0);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedComponentsKt$$ExternalSyntheticLambda5(function2, function22, composableLambdaImpl, function23, function24, i, 2);
        }
    }

    /* renamed from: OneRowSnackbar-kKq0p4A, reason: not valid java name */
    public static final void m268OneRowSnackbarkKq0p4A(ComposableLambdaImpl composableLambdaImpl, Function2 function2, Function2 function22, TextStyle textStyle, long j, long j2, GapComposer gapComposer, int i) {
        Function2 function23;
        long j3;
        TextStyle textStyle2;
        Function2 function24;
        boolean z;
        int i2;
        boolean z2;
        gapComposer.startRestartGroup(-931325388);
        int i3 = i | (gapComposer.changedInstance(composableLambdaImpl) ? 4 : 2) | (gapComposer.changedInstance(function2) ? 32 : 16) | (gapComposer.changedInstance(function22) ? 256 : 128) | (gapComposer.changed(textStyle) ? 2048 : 1024) | (gapComposer.changed(j) ? 16384 : 8192) | (gapComposer.changed(j2) ? 131072 : 65536);
        int i4 = 0;
        if (gapComposer.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            float f = function22 == null ? 8.0f : RecyclerView.DECELERATION_RATE;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, f, RecyclerView.DECELERATION_RATE, 10);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new SnackbarKt$OneRowSnackbar$2$1(i4);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m136paddingqDBjuR0$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer, measurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$13);
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(RulerKt.layoutId(companion, "text"), RecyclerView.DECELERATION_RATE, 6.0f, 1);
            BiasAlignment biasAlignment = Alignment.Companion.TopStart;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            int currentCompositeKeyHash2 = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m134paddingVpY3zN4$default);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                Modifier.CC.m(currentCompositeKeyHash2, gapComposer, currentCompositeKeyHash2, composeUiNode$Companion$SetModifier$13);
            }
            Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            composableLambdaImpl.invoke(gapComposer, Integer.valueOf(i3 & 14));
            gapComposer.end(true);
            if (function2 != null) {
                gapComposer.startReplaceGroup(-1014168049);
                Modifier layoutId = RulerKt.layoutId(companion, "action");
                MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                int currentCompositeKeyHash3 = Updater.getCurrentCompositeKeyHash(gapComposer);
                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, layoutId);
                gapComposer.startReusableNode();
                i2 = 8;
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                    Modifier.CC.m(currentCompositeKeyHash3, gapComposer, currentCompositeKeyHash3, composeUiNode$Companion$SetModifier$13);
                }
                Updater.m327setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                textStyle2 = textStyle;
                function23 = function2;
                Updater.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(j)), TextKt.LocalTextStyle.defaultProvidedValue$runtime(textStyle2)}, function23, gapComposer, 8 | (i3 & 112));
                gapComposer.end(true);
                z = false;
                gapComposer.end(false);
            } else {
                function23 = function2;
                textStyle2 = textStyle;
                z = false;
                i2 = 8;
                gapComposer.startReplaceGroup(-1013852841);
                gapComposer.end(false);
            }
            if (function22 != null) {
                gapComposer.startReplaceGroup(-1013804481);
                Modifier layoutId2 = RulerKt.layoutId(companion, "dismissAction");
                MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, z);
                int currentCompositeKeyHash4 = Updater.getCurrentCompositeKeyHash(gapComposer);
                PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer, layoutId2);
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy3, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
                if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash4))) {
                    Modifier.CC.m(currentCompositeKeyHash4, gapComposer, currentCompositeKeyHash4, composeUiNode$Companion$SetModifier$13);
                }
                Updater.m327setimpl(gapComposer, materializeModifier4, composeUiNode$Companion$SetModifier$14);
                j3 = j2;
                function24 = function22;
                Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(j3)), function24, gapComposer, i2 | ((i3 >> 3) & 112));
                z2 = true;
                gapComposer.end(true);
                gapComposer.end(false);
            } else {
                function24 = function22;
                j3 = j2;
                z2 = true;
                gapComposer.startReplaceGroup(-1013535401);
                gapComposer.end(z);
            }
            gapComposer.end(z2);
        } else {
            function23 = function2;
            j3 = j2;
            textStyle2 = textStyle;
            function24 = function22;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AppBarKt$$ExternalSyntheticLambda2(composableLambdaImpl, function23, function24, textStyle2, j, j3, i);
        }
    }

    public static final void OutlinedButton(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, BorderStroke borderStroke, PaddingValues paddingValues, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i, int i2) {
        int i3;
        Modifier modifier2;
        Shape shape2;
        ButtonColors buttonColors2;
        BorderStroke borderStroke2;
        PaddingValues paddingValues2;
        ButtonColors buttonColors3;
        BorderStroke borderStroke3;
        boolean z2;
        Shape shape3;
        ButtonColors buttonColors4;
        Shape shape4;
        boolean z3;
        int i4;
        int i5;
        int i6;
        gapComposer.startRestartGroup(399974542);
        if ((i & 6) == 0) {
            i3 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            modifier2 = modifier;
            i3 |= gapComposer.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i7 = i3 | 384;
        if ((i & 3072) == 0) {
            if ((i2 & 8) == 0) {
                shape2 = shape;
                if (gapComposer.changed(shape2)) {
                    i6 = 2048;
                    i7 |= i6;
                }
            } else {
                shape2 = shape;
            }
            i6 = 1024;
            i7 |= i6;
        } else {
            shape2 = shape;
        }
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                buttonColors2 = buttonColors;
                if (gapComposer.changed(buttonColors2)) {
                    i5 = 16384;
                    i7 |= i5;
                }
            } else {
                buttonColors2 = buttonColors;
            }
            i5 = 8192;
            i7 |= i5;
        } else {
            buttonColors2 = buttonColors;
        }
        int i8 = i7 | 196608;
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                borderStroke2 = borderStroke;
                if (gapComposer.changed(borderStroke2)) {
                    i4 = 1048576;
                    i8 |= i4;
                }
            } else {
                borderStroke2 = borderStroke;
            }
            i4 = 524288;
            i8 |= i4;
        } else {
            borderStroke2 = borderStroke;
        }
        int i9 = i8 | 113246208;
        if ((805306368 & i) == 0) {
            i9 |= gapComposer.changedInstance(composableLambdaImpl) ? 536870912 : 268435456;
        }
        if (gapComposer.shouldExecute(i9 & 1, (306783379 & i9) != 306783378)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                if ((i2 & 8) != 0) {
                    PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                    shape2 = ShapesKt.getValue(ButtonSmallTokens.ContainerShapeRound, gapComposer);
                    i9 &= -7169;
                }
                if ((i2 & 16) != 0) {
                    PaddingValuesImpl paddingValuesImpl2 = ButtonDefaults.ContentPadding;
                    buttonColors2 = ButtonDefaults.getDefaultOutlinedButtonColors$material3((ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme));
                    i9 &= -57345;
                }
                if ((i2 & 64) != 0) {
                    PaddingValuesImpl paddingValuesImpl3 = ButtonDefaults.ContentPadding;
                    float f = ButtonSmallTokens.OutlinedOutlineWidth;
                    gapComposer.startReplaceGroup(-112346942);
                    long value = ColorSchemeKt.getValue(OutlinedButtonTokens.OutlineColor, gapComposer);
                    gapComposer.end(false);
                    borderStroke2 = ImageKt.m45BorderStrokecXLIe8U(f, value);
                    i9 &= -3670017;
                }
                borderStroke3 = borderStroke2;
                paddingValues2 = ButtonDefaults.ContentPadding;
                buttonColors4 = buttonColors2;
                shape4 = shape2;
                z3 = true;
            } else {
                gapComposer.skipToGroupEnd();
                if ((i2 & 8) != 0) {
                    i9 &= -7169;
                }
                if ((i2 & 16) != 0) {
                    i9 &= -57345;
                }
                if ((i2 & 64) != 0) {
                    i9 &= -3670017;
                }
                paddingValues2 = paddingValues;
                borderStroke3 = borderStroke2;
                buttonColors4 = buttonColors2;
                shape4 = shape2;
                z3 = z;
            }
            gapComposer.endDefaults();
            Button(function0, modifier2, z3, shape4, buttonColors4, null, borderStroke3, paddingValues2, composableLambdaImpl, gapComposer, i9 & 2147483646, 0);
            buttonColors3 = buttonColors4;
            shape3 = shape4;
            z2 = z3;
        } else {
            gapComposer.skipToGroupEnd();
            paddingValues2 = paddingValues;
            buttonColors3 = buttonColors2;
            borderStroke3 = borderStroke2;
            z2 = z;
            shape3 = shape2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ButtonKt$$ExternalSyntheticLambda1(function0, modifier, z2, shape3, buttonColors3, borderStroke3, paddingValues2, composableLambdaImpl, i, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void OutlinedTextField(final java.lang.String r39, final kotlin.jvm.functions.Function1 r40, final androidx.compose.ui.Modifier r41, boolean r42, androidx.compose.ui.text.TextStyle r43, kotlin.jvm.functions.Function2 r44, kotlin.jvm.functions.Function2 r45, kotlin.jvm.functions.Function2 r46, kotlin.jvm.functions.Function2 r47, kotlin.jvm.functions.Function2 r48, kotlin.jvm.functions.Function2 r49, boolean r50, androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0 r51, androidx.compose.foundation.text.KeyboardOptions r52, androidx.compose.foundation.text.KeyboardActions r53, final boolean r54, int r55, int r56, androidx.compose.ui.graphics.Shape r57, final androidx.compose.material3.TextFieldColors r58, androidx.compose.runtime.GapComposer r59, final int r60, final int r61, final int r62) {
        /*
            Method dump skipped, instructions count: 825
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.OutlinedTextField(java.lang.String, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, int, androidx.compose.ui.graphics.Shape, androidx.compose.material3.TextFieldColors, androidx.compose.runtime.GapComposer, int, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:137:0x023e, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r3.rememberedValue(), java.lang.Integer.valueOf(r9)) == false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0529, code lost:
    
        if (r3.changedInstance(r0) != false) goto L253;
     */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0578  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x057c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void OutlinedTextFieldLayout(final kotlin.jvm.functions.Function2 r40, kotlin.jvm.functions.Function3 r41, kotlin.jvm.functions.Function2 r42, final kotlin.jvm.functions.Function2 r43, final kotlin.jvm.functions.Function2 r44, final kotlin.jvm.functions.Function2 r45, kotlin.jvm.functions.Function2 r46, final boolean r47, final androidx.compose.material3.TextFieldLabelPosition$Attached r48, final androidx.compose.material3.internal.TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 r49, final kotlin.jvm.functions.Function1 r50, final androidx.compose.runtime.internal.ComposableLambdaImpl r51, kotlin.jvm.functions.Function2 r52, androidx.compose.foundation.layout.PaddingValues r53, androidx.compose.runtime.GapComposer r54, final int r55, final int r56) {
        /*
            Method dump skipped, instructions count: 1663
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.OutlinedTextFieldLayout(kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.material3.TextFieldLabelPosition$Attached, androidx.compose.material3.internal.TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0, kotlin.jvm.functions.Function1, androidx.compose.runtime.internal.ComposableLambdaImpl, kotlin.jvm.functions.Function2, androidx.compose.foundation.layout.PaddingValues, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* renamed from: ProvideTextStyleFromToken-3J-VO9M, reason: not valid java name */
    public static final void m269ProvideTextStyleFromToken3JVO9M(long j, TypographyKeyTokens typographyKeyTokens, Function2 function2, GapComposer gapComposer, int i) {
        long j2;
        GapComposer gapComposer2;
        Function2 function22;
        gapComposer.startRestartGroup(-285397024);
        int i2 = (gapComposer.changed(j) ? 4 : 2) | i | (gapComposer.changedInstance(function2) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            j2 = j;
            gapComposer2 = gapComposer;
            LayoutUtilKt.m317ProvideContentColorTextStyle3JVO9M(j2, TypographyKt.getValue(typographyKeyTokens, gapComposer), function2, gapComposer2, i2 & 910);
            function22 = function2;
        } else {
            j2 = j;
            gapComposer2 = gapComposer;
            function22 = function2;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ListItemKt$$ExternalSyntheticLambda3(j2, typographyKeyTokens, function22, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void RadioButton(boolean r15, kotlin.jvm.functions.Function0 r16, androidx.compose.ui.Modifier r17, boolean r18, androidx.compose.material3.RadioButtonColors r19, androidx.compose.runtime.GapComposer r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.RadioButton(boolean, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.material3.RadioButtonColors, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x004e  */
    /* renamed from: Scaffold-TvnljyQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m270ScaffoldTvnljyQ(androidx.compose.ui.Modifier r25, kotlin.jvm.functions.Function2 r26, kotlin.jvm.functions.Function2 r27, kotlin.jvm.functions.Function2 r28, kotlin.jvm.functions.Function2 r29, int r30, final long r31, long r33, androidx.compose.foundation.layout.WindowInsets r35, final androidx.compose.runtime.internal.ComposableLambdaImpl r36, androidx.compose.runtime.GapComposer r37, final int r38, final int r39) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.m270ScaffoldTvnljyQ(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, int, long, long, androidx.compose.foundation.layout.WindowInsets, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* renamed from: ScaffoldLayout-FMILGgc, reason: not valid java name */
    public static final void m271ScaffoldLayoutFMILGgc(int i, Function2 function2, ComposableLambdaImpl composableLambdaImpl, Function2 function22, Function2 function23, WindowInsets windowInsets, Function2 function24, GapComposer gapComposer, int i2) {
        int i3;
        int i4;
        int i5;
        gapComposer.startRestartGroup(-280287501);
        int i6 = i2 | (gapComposer.changed(i) ? 4 : 2) | (gapComposer.changedInstance(function2) ? 32 : 16) | (gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128) | (gapComposer.changedInstance(function22) ? 2048 : 1024) | (gapComposer.changedInstance(function23) ? 16384 : 8192) | (gapComposer.changed(windowInsets) ? 131072 : 65536) | (gapComposer.changedInstance(function24) ? 1048576 : 524288);
        if (gapComposer.shouldExecute(i6 & 1, (599187 & i6) != 599186)) {
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (rememberedValue == obj) {
                rememberedValue = new ScaffoldKt$ScaffoldLayout$contentPadding$1$1();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1 = (ScaffoldKt$ScaffoldLayout$contentPadding$1$1) rememberedValue;
            boolean z = (i6 & 112) == 32;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (z || rememberedValue2 == obj) {
                rememberedValue2 = new ComposableLambdaImpl(new MenuKt$DropdownMenuItemContent$1$1.AnonymousClass1(7, function2), true, 605195056);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Function2 function25 = (Function2) rememberedValue2;
            boolean z2 = (i6 & 7168) == 2048;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z2 || rememberedValue3 == obj) {
                rememberedValue3 = new ComposableLambdaImpl(new MenuKt$DropdownMenuItemContent$1$1.AnonymousClass1(6, function22), true, 418899191);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Function2 function26 = (Function2) rememberedValue3;
            boolean z3 = (57344 & i6) == 16384;
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (z3 || rememberedValue4 == obj) {
                rememberedValue4 = new ComposableLambdaImpl(new MenuKt$DropdownMenuItemContent$1$1.AnonymousClass1(5, function23), true, 338600263);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Function2 function27 = (Function2) rememberedValue4;
            boolean z4 = (i6 & 896) == 256;
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (z4 || rememberedValue5 == obj) {
                i3 = i6;
                rememberedValue5 = new ComposableLambdaImpl(new ButtonKt$Button$2.AnonymousClass1(3, composableLambdaImpl, scaffoldKt$ScaffoldLayout$contentPadding$1$1), true, -1776388365);
                gapComposer.updateRememberedValue(rememberedValue5);
            } else {
                i3 = i6;
            }
            Function2 function28 = (Function2) rememberedValue5;
            boolean z5 = (i3 & 3670016) == 1048576;
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (z5 || rememberedValue6 == obj) {
                rememberedValue6 = new ComposableLambdaImpl(new MenuKt$DropdownMenuItemContent$1$1.AnonymousClass1(4, function24), true, -1731662488);
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            Function2 function29 = (Function2) rememberedValue6;
            boolean changed = ((i3 & 458752) == 131072) | gapComposer.changed(function25) | gapComposer.changed(function26) | gapComposer.changed(function27) | ((i3 & 14) == 4) | gapComposer.changed(function29) | gapComposer.changed(function28);
            Object rememberedValue7 = gapComposer.rememberedValue();
            if (changed || rememberedValue7 == obj) {
                i4 = 0;
                i5 = 1;
                Object scaffoldKt$$ExternalSyntheticLambda2 = new ScaffoldKt$$ExternalSyntheticLambda2(windowInsets, function25, function26, function27, i, function29, scaffoldKt$ScaffoldLayout$contentPadding$1$1, function28);
                gapComposer.updateRememberedValue(scaffoldKt$$ExternalSyntheticLambda2);
                rememberedValue7 = scaffoldKt$$ExternalSyntheticLambda2;
            } else {
                i4 = 0;
                i5 = 1;
            }
            RulerKt.SubcomposeLayout((Modifier) null, (Function2) rememberedValue7, gapComposer, i4, i5);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda3(i, function2, composableLambdaImpl, function22, function23, windowInsets, function24, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[RETURN, SYNTHETIC] */
    /* renamed from: Snackbar-eQBnUkQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m272SnackbareQBnUkQ(final androidx.compose.ui.Modifier r25, final kotlin.jvm.functions.Function2 r26, kotlin.jvm.functions.Function2 r27, androidx.compose.ui.graphics.Shape r28, final long r29, long r31, long r33, long r35, final androidx.compose.runtime.internal.ComposableLambdaImpl r37, androidx.compose.runtime.GapComposer r38, final int r39, final int r40) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.m272SnackbareQBnUkQ(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, long, long, long, long, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void SnackbarHost(SnackbarHostState snackbarHostState, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        Modifier modifier2;
        gapComposer.startRestartGroup(-1077081618);
        int i2 = i | 48;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            SnackbarHostState.SnackbarDataImpl snackbarDataImpl = (SnackbarHostState.SnackbarDataImpl) snackbarHostState.currentSnackbarData$delegate.getValue();
            AccessibilityManager accessibilityManager = (AccessibilityManager) gapComposer.consume(CompositionLocalsKt.LocalAccessibilityManager);
            boolean changed = gapComposer.changed(snackbarDataImpl) | gapComposer.changedInstance(accessibilityManager);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new SimpleActor$offer$2(snackbarDataImpl, accessibilityManager, null, 20);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Updater.LaunchedEffect(gapComposer, snackbarDataImpl, (Function2) rememberedValue);
            SnackbarHostState.SnackbarDataImpl snackbarDataImpl2 = (SnackbarHostState.SnackbarDataImpl) snackbarHostState.currentSnackbarData$delegate.getValue();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            FadeInFadeOutWithScale(snackbarDataImpl2, companion, composableLambdaImpl, gapComposer, 432);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda18(snackbarHostState, modifier2, composableLambdaImpl, i, 4);
        }
    }

    public static final void TextButton(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, PaddingValues paddingValues, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i, int i2) {
        int i3;
        ButtonColors buttonColors2;
        Modifier modifier2;
        boolean z2;
        Shape shape2;
        PaddingValues paddingValues2;
        ButtonColors buttonColors3;
        Modifier modifier3;
        int i4;
        Shape shape3;
        ButtonColors buttonColors4;
        PaddingValues paddingValues3;
        boolean z3;
        int i5;
        gapComposer.startRestartGroup(-1061374109);
        if ((i & 6) == 0) {
            i3 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i6 = i2 & 2;
        if (i6 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        int i7 = i3 | 384;
        if ((i & 3072) == 0) {
            i7 = i3 | 1408;
        }
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                buttonColors2 = buttonColors;
                if (gapComposer.changed(buttonColors2)) {
                    i5 = 16384;
                    i7 |= i5;
                }
            } else {
                buttonColors2 = buttonColors;
            }
            i5 = 8192;
            i7 |= i5;
        } else {
            buttonColors2 = buttonColors;
        }
        int i8 = i7 | 115015680;
        if ((805306368 & i) == 0) {
            i8 |= gapComposer.changedInstance(composableLambdaImpl) ? 536870912 : 268435456;
        }
        if (gapComposer.shouldExecute(i8 & 1, (306783379 & i8) != 306783378)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                if (i6 != 0) {
                    modifier = Modifier.Companion.$$INSTANCE;
                }
                PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                Shape value = ShapesKt.getValue(ButtonSmallTokens.ContainerShapeRound, gapComposer);
                int i9 = i8 & (-7169);
                if ((i2 & 16) != 0) {
                    buttonColors2 = ButtonDefaults.getDefaultTextButtonColors$material3((ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme));
                    i9 = i8 & (-64513);
                }
                int i10 = i9;
                modifier3 = modifier;
                i4 = i10;
                shape3 = value;
                buttonColors4 = buttonColors2;
                paddingValues3 = ButtonDefaults.TextButtonContentPadding;
                z3 = true;
            } else {
                gapComposer.skipToGroupEnd();
                int i11 = i8 & (-7169);
                if ((i2 & 16) != 0) {
                    i11 = i8 & (-64513);
                }
                int i12 = i11;
                modifier3 = modifier;
                i4 = i12;
                z3 = z;
                shape3 = shape;
                paddingValues3 = paddingValues;
                buttonColors4 = buttonColors2;
            }
            gapComposer.endDefaults();
            Button(function0, modifier3, z3, shape3, buttonColors4, null, null, paddingValues3, composableLambdaImpl, gapComposer, i4 & 2147483646, 0);
            buttonColors3 = buttonColors4;
            paddingValues2 = paddingValues3;
            shape2 = shape3;
            z2 = z3;
            modifier2 = modifier3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            z2 = z;
            shape2 = shape;
            paddingValues2 = paddingValues;
            buttonColors3 = buttonColors2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ButtonKt$$ExternalSyntheticLambda5(function0, modifier2, z2, shape2, buttonColors3, paddingValues2, composableLambdaImpl, i, i2);
        }
    }

    public static final void TextField(final String str, final Function1 function1, final Modifier modifier, final boolean z, final TextStyle textStyle, final Function2 function2, VisualTransformation$Companion$$ExternalSyntheticLambda0 visualTransformation$Companion$$ExternalSyntheticLambda0, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, int i, int i2, Shape shape, final TextFieldColors textFieldColors, GapComposer gapComposer, final int i3) {
        final VisualTransformation$Companion$$ExternalSyntheticLambda0 visualTransformation$Companion$$ExternalSyntheticLambda02;
        final KeyboardOptions keyboardOptions2;
        final KeyboardActions keyboardActions2;
        final int i4;
        final int i5;
        final Shape shape2;
        final KeyboardOptions keyboardOptions3;
        final KeyboardActions keyboardActions3;
        final Shape value;
        final VisualTransformation$Companion$$ExternalSyntheticLambda0 visualTransformation$Companion$$ExternalSyntheticLambda03;
        final int i6;
        final int i7;
        gapComposer.startRestartGroup(-154966360);
        int i8 = i3 | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changed(modifier) ? 256 : 128) | 24576 | (gapComposer.changed(textStyle) ? 131072 : 65536) | 114819072;
        if (gapComposer.shouldExecute(i8 & 1, ((306783379 & i8) == 306783378 && ((22 | (gapComposer.changed(textFieldColors) ? (char) 256 : (char) 128)) & 147) == 146) ? false : true)) {
            gapComposer.startDefaults();
            if ((i3 & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                keyboardOptions3 = KeyboardOptions.Default;
                keyboardActions3 = KeyboardActions.Default;
                value = ShapesKt.getValue(FilledTextFieldTokens.ContainerShape, gapComposer);
                visualTransformation$Companion$$ExternalSyntheticLambda03 = VisualTransformation$Companion.None;
                i6 = 1;
                i7 = Integer.MAX_VALUE;
            } else {
                gapComposer.skipToGroupEnd();
                visualTransformation$Companion$$ExternalSyntheticLambda03 = visualTransformation$Companion$$ExternalSyntheticLambda0;
                keyboardOptions3 = keyboardOptions;
                keyboardActions3 = keyboardActions;
                i7 = i;
                i6 = i2;
                value = shape;
            }
            gapComposer.endDefaults();
            gapComposer.startReplaceGroup(488210003);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new MutableInteractionSourceImpl();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final MutableInteractionSourceImpl mutableInteractionSourceImpl = (MutableInteractionSourceImpl) rememberedValue;
            gapComposer.end(false);
            gapComposer.startReplaceGroup(1401227490);
            long m649getColor0d7_KjU = textStyle.m649getColor0d7_KjU();
            if (m649getColor0d7_KjU == 16) {
                m649getColor0d7_KjU = !z ? textFieldColors.disabledTextColor : ((Boolean) OperationKt.collectIsFocusedAsState(mutableInteractionSourceImpl, gapComposer, 0).getValue()).booleanValue() ? textFieldColors.focusedTextColor : textFieldColors.unfocusedTextColor;
            }
            long j = m649getColor0d7_KjU;
            gapComposer.end(false);
            final TextStyle merge = textStyle.merge(new TextStyle(j, 0L, null, null, 0L, 0, 0L, 16777214));
            Updater.CompositionLocalProvider(TextSelectionColorsKt.LocalTextSelectionColors.defaultProvidedValue$runtime(textFieldColors.textSelectionColors), Expect_jvmKt.rememberComposableLambda(1459735400, new Function2() { // from class: androidx.compose.material3.TextFieldKt$TextField$3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    GapComposer gapComposer2 = (GapComposer) obj;
                    int intValue = ((Number) obj2).intValue();
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        LayoutUtilKt.m318getString2EP1pXo(R.string.default_error_message, gapComposer2);
                        Modifier m138defaultMinSizeVpY3zN4 = SizeKt.m138defaultMinSizeVpY3zN4(Modifier.this, 280.0f, 56.0f);
                        final TextFieldColors textFieldColors2 = textFieldColors;
                        SolidColor solidColor = new SolidColor(textFieldColors2.cursorColor);
                        final Function2 function22 = function2;
                        final Shape shape3 = value;
                        final String str2 = str;
                        final boolean z2 = z;
                        final VisualTransformation$Companion$$ExternalSyntheticLambda0 visualTransformation$Companion$$ExternalSyntheticLambda04 = visualTransformation$Companion$$ExternalSyntheticLambda03;
                        final MutableInteractionSourceImpl mutableInteractionSourceImpl2 = mutableInteractionSourceImpl;
                        BasicTextFieldKt.BasicTextField(str2, function1, m138defaultMinSizeVpY3zN4, z2, merge, keyboardOptions3, keyboardActions3, false, i7, i6, visualTransformation$Companion$$ExternalSyntheticLambda04, null, mutableInteractionSourceImpl2, solidColor, Expect_jvmKt.rememberComposableLambda(1451491557, new Function3() { // from class: androidx.compose.material3.TextFieldKt$TextField$3.1
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                                Function2 function23 = (Function2) obj3;
                                GapComposer gapComposer3 = (GapComposer) obj4;
                                int intValue2 = ((Number) obj5).intValue();
                                if ((intValue2 & 6) == 0) {
                                    intValue2 |= gapComposer3.changedInstance(function23) ? 4 : 2;
                                }
                                if (gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                    TextFieldDefaults.INSTANCE.DecorationBox(str2, function23, z2, visualTransformation$Companion$$ExternalSyntheticLambda04, mutableInteractionSourceImpl2, function22, shape3, textFieldColors2, null, null, gapComposer3, (intValue2 << 3) & 112);
                                } else {
                                    gapComposer3.skipToGroupEnd();
                                }
                                return Unit.INSTANCE;
                            }
                        }, gapComposer2), gapComposer2, 0);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 56);
            keyboardOptions2 = keyboardOptions3;
            keyboardActions2 = keyboardActions3;
            i4 = i7;
            i5 = i6;
            visualTransformation$Companion$$ExternalSyntheticLambda02 = visualTransformation$Companion$$ExternalSyntheticLambda03;
            shape2 = value;
        } else {
            gapComposer.skipToGroupEnd();
            visualTransformation$Companion$$ExternalSyntheticLambda02 = visualTransformation$Companion$$ExternalSyntheticLambda0;
            keyboardOptions2 = keyboardOptions;
            keyboardActions2 = keyboardActions;
            i4 = i;
            i5 = i2;
            shape2 = shape;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(str, function1, modifier, z, textStyle, function2, visualTransformation$Companion$$ExternalSyntheticLambda02, keyboardOptions2, keyboardActions2, i4, i5, shape2, textFieldColors, i3) { // from class: androidx.compose.material3.TextFieldKt$$ExternalSyntheticLambda2
                public final /* synthetic */ String f$0;
                public final /* synthetic */ Function1 f$1;
                public final /* synthetic */ VisualTransformation$Companion$$ExternalSyntheticLambda0 f$14;
                public final /* synthetic */ KeyboardOptions f$15;
                public final /* synthetic */ KeyboardActions f$16;
                public final /* synthetic */ int f$18;
                public final /* synthetic */ int f$19;
                public final /* synthetic */ Modifier f$2;
                public final /* synthetic */ Shape f$21;
                public final /* synthetic */ TextFieldColors f$22;
                public final /* synthetic */ boolean f$3;
                public final /* synthetic */ TextStyle f$5;
                public final /* synthetic */ Function2 f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(805309489);
                    CardKt.TextField(this.f$0, this.f$1, this.f$2, this.f$3, this.f$5, this.f$9, this.f$14, this.f$15, this.f$16, this.f$18, this.f$19, this.f$21, this.f$22, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:128:0x0216, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r54.rememberedValue(), java.lang.Integer.valueOf(r11)) == false) goto L148;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:194:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x04c0  */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v23 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void TextFieldLayout(kotlin.jvm.functions.Function2 r41, final kotlin.jvm.functions.Function2 r42, kotlin.jvm.functions.Function3 r43, final kotlin.jvm.functions.Function2 r44, final kotlin.jvm.functions.Function2 r45, final kotlin.jvm.functions.Function2 r46, final kotlin.jvm.functions.Function2 r47, final boolean r48, final androidx.compose.material3.TextFieldLabelPosition$Attached r49, androidx.compose.material3.internal.TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 r50, final androidx.compose.runtime.internal.ComposableLambdaImpl r51, kotlin.jvm.functions.Function2 r52, androidx.compose.foundation.layout.PaddingValues r53, androidx.compose.runtime.GapComposer r54, final int r55, final int r56) {
        /*
            Method dump skipped, instructions count: 1646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.TextFieldLayout(kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.material3.TextFieldLabelPosition$Attached, androidx.compose.material3.internal.TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0, androidx.compose.runtime.internal.ComposableLambdaImpl, kotlin.jvm.functions.Function2, androidx.compose.foundation.layout.PaddingValues, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* renamed from: calculateHeight-N4Jib3Y, reason: not valid java name */
    public static final int m273calculateHeightN4Jib3Y(IntrinsicMeasureScope intrinsicMeasureScope, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j) {
        int max = Math.max(Math.max(Constraints.m682getMinHeightimpl(j), intrinsicMeasureScope.mo81roundToPx0680j_4(i6 == 1 ? ListTokens.ListItemOneLineContainerHeight : i6 == 2 ? ListTokens.ListItemTwoLineContainerHeight : ListTokens.ListItemThreeLineContainerHeight)), Math.max(i, Math.max(i3 + i4 + i5, i2)) + i7);
        int m680getMaxHeightimpl = Constraints.m680getMaxHeightimpl(j);
        return max > m680getMaxHeightimpl ? m680getMaxHeightimpl : max;
    }

    /* renamed from: cardColors-ro_MJ88, reason: not valid java name */
    public static CardColors m274cardColorsro_MJ88(long j, long j2, GapComposer gapComposer, int i, int i2) {
        long Color;
        long j3 = j;
        long m285contentColorForek8zF_U = (i2 & 2) != 0 ? ColorSchemeKt.m285contentColorForek8zF_U(j3, gapComposer) : j2;
        long j4 = Color.Unspecified;
        Color = ColorKt.Color(Color.m433getRedimpl(m285contentColorForek8zF_U), Color.m432getGreenimpl(m285contentColorForek8zF_U), Color.m430getBlueimpl(m285contentColorForek8zF_U), 0.38f, Color.m431getColorSpaceimpl(m285contentColorForek8zF_U));
        CardColors defaultCardColors$material3 = getDefaultCardColors$material3((ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme));
        if (j3 == 16) {
            j3 = defaultCardColors$material3.containerColor;
        }
        long j5 = j3;
        if (m285contentColorForek8zF_U == 16) {
            m285contentColorForek8zF_U = defaultCardColors$material3.contentColor;
        }
        long j6 = m285contentColorForek8zF_U;
        if (j4 == 16) {
            j4 = defaultCardColors$material3.disabledContainerColor;
        }
        long j7 = j4;
        if (Color == 16) {
            Color = defaultCardColors$material3.disabledContentColor;
        }
        return new CardColors(j5, j6, j7, Color);
    }

    /* renamed from: cardElevation-aqJV_2Y, reason: not valid java name */
    public static CardElevation m275cardElevationaqJV_2Y(int i, float f) {
        if ((i & 1) != 0) {
            ColorSchemeKeyTokens colorSchemeKeyTokens = FilledCardTokens.ContainerColor;
            f = RecyclerView.DECELERATION_RATE;
        }
        return new CardElevation(f, FilledCardTokens.HoverContainerElevation, FilledCardTokens.DraggedContainerElevation);
    }

    /* renamed from: colors-V1nXRL4, reason: not valid java name */
    public static SwitchColors m276colorsV1nXRL4(long j, long j2, long j3, long j4, long j5, GapComposer gapComposer) {
        long Color;
        long Color2;
        long Color3;
        long Color4;
        long Color5;
        long Color6;
        long Color7;
        long j6 = Color.Transparent;
        long value = ColorSchemeKt.getValue(SwitchTokens.SelectedIconColor, gapComposer);
        long value2 = ColorSchemeKt.getValue(SwitchTokens.UnselectedIconColor, gapComposer);
        Color = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), SwitchTokens.DisabledSelectedHandleOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.getValue(SwitchTokens.DisabledSelectedHandleColor, gapComposer)));
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = ColorSchemeKt.LocalColorScheme;
        long m436compositeOverOWjLjI = ColorKt.m436compositeOverOWjLjI(Color, ((ColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).surface);
        long value3 = ColorSchemeKt.getValue(SwitchTokens.DisabledSelectedTrackColor, gapComposer);
        float f = SwitchTokens.DisabledTrackOpacity;
        Color2 = ColorKt.Color(Color.m433getRedimpl(value3), Color.m432getGreenimpl(value3), Color.m430getBlueimpl(value3), f, Color.m431getColorSpaceimpl(value3));
        long m436compositeOverOWjLjI2 = ColorKt.m436compositeOverOWjLjI(Color2, ((ColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).surface);
        Color3 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), SwitchTokens.DisabledSelectedIconOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.getValue(SwitchTokens.DisabledSelectedIconColor, gapComposer)));
        long m436compositeOverOWjLjI3 = ColorKt.m436compositeOverOWjLjI(Color3, ((ColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).surface);
        Color4 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), SwitchTokens.DisabledUnselectedHandleOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.getValue(SwitchTokens.DisabledUnselectedHandleColor, gapComposer)));
        long m436compositeOverOWjLjI4 = ColorKt.m436compositeOverOWjLjI(Color4, ((ColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).surface);
        Color5 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), f, Color.m431getColorSpaceimpl(ColorSchemeKt.getValue(SwitchTokens.DisabledUnselectedTrackColor, gapComposer)));
        long m436compositeOverOWjLjI5 = ColorKt.m436compositeOverOWjLjI(Color5, ((ColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).surface);
        Color6 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), f, Color.m431getColorSpaceimpl(ColorSchemeKt.getValue(SwitchTokens.DisabledUnselectedTrackOutlineColor, gapComposer)));
        long m436compositeOverOWjLjI6 = ColorKt.m436compositeOverOWjLjI(Color6, ((ColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).surface);
        Color7 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), SwitchTokens.DisabledUnselectedIconOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.getValue(SwitchTokens.DisabledUnselectedIconColor, gapComposer)));
        return new SwitchColors(j, j2, j6, value, j3, j4, j5, value2, m436compositeOverOWjLjI, m436compositeOverOWjLjI2, j6, m436compositeOverOWjLjI3, m436compositeOverOWjLjI4, m436compositeOverOWjLjI5, m436compositeOverOWjLjI6, ColorKt.m436compositeOverOWjLjI(Color7, ((ColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).surface));
    }

    /* renamed from: colors-ro_MJ88, reason: not valid java name */
    public static RadioButtonColors m277colorsro_MJ88(long j, long j2, long j3, long j4, GapComposer gapComposer, int i) {
        long j5;
        long Color;
        long Color2;
        long j6 = (i & 2) != 0 ? Color.Unspecified : j2;
        long j7 = (i & 4) != 0 ? Color.Unspecified : j3;
        long j8 = (i & 8) != 0 ? Color.Unspecified : j4;
        ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
        RadioButtonColors radioButtonColors = colorScheme.defaultRadioButtonColorsCached;
        if (radioButtonColors == null) {
            long fromToken = ColorSchemeKt.fromToken(colorScheme, RadioButtonTokens.SelectedIconColor);
            long fromToken2 = ColorSchemeKt.fromToken(colorScheme, RadioButtonTokens.UnselectedIconColor);
            Color = ColorKt.Color(Color.m433getRedimpl(r13), Color.m432getGreenimpl(r13), Color.m430getBlueimpl(r13), 0.38f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, RadioButtonTokens.DisabledSelectedIconColor)));
            j5 = j6;
            Color2 = ColorKt.Color(Color.m433getRedimpl(r0), Color.m432getGreenimpl(r0), Color.m430getBlueimpl(r0), 0.38f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, RadioButtonTokens.DisabledUnselectedIconColor)));
            RadioButtonColors radioButtonColors2 = new RadioButtonColors(fromToken, fromToken2, Color, Color2);
            colorScheme.defaultRadioButtonColorsCached = radioButtonColors2;
            radioButtonColors = radioButtonColors2;
        } else {
            j5 = j6;
        }
        long j9 = j != 16 ? j : radioButtonColors.selectedColor;
        long j10 = j5 != 16 ? j5 : radioButtonColors.unselectedColor;
        if (j7 == 16) {
            j7 = radioButtonColors.disabledSelectedColor;
        }
        long j11 = j7;
        if (j8 == 16) {
            j8 = radioButtonColors.disabledUnselectedColor;
        }
        return new RadioButtonColors(j9, j10, j11, j8);
    }

    public static final SpringSpec fromToken(MotionScheme$StandardMotionSchemeImpl motionScheme$StandardMotionSchemeImpl, MotionSchemeKeyTokens motionSchemeKeyTokens) {
        switch (MotionSchemeKt$WhenMappings.$EnumSwitchMapping$0[motionSchemeKeyTokens.ordinal()]) {
            case 1:
                motionScheme$StandardMotionSchemeImpl.getClass();
                SpringSpec springSpec = MotionScheme$StandardMotionSchemeImpl.defaultSpatialSpec;
                springSpec.getClass();
                return springSpec;
            case 2:
                motionScheme$StandardMotionSchemeImpl.getClass();
                SpringSpec springSpec2 = MotionScheme$StandardMotionSchemeImpl.fastSpatialSpec;
                springSpec2.getClass();
                return springSpec2;
            case 3:
                motionScheme$StandardMotionSchemeImpl.getClass();
                SpringSpec springSpec3 = MotionScheme$StandardMotionSchemeImpl.slowSpatialSpec;
                springSpec3.getClass();
                return springSpec3;
            case 4:
                motionScheme$StandardMotionSchemeImpl.getClass();
                SpringSpec springSpec4 = MotionScheme$StandardMotionSchemeImpl.defaultEffectsSpec;
                springSpec4.getClass();
                return springSpec4;
            case 5:
                motionScheme$StandardMotionSchemeImpl.getClass();
                SpringSpec springSpec5 = MotionScheme$StandardMotionSchemeImpl.fastEffectsSpec;
                springSpec5.getClass();
                return springSpec5;
            case 6:
                motionScheme$StandardMotionSchemeImpl.getClass();
                SpringSpec springSpec6 = MotionScheme$StandardMotionSchemeImpl.slowEffectsSpec;
                springSpec6.getClass();
                return springSpec6;
            default:
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
        }
    }

    public static CardColors getDefaultCardColors$material3(ColorScheme colorScheme) {
        long Color;
        long Color2;
        CardColors cardColors = colorScheme.defaultCardColorsCached;
        if (cardColors != null) {
            return cardColors;
        }
        ColorSchemeKeyTokens colorSchemeKeyTokens = FilledCardTokens.ContainerColor;
        long fromToken = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens);
        long m284contentColorFor4WTKRHQ = ColorSchemeKt.m284contentColorFor4WTKRHQ(colorScheme, ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens));
        Color = ColorKt.Color(Color.m433getRedimpl(r6), Color.m432getGreenimpl(r6), Color.m430getBlueimpl(r6), FilledCardTokens.DisabledContainerOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, FilledCardTokens.DisabledContainerColor)));
        long m436compositeOverOWjLjI = ColorKt.m436compositeOverOWjLjI(Color, ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens));
        Color2 = ColorKt.Color(Color.m433getRedimpl(r8), Color.m432getGreenimpl(r8), Color.m430getBlueimpl(r8), 0.38f, Color.m431getColorSpaceimpl(ColorSchemeKt.m284contentColorFor4WTKRHQ(colorScheme, ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens))));
        CardColors cardColors2 = new CardColors(fromToken, m284contentColorFor4WTKRHQ, m436compositeOverOWjLjI, Color2);
        colorScheme.defaultCardColorsCached = cardColors2;
        return cardColors2;
    }

    public static final SpringSpec value(MotionSchemeKeyTokens motionSchemeKeyTokens, GapComposer gapComposer) {
        return fromToken((MotionScheme$StandardMotionSchemeImpl) gapComposer.consume(MaterialThemeKt._localMotionScheme), motionSchemeKeyTokens);
    }
}
