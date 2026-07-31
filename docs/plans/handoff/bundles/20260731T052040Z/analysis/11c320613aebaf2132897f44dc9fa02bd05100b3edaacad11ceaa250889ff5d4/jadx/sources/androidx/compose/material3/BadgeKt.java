package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.UnionInsets;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.material3.internal.ChildSemanticsNodeElement;
import androidx.compose.material3.internal.MutableWindowInsets;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.HorizontalRuler;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.layout.VerticalRuler;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.AppendedSemanticsElement;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.window.DialogProperties;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import okio.Okio;
import org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda2;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BadgeKt {
    public static final RippleAlpha RippleAlpha;

    /* renamed from: lambda$-1514016380, reason: not valid java name */
    public static final ComposableLambdaImpl f2lambda$1514016380;

    /* renamed from: lambda$-463596174, reason: not valid java name */
    public static final ComposableLambdaImpl f3lambda$463596174;
    public static final ComposableLambdaImpl lambda$1582488484;
    public static final ComposableLambdaImpl lambda$414328099;
    public static final HorizontalRuler BadgeTopRuler = new HorizontalRuler(null);
    public static final VerticalRuler BadgeEndRuler = new VerticalRuler(null);

    /* renamed from: lambda$-489887388, reason: not valid java name */
    public static final ComposableLambdaImpl f4lambda$489887388 = new ComposableLambdaImpl(-489887388, false, new SaversKt$$ExternalSyntheticLambda0(4));
    public static final ComposableLambdaImpl lambda$1629163587 = new ComposableLambdaImpl(1629163587, false, new SaversKt$$ExternalSyntheticLambda0(5));

    /* renamed from: lambda$-546752734, reason: not valid java name */
    public static final ComposableLambdaImpl f5lambda$546752734 = new ComposableLambdaImpl(-546752734, false, new SaversKt$$ExternalSyntheticLambda0(6));
    public static final ComposableLambdaImpl lambda$1572298241 = new ComposableLambdaImpl(1572298241, false, new SaversKt$$ExternalSyntheticLambda0(7));

    static {
        new ComposableLambdaImpl(-39202156, false, new SaversKt$$ExternalSyntheticLambda0(8));
        lambda$1582488484 = new ComposableLambdaImpl(1582488484, false, new SaversKt$$ExternalSyntheticLambda0(9));
        lambda$414328099 = new ComposableLambdaImpl(414328099, false, new SaversKt$$ExternalSyntheticLambda0(10));
        f2lambda$1514016380 = new ComposableLambdaImpl(-1514016380, false, new SaversKt$$ExternalSyntheticLambda0(11));
        f3lambda$463596174 = new ComposableLambdaImpl(-463596174, false, new SaversKt$$ExternalSyntheticLambda0(12));
        RippleAlpha = new RippleAlpha();
    }

    /* renamed from: AlertDialog-Oix01E0, reason: not valid java name */
    public static final void m132AlertDialogOix01E0(final Function0 function0, final ComposableLambdaImpl composableLambdaImpl, final Function2 function2, final Function2 function22, final Function2 function23, Shape shape, long j, long j2, long j3, long j4, DialogProperties dialogProperties, Composer composer, final int i) {
        Function0 function02;
        int i2;
        ComposableLambdaImpl composableLambdaImpl2;
        Function2 function24;
        Function2 function25;
        Function2 function26;
        GapComposer gapComposer;
        final Shape shape2;
        final long j5;
        final long j6;
        final long j7;
        final long j8;
        final DialogProperties dialogProperties2;
        Shape value;
        long value2;
        long value3;
        int i3;
        long value4;
        long value5;
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
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i2 |= gapComposer2.changed(Modifier.Companion.$$INSTANCE) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            function24 = function2;
            i2 |= gapComposer2.changedInstance(function24) ? 2048 : 1024;
        } else {
            function24 = function2;
        }
        int i4 = i2 | 24576;
        if ((196608 & i) == 0) {
            function25 = function22;
            i4 |= gapComposer2.changedInstance(function25) ? 131072 : 65536;
        } else {
            function25 = function22;
        }
        if ((1572864 & i) == 0) {
            function26 = function23;
            i4 |= gapComposer2.changedInstance(function26) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : 524288;
        } else {
            function26 = function23;
        }
        if ((12582912 & i) == 0) {
            i4 |= 4194304;
        }
        if ((100663296 & i) == 0) {
            i4 |= 33554432;
        }
        if ((805306368 & i) == 0) {
            i4 |= 268435456;
        }
        if (gapComposer2.shouldExecute(i4 & 1, (306783379 & i4) != 306783378)) {
            gapComposer2.startDefaults();
            if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                int i5 = AlertDialogDefaults.$r8$clinit;
                value = ShapesKt.getValue(ListTokens.ContainerShape, gapComposer2);
                value2 = ColorSchemeKt.getValue(ListTokens.ContainerColor$1, gapComposer2);
                value3 = ColorSchemeKt.getValue(ListTokens.IconColor, gapComposer2);
                i3 = i4 & (-2143289345);
                value4 = ColorSchemeKt.getValue(ListTokens.HeadlineColor, gapComposer2);
                value5 = ColorSchemeKt.getValue(ListTokens.SupportingTextColor, gapComposer2);
                dialogProperties3 = new DialogProperties();
            } else {
                gapComposer2.skipToGroupEnd();
                i3 = i4 & (-2143289345);
                value = shape;
                value2 = j;
                value3 = j2;
                value4 = j3;
                value5 = j4;
                dialogProperties3 = dialogProperties;
            }
            gapComposer2.endDefaults();
            int i6 = i3 & 2147483646;
            long j9 = value5;
            gapComposer = gapComposer2;
            Function0 function03 = function02;
            ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
            Function2 function27 = function24;
            Function2 function28 = function25;
            Function2 function29 = function26;
            shape2 = value;
            j5 = value2;
            dialogProperties2 = dialogProperties3;
            j6 = value3;
            j7 = value4;
            j8 = j9;
            AlertDialogKt.m128AlertDialogImplwrnwzgE(function03, composableLambdaImpl3, function27, function28, function29, shape2, j5, j6, j7, j8, dialogProperties2, gapComposer, i6, 3456);
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
                    BadgeKt.m132AlertDialogOix01E0(Function0.this, composableLambdaImpl, function2, function22, function23, shape2, j5, j6, j7, j8, dialogProperties2, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void Button(final Function0 function0, final Modifier modifier, final boolean z, final Shape shape, final ButtonColors buttonColors, final ButtonElevation buttonElevation, final PaddingValues paddingValues, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        GapComposer gapComposer;
        final Modifier then;
        boolean z2;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-1310015664);
        if ((i & 6) == 0) {
            i2 = i | (gapComposer2.changedInstance(function0) ? 4 : 2);
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i2 |= gapComposer2.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changed(shape) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changed(buttonColors) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer2.changed(buttonElevation) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer2.changed((Object) null) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= gapComposer2.changed(paddingValues) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= gapComposer2.changed((Object) null) ? 67108864 : 33554432;
        }
        if ((805306368 & i) == 0) {
            i2 |= gapComposer2.changedInstance(composableLambdaImpl) ? 536870912 : 268435456;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            gapComposer2.startDefaults();
            if ((i & 1) != 0 && !gapComposer2.getDefaultsInvalid()) {
                gapComposer2.skipToGroupEnd();
            }
            gapComposer2.endDefaults();
            gapComposer2.startReplaceGroup(1691726283);
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new MutableInteractionSourceImpl();
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) rememberedValue;
            gapComposer2.end(false);
            long j = z ? buttonColors.containerColor : buttonColors.disabledContainerColor;
            long j2 = z ? buttonColors.contentColor : buttonColors.disabledContentColor;
            gapComposer2.startReplaceGroup(1691909926);
            gapComposer2.end(false);
            final float f = 0.0f;
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new SaversKt$$ExternalSyntheticLambda2(6);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            then = modifier.then(new AppendedSemanticsElement((Function1) rememberedValue2, false));
            final ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-535639973, new ButtonKt$$ExternalSyntheticLambda2(j2, paddingValues, composableLambdaImpl), gapComposer2);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = SurfaceKt.LocalAbsoluteTonalElevation;
            if (mutableInteractionSource == null) {
                gapComposer2.startReplaceGroup(-1701074900);
                Object rememberedValue3 = gapComposer2.rememberedValue();
                if (rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new MutableInteractionSourceImpl();
                    gapComposer2.updateRememberedValue(rememberedValue3);
                }
                mutableInteractionSource = (MutableInteractionSource) rememberedValue3;
                z2 = false;
            } else {
                z2 = false;
                gapComposer2.startReplaceGroup(2023335947);
            }
            gapComposer2.end(z2);
            final MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = SurfaceKt.LocalAbsoluteTonalElevation;
            final float f2 = ((Dp) gapComposer2.consume(dynamicProvidableCompositionLocal2)).value + 0.0f;
            gapComposer = gapComposer2;
            final long j3 = j;
            Updater.CompositionLocalProvider(new ProvidedValue[]{ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(j2)), dynamicProvidableCompositionLocal2.defaultProvidedValue$runtime(new Dp(f2))}, Expect_jvmKt.rememberComposableLambda(849208527, new Function2() { // from class: androidx.compose.material3.SurfaceKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    GapComposer gapComposer3 = (GapComposer) composer2;
                    if (gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
                        Modifier then2 = ImageKt.m29clickableO2vRcR0$default(SurfaceKt.m158surfaceXOJAsU(Modifier.this.then(MinimumInteractiveModifier.INSTANCE), shape, SurfaceKt.m159surfaceColorAtElevationCLU3JFs(j3, f2, gapComposer3), ((Density) gapComposer3.consume(CompositionLocalsKt.LocalDensity)).mo63toPx0680j_4(f)), mutableInteractionSource2, RippleKt.m156rippleH2RKhps$default(7, 0L), z, null, function0, 24).then(new ChildSemanticsNodeElement(new SaversKt$$ExternalSyntheticLambda2(10)));
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
                        long j4 = gapComposer3.compositeKeyHashCode;
                        int i3 = (int) (j4 ^ (j4 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
                        Modifier materializeModifier = RangesKt.materializeModifier(gapComposer3, then2);
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
                        Updater.m170setimpl(gapComposer3, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m169reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m170setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
                        rememberComposableLambda.invoke((Object) gapComposer3, (Object) 0);
                        gapComposer3.end(true);
                    } else {
                        gapComposer3.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 56);
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(modifier, z, shape, buttonColors, buttonElevation, paddingValues, composableLambdaImpl, i) { // from class: androidx.compose.material3.ButtonKt$$ExternalSyntheticLambda3
                public final /* synthetic */ Modifier f$1;
                public final /* synthetic */ int f$10;
                public final /* synthetic */ boolean f$2;
                public final /* synthetic */ Shape f$3;
                public final /* synthetic */ ButtonColors f$4;
                public final /* synthetic */ PaddingValues f$7;
                public final /* synthetic */ ComposableLambdaImpl f$9;

                {
                    this.f$7 = paddingValues;
                    this.f$9 = composableLambdaImpl;
                    this.f$10 = i;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    BadgeKt.Button(Function0.this, this.f$1, this.f$2, this.f$3, this.f$4, null, this.f$7, this.f$9, (Composer) obj, Updater.updateChangedFlags(this.f$10 | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: HorizontalDivider-9IZ8Weo, reason: not valid java name */
    public static final void m133HorizontalDivider9IZ8Weo(Modifier modifier, final float f, final long j, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(75144485);
        int i2 = i | Token.TEMPLATE_LITERAL_SUBST;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & Token.EXPR_VOID) != 146)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                f = DividerDefaults.Thickness;
                j = ColorSchemeKt.getValue(ListTokens.Color, gapComposer);
                modifier = Modifier.Companion.$$INSTANCE;
            } else {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            Modifier m88height3ABfNKs = SizeKt.m88height3ABfNKs(modifier.then(SizeKt.FillWholeMaxWidth), f);
            boolean changed = gapComposer.changed(j);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new Function1() { // from class: androidx.compose.material3.DividerKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        DrawScope drawScope = (DrawScope) obj;
                        float f2 = f;
                        float mo63toPx0680j_4 = drawScope.mo63toPx0680j_4(f2);
                        float mo63toPx0680j_42 = drawScope.mo63toPx0680j_4(f2) / 2.0f;
                        float intBitsToFloat = Float.intBitsToFloat((int) (drawScope.mo266getSizeNHjbRc() >> 32));
                        float mo63toPx0680j_43 = drawScope.mo63toPx0680j_4(f2) / 2.0f;
                        drawScope.mo262drawLineNGM6Ib0(j, (Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(mo63toPx0680j_42) & 4294967295L), (Float.floatToRawIntBits(mo63toPx0680j_43) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32), mo63toPx0680j_4);
                        return Unit.INSTANCE;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ImageKt.Canvas(m88height3ABfNKs, (Function1) rememberedValue, gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        Modifier modifier2 = modifier;
        float f2 = f;
        long j2 = j;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new DividerKt$$ExternalSyntheticLambda1(modifier2, f2, j2, i);
        }
    }

    public static final void IconButton(final int i, IconButtonColors iconButtonColors, Composer composer, final ComposableLambdaImpl composableLambdaImpl, Modifier modifier, Shape shape, final Function0 function0, boolean z) {
        final IconButtonColors iconButtonColors2;
        final Modifier modifier2;
        final Shape shape2;
        final boolean z2;
        long Color;
        GapComposer gapComposer;
        int i2;
        IconButtonColors iconButtonColors3;
        int i3;
        Shape value;
        Modifier modifier3;
        boolean z3;
        IconButtonColors iconButtonColors4;
        long Color2;
        float f = ListTokens.DisabledOpacity;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(1413012038);
        int i4 = i | (gapComposer2.changedInstance(function0) ? 4 : 2) | 91568;
        if (gapComposer2.shouldExecute(i4 & 1, (599187 & i4) != 599186)) {
            gapComposer2.startDefaults();
            if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                long j = ((Color) gapComposer2.consume(ContentColorKt.LocalContentColor)).value;
                ColorScheme colorScheme = ((MaterialTheme$Values) gapComposer2.consume(MaterialThemeKt._localMaterialTheme)).colorScheme;
                IconButtonColors iconButtonColors5 = colorScheme.defaultIconButtonColorsCached;
                if (iconButtonColors5 == null) {
                    long j2 = Color.Transparent;
                    Color2 = Brush.Color(Color.m249getRedimpl(j), Color.m248getGreenimpl(j), Color.m246getBlueimpl(j), 0.38f, Color.m247getColorSpaceimpl(j));
                    IconButtonColors iconButtonColors6 = new IconButtonColors(j2, j, j2, Color2);
                    colorScheme.defaultIconButtonColorsCached = iconButtonColors6;
                    iconButtonColors5 = iconButtonColors6;
                }
                long j3 = iconButtonColors5.contentColor;
                if (Color.m244equalsimpl0(j3, j)) {
                    i2 = -465921;
                    gapComposer = gapComposer2;
                    iconButtonColors3 = iconButtonColors5;
                } else {
                    Color = Brush.Color(Color.m249getRedimpl(j), Color.m248getGreenimpl(j), Color.m246getBlueimpl(j), 0.38f, Color.m247getColorSpaceimpl(j));
                    gapComposer = gapComposer2;
                    long j4 = iconButtonColors5.containerColor;
                    i2 = -465921;
                    long j5 = iconButtonColors5.disabledContainerColor;
                    if (j == 16) {
                        j = j3;
                    }
                    if (Color == 16) {
                        Color = iconButtonColors5.disabledContentColor;
                    }
                    iconButtonColors3 = new IconButtonColors(j4, j, j5, Color);
                }
                gapComposer2 = gapComposer;
                i3 = i4 & i2;
                value = ShapesKt.getValue(ListTokens.ContainerShapeRound$1, gapComposer2);
                modifier3 = Modifier.Companion.$$INSTANCE;
                z3 = true;
                iconButtonColors4 = iconButtonColors3;
            } else {
                gapComposer2.skipToGroupEnd();
                i3 = i4 & (-465921);
                iconButtonColors4 = iconButtonColors;
                modifier3 = modifier;
                value = shape;
                z3 = z;
            }
            gapComposer2.endDefaults();
            IconButtonImpl(1769862 | ((i3 << 3) & Token.ASSIGN_MOD), iconButtonColors4, gapComposer2, composableLambdaImpl, modifier3, value, function0, z3);
            shape2 = value;
            z2 = z3;
            iconButtonColors2 = iconButtonColors4;
            modifier2 = modifier3;
        } else {
            gapComposer2.skipToGroupEnd();
            iconButtonColors2 = iconButtonColors;
            modifier2 = modifier;
            shape2 = shape;
            z2 = z;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(i, iconButtonColors2, composableLambdaImpl, modifier2, shape2, function0, z2) { // from class: androidx.compose.material3.IconButtonKt$$ExternalSyntheticLambda0
                public final /* synthetic */ Function0 f$0;
                public final /* synthetic */ Modifier f$1;
                public final /* synthetic */ boolean f$2;
                public final /* synthetic */ IconButtonColors f$3;
                public final /* synthetic */ Shape f$5;
                public final /* synthetic */ ComposableLambdaImpl f$6;

                {
                    this.f$0 = function0;
                    this.f$1 = modifier2;
                    this.f$2 = z2;
                    this.f$3 = iconButtonColors2;
                    this.f$5 = shape2;
                    this.f$6 = composableLambdaImpl;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    BadgeKt.IconButton(Updater.updateChangedFlags(1572865), this.f$3, (Composer) obj, this.f$6, this.f$1, this.f$5, this.f$0, this.f$2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void IconButtonImpl(final int i, final IconButtonColors iconButtonColors, Composer composer, final ComposableLambdaImpl composableLambdaImpl, final Modifier modifier, final Shape shape, final Function0 function0, final boolean z) {
        int i2;
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
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
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
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : 524288;
        }
        int i3 = i2;
        if (gapComposer.shouldExecute(i3 & 1, (599187 & i3) != 599186)) {
            gapComposer.startReplaceGroup(976976045);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new MutableInteractionSourceImpl();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) rememberedValue;
            gapComposer.end(false);
            HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
            Modifier then = modifier.then(MinimumInteractiveModifier.INSTANCE);
            float f = ListTokens.DefaultLeadingSpace;
            Modifier then2 = ImageKt.m29clickableO2vRcR0$default(ImageKt.m27backgroundbw27NRU(ClipKt.clip(SizeKt.m91size6HolHcs(then, Okio.m718DpSizeYgX7TsA(ListTokens.IconSize + f + f, 40.0f)), shape), z ? iconButtonColors.containerColor : iconButtonColors.disabledContainerColor, shape), mutableInteractionSource, RippleKt.m156rippleH2RKhps$default(7, 0L), z, new Role(0), function0, 8).then(new ChildSemanticsNodeElement(new SaversKt$$ExternalSyntheticLambda2(10)));
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = RangesKt.materializeModifier(gapComposer, then2);
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
            Updater.m170setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m169reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m170setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(z ? iconButtonColors.contentColor : iconButtonColors.disabledContentColor)), composableLambdaImpl, gapComposer, ((i3 >> 15) & Token.ASSIGN_MOD) | 8);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.IconButtonKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    BadgeKt.IconButtonImpl(Updater.updateChangedFlags(i | 1), iconButtonColors, (Composer) obj, composableLambdaImpl, modifier, shape, function0, z);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: Scaffold-TvnljyQ, reason: not valid java name */
    public static final void m134ScaffoldTvnljyQ(Modifier modifier, final ComposableLambdaImpl composableLambdaImpl, Function2 function2, Function2 function22, Function2 function23, int i, long j, long j2, WindowInsets windowInsets, final ComposableLambdaImpl composableLambdaImpl2, Composer composer, final int i2) {
        final Modifier modifier2;
        final Function2 function24;
        final Function2 function25;
        final Function2 function26;
        final int i3;
        final long j3;
        final long j4;
        final WindowInsets windowInsets2;
        Function2 function27;
        Function2 function28;
        Function2 function29;
        long j5;
        WindowInsets windowInsets3;
        long j6;
        int i4;
        Modifier modifier3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1211482744);
        int i5 = i2 | 38497670;
        if (gapComposer.shouldExecute(i5 & 1, (306783379 & i5) != 306783378)) {
            gapComposer.startDefaults();
            if ((i2 & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                long j7 = ((MaterialTheme$Values) gapComposer.consume(MaterialThemeKt._localMaterialTheme)).colorScheme.background;
                long m138contentColorForek8zF_U = ColorSchemeKt.m138contentColorForek8zF_U(j7, gapComposer);
                WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
                UnionInsets unionInsets = new UnionInsets(FlowRowOverflow.current(gapComposer).systemBars, FlowRowOverflow.current(gapComposer).displayCutout);
                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                function27 = lambda$1582488484;
                function28 = lambda$414328099;
                function29 = f2lambda$1514016380;
                j5 = m138contentColorForek8zF_U;
                windowInsets3 = unionInsets;
                j6 = j7;
                i4 = 2;
                modifier3 = companion;
            } else {
                gapComposer.skipToGroupEnd();
                modifier3 = modifier;
                function27 = function2;
                function28 = function22;
                function29 = function23;
                i4 = i;
                j6 = j;
                j5 = j2;
                windowInsets3 = windowInsets;
            }
            gapComposer.endDefaults();
            boolean changed = gapComposer.changed(windowInsets3);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                rememberedValue = new MutableWindowInsets(windowInsets3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableWindowInsets mutableWindowInsets = (MutableWindowInsets) rememberedValue;
            boolean changed2 = gapComposer.changed(mutableWindowInsets) | gapComposer.changed(windowInsets3);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new Recomposer$$ExternalSyntheticLambda4(mutableWindowInsets, windowInsets3, 22);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Modifier onConsumedWindowInsetsChanged = SpacerKt.onConsumedWindowInsetsChanged(modifier3, (Function1) rememberedValue2);
            int i6 = i4;
            Function2 function210 = function27;
            Function2 function211 = function28;
            Function2 function212 = function29;
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(848889571, new ScaffoldKt$$ExternalSyntheticLambda6(i6, composableLambdaImpl, composableLambdaImpl2, function211, function212, mutableWindowInsets, function210), gapComposer);
            long j8 = j5;
            SurfaceKt.m157SurfaceT9BRK9s(onConsumedWindowInsetsChanged, null, j6, j8, rememberComposableLambda, gapComposer, 12582912, 114);
            j3 = j6;
            j4 = j8;
            windowInsets2 = windowInsets3;
            function25 = function211;
            function26 = function212;
            i3 = i6;
            modifier2 = modifier3;
            function24 = function210;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            function24 = function2;
            function25 = function22;
            function26 = function23;
            i3 = i;
            j3 = j;
            j4 = j2;
            windowInsets2 = windowInsets;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(composableLambdaImpl, function24, function25, function26, i3, j3, j4, windowInsets2, composableLambdaImpl2, i2) { // from class: androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda10
                public final /* synthetic */ ComposableLambdaImpl f$1;
                public final /* synthetic */ Function2 f$2;
                public final /* synthetic */ Function2 f$3;
                public final /* synthetic */ Function2 f$4;
                public final /* synthetic */ int f$5;
                public final /* synthetic */ long f$6;
                public final /* synthetic */ long f$7;
                public final /* synthetic */ WindowInsets f$8;
                public final /* synthetic */ ComposableLambdaImpl f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(805306417);
                    BadgeKt.m134ScaffoldTvnljyQ(Modifier.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, this.f$8, this.f$9, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: ScaffoldLayout-FMILGgc, reason: not valid java name */
    public static final void m135ScaffoldLayoutFMILGgc(int i, ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, Function2 function2, Function2 function22, WindowInsets windowInsets, Function2 function23, Composer composer, int i2) {
        int i3;
        int i4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-280287501);
        int i5 = i2 | (gapComposer.changed(i) ? 4 : 2) | (gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16) | (gapComposer.changedInstance(composableLambdaImpl2) ? 256 : 128) | (gapComposer.changedInstance(function2) ? 2048 : 1024) | (gapComposer.changedInstance(function22) ? 16384 : 8192) | (gapComposer.changed(windowInsets) ? 131072 : 65536) | (gapComposer.changedInstance(function23) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : 524288);
        int i6 = 0;
        if (gapComposer.shouldExecute(i5 & 1, (599187 & i5) != 599186)) {
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (rememberedValue == obj) {
                rememberedValue = new ScaffoldKt$ScaffoldLayout$contentPadding$1$1();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1 = (ScaffoldKt$ScaffoldLayout$contentPadding$1$1) rememberedValue;
            boolean z = (i5 & Token.ASSIGN_MOD) == 32;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (z || rememberedValue2 == obj) {
                rememberedValue2 = new ComposableLambdaImpl(605195056, true, new ScaffoldKt$$ExternalSyntheticLambda0(composableLambdaImpl, i6));
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Function2 function24 = (Function2) rememberedValue2;
            boolean z2 = (i5 & 7168) == 2048;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z2 || rememberedValue3 == obj) {
                rememberedValue3 = new ComposableLambdaImpl(418899191, true, new TabKt$$ExternalSyntheticLambda0(function2, 3, (byte) 0));
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Function2 function25 = (Function2) rememberedValue3;
            boolean z3 = (57344 & i5) == 16384;
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (z3 || rememberedValue4 == obj) {
                rememberedValue4 = new ComposableLambdaImpl(338600263, true, new TabKt$$ExternalSyntheticLambda0(function22, 4, (byte) 0));
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Function2 function26 = (Function2) rememberedValue4;
            boolean z4 = (i5 & 896) == 256;
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (z4 || rememberedValue5 == obj) {
                i3 = i5;
                rememberedValue5 = new ComposableLambdaImpl(-1776388365, true, new TextKt$$ExternalSyntheticLambda2(composableLambdaImpl2, scaffoldKt$ScaffoldLayout$contentPadding$1$1, 11));
                gapComposer.updateRememberedValue(rememberedValue5);
            } else {
                i3 = i5;
            }
            Function2 function27 = (Function2) rememberedValue5;
            boolean z5 = (i3 & 3670016) == 1048576;
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (z5 || rememberedValue6 == obj) {
                rememberedValue6 = new ComposableLambdaImpl(-1731662488, true, new TabKt$$ExternalSyntheticLambda0(function23, 5, (byte) 0));
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            Function2 function28 = (Function2) rememberedValue6;
            boolean changed = ((i3 & 458752) == 131072) | gapComposer.changed(function24) | gapComposer.changed(function25) | gapComposer.changed(function26) | ((i3 & 14) == 4) | gapComposer.changed(function28) | gapComposer.changed(function27);
            Object rememberedValue7 = gapComposer.rememberedValue();
            if (changed || rememberedValue7 == obj) {
                i4 = 0;
                Object scaffoldKt$$ExternalSyntheticLambda5 = new ScaffoldKt$$ExternalSyntheticLambda5(windowInsets, function24, function25, function26, i, function28, scaffoldKt$ScaffoldLayout$contentPadding$1$1, function27);
                gapComposer.updateRememberedValue(scaffoldKt$$ExternalSyntheticLambda5);
                rememberedValue7 = scaffoldKt$$ExternalSyntheticLambda5;
            } else {
                i4 = 0;
            }
            RulerKt.SubcomposeLayout(null, (Function2) rememberedValue7, gapComposer, i4, 1);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda6(i, composableLambdaImpl, composableLambdaImpl2, function2, function22, windowInsets, function23, i2);
        }
    }

    /* renamed from: SecondaryTabRow-pAZo6Ak, reason: not valid java name */
    public static final void m136SecondaryTabRowpAZo6Ak(int i, Modifier modifier, long j, long j2, ComposableLambdaImpl composableLambdaImpl, Function2 function2, ComposableLambdaImpl composableLambdaImpl2, Composer composer, int i2) {
        long j3;
        Function2 function22;
        int i3;
        Function2 function23;
        long j4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(563434725);
        int i4 = i2 | (gapComposer.changed(i) ? 4 : 2) | (gapComposer.changed(j) ? 256 : 128) | 197632;
        if (gapComposer.shouldExecute(i4 & 1, (599187 & i4) != 599186)) {
            gapComposer.startDefaults();
            if ((i2 & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                long value = ColorSchemeKt.getValue(ListTokens.ActiveLabelTextColor, gapComposer);
                i3 = i4 & (-7169);
                function23 = f3lambda$463596174;
                j4 = value;
            } else {
                gapComposer.skipToGroupEnd();
                i3 = i4 & (-7169);
                j4 = j2;
                function23 = function2;
            }
            gapComposer.endDefaults();
            m137TabRowImplDTcfvLk(modifier, j, j4, composableLambdaImpl, function23, composableLambdaImpl2, gapComposer, (i3 >> 3) & 524286);
            j3 = j4;
            function22 = function23;
        } else {
            gapComposer.skipToGroupEnd();
            j3 = j2;
            function22 = function2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TabRowKt$$ExternalSyntheticLambda0(i, modifier, j, j3, composableLambdaImpl, function22, composableLambdaImpl2, i2);
        }
    }

    /* renamed from: TabRowImpl-DTcfvLk, reason: not valid java name */
    public static final void m137TabRowImplDTcfvLk(Modifier modifier, long j, long j2, ComposableLambdaImpl composableLambdaImpl, Function2 function2, ComposableLambdaImpl composableLambdaImpl2, Composer composer, int i) {
        int i2;
        GapComposer gapComposer;
        Modifier then;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(1955286154);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(j) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i2 |= gapComposer2.changed(j2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changedInstance(composableLambdaImpl) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changedInstance(function2) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer2.changedInstance(composableLambdaImpl2) ? 131072 : 65536;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            then = modifier.then(new AppendedSemanticsElement(new SaversKt$$ExternalSyntheticLambda2(3), false));
            int i3 = i2 << 3;
            gapComposer = gapComposer2;
            SurfaceKt.m157SurfaceT9BRK9s(then, null, j, j2, Expect_jvmKt.rememberComposableLambda(830280655, new KoinApplicationKt$$ExternalSyntheticLambda2(composableLambdaImpl2, function2, composableLambdaImpl), gapComposer2), gapComposer, (i3 & 896) | 12582912 | (i3 & 7168), 114);
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TabRowKt$$ExternalSyntheticLambda0(modifier, j, j2, composableLambdaImpl, function2, composableLambdaImpl2, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void TextButton(final kotlin.jvm.functions.Function0 r21, androidx.compose.ui.Modifier r22, boolean r23, androidx.compose.ui.graphics.Shape r24, androidx.compose.material3.ButtonColors r25, androidx.compose.foundation.layout.PaddingValues r26, final androidx.compose.runtime.internal.ComposableLambdaImpl r27, androidx.compose.runtime.Composer r28, final int r29, final int r30) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.BadgeKt.TextButton(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, androidx.compose.material3.ButtonColors, androidx.compose.foundation.layout.PaddingValues, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final FiniteAnimationSpec value(MotionSchemeKeyTokens motionSchemeKeyTokens, Composer composer) {
        MotionScheme motionScheme = ((MaterialTheme$Values) ((GapComposer) composer).consume(MaterialThemeKt._localMaterialTheme)).motionScheme;
        int ordinal = motionSchemeKeyTokens.ordinal();
        if (ordinal == 0) {
            return motionScheme.defaultSpatialSpec();
        }
        if (ordinal == 1) {
            return motionScheme.fastSpatialSpec();
        }
        if (ordinal == 2) {
            return motionScheme.slowSpatialSpec();
        }
        if (ordinal == 3) {
            return motionScheme.defaultEffectsSpec();
        }
        if (ordinal == 4) {
            return motionScheme.fastEffectsSpec();
        }
        if (ordinal == 5) {
            return motionScheme.slowEffectsSpec();
        }
        DecodeUtils$$ExternalSyntheticBUOutline0.m();
        return null;
    }
}
