package androidx.compose.material3;

import android.view.View;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda1;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.camera.view.PreviewView;
import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.UnionInsets;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import androidx.compose.material3.ButtonKt$Button$2;
import androidx.compose.material3.OutlinedTextFieldKt$OutlinedTextField$3;
import androidx.compose.material3.internal.ChildSemanticsNodeElement;
import androidx.compose.material3.internal.Icons$Filled;
import androidx.compose.material3.internal.MutableWindowInsets;
import androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;
import androidx.compose.material3.tokens.CheckboxTokens;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.InlineClassHelperKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.Illuminant;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.graphics.colorspace.Rgb$$ExternalSyntheticLambda0;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AccessibilityManager;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.semantics.AppendedSemanticsElement;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.DialogProperties;
import androidx.core.view.DifferentialMotionFlingController$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator$$ExternalSyntheticLambda1;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.DialogNavigator;
import androidx.room.util.RelationUtil;
import androidx.work.OperationKt;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda3;
import java.util.ArrayList;
import java.util.UUID;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CardKt {
    public static final RippleAlpha RippleAlpha = new RippleAlpha();
    public static final float TopAppBarExpandedHeight = 64.0f;

    /* renamed from: AlertDialog-Oix01E0, reason: not valid java name */
    public static final void m328AlertDialogOix01E0(final Function0 function0, final ComposableLambdaImpl composableLambdaImpl, final Function2 function2, final Function2 function22, final Function2 function23, final Function2 function24, Shape shape, long j, long j2, long j3, long j4, DialogProperties dialogProperties, Composer composer, final int i) {
        Function0 function02;
        int i2;
        ComposableLambdaImpl composableLambdaImpl2;
        Function2 function25;
        Function2 function26;
        Function2 function27;
        Function2 function28;
        GapComposer gapComposer;
        final Shape shape2;
        final long j5;
        final long j6;
        final long j7;
        final long j8;
        final DialogProperties dialogProperties2;
        Shape value;
        long value2;
        int i3;
        long value3;
        DialogProperties dialogProperties3;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(94478519);
        if ((i & 6) == 0) {
            function02 = function0;
            i2 = (gapComposer2.changedInstance(function02) ? 4 : 2) | i;
        } else {
            function02 = function0;
            i2 = i;
        }
        if ((i & 48) == 0) {
            composableLambdaImpl2 = composableLambdaImpl;
            i2 |= gapComposer2.changedInstance(composableLambdaImpl2) ? 32 : 16;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changed(Modifier.Companion.$$INSTANCE) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            function25 = function2;
            i2 |= gapComposer2.changedInstance(function25) ? 2048 : 1024;
        } else {
            function25 = function2;
        }
        if ((i & 24576) == 0) {
            function26 = function22;
            i2 |= gapComposer2.changedInstance(function26) ? 16384 : 8192;
        } else {
            function26 = function22;
        }
        if ((196608 & i) == 0) {
            function27 = function23;
            i2 |= gapComposer2.changedInstance(function27) ? 131072 : 65536;
        } else {
            function27 = function23;
        }
        if ((1572864 & i) == 0) {
            function28 = function24;
            i2 |= gapComposer2.changedInstance(function28) ? 1048576 : 524288;
        } else {
            function28 = function24;
        }
        if ((12582912 & i) == 0) {
            i2 |= 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= 33554432;
        }
        if ((805306368 & i) == 0) {
            i2 |= 268435456;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            gapComposer2.startDefaults();
            if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                value = ShapesKt.getValue(ListTokens.ContainerShape, gapComposer2);
                value2 = ColorSchemeKt.getValue(ListTokens.ContainerColor$1, gapComposer2);
                long value4 = ColorSchemeKt.getValue(ListTokens.IconColor, gapComposer2);
                i3 = i2 & (-2143289345);
                value3 = ColorSchemeKt.getValue(ListTokens.HeadlineColor, gapComposer2);
                long value5 = ColorSchemeKt.getValue(ListTokens.SupportingTextColor, gapComposer2);
                dialogProperties3 = new DialogProperties(7, false, false);
                j6 = value4;
                j8 = value5;
            } else {
                gapComposer2.skipToGroupEnd();
                i3 = i2 & (-2143289345);
                value = shape;
                value2 = j;
                j6 = j2;
                value3 = j3;
                j8 = j4;
                dialogProperties3 = dialogProperties;
            }
            gapComposer2.endDefaults();
            int i4 = i3 & 2147483646;
            Function2 function29 = function25;
            Function2 function210 = function27;
            shape2 = value;
            long j9 = value3;
            dialogProperties2 = dialogProperties3;
            gapComposer = gapComposer2;
            Function0 function03 = function02;
            ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
            Function2 function211 = function26;
            Function2 function212 = function28;
            j5 = value2;
            j7 = j9;
            AlertDialogKt.m319AlertDialogImplwrnwzgE(function03, composableLambdaImpl3, function29, function211, function210, function212, shape2, j5, j6, j7, j8, dialogProperties2, gapComposer, i4, 3456);
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            shape2 = shape;
            j5 = j;
            j6 = j2;
            j7 = j3;
            j8 = j4;
            dialogProperties2 = dialogProperties;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.AndroidAlertDialog_androidKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i | 1);
                    CardKt.m328AlertDialogOix01E0(Function0.this, composableLambdaImpl, function2, function22, function23, function24, shape2, j5, j6, j7, j8, dialogProperties2, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void Button(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, ButtonElevation buttonElevation, BorderStroke borderStroke, PaddingValues paddingValues, final ComposableLambdaImpl composableLambdaImpl, Composer composer, int i, int i2) {
        int i3;
        Shape shape2;
        ButtonElevation buttonElevation2;
        Shape shape3;
        ButtonElevation buttonElevation3;
        Shape shape4;
        Shape shape5;
        int i4;
        long j;
        ButtonElevation buttonElevation4;
        float f;
        MutableInteractionSourceImpl mutableInteractionSourceImpl;
        Object obj;
        final long j2;
        boolean z2;
        ButtonElevation buttonElevation5;
        AnimationState animationState;
        int i5;
        int i6;
        final PaddingValues paddingValues2 = paddingValues;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1310015664);
        if ((i & 6) == 0) {
            i3 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i3 |= gapComposer.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            if ((i2 & 8) == 0) {
                shape2 = shape;
                if (gapComposer.changed(shape2)) {
                    i6 = 2048;
                    i3 |= i6;
                }
            } else {
                shape2 = shape;
            }
            i6 = 1024;
            i3 |= i6;
        } else {
            shape2 = shape;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer.changed(buttonColors) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            if ((i2 & 32) == 0) {
                buttonElevation2 = buttonElevation;
                if (gapComposer.changed(buttonElevation2)) {
                    i5 = 131072;
                    i3 |= i5;
                }
            } else {
                buttonElevation2 = buttonElevation;
            }
            i5 = 65536;
            i3 |= i5;
        } else {
            buttonElevation2 = buttonElevation;
        }
        if ((1572864 & i) == 0) {
            i3 |= gapComposer.changed(borderStroke) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i3 |= gapComposer.changed(paddingValues2) ? 8388608 : 4194304;
        }
        if ((i2 & 256) != 0) {
            i3 |= 100663296;
        } else if ((i & 100663296) == 0) {
            i3 |= gapComposer.changed((Object) null) ? 67108864 : 33554432;
        }
        if ((805306368 & i) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl) ? 536870912 : 268435456;
        }
        if (gapComposer.shouldExecute(i3 & 1, (306783379 & i3) != 306783378)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                if ((i2 & 8) != 0) {
                    PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                    shape4 = ShapesKt.getValue(ListTokens.ContainerShapeRound, gapComposer);
                    i3 &= -7169;
                } else {
                    shape4 = shape2;
                }
                if ((i2 & 32) != 0) {
                    PaddingValuesImpl paddingValuesImpl2 = ButtonDefaults.ContentPadding;
                    buttonElevation2 = new ButtonElevation(ListTokens.HoveredContainerElevation);
                    i3 &= -458753;
                }
                shape5 = shape4;
            } else {
                gapComposer.skipToGroupEnd();
                if ((i2 & 8) != 0) {
                    i3 &= -7169;
                }
                if ((i2 & 32) != 0) {
                    i3 &= -458753;
                }
                shape5 = shape2;
            }
            gapComposer.endDefaults();
            gapComposer.startReplaceGroup(1691738187);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj2 = Composer.Companion.Empty;
            if (rememberedValue == obj2) {
                rememberedValue = new MutableInteractionSourceImpl();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableInteractionSourceImpl mutableInteractionSourceImpl2 = (MutableInteractionSourceImpl) rememberedValue;
            gapComposer.end(false);
            ButtonElevation buttonElevation6 = buttonElevation2;
            long j3 = z ? buttonColors.containerColor : buttonColors.disabledContainerColor;
            long j4 = z ? buttonColors.contentColor : buttonColors.disabledContentColor;
            if (buttonElevation6 == null) {
                gapComposer.startReplaceGroup(1691921830);
                gapComposer.end(false);
                buttonElevation5 = buttonElevation6;
                i4 = i3;
                mutableInteractionSourceImpl = mutableInteractionSourceImpl2;
                obj = obj2;
                j2 = j4;
                z2 = false;
                animationState = null;
            } else {
                gapComposer.startReplaceGroup(-499611205);
                int i7 = ((i3 >> 6) & 14) | ((i3 >> 9) & 896);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (rememberedValue2 == obj2) {
                    rememberedValue2 = new SnapshotStateList();
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                SnapshotStateList snapshotStateList = (SnapshotStateList) rememberedValue2;
                boolean changed = gapComposer.changed(mutableInteractionSourceImpl2);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changed || rememberedValue3 == obj2) {
                    i4 = i3;
                    j = j4;
                    rememberedValue3 = new CardElevation$animateElevation$1$1(mutableInteractionSourceImpl2, snapshotStateList, null, 1);
                    gapComposer.updateRememberedValue(rememberedValue3);
                } else {
                    i4 = i3;
                    j = j4;
                }
                Updater.LaunchedEffect(gapComposer, mutableInteractionSourceImpl2, (Function2) rememberedValue3);
                Interaction interaction = (Interaction) CollectionsKt.lastOrNull(snapshotStateList);
                if (z && !(interaction instanceof PressInteraction.Press) && (interaction instanceof HoverInteraction$Enter)) {
                    buttonElevation4 = buttonElevation6;
                    f = buttonElevation4.hoveredElevation;
                } else {
                    buttonElevation4 = buttonElevation6;
                    f = 0.0f;
                }
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (rememberedValue4 == obj2) {
                    mutableInteractionSourceImpl = mutableInteractionSourceImpl2;
                    rememberedValue4 = new Animatable(new Dp(f), ArcSplineKt.DpToVector, null, 12);
                    gapComposer.updateRememberedValue(rememberedValue4);
                } else {
                    mutableInteractionSourceImpl = mutableInteractionSourceImpl2;
                }
                Animatable animatable = (Animatable) rememberedValue4;
                Dp dp = new Dp(f);
                boolean changedInstance = gapComposer.changedInstance(animatable) | gapComposer.changed(f) | ((((i7 & 14) ^ 6) > 4 && gapComposer.changed(z)) || (i7 & 6) == 4) | ((((i7 & 896) ^ 384) > 256 && gapComposer.changed(buttonElevation4)) || (i7 & 384) == 256) | gapComposer.changedInstance(interaction);
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue5 == obj2) {
                    float f2 = f;
                    obj = obj2;
                    j2 = j;
                    z2 = false;
                    Object cardElevation$animateElevation$2$1 = new CardElevation$animateElevation$2$1(animatable, f2, z, buttonElevation4, interaction, null, 1);
                    buttonElevation5 = buttonElevation4;
                    gapComposer.updateRememberedValue(cardElevation$animateElevation$2$1);
                    rememberedValue5 = cardElevation$animateElevation$2$1;
                } else {
                    obj = obj2;
                    buttonElevation5 = buttonElevation4;
                    j2 = j;
                    z2 = false;
                }
                Updater.LaunchedEffect(gapComposer, dp, (Function2) rememberedValue5);
                animationState = animatable.internalState;
                gapComposer.end(z2);
            }
            float f3 = animationState != null ? ((Dp) animationState.value$delegate.getValue()).value : 0.0f;
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (rememberedValue6 == obj) {
                rememberedValue6 = new TextKt$$ExternalSyntheticLambda1(5);
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            Modifier semantics = SemanticsModifierKt.semantics(modifier, z2, (Function1) rememberedValue6);
            paddingValues2 = paddingValues;
            int i8 = i4;
            Shape shape6 = shape5;
            SurfaceKt.m359Surfaceo_FOJdg(function0, semantics, z, shape6, j3, j2, f3, borderStroke, mutableInteractionSourceImpl, Expect_jvmKt.rememberComposableLambda(-535639973, new Function2() { // from class: androidx.compose.material3.ButtonKt$Button$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    Composer composer2 = (Composer) obj3;
                    int intValue = ((Number) obj4).intValue();
                    int i9 = 0;
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        Icons$Filled.m370ProvideContentColorTextStyle3JVO9M(j2, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).labelLarge, Expect_jvmKt.rememberComposableLambda(417635459, new AnonymousClass1(i9, paddingValues2, composableLambdaImpl), gapComposer2), gapComposer2, 384);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }

                /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
                /* renamed from: androidx.compose.material3.ButtonKt$Button$2$1, reason: invalid class name */
                public final class AnonymousClass1 implements Function2 {
                    public final /* synthetic */ Object $content;
                    public final /* synthetic */ Object $contentPadding;
                    public final /* synthetic */ int $r8$classId;

                    public AnonymousClass1(ComposableLambdaImpl composableLambdaImpl, ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1) {
                        this.$r8$classId = 3;
                        this.$content = composableLambdaImpl;
                        this.$contentPadding = scaffoldKt$ScaffoldLayout$contentPadding$1$1;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i = this.$r8$classId;
                        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                        Unit unit = Unit.INSTANCE;
                        Object obj3 = this.$content;
                        Object obj4 = this.$contentPadding;
                        switch (i) {
                            case 0:
                                Composer composer = (Composer) obj;
                                int intValue = ((Number) obj2).intValue();
                                GapComposer gapComposer = (GapComposer) composer;
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    Modifier padding = OffsetKt.padding(SizeKt.m224defaultMinSizeVpY3zN4(companion, ButtonDefaults.MinWidth, ButtonDefaults.MinHeight), (PaddingValues) obj4);
                                    ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj3;
                                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.Center, Alignment.Companion.CenterVertically, gapComposer, 54);
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
                                    Updater.m380setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                        Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
                                    }
                                    Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                                    composableLambdaImpl.invoke((Object) RowScopeInstance.INSTANCE, (Object) gapComposer, (Object) 6);
                                    gapComposer.end(true);
                                    break;
                                }
                                break;
                            case 1:
                                Composer composer2 = (Composer) obj;
                                int intValue2 = ((Number) obj2).intValue();
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    Modifier then = OffsetKt.padding(companion, AlertDialogKt.TitlePadding).then(new HorizontalAlignElement(((Function2) obj4) == null ? Alignment.Companion.Start : Alignment.Companion.CenterHorizontally));
                                    Function2 function2 = (Function2) obj3;
                                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
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
                                    Updater.m380setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m380setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                        Modifier.CC.m(currentCompositeKeyHash2, gapComposer2, currentCompositeKeyHash2, composeUiNode$Companion$SetModifier$12);
                                    }
                                    Updater.m380setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                                    function2.invoke(gapComposer2, 0);
                                    gapComposer2.end(true);
                                    break;
                                }
                                break;
                            case 2:
                                Composer composer3 = (Composer) obj;
                                int intValue3 = ((Number) obj2).intValue();
                                GapComposer gapComposer3 = (GapComposer) composer3;
                                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                                    gapComposer3.skipToGroupEnd();
                                    break;
                                } else {
                                    TextKt.ProvideTextStyle(((Typography) obj4).bodyLarge, (ComposableLambdaImpl) obj3, gapComposer3, 0);
                                    break;
                                }
                            case 3:
                                Composer composer4 = (Composer) obj;
                                int intValue4 = ((Number) obj2).intValue();
                                GapComposer gapComposer4 = (GapComposer) composer4;
                                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                                    gapComposer4.skipToGroupEnd();
                                    break;
                                } else {
                                    ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) obj3;
                                    ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1 = (ScaffoldKt$ScaffoldLayout$contentPadding$1$1) obj4;
                                    MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                    int currentCompositeKeyHash3 = Updater.getCurrentCompositeKeyHash(gapComposer4);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer4.currentCompositionLocalScope();
                                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer4, companion);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                                    gapComposer4.startReusableNode();
                                    if (gapComposer4.inserting) {
                                        gapComposer4.createNode(layoutNode$Companion$Constructor$13);
                                    } else {
                                        gapComposer4.useNode();
                                    }
                                    Updater.m380setimpl(gapComposer4, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m380setimpl(gapComposer4, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    if (gapComposer4.inserting || !Intrinsics.areEqual(gapComposer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                        Modifier.CC.m(currentCompositeKeyHash3, gapComposer4, currentCompositeKeyHash3, composeUiNode$Companion$SetModifier$13);
                                    }
                                    Updater.m380setimpl(gapComposer4, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                                    composableLambdaImpl2.invoke((Object) scaffoldKt$ScaffoldLayout$contentPadding$1$1, (Object) gapComposer4, (Object) 6);
                                    gapComposer4.end(true);
                                    break;
                                }
                                break;
                            case 4:
                                Composer composer5 = (Composer) obj;
                                int intValue5 = ((Number) obj2).intValue();
                                GapComposer gapComposer5 = (GapComposer) composer5;
                                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                                    gapComposer5.skipToGroupEnd();
                                    break;
                                } else {
                                    MutableState mutableState = (MutableState) obj4;
                                    Object rememberedValue = gapComposer5.rememberedValue();
                                    if (rememberedValue == neverEqualPolicy) {
                                        rememberedValue = new BasicTextKt$$ExternalSyntheticLambda0(mutableState, 7);
                                        gapComposer5.updateRememberedValue(rememberedValue);
                                    }
                                    Modifier onGloballyPositioned = RulerKt.onGloballyPositioned(companion, (Function1) rememberedValue);
                                    ComposableLambdaImpl composableLambdaImpl3 = (ComposableLambdaImpl) obj3;
                                    MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                    int currentCompositeKeyHash4 = Updater.getCurrentCompositeKeyHash(gapComposer5);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer5.currentCompositionLocalScope();
                                    Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer5, onGloballyPositioned);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$14 = ComposeUiNode.Companion.Constructor;
                                    gapComposer5.startReusableNode();
                                    if (gapComposer5.inserting) {
                                        gapComposer5.createNode(layoutNode$Companion$Constructor$14);
                                    } else {
                                        gapComposer5.useNode();
                                    }
                                    Updater.m380setimpl(gapComposer5, maybeCachedBoxMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m380setimpl(gapComposer5, currentCompositionLocalScope4, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    if (gapComposer5.inserting || !Intrinsics.areEqual(gapComposer5.rememberedValue(), Integer.valueOf(currentCompositeKeyHash4))) {
                                        Modifier.CC.m(currentCompositeKeyHash4, gapComposer5, currentCompositeKeyHash4, composeUiNode$Companion$SetModifier$14);
                                    }
                                    Updater.m380setimpl(gapComposer5, materializeModifier4, ComposeUiNode.Companion.SetModifier);
                                    Config.CC.m(0, composableLambdaImpl3, gapComposer5, true);
                                    break;
                                }
                                break;
                            case 5:
                                Composer composer6 = (Composer) obj;
                                int intValue6 = ((Number) obj2).intValue();
                                String str = (String) obj4;
                                GapComposer gapComposer6 = (GapComposer) composer6;
                                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                                    gapComposer6.skipToGroupEnd();
                                    break;
                                } else {
                                    boolean changed = gapComposer6.changed(str);
                                    Object rememberedValue2 = gapComposer6.rememberedValue();
                                    if (changed || rememberedValue2 == neverEqualPolicy) {
                                        rememberedValue2 = new IconKt$$ExternalSyntheticLambda1(str, 4);
                                        gapComposer6.updateRememberedValue(rememberedValue2);
                                    }
                                    AppendedSemanticsElement appendedSemanticsElement = new AppendedSemanticsElement((Function1) rememberedValue2, false);
                                    ComposableLambdaImpl composableLambdaImpl4 = (ComposableLambdaImpl) obj3;
                                    MeasurePolicy maybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                                    int currentCompositeKeyHash5 = Updater.getCurrentCompositeKeyHash(gapComposer6);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer6.currentCompositionLocalScope();
                                    Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer6, appendedSemanticsElement);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$15 = ComposeUiNode.Companion.Constructor;
                                    gapComposer6.startReusableNode();
                                    if (gapComposer6.inserting) {
                                        gapComposer6.createNode(layoutNode$Companion$Constructor$15);
                                    } else {
                                        gapComposer6.useNode();
                                    }
                                    Updater.m380setimpl(gapComposer6, maybeCachedBoxMeasurePolicy4, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m380setimpl(gapComposer6, currentCompositionLocalScope5, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                    if (gapComposer6.inserting || !Intrinsics.areEqual(gapComposer6.rememberedValue(), Integer.valueOf(currentCompositeKeyHash5))) {
                                        Modifier.CC.m(currentCompositeKeyHash5, gapComposer6, currentCompositeKeyHash5, composeUiNode$Companion$SetModifier$15);
                                    }
                                    Updater.m380setimpl(gapComposer6, materializeModifier5, ComposeUiNode.Companion.SetModifier);
                                    Config.CC.m(0, composableLambdaImpl4, gapComposer6, true);
                                    break;
                                }
                            case 6:
                                Composer composer7 = (Composer) obj;
                                int intValue7 = ((Number) obj2).intValue();
                                GapComposer gapComposer7 = (GapComposer) composer7;
                                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                                    gapComposer7.skipToGroupEnd();
                                    break;
                                } else {
                                    ((Function3) obj4).invoke((TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1) obj3, gapComposer7, 6);
                                    break;
                                }
                            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                Composer composer8 = (Composer) obj;
                                if ((((Number) obj2).intValue() & 3) == 2) {
                                    GapComposer gapComposer8 = (GapComposer) composer8;
                                    if (gapComposer8.getSkipping()) {
                                        gapComposer8.skipToGroupEnd();
                                        break;
                                    }
                                }
                                ((DialogNavigator.Destination) obj4).content.invoke(obj3, (Object) composer8, (Object) 0);
                                break;
                            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                Composer composer9 = (Composer) obj;
                                if ((((Number) obj2).intValue() & 3) == 2) {
                                    GapComposer gapComposer9 = (GapComposer) composer9;
                                    if (gapComposer9.getSkipping()) {
                                        gapComposer9.skipToGroupEnd();
                                        break;
                                    }
                                }
                                RelationUtil.SaveableStateProvider((SaveableStateHolder) obj4, (ComposableLambdaImpl) obj3, composer9, 0);
                                break;
                            default:
                                Composer composer10 = (Composer) obj;
                                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj4;
                                if ((((Number) obj2).intValue() & 3) == 2) {
                                    GapComposer gapComposer10 = (GapComposer) composer10;
                                    if (gapComposer10.getSkipping()) {
                                        gapComposer10.skipToGroupEnd();
                                        break;
                                    }
                                }
                                NavDestination navDestination = navBackStackEntry.destination;
                                navDestination.getClass();
                                ((ComposeNavigator.Destination) navDestination).content.invoke((AnimatedContentScopeImpl) obj3, navBackStackEntry, composer10, 0);
                                break;
                        }
                        return unit;
                    }

                    public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2) {
                        this.$r8$classId = i;
                        this.$contentPadding = obj;
                        this.$content = obj2;
                    }
                }
            }, gapComposer), gapComposer, (i8 & 8078) | ((i8 << 6) & 234881024), 64);
            shape3 = shape6;
            buttonElevation3 = buttonElevation5;
        } else {
            gapComposer.skipToGroupEnd();
            shape3 = shape2;
            buttonElevation3 = buttonElevation2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ButtonKt$$ExternalSyntheticLambda3(function0, modifier, z, shape3, buttonColors, buttonElevation3, borderStroke, paddingValues2, composableLambdaImpl, i, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Card(kotlin.jvm.functions.Function0 r26, androidx.compose.ui.Modifier r27, boolean r28, androidx.compose.ui.graphics.Shape r29, androidx.compose.material3.CardColors r30, androidx.compose.material3.CardElevation r31, androidx.compose.foundation.BorderStroke r32, androidx.compose.runtime.internal.ComposableLambdaImpl r33, androidx.compose.runtime.Composer r34, int r35, int r36) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.Card(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, androidx.compose.material3.CardColors, androidx.compose.material3.CardElevation, androidx.compose.foundation.BorderStroke, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void Checkbox(boolean z, Function1 function1, CheckboxColors checkboxColors, Composer composer, int i) {
        int i2;
        CheckboxColors checkboxColors2;
        CheckboxColors checkboxColors3;
        int i3;
        int i4;
        long Color;
        long Color2;
        long Color3;
        long Color4;
        long Color5;
        Function0 function0;
        boolean z2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1406741137);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        int i5 = i & 384;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        if (i5 == 0) {
            i2 |= gapComposer.changed(companion) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(true) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= 8192;
        }
        int i6 = i2 | 196608;
        if (gapComposer.shouldExecute(i6 & 1, (74899 & i6) != 74898)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
                checkboxColors3 = colorScheme.defaultCheckboxColorsCached;
                if (checkboxColors3 == null) {
                    long fromToken = ColorSchemeKt.fromToken(colorScheme, CheckboxTokens.SelectedIconColor);
                    long j = Color.Transparent;
                    ColorSchemeKeyTokens colorSchemeKeyTokens = CheckboxTokens.SelectedContainerColor;
                    long fromToken2 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens);
                    ColorSchemeKeyTokens colorSchemeKeyTokens2 = CheckboxTokens.SelectedDisabledContainerColor;
                    i3 = -57345;
                    Color = ColorKt.Color(Color.m487getRedimpl(r8), Color.m486getGreenimpl(r8), Color.m484getBlueimpl(r8), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2)));
                    Color2 = ColorKt.Color(Color.m487getRedimpl(r8), Color.m486getGreenimpl(r8), Color.m484getBlueimpl(r8), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2)));
                    long fromToken3 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens);
                    long fromToken4 = ColorSchemeKt.fromToken(colorScheme, CheckboxTokens.UnselectedOutlineColor);
                    Color3 = ColorKt.Color(Color.m487getRedimpl(r8), Color.m486getGreenimpl(r8), Color.m484getBlueimpl(r8), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2)));
                    Color4 = ColorKt.Color(Color.m487getRedimpl(r8), Color.m486getGreenimpl(r8), Color.m484getBlueimpl(r8), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, CheckboxTokens.UnselectedDisabledOutlineColor)));
                    Color5 = ColorKt.Color(Color.m487getRedimpl(r7), Color.m486getGreenimpl(r7), Color.m484getBlueimpl(r7), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2)));
                    CheckboxColors checkboxColors4 = new CheckboxColors(fromToken, j, fromToken2, j, Color, j, Color2, fromToken3, fromToken4, Color3, Color4, Color5);
                    colorScheme.defaultCheckboxColorsCached = checkboxColors4;
                    checkboxColors3 = checkboxColors4;
                } else {
                    i3 = -57345;
                }
                i4 = i6 & i3;
            } else {
                gapComposer.skipToGroupEnd();
                i4 = i6 & (-57345);
                checkboxColors3 = checkboxColors;
            }
            gapComposer.endDefaults();
            float floor = (float) Math.floor(((Density) gapComposer.consume(CompositionLocalsKt.LocalDensity)).mo177toPx0680j_4(2.0f));
            ToggleableState toggleableState = z ? ToggleableState.On : ToggleableState.Off;
            if (function1 != null) {
                gapComposer.startReplaceGroup(2066152950);
                boolean z3 = ((i4 & 112) == 32) | ((i4 & 14) == 4);
                Object rememberedValue = gapComposer.rememberedValue();
                if (z3 || rememberedValue == Composer.Companion.Empty) {
                    z2 = false;
                    rememberedValue = new CheckboxKt$$ExternalSyntheticLambda2(function1, z, 0);
                    gapComposer.updateRememberedValue(rememberedValue);
                } else {
                    z2 = false;
                }
                function0 = (Function0) rememberedValue;
                gapComposer.end(z2);
            } else {
                gapComposer.startReplaceGroup(2066218639);
                gapComposer.end(false);
                function0 = null;
            }
            TriStateCheckbox(toggleableState, function0, new Stroke(floor, 0.0f, 2, 0, 26), new Stroke(floor, 0.0f, 0, 0, 30), companion, checkboxColors3, gapComposer, (i4 << 6) & 33546240);
            checkboxColors2 = checkboxColors3;
        } else {
            gapComposer.skipToGroupEnd();
            checkboxColors2 = checkboxColors;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CheckboxKt$$ExternalSyntheticLambda3(i, 0, function1, checkboxColors2, z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0255 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CheckboxImpl(androidx.compose.ui.state.ToggleableState r22, androidx.compose.ui.Modifier r23, androidx.compose.material3.CheckboxColors r24, final androidx.compose.ui.graphics.drawscope.Stroke r25, final androidx.compose.ui.graphics.drawscope.Stroke r26, androidx.compose.runtime.Composer r27, int r28) {
        /*
            Method dump skipped, instructions count: 648
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.CheckboxImpl(androidx.compose.ui.state.ToggleableState, androidx.compose.ui.Modifier, androidx.compose.material3.CheckboxColors, androidx.compose.ui.graphics.drawscope.Stroke, androidx.compose.ui.graphics.drawscope.Stroke, androidx.compose.runtime.Composer, int):void");
    }

    /* renamed from: DropdownMenuContent-Qj0Zi0g, reason: not valid java name */
    public static final void m329DropdownMenuContentQj0Zi0g(final Modifier modifier, final MutableTransitionState mutableTransitionState, final MutableState mutableState, final ScrollState scrollState, final Shape shape, final long j, final float f, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        float f2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(848986741);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changed(mutableTransitionState) ? 32 : 16) | (gapComposer.changed(scrollState) ? 2048 : 1024) | (gapComposer.changed(shape) ? 16384 : 8192) | (gapComposer.changed(j) ? 131072 : 65536) | (gapComposer.changed(0.0f) ? 1048576 : 524288) | (gapComposer.changed(f) ? 8388608 : 4194304) | (gapComposer.changed((Object) null) ? 67108864 : 33554432) | (gapComposer.changedInstance(composableLambdaImpl) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 306783379) != 306783378)) {
            Transition rememberTransition = ArcSplineKt.rememberTransition(mutableTransitionState, "DropDownMenu", gapComposer, (((i2 >> 3) & 14) | 48) & 126);
            SpringSpec value = value(MotionSchemeKeyTokens.FastSpatial, gapComposer);
            SpringSpec value2 = value(MotionSchemeKeyTokens.FastEffects, gapComposer);
            TwoWayConverterImpl twoWayConverterImpl = ArcSplineKt.FloatToVector;
            DnsQueryResult dnsQueryResult = rememberTransition.transitionState;
            ParcelableSnapshotMutableState parcelableSnapshotMutableState = rememberTransition.targetState$delegate;
            boolean booleanValue = ((Boolean) dnsQueryResult.getCurrentState()).booleanValue();
            gapComposer.startReplaceGroup(143964305);
            float f3 = booleanValue ? 1.0f : 0.8f;
            gapComposer.end(false);
            Float valueOf = Float.valueOf(f3);
            boolean booleanValue2 = ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
            gapComposer.startReplaceGroup(143964305);
            float f4 = booleanValue2 ? 1.0f : 0.8f;
            gapComposer.end(false);
            Float valueOf2 = Float.valueOf(f4);
            rememberTransition.getSegment();
            gapComposer.startReplaceGroup(-745957716);
            gapComposer.end(false);
            boolean z = true;
            Transition.TransitionAnimationState createTransitionAnimation = ArcSplineKt.createTransitionAnimation(rememberTransition, valueOf, valueOf2, value, twoWayConverterImpl, gapComposer, 0);
            boolean booleanValue3 = ((Boolean) rememberTransition.transitionState.getCurrentState()).booleanValue();
            gapComposer.startReplaceGroup(892761509);
            float f5 = booleanValue3 ? 1.0f : 0.0f;
            gapComposer.end(false);
            Float valueOf3 = Float.valueOf(f5);
            boolean booleanValue4 = ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
            gapComposer.startReplaceGroup(892761509);
            float f6 = booleanValue4 ? 1.0f : 0.0f;
            gapComposer.end(false);
            Float valueOf4 = Float.valueOf(f6);
            rememberTransition.getSegment();
            gapComposer.startReplaceGroup(2839488);
            gapComposer.end(false);
            Transition.TransitionAnimationState createTransitionAnimation2 = ArcSplineKt.createTransitionAnimation(rememberTransition, valueOf3, valueOf4, value2, twoWayConverterImpl, gapComposer, 0);
            boolean booleanValue5 = ((Boolean) gapComposer.consume(InspectionModeKt.LocalInspectionMode)).booleanValue();
            boolean changed = gapComposer.changed(booleanValue5) | gapComposer.changed(createTransitionAnimation);
            if ((i2 & 112) != 32) {
                z = false;
            }
            boolean changed2 = z | changed | gapComposer.changed(createTransitionAnimation2);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed2 || rememberedValue == Composer.Companion.Empty) {
                f2 = 0.0f;
                MenuKt$$ExternalSyntheticLambda0 menuKt$$ExternalSyntheticLambda0 = new MenuKt$$ExternalSyntheticLambda0(booleanValue5, mutableTransitionState, mutableState, createTransitionAnimation, createTransitionAnimation2);
                gapComposer.updateRememberedValue(menuKt$$ExternalSyntheticLambda0);
                rememberedValue = menuKt$$ExternalSyntheticLambda0;
            } else {
                f2 = 0.0f;
            }
            int i3 = i2 >> 9;
            int i4 = i2 >> 6;
            SurfaceKt.m357SurfaceT9BRK9s(ColorKt.graphicsLayer(Modifier.Companion.$$INSTANCE, (Function1) rememberedValue), shape, j, 0L, f2, f, null, Expect_jvmKt.rememberComposableLambda(-1463404422, new TooltipKt$TooltipBox$3(modifier, scrollState, composableLambdaImpl), gapComposer), gapComposer, (i3 & 896) | (i3 & 112) | 12582912 | (57344 & i4) | (458752 & i4) | (i4 & 3670016), 8);
            gapComposer = gapComposer;
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
                    CardKt.m329DropdownMenuContentQj0Zi0g(Modifier.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$7, this.f$9, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void DropdownMenuItemContent(final ComposableLambdaImpl composableLambdaImpl, Function0 function0, Modifier modifier, final boolean z, final MenuItemColors menuItemColors, PaddingValues paddingValues, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
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
            i2 |= gapComposer.changedInstance(null) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(null) ? 16384 : 8192;
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
            Modifier padding = OffsetKt.padding(SizeKt.m237sizeInqDBjuR0$default(ImageKt.m135clickableO2vRcR0$default(modifier, null, RippleKt.m355rippleH2RKhps$default(true, 0.0f, 6), z, null, function0, 24).then(SizeKt.FillWholeMaxWidth), 112.0f, 48.0f, 280.0f, 8), paddingValues);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer, 48);
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
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
            }
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            TextKt.ProvideTextStyle(((Typography) gapComposer.consume(TypographyKt.LocalTypography)).labelLarge, Expect_jvmKt.rememberComposableLambda(865999929, new Function2() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Number) obj2).intValue();
                    int i3 = 2;
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        gapComposer2.startReplaceGroup(-864293207);
                        gapComposer2.end(false);
                        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ContentColorKt.LocalContentColor;
                        boolean z2 = z;
                        MenuItemColors menuItemColors2 = MenuItemColors.this;
                        Updater.CompositionLocalProvider(dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(new Color(z2 ? menuItemColors2.textColor : menuItemColors2.disabledTextColor)), Expect_jvmKt.rememberComposableLambda(-893579015, new CardKt$Card$1(composableLambdaImpl, i3), gapComposer2), gapComposer2, 56);
                        gapComposer2.startReplaceGroup(-863072055);
                        gapComposer2.end(false);
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
            endRestartGroup.block = new MenuKt$$ExternalSyntheticLambda2(composableLambdaImpl, function0, modifier, z, menuItemColors, paddingValues, i);
        }
    }

    public static final void ElevatedCard(Modifier modifier, Shape shape, CardColors cardColors, CardElevation cardElevation, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        Shape shape2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1464672362);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            shape2 = shape;
            i2 |= gapComposer.changed(shape2) ? 32 : 16;
        } else {
            shape2 = shape;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(cardColors) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(cardElevation) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 16384 : 8192;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            Card(modifier, shape2, cardColors, cardElevation, null, composableLambdaImpl, gapComposer, (i2 & 14) | 24576 | (i2 & 112) | (i2 & 896) | (i2 & 7168) | ((i2 << 3) & 458752), 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda0(modifier, shape, cardColors, cardElevation, composableLambdaImpl, i, 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:98:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v1, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v26, types: [androidx.compose.runtime.internal.ComposableLambdaImpl] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void ExposedDropdownMenuBox(boolean r25, kotlin.jvm.functions.Function1 r26, androidx.compose.ui.Modifier r27, androidx.compose.runtime.internal.ComposableLambdaImpl r28, androidx.compose.runtime.Composer r29, int r30, int r31) {
        /*
            Method dump skipped, instructions count: 704
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.ExposedDropdownMenuBox(boolean, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void FadeInFadeOutWithScale(final SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl, Modifier modifier, Composer composer, int i) {
        ComposableLambdaImpl composableLambdaImpl = ComposableSingletons$SnackbarHostKt.f10lambda$1548712596;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-977568115);
        int i2 = (i & 6) == 0 ? (gapComposer.changed(snackbarHostState$SnackbarDataImpl) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            final String m371getString2EP1pXo = Icons$Filled.m371getString2EP1pXo(gapComposer, R.string.m3c_snackbar_pane_title);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = rememberedValue;
            if (rememberedValue == Composer.Companion.Empty) {
                FadeInFadeOutState fadeInFadeOutState = new FadeInFadeOutState();
                fadeInFadeOutState.current = new Object();
                fadeInFadeOutState.items = new ArrayList();
                gapComposer.updateRememberedValue(fadeInFadeOutState);
                obj = fadeInFadeOutState;
            }
            final FadeInFadeOutState fadeInFadeOutState2 = (FadeInFadeOutState) obj;
            Object obj2 = fadeInFadeOutState2.current;
            ArrayList arrayList = fadeInFadeOutState2.items;
            if (Intrinsics.areEqual(snackbarHostState$SnackbarDataImpl, obj2)) {
                gapComposer.startReplaceGroup(1443908949);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(1154891761);
                fadeInFadeOutState2.current = snackbarHostState$SnackbarDataImpl;
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    arrayList2.add((SnackbarHostState$SnackbarDataImpl) ((FadeInFadeOutAnimationItem) arrayList.get(i3)).key);
                }
                ArrayList arrayList3 = new ArrayList(arrayList2);
                if (!arrayList3.contains(snackbarHostState$SnackbarDataImpl)) {
                    arrayList3.add(snackbarHostState$SnackbarDataImpl);
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
                for (int i5 = 0; i5 < size3; i5++) {
                    final SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl2 = (SnackbarHostState$SnackbarDataImpl) arrayList4.get(i5);
                    arrayList.add(new FadeInFadeOutAnimationItem(snackbarHostState$SnackbarDataImpl2, Expect_jvmKt.rememberComposableLambda(-1952400805, new Function3(snackbarHostState$SnackbarDataImpl2, snackbarHostState$SnackbarDataImpl, fadeInFadeOutState2, m371getString2EP1pXo) { // from class: androidx.compose.material3.SnackbarHostKt$FadeInFadeOutWithScale$1$1
                        public final /* synthetic */ String $a11yPaneTitle;
                        public final /* synthetic */ FadeInFadeOutState $state;

                        {
                            this.$state = fadeInFadeOutState2;
                            this.$a11yPaneTitle = m371getString2EP1pXo;
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj4, Object obj5, Object obj6) {
                            Function2 function2 = (Function2) obj4;
                            Composer composer2 = (Composer) obj5;
                            int intValue = ((Number) obj6).intValue();
                            if ((intValue & 6) == 0) {
                                intValue |= ((GapComposer) composer2).changedInstance(function2) ? 4 : 2;
                            }
                            GapComposer gapComposer2 = (GapComposer) composer2;
                            if (gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                                SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl3 = null;
                                boolean areEqual = Intrinsics.areEqual(null, null);
                                SpringSpec value = CardKt.value(MotionSchemeKeyTokens.FastEffects, gapComposer2);
                                boolean changed = gapComposer2.changed((Object) null);
                                FadeInFadeOutState fadeInFadeOutState3 = this.$state;
                                boolean changedInstance = changed | gapComposer2.changedInstance(fadeInFadeOutState3);
                                Object rememberedValue2 = gapComposer2.rememberedValue();
                                Object obj7 = Composer.Companion.Empty;
                                if (changedInstance || rememberedValue2 == obj7) {
                                    rememberedValue2 = new ImageLoader$Builder$$ExternalSyntheticLambda1((SnackbarHostState$SnackbarDataImpl) null, fadeInFadeOutState3);
                                    gapComposer2.updateRememberedValue(rememberedValue2);
                                }
                                Function0 function0 = (Function0) rememberedValue2;
                                Object rememberedValue3 = gapComposer2.rememberedValue();
                                if (rememberedValue3 == obj7) {
                                    rememberedValue3 = ArcSplineKt.Animatable$default(!areEqual ? 1.0f : 0.0f);
                                    gapComposer2.updateRememberedValue(rememberedValue3);
                                }
                                Animatable animatable = (Animatable) rememberedValue3;
                                Boolean valueOf = Boolean.valueOf(areEqual);
                                boolean changedInstance2 = gapComposer2.changedInstance(animatable) | gapComposer2.changed(areEqual) | gapComposer2.changedInstance(value) | gapComposer2.changed(function0);
                                Object rememberedValue4 = gapComposer2.rememberedValue();
                                if (changedInstance2 || rememberedValue4 == obj7) {
                                    Object snackbarHostKt$animatedOpacity$2$1 = new SnackbarHostKt$animatedOpacity$2$1(animatable, areEqual, value, function0, (Continuation) null);
                                    gapComposer2.updateRememberedValue(snackbarHostKt$animatedOpacity$2$1);
                                    rememberedValue4 = snackbarHostKt$animatedOpacity$2$1;
                                }
                                Updater.LaunchedEffect(gapComposer2, valueOf, (Function2) rememberedValue4);
                                AnimationState animationState = animatable.internalState;
                                SpringSpec value2 = CardKt.value(MotionSchemeKeyTokens.FastSpatial, gapComposer2);
                                Object rememberedValue5 = gapComposer2.rememberedValue();
                                if (rememberedValue5 == obj7) {
                                    rememberedValue5 = ArcSplineKt.Animatable$default(areEqual ? 0.8f : 1.0f);
                                    gapComposer2.updateRememberedValue(rememberedValue5);
                                }
                                Animatable animatable2 = (Animatable) rememberedValue5;
                                Boolean valueOf2 = Boolean.valueOf(areEqual);
                                boolean changedInstance3 = gapComposer2.changedInstance(animatable2) | gapComposer2.changed(areEqual) | gapComposer2.changedInstance(value2);
                                Object rememberedValue6 = gapComposer2.rememberedValue();
                                if (changedInstance3 || rememberedValue6 == obj7) {
                                    rememberedValue6 = new SnackbarHostKt$animatedScale$1$1(animatable2, areEqual, value2, (Continuation) null);
                                    gapComposer2.updateRememberedValue(rememberedValue6);
                                }
                                Updater.LaunchedEffect(gapComposer2, valueOf2, (Function2) rememberedValue6);
                                AnimationState animationState2 = animatable2.internalState;
                                Modifier m493graphicsLayerAp8cVGQ$default = ColorKt.m493graphicsLayerAp8cVGQ$default(Modifier.Companion.$$INSTANCE, ((Number) animationState2.value$delegate.getValue()).floatValue(), ((Number) animationState2.value$delegate.getValue()).floatValue(), ((Number) animationState.value$delegate.getValue()).floatValue(), 0.0f, null, 131064);
                                boolean changed2 = gapComposer2.changed(areEqual) | gapComposer2.changed((Object) null);
                                String str = this.$a11yPaneTitle;
                                boolean changed3 = changed2 | gapComposer2.changed(str);
                                Object rememberedValue7 = gapComposer2.rememberedValue();
                                if (changed3 || rememberedValue7 == obj7) {
                                    rememberedValue7 = new BackHandlerKt$$ExternalSyntheticLambda1(areEqual, str, snackbarHostState$SnackbarDataImpl3);
                                    gapComposer2.updateRememberedValue(rememberedValue7);
                                }
                                Modifier semantics = SemanticsModifierKt.semantics(m493graphicsLayerAp8cVGQ$default, false, (Function1) rememberedValue7);
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
                                Updater.m380setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                Updater.m380setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                                if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    Modifier.CC.m(currentCompositeKeyHash, gapComposer2, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
                                }
                                Updater.m380setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                                function2.invoke(gapComposer2, Integer.valueOf(intValue & 14));
                                gapComposer2.end(true);
                            } else {
                                gapComposer2.skipToGroupEnd();
                            }
                            return Unit.INSTANCE;
                        }
                    }, gapComposer)));
                }
                gapComposer.end(false);
            }
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
            }
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            RecomposeScopeImpl currentRecomposeScope$runtime = gapComposer.getCurrentRecomposeScope$runtime();
            if (currentRecomposeScope$runtime == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("no recompose scope found");
                return;
            }
            currentRecomposeScope$runtime.flags |= 1;
            fadeInFadeOutState2.scope = currentRecomposeScope$runtime;
            gapComposer.startReplaceGroup(-1888182177);
            int size4 = arrayList.size();
            for (int i6 = 0; i6 < size4; i6++) {
                FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem = (FadeInFadeOutAnimationItem) arrayList.get(i6);
                SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl3 = (SnackbarHostState$SnackbarDataImpl) fadeInFadeOutAnimationItem.key;
                ComposableLambdaImpl composableLambdaImpl2 = fadeInFadeOutAnimationItem.transition;
                gapComposer.startMovableGroup(1325010085, snackbarHostState$SnackbarDataImpl3);
                composableLambdaImpl2.invoke((Object) Expect_jvmKt.rememberComposableLambda(-1893791890, new SnackbarKt$Snackbar$3(snackbarHostState$SnackbarDataImpl3, 6), gapComposer), (Object) gapComposer, (Object) 6);
                gapComposer.end(false);
            }
            gapComposer.end(false);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutFragmentKt$$ExternalSyntheticLambda3(snackbarHostState$SnackbarDataImpl, modifier, i);
        }
    }

    /* renamed from: HorizontalDivider-9IZ8Weo, reason: not valid java name */
    public static final void m330HorizontalDivider9IZ8Weo(float f, int i, long j, Composer composer, Modifier modifier) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(75144485);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(f) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(j) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            Modifier m226height3ABfNKs = SizeKt.m226height3ABfNKs(modifier.then(SizeKt.FillWholeMaxWidth), f);
            boolean z = ((((i2 & 896) ^ 384) > 256 && gapComposer.changed(j)) || (i2 & 384) == 256) | ((i2 & 112) == 32);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new DividerKt$$ExternalSyntheticLambda0(f, 1, j);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ImageKt.Canvas(0, gapComposer, m226height3ABfNKs, (Function1) rememberedValue);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new DividerKt$$ExternalSyntheticLambda1(modifier, f, j, i, 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void IconButton(kotlin.jvm.functions.Function0 r16, androidx.compose.ui.Modifier r17, boolean r18, androidx.compose.material3.IconButtonColors r19, androidx.compose.ui.graphics.Shape r20, androidx.compose.runtime.internal.ComposableLambdaImpl r21, androidx.compose.runtime.Composer r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.IconButton(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.material3.IconButtonColors, androidx.compose.ui.graphics.Shape, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void IconButtonImpl(Modifier modifier, Function0 function0, boolean z, Shape shape, IconButtonColors iconButtonColors, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        Modifier then;
        GapComposer gapComposer = (GapComposer) composer;
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
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 1048576 : 524288;
        }
        int i3 = i2;
        if (gapComposer.shouldExecute(i3 & 1, (599187 & i3) != 599186)) {
            gapComposer.startReplaceGroup(977045485);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new MutableInteractionSourceImpl();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableInteractionSourceImpl mutableInteractionSourceImpl = (MutableInteractionSourceImpl) rememberedValue;
            gapComposer.end(false);
            HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
            Modifier then2 = modifier.then(MinimumInteractiveModifier.INSTANCE);
            float f = ListTokens.DefaultLeadingSpace;
            long m835DpSizeYgX7TsA = OperationKt.m835DpSizeYgX7TsA(ListTokens.IconSize$2 + f + f, 40.0f);
            FillElement fillElement = SizeKt.FillWholeMaxWidth;
            then = ImageKt.m135clickableO2vRcR0$default(ImageKt.m132backgroundbw27NRU(ClipKt.clip(SizeKt.m235sizeVpY3zN4(then2, DpSize.m749getWidthD9Ej5fM(m835DpSizeYgX7TsA), DpSize.m748getHeightD9Ej5fM(m835DpSizeYgX7TsA)), shape), z ? iconButtonColors.containerColor : iconButtonColors.disabledContainerColor, shape), mutableInteractionSourceImpl, RippleKt.m355rippleH2RKhps$default(false, 0.0f, 7), z, new Role(0), function0, 8).then(new ChildSemanticsNodeElement(new TextKt$$ExternalSyntheticLambda1(11)));
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
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
            }
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(z ? iconButtonColors.contentColor : iconButtonColors.disabledContentColor)), composableLambdaImpl, gapComposer, ((i3 >> 15) & 112) | 8);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MenuKt$$ExternalSyntheticLambda2(modifier, function0, z, shape, iconButtonColors, composableLambdaImpl, i);
        }
    }

    /* renamed from: ModalBottomSheetDialog-sW7UJKQ, reason: not valid java name */
    public static final void m331ModalBottomSheetDialogsW7UJKQ(final Function0 function0, final long j, final ModalBottomSheetProperties modalBottomSheetProperties, Animatable animatable, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        long j2;
        ModalBottomSheetProperties modalBottomSheetProperties2;
        int i3;
        LayoutDirection layoutDirection;
        int i4;
        boolean z;
        boolean z2;
        Object obj;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(766784632);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            j2 = j;
            i2 |= gapComposer.changed(j2) ? 32 : 16;
        } else {
            j2 = j;
        }
        if ((i & 384) == 0) {
            modalBottomSheetProperties2 = modalBottomSheetProperties;
            i2 |= gapComposer.changed(modalBottomSheetProperties2) ? 256 : 128;
        } else {
            modalBottomSheetProperties2 = modalBottomSheetProperties;
        }
        if ((i & 3072) == 0) {
            i2 |= (i & 4096) == 0 ? gapComposer.changed(animatable) : gapComposer.changedInstance(animatable) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 16384 : 8192;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            View view = (View) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalView);
            Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
            LayoutDirection layoutDirection2 = (LayoutDirection) gapComposer.consume(CompositionLocalsKt.LocalLayoutDirection);
            GapComposer.CompositionContextImpl rememberCompositionContext = Updater.rememberCompositionContext(gapComposer);
            MutableState rememberUpdatedState = Updater.rememberUpdatedState(composableLambdaImpl, gapComposer);
            Object[] objArr = new Object[0];
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj2 = Composer.Companion.Empty;
            if (rememberedValue == obj2) {
                i3 = i2;
                rememberedValue = new TextKt$$ExternalSyntheticLambda4(5);
                gapComposer.updateRememberedValue(rememberedValue);
            } else {
                i3 = i2;
            }
            UUID uuid = (UUID) SaverKt.rememberSaveable(objArr, (Function0) rememberedValue, gapComposer, 48);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj2) {
                rememberedValue2 = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            CoroutineScope coroutineScope = (CoroutineScope) rememberedValue2;
            boolean changed = gapComposer.changed(view) | gapComposer.changed(density);
            Object rememberedValue3 = gapComposer.rememberedValue();
            int i5 = 3;
            if (changed || rememberedValue3 == obj2) {
                layoutDirection = layoutDirection2;
                i4 = i3;
                z = false;
                ModalBottomSheetDialogWrapper modalBottomSheetDialogWrapper = new ModalBottomSheetDialogWrapper(function0, modalBottomSheetProperties2, j2, view, layoutDirection, density, uuid, animatable, coroutineScope);
                z2 = true;
                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(-1051373467, new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i5, rememberUpdatedState), true);
                ModalBottomSheetDialogLayout modalBottomSheetDialogLayout = modalBottomSheetDialogWrapper.dialogLayout;
                modalBottomSheetDialogLayout.setParentCompositionContext(rememberCompositionContext);
                modalBottomSheetDialogLayout.content$delegate.setValue(composableLambdaImpl2);
                modalBottomSheetDialogLayout.shouldCreateCompositionOnAttachedToWindow = true;
                modalBottomSheetDialogLayout.createComposition();
                gapComposer.updateRememberedValue(modalBottomSheetDialogWrapper);
                obj = modalBottomSheetDialogWrapper;
            } else {
                layoutDirection = layoutDirection2;
                i4 = i3;
                z2 = true;
                z = false;
                obj = rememberedValue3;
            }
            final ModalBottomSheetDialogWrapper modalBottomSheetDialogWrapper2 = (ModalBottomSheetDialogWrapper) obj;
            boolean changedInstance = gapComposer.changedInstance(modalBottomSheetDialogWrapper2);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue4 == obj2) {
                rememberedValue4 = new DiskLruCache$$ExternalSyntheticLambda0(i5, modalBottomSheetDialogWrapper2);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Updater.DisposableEffect(modalBottomSheetDialogWrapper2, (Function1) rememberedValue4, gapComposer);
            int i6 = i4;
            boolean changedInstance2 = gapComposer.changedInstance(modalBottomSheetDialogWrapper2) | ((i6 & 14) == 4 ? z2 : z) | ((i6 & 896) == 256 ? z2 : z) | ((i6 & 112) == 32 ? z2 : z) | gapComposer.changed(layoutDirection.ordinal());
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue5 == obj2) {
                final LayoutDirection layoutDirection3 = layoutDirection;
                rememberedValue5 = new Function0() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        ModalBottomSheetDialogWrapper.this.m346updateParameters9LQNqLg(function0, modalBottomSheetProperties, j, layoutDirection3);
                        return Unit.INSTANCE;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            Updater.SideEffect((Function0) rememberedValue5, gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ModalBottomSheet_androidKt$$ExternalSyntheticLambda3(function0, j, modalBottomSheetProperties, animatable, composableLambdaImpl, i);
        }
    }

    public static final void OnPlatformWindowBoundsChange(Function0 function0, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1646555525);
        int i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            SoftKeyboardListener((View) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalView), (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity), function0, gapComposer, (i2 << 6) & 896);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0(i, i3, function0);
        }
    }

    /* renamed from: OneRowSnackbar-kKq0p4A, reason: not valid java name */
    public static final void m332OneRowSnackbarkKq0p4A(final ComposableLambdaImpl composableLambdaImpl, Function2 function2, Function2 function22, TextStyle textStyle, final long j, long j2, Composer composer, final int i) {
        Function2 function23;
        long j3;
        TextStyle textStyle2;
        Function2 function24;
        boolean z;
        int i2;
        boolean z2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-931325388);
        int i3 = i | (gapComposer.changedInstance(composableLambdaImpl) ? 4 : 2) | (gapComposer.changedInstance(function2) ? 32 : 16) | (gapComposer.changedInstance(function22) ? 256 : 128) | (gapComposer.changed(textStyle) ? 2048 : 1024) | (gapComposer.changed(j) ? 16384 : 8192) | (gapComposer.changed(j2) ? 131072 : 65536);
        int i4 = 0;
        if (gapComposer.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            float f = function22 == null ? 8.0f : 0.0f;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(companion, 16.0f, 0.0f, f, 0.0f, 10);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new SnackbarKt$OneRowSnackbar$2$1(i4);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m222paddingqDBjuR0$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m380setimpl(gapComposer, measurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$13);
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier m220paddingVpY3zN4$default = OffsetKt.m220paddingVpY3zN4$default(RulerKt.layoutId(companion, "text"), 0.0f, 6.0f, 1);
            BiasAlignment biasAlignment = Alignment.Companion.TopStart;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            int currentCompositeKeyHash2 = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m220paddingVpY3zN4$default);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                Modifier.CC.m(currentCompositeKeyHash2, gapComposer, currentCompositeKeyHash2, composeUiNode$Companion$SetModifier$13);
            }
            Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            Config.CC.m(i3 & 14, composableLambdaImpl, gapComposer, true);
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
                Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                    Modifier.CC.m(currentCompositeKeyHash3, gapComposer, currentCompositeKeyHash3, composeUiNode$Companion$SetModifier$13);
                }
                Updater.m380setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$14);
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
                Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy3, composeUiNode$Companion$SetModifier$1);
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
                if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash4))) {
                    Modifier.CC.m(currentCompositeKeyHash4, gapComposer, currentCompositeKeyHash4, composeUiNode$Companion$SetModifier$13);
                }
                Updater.m380setimpl(gapComposer, materializeModifier4, composeUiNode$Companion$SetModifier$14);
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
            final Function2 function25 = function24;
            final TextStyle textStyle3 = textStyle2;
            final long j4 = j3;
            final Function2 function26 = function23;
            endRestartGroup.block = new Function2(function26, function25, textStyle3, j, j4, i) { // from class: androidx.compose.material3.SnackbarKt$$ExternalSyntheticLambda2
                public final /* synthetic */ Function2 f$1;
                public final /* synthetic */ Function2 f$2;
                public final /* synthetic */ TextStyle f$3;
                public final /* synthetic */ long f$4;
                public final /* synthetic */ long f$5;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    CardKt.m332OneRowSnackbarkKq0p4A(ComposableLambdaImpl.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void OutlinedButton(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, BorderStroke borderStroke, PaddingValues paddingValues, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(399974542);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changed(shape) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changed(buttonColors) ? 16384 : 8192;
        }
        int i3 = i2 | 196608;
        if ((1572864 & i) == 0) {
            i3 |= gapComposer2.changed(borderStroke) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i3 |= gapComposer2.changed(paddingValues) ? 8388608 : 4194304;
        }
        int i4 = i3 | 100663296;
        if ((805306368 & i) == 0) {
            i4 |= gapComposer2.changedInstance(composableLambdaImpl) ? 536870912 : 268435456;
        }
        if (gapComposer2.shouldExecute(i4 & 1, (306783379 & i4) != 306783378)) {
            gapComposer2.startDefaults();
            if ((i & 1) != 0 && !gapComposer2.getDefaultsInvalid()) {
                gapComposer2.skipToGroupEnd();
            }
            gapComposer2.endDefaults();
            gapComposer = gapComposer2;
            Button(function0, modifier, z, shape, buttonColors, null, borderStroke, paddingValues, composableLambdaImpl, gapComposer, i4 & 2147483646, 0);
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda2(function0, modifier, z, shape, buttonColors, borderStroke, paddingValues, composableLambdaImpl, i);
        }
    }

    public static final void OutlinedCard(Function0 function0, Modifier modifier, boolean z, Shape shape, CardColors cardColors, CardElevation cardElevation, BorderStroke borderStroke, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer;
        boolean z2;
        boolean z3;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(1401605899);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 32 : 16;
        }
        int i3 = i2 | 384;
        if ((i & 3072) == 0) {
            i3 |= gapComposer2.changed(shape) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer2.changed(cardColors) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= gapComposer2.changed(cardElevation) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i3 |= gapComposer2.changed(borderStroke) ? 1048576 : 524288;
        }
        int i4 = i3 | 12582912;
        if ((100663296 & i) == 0) {
            i4 |= gapComposer2.changedInstance(composableLambdaImpl) ? 67108864 : 33554432;
        }
        if (gapComposer2.shouldExecute(i4 & 1, (38347923 & i4) != 38347922)) {
            gapComposer2.startDefaults();
            if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                z3 = true;
            } else {
                gapComposer2.skipToGroupEnd();
                z3 = z;
            }
            gapComposer2.endDefaults();
            gapComposer = gapComposer2;
            Card(function0, modifier, z3, shape, cardColors, cardElevation, borderStroke, composableLambdaImpl, gapComposer, i4 & 268435454, 0);
            z2 = z3;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            z2 = z;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda2(function0, modifier, z2, shape, cardColors, cardElevation, borderStroke, composableLambdaImpl, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:97:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void OutlinedTextField(final java.lang.String r37, final kotlin.jvm.functions.Function1 r38, final androidx.compose.ui.Modifier r39, boolean r40, final boolean r41, androidx.compose.ui.text.TextStyle r42, final kotlin.jvm.functions.Function2 r43, kotlin.jvm.functions.Function2 r44, boolean r45, androidx.compose.ui.text.input.VisualTransformation r46, androidx.compose.foundation.text.KeyboardOptions r47, androidx.compose.foundation.text.KeyboardActions r48, final boolean r49, int r50, int r51, androidx.compose.foundation.interaction.MutableInteractionSourceImpl r52, androidx.compose.ui.graphics.Shape r53, androidx.compose.material3.TextFieldColors r54, androidx.compose.runtime.Composer r55, final int r56, final int r57, final int r58, final int r59) {
        /*
            Method dump skipped, instructions count: 772
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.OutlinedTextField(java.lang.String, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, boolean, boolean, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.text.KeyboardOptions, androidx.compose.foundation.text.KeyboardActions, boolean, int, int, androidx.compose.foundation.interaction.MutableInteractionSourceImpl, androidx.compose.ui.graphics.Shape, androidx.compose.material3.TextFieldColors, androidx.compose.runtime.Composer, int, int, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:137:0x0247, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r1.rememberedValue(), java.lang.Integer.valueOf(r9)) == false) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0532, code lost:
    
        if (r1.changedInstance(r0) != false) goto L254;
     */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0580  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0584  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void OutlinedTextFieldLayout(final kotlin.jvm.functions.Function2 r39, kotlin.jvm.functions.Function3 r40, kotlin.jvm.functions.Function2 r41, final kotlin.jvm.functions.Function2 r42, final kotlin.jvm.functions.Function2 r43, final kotlin.jvm.functions.Function2 r44, kotlin.jvm.functions.Function2 r45, final boolean r46, final androidx.compose.material3.TextFieldLabelPosition$Attached r47, final androidx.compose.material3.internal.TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 r48, final kotlin.jvm.functions.Function1 r49, final androidx.compose.runtime.internal.ComposableLambdaImpl r50, kotlin.jvm.functions.Function2 r51, androidx.compose.foundation.layout.PaddingValues r52, androidx.compose.runtime.Composer r53, final int r54, final int r55) {
        /*
            Method dump skipped, instructions count: 1667
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.OutlinedTextFieldLayout(kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.material3.TextFieldLabelPosition$Attached, androidx.compose.material3.internal.TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0, kotlin.jvm.functions.Function1, androidx.compose.runtime.internal.ComposableLambdaImpl, kotlin.jvm.functions.Function2, androidx.compose.foundation.layout.PaddingValues, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void RadioButton(final boolean z, final Function0 function0, Modifier modifier, final boolean z2, RadioButtonColors radioButtonColors, Composer composer, final int i) {
        int i2;
        final Modifier modifier2;
        final RadioButtonColors radioButtonColors2;
        RadioButtonColors radioButtonColors3;
        RadioButtonColors radioButtonColors4;
        Modifier modifier3;
        long Color;
        long Color2;
        Object rememberUpdatedState;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(408580840);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        int i3 = i2 | 384;
        if ((i & 3072) == 0) {
            i3 |= gapComposer.changed(z2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= 8192;
        }
        int i4 = i3 | 196608;
        if (gapComposer.shouldExecute(i4 & 1, (74899 & i4) != 74898)) {
            gapComposer.startDefaults();
            int i5 = i & 1;
            Modifier modifier4 = Modifier.Companion.$$INSTANCE;
            if (i5 == 0 || gapComposer.getDefaultsInvalid()) {
                ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
                RadioButtonColors radioButtonColors5 = colorScheme.defaultRadioButtonColorsCached;
                if (radioButtonColors5 == null) {
                    long fromToken = ColorSchemeKt.fromToken(colorScheme, ListTokens.SelectedIconColor);
                    long fromToken2 = ColorSchemeKt.fromToken(colorScheme, ListTokens.UnselectedIconColor);
                    Color = ColorKt.Color(Color.m487getRedimpl(r3), Color.m486getGreenimpl(r3), Color.m484getBlueimpl(r3), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledSelectedIconColor)));
                    Color2 = ColorKt.Color(Color.m487getRedimpl(r3), Color.m486getGreenimpl(r3), Color.m484getBlueimpl(r3), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledUnselectedIconColor)));
                    radioButtonColors3 = new RadioButtonColors(fromToken, fromToken2, Color, Color2);
                    colorScheme.defaultRadioButtonColorsCached = radioButtonColors3;
                } else {
                    radioButtonColors3 = radioButtonColors5;
                }
                radioButtonColors4 = radioButtonColors3;
                modifier3 = modifier4;
            } else {
                gapComposer.skipToGroupEnd();
                modifier3 = modifier;
                radioButtonColors4 = radioButtonColors;
            }
            gapComposer.endDefaults();
            State m111animateDpAsStateAjpBEmI = AnimateAsStateKt.m111animateDpAsStateAjpBEmI(z ? 6.0f : 0.0f, value(MotionSchemeKeyTokens.FastSpatial, gapComposer), gapComposer, 0, 12);
            radioButtonColors4.getClass();
            long j = (z2 && z) ? radioButtonColors4.selectedColor : (!z2 || z) ? (z2 || !z) ? radioButtonColors4.disabledUnselectedColor : radioButtonColors4.disabledSelectedColor : radioButtonColors4.unselectedColor;
            if (z2) {
                gapComposer.startReplaceGroup(1194696477);
                rememberUpdatedState = SingleValueAnimationKt.m110animateColorAsStateeuL9pac(j, value(MotionSchemeKeyTokens.DefaultEffects, gapComposer), gapComposer);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(1194874138);
                rememberUpdatedState = Updater.rememberUpdatedState(new Color(j), gapComposer);
                gapComposer.end(false);
            }
            Object obj = rememberUpdatedState;
            Modifier m258selectableO2vRcR0 = function0 != null ? SelectableKt.m258selectableO2vRcR0(modifier4, z, null, RippleKt.m355rippleH2RKhps$default(false, ListTokens.StateLayerSize / 2.0f, 4), z2, new Role(3), function0) : modifier4;
            if (function0 != null) {
                HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
                modifier4 = MinimumInteractiveModifier.INSTANCE;
            }
            Modifier m230requiredSize3ABfNKs = SizeKt.m230requiredSize3ABfNKs(OffsetKt.m218padding3ABfNKs(SizeKt.wrapContentSize$default(modifier3.then(modifier4).then(m258selectableO2vRcR0), 2), 2.0f), ListTokens.IconSize$1);
            boolean changed = gapComposer.changed(obj) | gapComposer.changed(m111animateDpAsStateAjpBEmI);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new Navigator$$ExternalSyntheticLambda1(17, obj, m111animateDpAsStateAjpBEmI);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ImageKt.Canvas(0, gapComposer, m230requiredSize3ABfNKs, (Function1) rememberedValue);
            modifier2 = modifier3;
            radioButtonColors2 = radioButtonColors4;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            radioButtonColors2 = radioButtonColors;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.RadioButtonKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    CardKt.RadioButton(z, function0, modifier2, z2, radioButtonColors2, (Composer) obj2, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: Scaffold-TvnljyQ, reason: not valid java name */
    public static final void m333ScaffoldTvnljyQ(final Modifier modifier, final Function2 function2, final Function2 function22, final Function2 function23, final Function2 function24, final int i, long j, long j2, WindowInsets windowInsets, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        int i3;
        Function2 function25;
        Function2 function26;
        int i4;
        GapComposer gapComposer;
        final long j3;
        final long j4;
        final WindowInsets windowInsets2;
        long j5;
        long j6;
        WindowInsets unionInsets;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-1211482744);
        if ((i2 & 6) == 0) {
            i3 = (gapComposer2.changed(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer2.changedInstance(function2) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            function25 = function22;
            i3 |= gapComposer2.changedInstance(function25) ? 256 : 128;
        } else {
            function25 = function22;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposer2.changedInstance(function23) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            function26 = function24;
            i3 |= gapComposer2.changedInstance(function26) ? 16384 : 8192;
        } else {
            function26 = function24;
        }
        if ((196608 & i2) == 0) {
            i4 = i;
            i3 |= gapComposer2.changed(i4) ? 131072 : 65536;
        } else {
            i4 = i;
        }
        if ((1572864 & i2) == 0) {
            i3 |= 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= 4194304;
        }
        if ((100663296 & i2) == 0) {
            i3 |= 33554432;
        }
        if ((805306368 & i2) == 0) {
            i3 |= gapComposer2.changedInstance(composableLambdaImpl) ? 536870912 : 268435456;
        }
        if (gapComposer2.shouldExecute(i3 & 1, (306783379 & i3) != 306783378)) {
            gapComposer2.startDefaults();
            if ((i2 & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                long j7 = ((ColorScheme) gapComposer2.consume(ColorSchemeKt.LocalColorScheme)).background;
                long m341contentColorForek8zF_U = ColorSchemeKt.m341contentColorForek8zF_U(j7, gapComposer2);
                WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
                j5 = j7;
                j6 = m341contentColorForek8zF_U;
                unionInsets = new UnionInsets(FlowRowOverflow.current(gapComposer2).systemBars, FlowRowOverflow.current(gapComposer2).displayCutout);
            } else {
                gapComposer2.skipToGroupEnd();
                j5 = j;
                j6 = j2;
                unionInsets = windowInsets;
            }
            gapComposer2.endDefaults();
            boolean changed = gapComposer2.changed(unionInsets);
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                rememberedValue = new MutableWindowInsets(unionInsets);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            final MutableWindowInsets mutableWindowInsets = (MutableWindowInsets) rememberedValue;
            boolean changed2 = gapComposer2.changed(mutableWindowInsets) | gapComposer2.changed(unionInsets);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (changed2 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new Navigator$$ExternalSyntheticLambda1(18, mutableWindowInsets, unionInsets);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            Modifier onConsumedWindowInsetsChanged = OffsetKt.onConsumedWindowInsetsChanged(modifier, (Function1) rememberedValue2);
            final Function2 function27 = function25;
            final Function2 function28 = function26;
            final int i5 = i4;
            gapComposer = gapComposer2;
            SurfaceKt.m357SurfaceT9BRK9s(onConsumedWindowInsetsChanged, null, j5, j6, 0.0f, 0.0f, null, Expect_jvmKt.rememberComposableLambda(848889571, new Function2() { // from class: androidx.compose.material3.ScaffoldKt$Scaffold$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Number) obj2).intValue();
                    GapComposer gapComposer3 = (GapComposer) composer2;
                    if (gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        CardKt.m334ScaffoldLayoutFMILGgc(i5, function2, composableLambdaImpl, function23, function28, mutableWindowInsets, function27, gapComposer3, 0);
                    } else {
                        gapComposer3.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer2), gapComposer, 12582912, 114);
            windowInsets2 = unionInsets;
            j3 = j5;
            j4 = j6;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            j3 = j;
            j4 = j2;
            windowInsets2 = windowInsets;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                    CardKt.m333ScaffoldTvnljyQ(Modifier.this, function2, function22, function23, function24, i, j3, j4, windowInsets2, composableLambdaImpl, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: ScaffoldLayout-FMILGgc, reason: not valid java name */
    public static final void m334ScaffoldLayoutFMILGgc(int i, Function2 function2, ComposableLambdaImpl composableLambdaImpl, Function2 function22, Function2 function23, WindowInsets windowInsets, Function2 function24, Composer composer, int i2) {
        int i3;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-280287501);
        int i6 = i2 | (gapComposer.changed(i) ? 4 : 2) | (gapComposer.changedInstance(function2) ? 32 : 16) | (gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128) | (gapComposer.changedInstance(function22) ? 2048 : 1024) | (gapComposer.changedInstance(function23) ? 16384 : 8192) | (gapComposer.changed(windowInsets) ? 131072 : 65536) | (gapComposer.changedInstance(function24) ? 1048576 : 524288);
        if (gapComposer.shouldExecute(i6 & 1, (599187 & i6) != 599186)) {
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (rememberedValue == obj) {
                rememberedValue = new ScaffoldKt$ScaffoldLayout$contentPadding$1$1();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1 = (ScaffoldKt$ScaffoldLayout$contentPadding$1$1) rememberedValue;
            boolean z = (i6 & 112) == 32;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (z || rememberedValue2 == obj) {
                rememberedValue2 = new ComposableLambdaImpl(605195056, new AlertDialogKt$AlertDialogContent$1$1$1$1(5, function2), true);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Function2 function25 = (Function2) rememberedValue2;
            boolean z2 = (i6 & 7168) == 2048;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z2 || rememberedValue3 == obj) {
                rememberedValue3 = new ComposableLambdaImpl(418899191, new AlertDialogKt$AlertDialogContent$1$1$1$1(4, function22), true);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Function2 function26 = (Function2) rememberedValue3;
            boolean z3 = (57344 & i6) == 16384;
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (z3 || rememberedValue4 == obj) {
                rememberedValue4 = new ComposableLambdaImpl(338600263, new AlertDialogKt$AlertDialogContent$1$1$1$1(3, function23), true);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Function2 function27 = (Function2) rememberedValue4;
            boolean z4 = (i6 & 896) == 256;
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (z4 || rememberedValue5 == obj) {
                i3 = i6;
                rememberedValue5 = new ComposableLambdaImpl(-1776388365, new ButtonKt$Button$2.AnonymousClass1(composableLambdaImpl, scaffoldKt$ScaffoldLayout$contentPadding$1$1), true);
                gapComposer.updateRememberedValue(rememberedValue5);
            } else {
                i3 = i6;
            }
            Function2 function28 = (Function2) rememberedValue5;
            boolean z5 = (i3 & 3670016) == 1048576;
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (z5 || rememberedValue6 == obj) {
                rememberedValue6 = new ComposableLambdaImpl(-1731662488, new AlertDialogKt$AlertDialogContent$1$1$1$1(2, function24), true);
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
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda1(i, function2, composableLambdaImpl, function22, function23, windowInsets, function24, i2);
        }
    }

    public static final void SegmentedButton(final SingleChoiceSegmentedButtonScopeWrapper singleChoiceSegmentedButtonScopeWrapper, final boolean z, final Function0 function0, final Shape shape, Modifier modifier, boolean z2, SegmentedButtonColors segmentedButtonColors, BorderStroke borderStroke, PaddingValues paddingValues, Function2 function2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        final Modifier modifier2;
        final boolean z3;
        final SegmentedButtonColors segmentedButtonColors2;
        final BorderStroke borderStroke2;
        final PaddingValues paddingValues2;
        final Function2 function22;
        int i3;
        int i4;
        Modifier modifier3;
        Function2 function23;
        PaddingValues paddingValues3;
        boolean z4;
        BorderStroke borderStroke3;
        SegmentedButtonColors segmentedButtonColors3;
        long Color;
        long Color2;
        long Color3;
        long Color4;
        int i5;
        long j;
        boolean z5;
        long j2;
        SegmentedButtonColors segmentedButtonColors4;
        long j3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1532041126);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(singleChoiceSegmentedButtonScopeWrapper) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(z) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(shape) ? 2048 : 1024;
        }
        int i6 = 221184 | i2;
        if ((1572864 & i) == 0) {
            i6 = 745472 | i2;
        }
        if ((12582912 & i) == 0) {
            i6 |= 4194304;
        }
        int i7 = 905969664 | i6;
        if (gapComposer.shouldExecute(i7 & 1, (306783379 & i7) != 306783378)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                SegmentedButtonDefaults segmentedButtonDefaults = SegmentedButtonDefaults.INSTANCE;
                ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
                SegmentedButtonColors segmentedButtonColors5 = colorScheme.defaultSegmentedButtonColorsCached;
                if (segmentedButtonColors5 == null) {
                    ColorSchemeKeyTokens colorSchemeKeyTokens = ListTokens.SelectedContainerColor;
                    long fromToken = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens);
                    long fromToken2 = ColorSchemeKt.fromToken(colorScheme, ListTokens.SelectedLabelTextColor);
                    ColorSchemeKeyTokens colorSchemeKeyTokens2 = ListTokens.OutlineColor$2;
                    long fromToken3 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2);
                    long j4 = Color.Transparent;
                    long fromToken4 = ColorSchemeKt.fromToken(colorScheme, ListTokens.UnselectedLabelTextColor);
                    long fromToken5 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2);
                    long fromToken6 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens);
                    ColorSchemeKeyTokens colorSchemeKeyTokens3 = ListTokens.DisabledLabelTextColor$2;
                    long fromToken7 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens3);
                    float f = ListTokens.DisabledLabelTextOpacity$2;
                    Color = ColorKt.Color(Color.m487getRedimpl(fromToken7), Color.m486getGreenimpl(fromToken7), Color.m484getBlueimpl(fromToken7), f, Color.m485getColorSpaceimpl(fromToken7));
                    long fromToken8 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2);
                    i3 = -33030145;
                    float f2 = ListTokens.DisabledOutlineOpacity;
                    Color2 = ColorKt.Color(Color.m487getRedimpl(fromToken8), Color.m486getGreenimpl(fromToken8), Color.m484getBlueimpl(fromToken8), f2, Color.m485getColorSpaceimpl(fromToken8));
                    Color3 = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens3)));
                    Color4 = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), f2, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2)));
                    SegmentedButtonColors segmentedButtonColors6 = new SegmentedButtonColors(fromToken, fromToken2, fromToken3, j4, fromToken4, fromToken5, fromToken6, Color, Color2, j4, Color3, Color4);
                    colorScheme.defaultSegmentedButtonColorsCached = segmentedButtonColors6;
                    segmentedButtonColors5 = segmentedButtonColors6;
                } else {
                    i3 = -33030145;
                }
                BorderStroke m131BorderStrokecXLIe8U = ImageKt.m131BorderStrokecXLIe8U(SegmentedButtonDefaults.BorderWidth, z ? segmentedButtonColors5.activeBorderColor : !z ? segmentedButtonColors5.inactiveBorderColor : segmentedButtonColors5.disabledInactiveBorderColor);
                PaddingValuesImpl paddingValuesImpl = SegmentedButtonDefaults.ContentPadding;
                ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-643804033, new Function2() { // from class: androidx.compose.material3.SegmentedButtonKt$SegmentedButton$4
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int intValue = ((Number) obj2).intValue();
                        GapComposer gapComposer2 = (GapComposer) composer2;
                        if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                            SegmentedButtonDefaults.INSTANCE.Icon(z, null, gapComposer2, 3072);
                        } else {
                            gapComposer2.skipToGroupEnd();
                        }
                        return Unit.INSTANCE;
                    }
                }, gapComposer);
                i4 = i7 & i3;
                modifier3 = Modifier.Companion.$$INSTANCE;
                function23 = rememberComposableLambda;
                paddingValues3 = paddingValuesImpl;
                z4 = true;
                SegmentedButtonColors segmentedButtonColors7 = segmentedButtonColors5;
                borderStroke3 = m131BorderStrokecXLIe8U;
                segmentedButtonColors3 = segmentedButtonColors7;
            } else {
                gapComposer.skipToGroupEnd();
                z4 = z2;
                segmentedButtonColors3 = segmentedButtonColors;
                borderStroke3 = borderStroke;
                paddingValues3 = paddingValues;
                function23 = function2;
                i4 = i7 & (-33030145);
                modifier3 = modifier;
            }
            gapComposer.endDefaults();
            gapComposer.startReplaceGroup(-1579561419);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new MutableInteractionSourceImpl();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableInteractionSourceImpl mutableInteractionSourceImpl = (MutableInteractionSourceImpl) rememberedValue;
            gapComposer.end(false);
            segmentedButtonColors3.getClass();
            if (z4 && z) {
                i5 = i4;
                j = segmentedButtonColors3.activeContainerColor;
            } else {
                i5 = i4;
                j = (!z4 || z) ? (z4 || !z) ? segmentedButtonColors3.disabledInactiveContainerColor : segmentedButtonColors3.disabledActiveContainerColor : segmentedButtonColors3.inactiveContainerColor;
            }
            if (z4 && z) {
                z5 = z4;
                j2 = segmentedButtonColors3.activeContentColor;
            } else {
                z5 = z4;
                j2 = (!z5 || z) ? (z5 || !z) ? segmentedButtonColors3.disabledInactiveContentColor : segmentedButtonColors3.disabledActiveContentColor : segmentedButtonColors3.inactiveContentColor;
            }
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new ParcelableSnapshotMutableIntState(0);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) rememberedValue2;
            boolean changed = gapComposer.changed(mutableInteractionSourceImpl);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed || rememberedValue3 == neverEqualPolicy) {
                segmentedButtonColors4 = segmentedButtonColors3;
                j3 = j2;
                rememberedValue3 = new RippleNode$onAttach$1(mutableInteractionSourceImpl, parcelableSnapshotMutableIntState, null, 27);
                gapComposer.updateRememberedValue(rememberedValue3);
            } else {
                segmentedButtonColors4 = segmentedButtonColors3;
                j3 = j2;
            }
            Updater.LaunchedEffect(gapComposer, mutableInteractionSourceImpl, (Function2) rememberedValue3);
            Modifier m224defaultMinSizeVpY3zN4 = SizeKt.m224defaultMinSizeVpY3zN4(RulerKt.layout(singleChoiceSegmentedButtonScopeWrapper.weight(modifier3, 1.0f), new SegmentedButtonKt$$ExternalSyntheticLambda3(0, parcelableSnapshotMutableIntState, z)), ButtonDefaults.MinWidth, ButtonDefaults.MinHeight);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = new TextKt$$ExternalSyntheticLambda1(13);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            boolean z6 = z5;
            PaddingValues paddingValues4 = paddingValues3;
            Function2 function24 = function23;
            SurfaceKt.m358Surfaced85dljk(z, function0, SemanticsModifierKt.semantics(m224defaultMinSizeVpY3zN4, false, (Function1) rememberedValue4), z6, shape, j, j3, borderStroke3, mutableInteractionSourceImpl, Expect_jvmKt.rememberComposableLambda(-1208080836, new TooltipKt$TooltipBox$3(2, composableLambdaImpl, function23, paddingValues3), gapComposer), gapComposer, ((i5 >> 3) & 126) | ((i5 >> 6) & 7168) | (57344 & (i5 << 3)), 384);
            z3 = z6;
            borderStroke2 = borderStroke3;
            segmentedButtonColors2 = segmentedButtonColors4;
            function22 = function24;
            paddingValues2 = paddingValues4;
            modifier2 = modifier3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            z3 = z2;
            segmentedButtonColors2 = segmentedButtonColors;
            borderStroke2 = borderStroke;
            paddingValues2 = paddingValues;
            function22 = function2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    CardKt.SegmentedButton(SingleChoiceSegmentedButtonScopeWrapper.this, z, function0, shape, modifier2, z3, segmentedButtonColors2, borderStroke2, paddingValues2, function22, composableLambdaImpl, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void SegmentedButtonContent(Function2 function2, ComposableLambdaImpl composableLambdaImpl, PaddingValues paddingValues, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1069265073);
        int i2 = (gapComposer.changedInstance(function2) ? 4 : 2) | i | (gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16) | (gapComposer.changed(paddingValues) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            BiasAlignment biasAlignment = Alignment.Companion.Center;
            Modifier padding = OffsetKt.padding(Modifier.Companion.$$INSTANCE, paddingValues);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
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
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
            }
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            TextKt.ProvideTextStyle(TypographyKt.getValue(ListTokens.LabelTextFont, gapComposer), Expect_jvmKt.rememberComposableLambda(-1372614088, new TooltipKt$TooltipBox$3(3, composableLambdaImpl, function2, value(MotionSchemeKeyTokens.FastSpatial, gapComposer)), gapComposer), gapComposer, 48);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SegmentedButtonKt$$ExternalSyntheticLambda4(function2, composableLambdaImpl, paddingValues, i, 0);
        }
    }

    /* renamed from: SingleChoiceSegmentedButtonRow-uFdPcIQ, reason: not valid java name */
    public static final void m335SingleChoiceSegmentedButtonRowuFdPcIQ(final Modifier modifier, final float f, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2041406825);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = i2 | 48;
        if ((i & 384) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            f = SegmentedButtonDefaults.BorderWidth;
            Modifier width = OffsetKt.width(SizeKt.m225defaultMinSizeVpY3zN4$default(SemanticsModifierKt.semantics(modifier, false, new ScrollState$$ExternalSyntheticLambda4(16)), 0.0f, 40.0f, 1), IntrinsicSize.Min);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(-f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), Alignment.Companion.CenterVertically, gapComposer, 48);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, width);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
            }
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new SingleChoiceSegmentedButtonScopeWrapper();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            composableLambdaImpl.invoke((SingleChoiceSegmentedButtonScopeWrapper) rememberedValue, gapComposer, Integer.valueOf(((i3 >> 3) & 112) | 6));
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i | 1);
                    CardKt.m335SingleChoiceSegmentedButtonRowuFdPcIQ(Modifier.this, f, composableLambdaImpl, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: Snackbar-sDKtq54, reason: not valid java name */
    public static final void m336SnackbarsDKtq54(SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl, final Modifier modifier, final Shape shape, final long j, final long j2, final long j3, final long j4, final long j5, Composer composer, final int i) {
        final SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl2;
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(274621471);
        if ((i & 6) == 0) {
            snackbarHostState$SnackbarDataImpl2 = snackbarHostState$SnackbarDataImpl;
            i2 = (gapComposer.changed(snackbarHostState$SnackbarDataImpl2) ? 4 : 2) | i;
        } else {
            snackbarHostState$SnackbarDataImpl2 = snackbarHostState$SnackbarDataImpl;
            i2 = i;
        }
        int i3 = i2 | 432;
        if ((i & 3072) == 0) {
            i3 = i2 | 1456;
        }
        if ((i & 24576) == 0) {
            i3 |= 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= 65536;
        }
        if ((1572864 & i) == 0) {
            i3 |= 524288;
        }
        if ((12582912 & i) == 0) {
            i3 |= 4194304;
        }
        if ((100663296 & i) == 0) {
            i3 |= 33554432;
        }
        if (!gapComposer.shouldExecute(i3 & 1, (38347923 & i3) != 38347922)) {
            gapComposer.skipToGroupEnd();
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new Function2(snackbarHostState$SnackbarDataImpl2, modifier, shape, j, j2, j3, j4, j5, i) { // from class: androidx.compose.material3.SnackbarKt$$ExternalSyntheticLambda0
                    public final /* synthetic */ Modifier f$1;
                    public final /* synthetic */ Shape f$3;
                    public final /* synthetic */ long f$4;
                    public final /* synthetic */ long f$5;
                    public final /* synthetic */ long f$6;
                    public final /* synthetic */ long f$7;
                    public final /* synthetic */ long f$8;
                    public final /* synthetic */ int f$9;

                    {
                        this.f$1 = modifier;
                        this.f$3 = shape;
                        this.f$4 = j;
                        this.f$5 = j2;
                        this.f$6 = j3;
                        this.f$7 = j4;
                        this.f$8 = j5;
                        this.f$9 = i;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int updateChangedFlags = Updater.updateChangedFlags(this.f$9 | 1);
                        CardKt.m336SnackbarsDKtq54(null, this.f$1, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, this.f$8, (Composer) obj, updateChangedFlags);
                        return Unit.INSTANCE;
                    }
                };
                return;
            }
            return;
        }
        gapComposer.startDefaults();
        if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
            ShapesKt.getValue(ListTokens.ContainerShape$7, gapComposer);
            ColorSchemeKt.getValue(ListTokens.ContainerColor$10, gapComposer);
            ColorSchemeKt.getValue(ListTokens.SupportingTextColor$2, gapComposer);
            ColorSchemeKeyTokens colorSchemeKeyTokens = ListTokens.ActionLabelTextColor$1;
            ColorSchemeKt.getValue(colorSchemeKeyTokens, gapComposer);
            ColorSchemeKt.getValue(colorSchemeKeyTokens, gapComposer);
            ColorSchemeKt.getValue(ListTokens.IconColor$1, gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        gapComposer.endDefaults();
        snackbarHostState$SnackbarDataImpl2.getClass();
        throw null;
    }

    public static final void SnackbarHost(PreviewView.AnonymousClass1 anonymousClass1, Modifier modifier, Function3 function3, Composer composer, int i) {
        int i2;
        ParcelableSnapshotMutableState parcelableSnapshotMutableState = (ParcelableSnapshotMutableState) anonymousClass1.this$0;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1077081618);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(anonymousClass1) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        int i3 = i2 | 384;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            function3 = ComposableSingletons$SnackbarHostKt.f10lambda$1548712596;
            SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl = (SnackbarHostState$SnackbarDataImpl) parcelableSnapshotMutableState.getValue();
            AccessibilityManager accessibilityManager = (AccessibilityManager) gapComposer.consume(CompositionLocalsKt.LocalAccessibilityManager);
            boolean changed = gapComposer.changed(snackbarHostState$SnackbarDataImpl) | gapComposer.changedInstance(accessibilityManager);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new ThumbNode$onAttach$1(snackbarHostState$SnackbarDataImpl, accessibilityManager, (Continuation) null);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Updater.LaunchedEffect(gapComposer, snackbarHostState$SnackbarDataImpl, (Function2) rememberedValue);
            FadeInFadeOutWithScale((SnackbarHostState$SnackbarDataImpl) parcelableSnapshotMutableState.getValue(), modifier, gapComposer, i3 & 1008);
        } else {
            gapComposer.skipToGroupEnd();
        }
        Function3 function32 = function3;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(anonymousClass1, modifier, function32, i, 10);
        }
    }

    public static final void SoftKeyboardListener(View view, Density density, Function0 function0, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1319522472);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(view) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(density) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            boolean changedInstance = gapComposer.changedInstance(view) | ((i2 & 896) == 256);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new Navigator$$ExternalSyntheticLambda1(14, view, function0);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Updater.DisposableEffect(view, density, (Function1) rememberedValue, gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3((Object) view, (Object) density, function0, i, 9);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void TextButton(kotlin.jvm.functions.Function0 r21, androidx.compose.ui.Modifier r22, boolean r23, androidx.compose.ui.graphics.Shape r24, androidx.compose.material3.ButtonColors r25, androidx.compose.foundation.layout.PaddingValues r26, androidx.compose.runtime.internal.ComposableLambdaImpl r27, androidx.compose.runtime.Composer r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.TextButton(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, androidx.compose.material3.ButtonColors, androidx.compose.foundation.layout.PaddingValues, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void TriStateCheckbox(ToggleableState toggleableState, Function0 function0, Stroke stroke, Stroke stroke2, Modifier modifier, CheckboxColors checkboxColors, Composer composer, int i) {
        int i2;
        ToggleableState toggleableState2;
        Stroke stroke3;
        CheckboxColors checkboxColors2;
        Stroke stroke4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-406243761);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(toggleableState.ordinal()) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(stroke) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(stroke2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(modifier) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changed(true) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changed(checkboxColors) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= gapComposer.changed((Object) null) ? 8388608 : 4194304;
        }
        if (gapComposer.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            Modifier modifier2 = Modifier.Companion.$$INSTANCE;
            Modifier m262triStateToggleableO2vRcR0 = function0 != null ? SelectableKt.m262triStateToggleableO2vRcR0(toggleableState, RippleKt.m355rippleH2RKhps$default(false, CheckboxTokens.StateLayerSize / 2.0f, 4), new Role(1), function0) : modifier2;
            if (function0 != null) {
                HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
                modifier2 = MinimumInteractiveModifier.INSTANCE;
            }
            Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(modifier.then(modifier2).then(m262triStateToggleableO2vRcR0), 2.0f);
            int i3 = ((i2 >> 15) & 14) | ((i2 << 3) & 112) | ((i2 >> 9) & 7168);
            int i4 = i2 << 6;
            int i5 = i3 | (57344 & i4) | (i4 & 458752);
            toggleableState2 = toggleableState;
            stroke3 = stroke2;
            CheckboxImpl(toggleableState2, m218padding3ABfNKs, checkboxColors, stroke, stroke3, gapComposer, i5);
            checkboxColors2 = checkboxColors;
            stroke4 = stroke;
        } else {
            toggleableState2 = toggleableState;
            stroke3 = stroke2;
            checkboxColors2 = checkboxColors;
            stroke4 = stroke;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda1(toggleableState2, function0, stroke4, stroke3, modifier, checkboxColors2, i);
        }
    }

    /* renamed from: VerticalDivider-9IZ8Weo, reason: not valid java name */
    public static final void m337VerticalDivider9IZ8Weo(float f, int i, long j, Composer composer, Modifier modifier) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1534852205);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(f) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(j) ? 256 : 128;
        }
        boolean z = true;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            Modifier m238width3ABfNKs = SizeKt.m238width3ABfNKs(modifier.then(SizeKt.FillWholeMaxHeight), f);
            boolean z2 = (i2 & 112) == 32;
            if ((((i2 & 896) ^ 384) <= 256 || !gapComposer.changed(j)) && (i2 & 384) != 256) {
                z = false;
            }
            boolean z3 = z2 | z;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z3 || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new DividerKt$$ExternalSyntheticLambda0(f, 0, j);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ImageKt.Canvas(0, gapComposer, m238width3ABfNKs, (Function1) rememberedValue);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new DividerKt$$ExternalSyntheticLambda1(modifier, f, j, i, 0);
        }
    }

    public static IconButtonColors iconButtonColors(Composer composer) {
        IconButtonColors iconButtonColors;
        long Color;
        long Color2;
        float f = ListTokens.DisabledOpacity$1;
        GapComposer gapComposer = (GapComposer) composer;
        long j = ((Color) gapComposer.consume(ContentColorKt.LocalContentColor)).value;
        ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
        IconButtonColors iconButtonColors2 = colorScheme.defaultIconButtonColorsCached;
        if (iconButtonColors2 == null) {
            long j2 = Color.Transparent;
            Color2 = ColorKt.Color(Color.m487getRedimpl(j), Color.m486getGreenimpl(j), Color.m484getBlueimpl(j), f, Color.m485getColorSpaceimpl(j));
            iconButtonColors = new IconButtonColors(j2, j, j2, Color2);
            colorScheme.defaultIconButtonColorsCached = iconButtonColors;
        } else {
            iconButtonColors = iconButtonColors2;
        }
        if (Color.m482equalsimpl0(iconButtonColors.contentColor, j)) {
            return iconButtonColors;
        }
        Color = ColorKt.Color(Color.m487getRedimpl(j), Color.m486getGreenimpl(j), Color.m484getBlueimpl(j), f, Color.m485getColorSpaceimpl(j));
        return iconButtonColors.m343copyjRlVdoo(iconButtonColors.containerColor, j, iconButtonColors.disabledContainerColor, Color);
    }

    /* renamed from: isDark-8_81llA, reason: not valid java name */
    public static final boolean m338isDark8_81llA(long j) {
        if (Color.m482equalsimpl0(j, Color.Transparent)) {
            return false;
        }
        ColorSpace m485getColorSpaceimpl = Color.m485getColorSpaceimpl(j);
        if (!Illuminant.m517equalsimpl0(m485getColorSpaceimpl.model, 12884901888L)) {
            InlineClassHelperKt.throwIllegalArgumentException("The specified color must be encoded in an RGB color space. The supplied color space is " + ((Object) Illuminant.m518toStringimpl(m485getColorSpaceimpl.model)));
        }
        Rgb$$ExternalSyntheticLambda0 rgb$$ExternalSyntheticLambda0 = ((Rgb) m485getColorSpaceimpl).eotfFunc;
        float invoke = (float) ((rgb$$ExternalSyntheticLambda0.invoke(Color.m484getBlueimpl(j)) * 0.0722d) + (rgb$$ExternalSyntheticLambda0.invoke(Color.m486getGreenimpl(j)) * 0.7152d) + (rgb$$ExternalSyntheticLambda0.invoke(Color.m487getRedimpl(j)) * 0.2126d));
        if (invoke < 0.0f) {
            invoke = 0.0f;
        }
        if (invoke > 1.0f) {
            invoke = 1.0f;
        }
        return ((double) invoke) <= 0.5d;
    }

    /* renamed from: topAppBarColors-5tl4gsc, reason: not valid java name */
    public static TopAppBarColors m339topAppBarColors5tl4gsc(long j, Composer composer) {
        long j2 = Color.Unspecified;
        ColorScheme colorScheme = (ColorScheme) ((GapComposer) composer).consume(ColorSchemeKt.LocalColorScheme);
        TopAppBarColors topAppBarColors = colorScheme.defaultTopAppBarColorsCached;
        if (topAppBarColors == null) {
            TopAppBarColors topAppBarColors2 = new TopAppBarColors(ColorSchemeKt.fromToken(colorScheme, ListTokens.ContainerColor), ColorSchemeKt.fromToken(colorScheme, ListTokens.OnScrollContainerColor), ColorSchemeKt.fromToken(colorScheme, ListTokens.LeadingIconColor), ColorSchemeKt.fromToken(colorScheme, ListTokens.TitleColor), ColorSchemeKt.fromToken(colorScheme, ListTokens.TrailingIconColor), ColorSchemeKt.fromToken(colorScheme, ListTokens.SubtitleColor));
            colorScheme.defaultTopAppBarColorsCached = topAppBarColors2;
            topAppBarColors = topAppBarColors2;
        }
        long j3 = j != 16 ? j : topAppBarColors.containerColor;
        long j4 = j2 != 16 ? j2 : topAppBarColors.scrolledContainerColor;
        long j5 = j2 != 16 ? j2 : topAppBarColors.navigationIconContentColor;
        long j6 = j2 != 16 ? j2 : topAppBarColors.titleContentColor;
        long j7 = j2 != 16 ? j2 : topAppBarColors.actionIconContentColor;
        if (j2 == 16) {
            j2 = topAppBarColors.subtitleContentColor;
        }
        return new TopAppBarColors(j3, j4, j5, j6, j7, j2);
    }

    public static final SpringSpec value(MotionSchemeKeyTokens motionSchemeKeyTokens, Composer composer) {
        MotionScheme$StandardMotionSchemeImpl motionScheme$StandardMotionSchemeImpl = (MotionScheme$StandardMotionSchemeImpl) ((GapComposer) composer).consume(MaterialThemeKt._localMotionScheme);
        int ordinal = motionSchemeKeyTokens.ordinal();
        if (ordinal == 0) {
            motionScheme$StandardMotionSchemeImpl.getClass();
            SpringSpec springSpec = MotionScheme$StandardMotionSchemeImpl.defaultSpatialSpec;
            springSpec.getClass();
            return springSpec;
        }
        if (ordinal == 1) {
            motionScheme$StandardMotionSchemeImpl.getClass();
            SpringSpec springSpec2 = MotionScheme$StandardMotionSchemeImpl.fastSpatialSpec;
            springSpec2.getClass();
            return springSpec2;
        }
        if (ordinal == 2) {
            motionScheme$StandardMotionSchemeImpl.getClass();
            SpringSpec springSpec3 = MotionScheme$StandardMotionSchemeImpl.slowSpatialSpec;
            springSpec3.getClass();
            return springSpec3;
        }
        if (ordinal == 3) {
            motionScheme$StandardMotionSchemeImpl.getClass();
            SpringSpec springSpec4 = MotionScheme$StandardMotionSchemeImpl.defaultEffectsSpec;
            springSpec4.getClass();
            return springSpec4;
        }
        if (ordinal == 4) {
            motionScheme$StandardMotionSchemeImpl.getClass();
            SpringSpec springSpec5 = MotionScheme$StandardMotionSchemeImpl.fastEffectsSpec;
            springSpec5.getClass();
            return springSpec5;
        }
        if (ordinal != 5) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return null;
        }
        motionScheme$StandardMotionSchemeImpl.getClass();
        SpringSpec springSpec6 = MotionScheme$StandardMotionSchemeImpl.slowEffectsSpec;
        springSpec6.getClass();
        return springSpec6;
    }

    public static final void OutlinedTextField(final TextFieldValue textFieldValue, final Function1 function1, final Modifier modifier, final boolean z, TextStyle textStyle, final Function2 function2, final boolean z2, VisualTransformation visualTransformation, final KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, final boolean z3, int i, int i2, Shape shape, TextFieldColors textFieldColors, Composer composer, final int i3, final int i4) {
        final TextFieldValue textFieldValue2;
        int i5;
        Function1 function12;
        Modifier modifier2;
        final TextStyle textStyle2;
        final VisualTransformation visualTransformation2;
        final KeyboardActions keyboardActions2;
        final int i6;
        final int i7;
        final Shape shape2;
        final TextFieldColors textFieldColors2;
        TextStyle textStyle3;
        final TextFieldColors textFieldColors3;
        Shape shape3;
        final VisualTransformation visualTransformation3;
        long j;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2057288437);
        if ((i3 & 6) == 0) {
            textFieldValue2 = textFieldValue;
            i5 = (gapComposer.changed(textFieldValue2) ? 4 : 2) | i3;
        } else {
            textFieldValue2 = textFieldValue;
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            function12 = function1;
            i5 |= gapComposer.changedInstance(function12) ? 32 : 16;
        } else {
            function12 = function1;
        }
        if ((i3 & 384) == 0) {
            modifier2 = modifier;
            i5 |= gapComposer.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposer.changed(z) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposer.changed(false) ? 16384 : 8192;
        }
        if ((i3 & 196608) == 0) {
            i5 |= 65536;
        }
        if ((i3 & 1572864) == 0) {
            i5 |= gapComposer.changedInstance(function2) ? 1048576 : 524288;
        }
        int i8 = i5 | 113246208;
        if ((i3 & 805306368) == 0) {
            i8 |= gapComposer.changedInstance(null) ? 536870912 : 268435456;
        }
        int i9 = i4 | 438;
        if ((i4 & 3072) == 0) {
            i9 |= gapComposer.changed(z2) ? 2048 : 1024;
        }
        int i10 = i9 | 24576;
        if ((i4 & 196608) == 0) {
            i10 |= gapComposer.changed(keyboardOptions) ? 131072 : 65536;
        }
        int i11 = i10 | 1572864;
        if ((12582912 & i4) == 0) {
            i11 |= gapComposer.changed(z3) ? 8388608 : 4194304;
        }
        if ((100663296 & i4) == 0) {
            i11 |= 33554432;
        }
        int i12 = 1;
        if (gapComposer.shouldExecute(i8 & 1, ((i8 & 306783379) == 306783378 && ((i11 | 805306368) & 306783379) == 306783378) ? false : true)) {
            gapComposer.startDefaults();
            if ((i3 & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
                textStyle3 = textStyle;
                visualTransformation3 = visualTransformation;
                keyboardActions2 = keyboardActions;
                i6 = i;
                i12 = i2;
                shape3 = shape;
                textFieldColors3 = textFieldColors;
            } else {
                textStyle3 = (TextStyle) gapComposer.consume(TextKt.LocalTextStyle);
                int i13 = z3 ? 1 : Integer.MAX_VALUE;
                Shape value = ShapesKt.getValue(ListTokens.ContainerShape$5, gapComposer);
                TextFieldColors colors = OutlinedTextFieldDefaults.colors(gapComposer);
                DifferentialMotionFlingController$$ExternalSyntheticLambda0 differentialMotionFlingController$$ExternalSyntheticLambda0 = VisualTransformation.Companion.None;
                i6 = i13;
                textFieldColors3 = colors;
                keyboardActions2 = KeyboardActions.Default;
                shape3 = value;
                visualTransformation3 = differentialMotionFlingController$$ExternalSyntheticLambda0;
            }
            gapComposer.endDefaults();
            gapComposer.startReplaceGroup(-502250010);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new MutableInteractionSourceImpl();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final MutableInteractionSourceImpl mutableInteractionSourceImpl = (MutableInteractionSourceImpl) rememberedValue;
            gapComposer.end(false);
            gapComposer.startReplaceGroup(1369277167);
            long m707getColor0d7_KjU = textStyle3.m707getColor0d7_KjU();
            if (m707getColor0d7_KjU == 16) {
                boolean booleanValue = ((Boolean) OAuthBearer.collectIsFocusedAsState(mutableInteractionSourceImpl, gapComposer, 0).getValue()).booleanValue();
                if (!z) {
                    j = textFieldColors3.disabledTextColor;
                } else if (z2) {
                    j = textFieldColors3.errorTextColor;
                } else if (booleanValue) {
                    j = textFieldColors3.focusedTextColor;
                } else {
                    j = textFieldColors3.unfocusedTextColor;
                }
                m707getColor0d7_KjU = j;
            }
            long j2 = m707getColor0d7_KjU;
            gapComposer.end(false);
            final TextStyle merge = textStyle3.merge(new TextStyle(j2, 0L, null, 0L, 0, 0L, 16777214));
            final Shape shape4 = shape3;
            i7 = i12;
            TextStyle textStyle4 = textStyle3;
            final Function1 function13 = function12;
            final Modifier modifier3 = modifier2;
            gapComposer = gapComposer;
            Updater.CompositionLocalProvider(TextSelectionColorsKt.LocalTextSelectionColors.defaultProvidedValue$runtime(textFieldColors3.textSelectionColors), Expect_jvmKt.rememberComposableLambda(-2094276683, new Function2() { // from class: androidx.compose.material3.OutlinedTextFieldKt$OutlinedTextField$5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Modifier modifier4;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Number) obj2).intValue();
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        if (function2 != null) {
                            gapComposer2.startReplaceGroup(-1901539802);
                            Object rememberedValue2 = gapComposer2.rememberedValue();
                            if (rememberedValue2 == Composer.Companion.Empty) {
                                rememberedValue2 = new TextKt$$ExternalSyntheticLambda1(11);
                                gapComposer2.updateRememberedValue(rememberedValue2);
                            }
                            modifier4 = OffsetKt.m222paddingqDBjuR0$default(new AppendedSemanticsElement((Function1) rememberedValue2, true), 0.0f, Icons$Filled.minimizedLabelHalfHeight(gapComposer2), 0.0f, 0.0f, 13);
                            gapComposer2.end(false);
                        } else {
                            gapComposer2.startReplaceGroup(-1901156115);
                            gapComposer2.end(false);
                            modifier4 = Modifier.Companion.$$INSTANCE;
                        }
                        Modifier then = Modifier.this.then(modifier4);
                        String m371getString2EP1pXo = Icons$Filled.m371getString2EP1pXo(gapComposer2, R.string.default_error_message);
                        boolean z4 = z2;
                        if (z4) {
                            then = SemanticsModifierKt.semantics(then, false, new IconKt$$ExternalSyntheticLambda1(m371getString2EP1pXo, 5));
                        }
                        Modifier m224defaultMinSizeVpY3zN4 = SizeKt.m224defaultMinSizeVpY3zN4(then, 280.0f, 56.0f);
                        final TextFieldColors textFieldColors4 = textFieldColors3;
                        SolidColor solidColor = new SolidColor(z4 ? textFieldColors4.errorCursorColor : textFieldColors4.cursorColor);
                        final Function2 function22 = function2;
                        final Shape shape5 = shape4;
                        final TextFieldValue textFieldValue3 = textFieldValue2;
                        final boolean z5 = z;
                        final boolean z6 = z3;
                        final VisualTransformation visualTransformation4 = visualTransformation3;
                        final MutableInteractionSourceImpl mutableInteractionSourceImpl2 = mutableInteractionSourceImpl;
                        final boolean z7 = z2;
                        BasicTextFieldKt.BasicTextField(textFieldValue3, function13, m224defaultMinSizeVpY3zN4, z5, merge, keyboardOptions, keyboardActions2, z6, i6, i7, visualTransformation4, null, mutableInteractionSourceImpl2, solidColor, Expect_jvmKt.rememberComposableLambda(674541106, new Function3() { // from class: androidx.compose.material3.OutlinedTextFieldKt$OutlinedTextField$5.2
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                                Function2 function23 = (Function2) obj3;
                                Composer composer3 = (Composer) obj4;
                                int intValue2 = ((Number) obj5).intValue();
                                if ((intValue2 & 6) == 0) {
                                    intValue2 |= ((GapComposer) composer3).changedInstance(function23) ? 4 : 2;
                                }
                                GapComposer gapComposer3 = (GapComposer) composer3;
                                if (gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                    String str = TextFieldValue.this.annotatedString.text;
                                    boolean z8 = z5;
                                    boolean z9 = z7;
                                    MutableInteractionSourceImpl mutableInteractionSourceImpl3 = mutableInteractionSourceImpl2;
                                    TextFieldColors textFieldColors5 = textFieldColors4;
                                    outlinedTextFieldDefaults.DecorationBox(str, function23, z8, z6, visualTransformation4, mutableInteractionSourceImpl3, z9, function22, null, textFieldColors5, null, Expect_jvmKt.rememberComposableLambda(1409265477, new OutlinedTextFieldKt$OutlinedTextField$3.AnonymousClass2.AnonymousClass1(z8, z9, mutableInteractionSourceImpl3, textFieldColors5, shape5, 1), gapComposer3), gapComposer3, (intValue2 << 3) & 112);
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
            textFieldColors2 = textFieldColors3;
            visualTransformation2 = visualTransformation3;
            shape2 = shape4;
            textStyle2 = textStyle4;
        } else {
            gapComposer.skipToGroupEnd();
            textStyle2 = textStyle;
            visualTransformation2 = visualTransformation;
            keyboardActions2 = keyboardActions;
            i6 = i;
            i7 = i2;
            shape2 = shape;
            textFieldColors2 = textFieldColors;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.OutlinedTextFieldKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i3 | 1);
                    int updateChangedFlags2 = Updater.updateChangedFlags(i4);
                    CardKt.OutlinedTextField(TextFieldValue.this, function1, modifier, z, textStyle2, function2, z2, visualTransformation2, keyboardOptions, keyboardActions2, z3, i6, i7, shape2, textFieldColors2, (Composer) obj, updateChangedFlags, updateChangedFlags2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void OutlinedCard(Modifier modifier, Shape shape, CardColors cardColors, CardElevation cardElevation, BorderStroke borderStroke, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1945643296);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(shape) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(cardColors) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(cardElevation) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(borderStroke) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 131072 : 65536;
        }
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            Card(modifier, shape, cardColors, cardElevation, borderStroke, composableLambdaImpl, gapComposer, i2 & 524286, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda1(modifier, shape, cardColors, cardElevation, borderStroke, composableLambdaImpl, i, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Card(androidx.compose.ui.Modifier r21, androidx.compose.ui.graphics.Shape r22, androidx.compose.material3.CardColors r23, androidx.compose.material3.CardElevation r24, androidx.compose.foundation.BorderStroke r25, androidx.compose.runtime.internal.ComposableLambdaImpl r26, androidx.compose.runtime.Composer r27, int r28, int r29) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.CardKt.Card(androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, androidx.compose.material3.CardColors, androidx.compose.material3.CardElevation, androidx.compose.foundation.BorderStroke, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }
}
