package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.LimitInsets;
import androidx.compose.foundation.layout.PaddingElement;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.UnionInsets;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.LayoutUtilKt;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda3;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.RangesKt;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AppBarKt {
    public static final DynamicProvidableCompositionLocal LocalSingleRowTopAppBarOverride = new DynamicProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(9));
    public static final float TopAppBarHorizontalPadding;
    public static final float TopAppBarTitleInset;

    static {
        new LazyValueHolder(new ImmLeaksCleaner$$ExternalSyntheticLambda0(10));
        new CubicBezierEasing(0.8f, 0.8f, 0.15f);
        TopAppBarHorizontalPadding = 4.0f;
        TopAppBarTitleInset = 12.0f;
    }

    /* renamed from: SingleRowTopAppBar-TCVpFMg, reason: not valid java name */
    public static final void m129SingleRowTopAppBarTCVpFMg(final Modifier modifier, final ComposableLambdaImpl composableLambdaImpl, final TextStyle textStyle, final TextStyle textStyle2, final ComposableLambdaImpl composableLambdaImpl2, final Function3 function3, final float f, final PaddingValues paddingValues, final WindowInsets windowInsets, final TopAppBarColors topAppBarColors, Composer composer, final int i, final int i2) {
        int i3;
        TextStyle textStyle3;
        TextStyle textStyle4;
        int i4;
        BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(703932376);
        if ((i & 6) == 0) {
            i3 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            textStyle3 = textStyle;
            i3 |= gapComposer.changed(textStyle3) ? 256 : 128;
        } else {
            textStyle3 = textStyle;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer.changedInstance(null) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            textStyle4 = textStyle2;
            i3 |= gapComposer.changed(textStyle4) ? 16384 : 8192;
        } else {
            textStyle4 = textStyle2;
        }
        if ((i & 196608) == 0) {
            i3 |= gapComposer.changed(horizontal) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl2) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : 524288;
        }
        if ((i & 12582912) == 0) {
            i3 |= gapComposer.changedInstance(function3) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i3 |= gapComposer.changed(f) ? 67108864 : 33554432;
        }
        if ((i & C.ENCODING_PCM_32BIT) == 0) {
            i3 |= gapComposer.changed(paddingValues) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposer.changed(windowInsets) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposer.changed(topAppBarColors) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i4 |= gapComposer.changed((Object) null) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i3 & 1, ((306783379 & i3) == 306783378 && (i4 & Token.EXPR_VOID) == 146) ? false : true)) {
            ((DefaultSingleRowTopAppBarOverride) gapComposer.consume(LocalSingleRowTopAppBarOverride)).SingleRowTopAppBar(new SingleRowTopAppBarOverrideScope(modifier, composableLambdaImpl, textStyle3, textStyle4, composableLambdaImpl2, function3, f, paddingValues, windowInsets, topAppBarColors), gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AppBarKt.m129SingleRowTopAppBarTCVpFMg(Modifier.this, composableLambdaImpl, textStyle, textStyle2, composableLambdaImpl2, function3, f, paddingValues, windowInsets, topAppBarColors, (Composer) obj, Updater.updateChangedFlags(i | 1), Updater.updateChangedFlags(i2));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: TopAppBar-gNPyAyM, reason: not valid java name */
    public static final void m130TopAppBargNPyAyM(final ComposableLambdaImpl composableLambdaImpl, final Modifier modifier, final ComposableLambdaImpl composableLambdaImpl2, final Function3 function3, float f, WindowInsets windowInsets, final TopAppBarColors topAppBarColors, PaddingValues paddingValues, Composer composer, final int i) {
        int i2;
        GapComposer gapComposer;
        final float f2;
        final WindowInsets windowInsets2;
        final PaddingValues paddingValues2;
        float f3;
        int i3;
        PaddingValues paddingValues3;
        WindowInsets windowInsets3;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(660588393);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changedInstance(composableLambdaImpl) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i2 |= gapComposer2.changedInstance(composableLambdaImpl2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changedInstance(function3) ? 2048 : 1024;
        }
        int i4 = i2 | 24576;
        if ((196608 & i) == 0) {
            i4 = 90112 | i2;
        }
        if ((1572864 & i) == 0) {
            i4 |= gapComposer2.changed(topAppBarColors) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : 524288;
        }
        int i5 = 113246208 | i4;
        if (gapComposer2.shouldExecute(i5 & 1, (38347923 & i5) != 38347922)) {
            gapComposer2.startDefaults();
            if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                f3 = TopAppBarDefaults.TopAppBarExpandedHeight;
                WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
                UnionInsets unionInsets = new UnionInsets(FlowRowOverflow.current(gapComposer2).systemBars, FlowRowOverflow.current(gapComposer2).displayCutout);
                int i6 = SpacerKt.Horizontal;
                LimitInsets limitInsets = new LimitInsets(unionInsets, 16 | 15);
                i3 = i5 & (-458753);
                paddingValues3 = TopAppBarDefaults.ContentPadding;
                windowInsets3 = limitInsets;
            } else {
                gapComposer2.skipToGroupEnd();
                i3 = i5 & (-458753);
                f3 = f;
                windowInsets3 = windowInsets;
                paddingValues3 = paddingValues;
            }
            gapComposer2.endDefaults();
            int i7 = i3 << 3;
            int i8 = i3 << 12;
            gapComposer = gapComposer2;
            m129SingleRowTopAppBarTCVpFMg(modifier, composableLambdaImpl, TypographyKt.getValue(ListTokens.TitleFont, gapComposer2), TextStyle.Default, composableLambdaImpl2, function3, (Dp.m443equalsimpl0(f3, Float.NaN) || Dp.m443equalsimpl0(f3, Float.POSITIVE_INFINITY)) ? TopAppBarDefaults.TopAppBarExpandedHeight : f3, paddingValues3, windowInsets3, topAppBarColors, gapComposer, ((i3 >> 3) & 14) | 224256 | (i7 & Token.ASSIGN_MOD) | (3670016 & i8) | (i8 & 29360128) | (i7 & 1879048192), (i3 >> 15) & AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED);
            f2 = f3;
            paddingValues2 = paddingValues3;
            windowInsets2 = windowInsets3;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            f2 = f;
            windowInsets2 = windowInsets;
            paddingValues2 = paddingValues;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AppBarKt.m130TopAppBargNPyAyM(ComposableLambdaImpl.this, modifier, composableLambdaImpl2, function3, f2, windowInsets2, topAppBarColors, paddingValues2, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: TopAppBarLayout-_5F1rQI, reason: not valid java name */
    public static final void m131TopAppBarLayout_5F1rQI(final Modifier modifier, final FloatProducer floatProducer, final long j, final long j2, final long j3, long j4, final ComposableLambdaImpl composableLambdaImpl, final TextStyle textStyle, final TextStyle textStyle2, final Function0 function0, final ComposableLambdaImpl composableLambdaImpl2, ComposableLambdaImpl composableLambdaImpl3, final float f, final PaddingValues paddingValues, Composer composer, final int i) {
        ComposableLambdaImpl composableLambdaImpl4;
        GapComposer gapComposer;
        Modifier then;
        final long j5 = j4;
        BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(239553141);
        int i2 = i | (gapComposer2.changed(modifier) ? 4 : 2) | (gapComposer2.changed(floatProducer) ? 32 : 16) | (gapComposer2.changed(j) ? 256 : 128) | (gapComposer2.changed(j2) ? 2048 : 1024) | (gapComposer2.changed(j3) ? 16384 : 8192) | (gapComposer2.changed(j5) ? 131072 : 65536) | (gapComposer2.changedInstance(composableLambdaImpl) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : 524288) | (gapComposer2.changed(textStyle) ? 8388608 : 4194304) | (gapComposer2.changedInstance(null) ? 67108864 : 33554432) | (gapComposer2.changed(textStyle2) ? 536870912 : 268435456);
        int i3 = 1600566 | (gapComposer2.changed(horizontal) ? 256 : 128) | (gapComposer2.changedInstance(composableLambdaImpl2) ? 131072 : 65536) | (gapComposer2.changed(f) ? 8388608 : 4194304) | (gapComposer2.changed(paddingValues) ? 67108864 : 33554432);
        if (gapComposer2.shouldExecute(i2 & 1, ((i2 & 306783379) == 306783378 && (38347923 & i3) == 38347922) ? false : true)) {
            boolean z = ((i2 & Token.ASSIGN_MOD) == 32) | ((i3 & 896) == 256) | ((29360128 & i3) == 8388608);
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                rememberedValue = new TopAppBarMeasurePolicy(floatProducer, f, paddingValues);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            TopAppBarMeasurePolicy topAppBarMeasurePolicy = (TopAppBarMeasurePolicy) rememberedValue;
            long j6 = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j6 ^ (j6 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = RangesKt.materializeModifier(gapComposer2, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m170setimpl(gapComposer2, topAppBarMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m170setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i4);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m170setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m169reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m170setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier layoutId = RulerKt.layoutId("navigationIcon");
            float f2 = TopAppBarHorizontalPadding;
            Modifier m100paddingqDBjuR0$default = SpacerKt.m100paddingqDBjuR0$default(layoutId, f2, 0.0f, 0.0f, 14);
            BiasAlignment biasAlignment = Alignment.Companion.TopStart;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            long j7 = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j7 ^ (j7 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = RangesKt.materializeModifier(gapComposer2, m100paddingqDBjuR0$default);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m170setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m170setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Updater.m170setimpl(gapComposer2, Integer.valueOf(i5), composeUiNode$Companion$SetModifier$13);
            Updater.m169reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m170setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ContentColorKt.LocalContentColor;
            Updater.CompositionLocalProvider(dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(new Color(j)), composableLambdaImpl2, gapComposer2, ((i3 >> 12) & Token.ASSIGN_MOD) | 8);
            gapComposer2.end(true);
            gapComposer2.startReplaceGroup(408520308);
            then = RulerKt.layoutId("title").then(new PaddingElement(f2, 0.0f, f2, 0.0f));
            gapComposer2.startReplaceGroup(-402451802);
            gapComposer2.end(false);
            Modifier then2 = then.then(Modifier.Companion.$$INSTANCE);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new RoomDatabase$$ExternalSyntheticLambda3(1, function0);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            Modifier graphicsLayer = Brush.graphicsLayer(then2, (Function1) rememberedValue2);
            MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            long j8 = gapComposer2.compositeKeyHashCode;
            int i6 = (int) (j8 ^ (j8 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier3 = RangesKt.materializeModifier(gapComposer2, graphicsLayer);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m170setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m170setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Updater.m170setimpl(gapComposer2, Integer.valueOf(i6), composeUiNode$Companion$SetModifier$13);
            Updater.m169reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m170setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            LayoutUtilKt.m165ProvideContentColorTextStyle3JVO9M(j2, textStyle, composableLambdaImpl, gapComposer2, ((i2 >> 9) & 14) | ((i2 >> 18) & Token.ASSIGN_MOD) | ((i2 >> 12) & 896));
            gapComposer = gapComposer2;
            gapComposer.end(true);
            gapComposer.end(false);
            Modifier m100paddingqDBjuR0$default2 = SpacerKt.m100paddingqDBjuR0$default(RulerKt.layoutId("actionIcons"), 0.0f, 0.0f, f2, 11);
            MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            long j9 = gapComposer.compositeKeyHashCode;
            int i7 = (int) (j9 ^ (j9 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier4 = RangesKt.materializeModifier(gapComposer, m100paddingqDBjuR0$default2);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m170setimpl(gapComposer, maybeCachedBoxMeasurePolicy3, composeUiNode$Companion$SetModifier$1);
            Updater.m170setimpl(gapComposer, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
            Updater.m170setimpl(gapComposer, Integer.valueOf(i7), composeUiNode$Companion$SetModifier$13);
            Updater.m169reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m170setimpl(gapComposer, materializeModifier4, composeUiNode$Companion$SetModifier$14);
            j5 = j4;
            composableLambdaImpl4 = composableLambdaImpl3;
            Updater.CompositionLocalProvider(dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(new Color(j5)), composableLambdaImpl4, gapComposer, 56);
            gapComposer.end(true);
            gapComposer.end(true);
        } else {
            composableLambdaImpl4 = composableLambdaImpl3;
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            final ComposableLambdaImpl composableLambdaImpl5 = composableLambdaImpl4;
            endRestartGroup.block = new Function2(floatProducer, j, j2, j3, j5, composableLambdaImpl, textStyle, textStyle2, function0, composableLambdaImpl2, composableLambdaImpl5, f, paddingValues, i) { // from class: androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda5
                public final /* synthetic */ FloatProducer f$1;
                public final /* synthetic */ Function0 f$10;
                public final /* synthetic */ ComposableLambdaImpl f$15;
                public final /* synthetic */ ComposableLambdaImpl f$16;
                public final /* synthetic */ float f$17;
                public final /* synthetic */ PaddingValues f$18;
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
                    AppBarKt.m131TopAppBarLayout_5F1rQI(Modifier.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, this.f$9, this.f$10, this.f$15, this.f$16, this.f$17, this.f$18, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
