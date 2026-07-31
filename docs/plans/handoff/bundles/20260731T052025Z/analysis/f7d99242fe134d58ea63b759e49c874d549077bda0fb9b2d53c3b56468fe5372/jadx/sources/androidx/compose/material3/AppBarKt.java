package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.LimitInsets;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.UnionInsets;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.Icons$Filled;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.LazyValueHolder;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AppBarKt {
    public static final DynamicProvidableCompositionLocal LocalSingleRowTopAppBarOverride = new DynamicProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(25));
    public static final float TopAppBarHorizontalPadding;
    public static final float TopAppBarTitleInset;

    static {
        new LazyValueHolder(new ImmLeaksCleaner$$ExternalSyntheticLambda0(26));
        new CubicBezierEasing(0.8f, 0.0f, 0.8f, 0.15f);
        TopAppBarHorizontalPadding = 4.0f;
        TopAppBarTitleInset = 12.0f;
    }

    /* renamed from: SingleRowTopAppBar-wn8IZOc, reason: not valid java name */
    public static final void m321SingleRowTopAppBarwn8IZOc(final Modifier modifier, final ComposableLambdaImpl composableLambdaImpl, final TextStyle textStyle, final TextStyle textStyle2, final Function2 function2, final Function3 function3, final float f, final WindowInsets windowInsets, final TopAppBarColors topAppBarColors, Composer composer, final int i, final int i2) {
        int i3;
        Function3 function32;
        float f2;
        int i4;
        BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-2033800111);
        if ((i & 6) == 0) {
            i3 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i3 |= gapComposer.changed(textStyle) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer.changedInstance(null) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer.changed(textStyle2) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= gapComposer.changed(horizontal) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i3 |= gapComposer.changedInstance(function2) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            function32 = function3;
            i3 |= gapComposer.changedInstance(function32) ? 8388608 : 4194304;
        } else {
            function32 = function3;
        }
        if ((100663296 & i) == 0) {
            f2 = f;
            i3 |= gapComposer.changed(f2) ? 67108864 : 33554432;
        } else {
            f2 = f;
        }
        if ((805306368 & i) == 0) {
            i3 |= gapComposer.changed(windowInsets) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposer.changed(topAppBarColors) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposer.changed((Object) null) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i3 & 1, ((306783379 & i3) == 306783378 && (i4 & 19) == 18) ? false : true)) {
            ((DefaultSingleRowTopAppBarOverride) gapComposer.consume(LocalSingleRowTopAppBarOverride)).SingleRowTopAppBar(new SingleRowTopAppBarOverrideScope(modifier, composableLambdaImpl, textStyle, textStyle2, function2, function32, f2, windowInsets, topAppBarColors), gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AppBarKt.m321SingleRowTopAppBarwn8IZOc(Modifier.this, composableLambdaImpl, textStyle, textStyle2, function2, function3, f, windowInsets, topAppBarColors, (Composer) obj, Updater.updateChangedFlags(i | 1), Updater.updateChangedFlags(i2));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: TopAppBar-GHTll3U, reason: not valid java name */
    public static final void m322TopAppBarGHTll3U(final ComposableLambdaImpl composableLambdaImpl, final Modifier modifier, final Function2 function2, final Function3 function3, float f, WindowInsets windowInsets, final TopAppBarColors topAppBarColors, Composer composer, final int i) {
        int i2;
        GapComposer gapComposer;
        final float f2;
        final WindowInsets windowInsets2;
        int i3;
        WindowInsets limitInsets;
        float f3;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(1784421840);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changedInstance(composableLambdaImpl) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changedInstance(function2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changedInstance(function3) ? 2048 : 1024;
        }
        int i4 = i2 | 24576;
        if ((196608 & i) == 0) {
            i4 = 90112 | i2;
        }
        if ((1572864 & i) == 0) {
            i4 |= gapComposer2.changed(topAppBarColors) ? 1048576 : 524288;
        }
        int i5 = 12582912 | i4;
        if (gapComposer2.shouldExecute(i5 & 1, (4793491 & i5) != 4793490)) {
            gapComposer2.startDefaults();
            if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
                UnionInsets unionInsets = new UnionInsets(FlowRowOverflow.current(gapComposer2).systemBars, FlowRowOverflow.current(gapComposer2).displayCutout);
                int i6 = OffsetKt.Horizontal;
                i3 = i5 & (-458753);
                limitInsets = new LimitInsets(unionInsets, 15 | 16);
                f3 = 64.0f;
            } else {
                gapComposer2.skipToGroupEnd();
                limitInsets = windowInsets;
                i3 = i5 & (-458753);
                f3 = f;
            }
            gapComposer2.endDefaults();
            int i7 = i3 << 12;
            gapComposer = gapComposer2;
            m321SingleRowTopAppBarwn8IZOc(modifier, composableLambdaImpl, TypographyKt.getValue(ListTokens.TitleFont, gapComposer2), TextStyle.Default, function2, function3, (Dp.m745equalsimpl0(f3, Float.NaN) || Dp.m745equalsimpl0(f3, Float.POSITIVE_INFINITY)) ? 64.0f : f3, limitInsets, topAppBarColors, gapComposer, ((i3 >> 3) & 14) | 224256 | ((i3 << 3) & 112) | (3670016 & i7) | (i7 & 29360128), (i3 >> 18) & 126);
            f2 = f3;
            windowInsets2 = limitInsets;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            f2 = f;
            windowInsets2 = windowInsets;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AppBarKt.m322TopAppBarGHTll3U(ComposableLambdaImpl.this, modifier, function2, function3, f2, windowInsets2, topAppBarColors, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: TopAppBarLayout-lyUyIHI, reason: not valid java name */
    public static final void m323TopAppBarLayoutlyUyIHI(final Modifier modifier, final FloatProducer floatProducer, final long j, final long j2, final long j3, long j4, final ComposableLambdaImpl composableLambdaImpl, final TextStyle textStyle, final TextStyle textStyle2, Function0 function0, final Function2 function2, ComposableLambdaImpl composableLambdaImpl2, final float f, Composer composer, final int i) {
        final Function0 function02;
        ComposableLambdaImpl composableLambdaImpl3;
        GapComposer gapComposer;
        final long j5 = j4;
        BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(126395868);
        int i2 = i | (gapComposer2.changed(modifier) ? 4 : 2) | (gapComposer2.changed(floatProducer) ? 32 : 16) | (gapComposer2.changed(j) ? 256 : 128) | (gapComposer2.changed(j2) ? 2048 : 1024) | (gapComposer2.changed(j3) ? 16384 : 8192) | (gapComposer2.changed(j5) ? 131072 : 65536) | (gapComposer2.changedInstance(composableLambdaImpl) ? 1048576 : 524288) | (gapComposer2.changed(textStyle) ? 8388608 : 4194304) | (gapComposer2.changedInstance(null) ? 67108864 : 33554432) | (gapComposer2.changed(textStyle2) ? 536870912 : 268435456);
        int i3 = 1600566 | (gapComposer2.changed(horizontal) ? 256 : 128) | (gapComposer2.changedInstance(function2) ? 131072 : 65536) | (gapComposer2.changed(f) ? 8388608 : 4194304);
        if (gapComposer2.shouldExecute(i2 & 1, ((i2 & 306783379) == 306783378 && (4793491 & i3) == 4793490) ? false : true)) {
            boolean z = ((i2 & 112) == 32) | ((i3 & 896) == 256) | ((29360128 & i3) == 8388608);
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                rememberedValue = new TopAppBarMeasurePolicy(floatProducer, f);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            TopAppBarMeasurePolicy topAppBarMeasurePolicy = (TopAppBarMeasurePolicy) rememberedValue;
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer2);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m380setimpl(gapComposer2, topAppBarMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m380setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer2, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$13);
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m380setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier layoutId = RulerKt.layoutId(companion, "navigationIcon");
            float f2 = TopAppBarHorizontalPadding;
            Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(layoutId, f2, 0.0f, 0.0f, 0.0f, 14);
            BiasAlignment biasAlignment = Alignment.Companion.TopStart;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            int currentCompositeKeyHash2 = Updater.getCurrentCompositeKeyHash(gapComposer2);
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m222paddingqDBjuR0$default);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m380setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                Modifier.CC.m(currentCompositeKeyHash2, gapComposer2, currentCompositeKeyHash2, composeUiNode$Companion$SetModifier$13);
            }
            Updater.m380setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ContentColorKt.LocalContentColor;
            Updater.CompositionLocalProvider(dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(new Color(j)), function2, gapComposer2, ((i3 >> 12) & 112) | 8);
            gapComposer2.end(true);
            gapComposer2.startReplaceGroup(-1359701523);
            Modifier m220paddingVpY3zN4$default = OffsetKt.m220paddingVpY3zN4$default(RulerKt.layoutId(companion, "title"), f2, 0.0f, 2);
            gapComposer2.startReplaceGroup(510340109);
            gapComposer2.end(false);
            Modifier then = m220paddingVpY3zN4$default.then(companion);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                function02 = function0;
                rememberedValue2 = new AppBarKt$$ExternalSyntheticLambda0(0, function02);
                gapComposer2.updateRememberedValue(rememberedValue2);
            } else {
                function02 = function0;
            }
            Modifier graphicsLayer = ColorKt.graphicsLayer(then, (Function1) rememberedValue2);
            MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            int currentCompositeKeyHash3 = Updater.getCurrentCompositeKeyHash(gapComposer2);
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, graphicsLayer);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m380setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                Modifier.CC.m(currentCompositeKeyHash3, gapComposer2, currentCompositeKeyHash3, composeUiNode$Companion$SetModifier$13);
            }
            Updater.m380setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            Icons$Filled.m370ProvideContentColorTextStyle3JVO9M(j2, textStyle, composableLambdaImpl, gapComposer2, ((i2 >> 9) & 14) | ((i2 >> 18) & 112) | ((i2 >> 12) & 896));
            gapComposer = gapComposer2;
            gapComposer.end(true);
            gapComposer.end(false);
            Modifier m222paddingqDBjuR0$default2 = OffsetKt.m222paddingqDBjuR0$default(RulerKt.layoutId(companion, "actionIcons"), 0.0f, 0.0f, f2, 0.0f, 11);
            MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            int currentCompositeKeyHash4 = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer, m222paddingqDBjuR0$default2);
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
            j5 = j4;
            composableLambdaImpl3 = composableLambdaImpl2;
            Updater.CompositionLocalProvider(dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(new Color(j5)), composableLambdaImpl3, gapComposer, 56);
            gapComposer.end(true);
            gapComposer.end(true);
        } else {
            function02 = function0;
            composableLambdaImpl3 = composableLambdaImpl2;
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            final ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl3;
            endRestartGroup.block = new Function2(floatProducer, j, j2, j3, j5, composableLambdaImpl, textStyle, textStyle2, function02, function2, composableLambdaImpl4, f, i) { // from class: androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda1
                public final /* synthetic */ FloatProducer f$1;
                public final /* synthetic */ Function0 f$10;
                public final /* synthetic */ Function2 f$15;
                public final /* synthetic */ ComposableLambdaImpl f$16;
                public final /* synthetic */ float f$17;
                public final /* synthetic */ long f$2;
                public final /* synthetic */ long f$3;
                public final /* synthetic */ long f$4;
                public final /* synthetic */ long f$5;
                public final /* synthetic */ ComposableLambdaImpl f$6;
                public final /* synthetic */ TextStyle f$7;
                public final /* synthetic */ TextStyle f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    AppBarKt.m323TopAppBarLayoutlyUyIHI(Modifier.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, this.f$9, this.f$10, this.f$15, this.f$16, this.f$17, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
