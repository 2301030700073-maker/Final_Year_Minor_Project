package androidx.compose.material3;

import android.content.Context;
import android.view.accessibility.AccessibilityManager;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.LimitInsets;
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
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.material3.internal.Listener;
import androidx.compose.material3.tokens.BottomAppBarTokens;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.LazyValueHolder;
import androidx.compose.runtime.NeverEqualPolicy;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda3;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AppBarKt {
    public static final StaticProvidableCompositionLocal LocalSingleRowTopAppBarOverride = new StaticProvidableCompositionLocal(1, new ImmLeaksCleaner$$ExternalSyntheticLambda0(25));
    public static final float TopAppBarHorizontalPadding;
    public static final float TopAppBarTitleInset;

    static {
        new LazyValueHolder(new ImmLeaksCleaner$$ExternalSyntheticLambda0(26));
        new CubicBezierEasing(0.8f, RecyclerView.DECELERATION_RATE, 0.8f, 0.15f);
        TopAppBarHorizontalPadding = 4.0f;
        TopAppBarTitleInset = 12.0f;
    }

    /* renamed from: BottomAppBar-1oL4kX8, reason: not valid java name */
    public static final void m253BottomAppBar1oL4kX8(Modifier modifier, long j, long j2, PaddingValues paddingValues, WindowInsets windowInsets, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        Modifier modifier2;
        long j3;
        PaddingValues paddingValues2;
        WindowInsets windowInsets2;
        PaddingValues paddingValues3;
        int i2;
        Modifier modifier3;
        WindowInsets windowInsets3;
        long j4;
        gapComposer.startRestartGroup(107726720);
        int i3 = i | 6 | (gapComposer.changed(j) ? 32 : 16) | 93312;
        if (gapComposer.shouldExecute(i3 & 1, (599187 & i3) != 599186)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                long m285contentColorForek8zF_U = ColorSchemeKt.m285contentColorForek8zF_U(j, gapComposer);
                PaddingValuesImpl paddingValuesImpl = BottomAppBarDefaults.ContentPadding;
                WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
                UnionInsets unionInsets = new UnionInsets(OffsetKt.current(gapComposer).systemBars, OffsetKt.current(gapComposer).displayCutout);
                int i4 = OffsetKt.Horizontal;
                LimitInsets limitInsets = new LimitInsets(unionInsets, 15 | 32);
                paddingValues3 = paddingValuesImpl;
                i2 = i3 & (-459649);
                modifier3 = Modifier.Companion.$$INSTANCE;
                windowInsets3 = limitInsets;
                j4 = m285contentColorForek8zF_U;
            } else {
                gapComposer.skipToGroupEnd();
                int i5 = i3 & (-459649);
                modifier3 = modifier;
                i2 = i5;
                j4 = j2;
                paddingValues3 = paddingValues;
                windowInsets3 = windowInsets;
            }
            gapComposer.endDefaults();
            m254BottomAppBare3WI5M(modifier3, j, j4, paddingValues3, windowInsets3, composableLambdaImpl, gapComposer, (i2 & 112) | 14183430);
            modifier2 = modifier3;
            windowInsets2 = windowInsets3;
            paddingValues2 = paddingValues3;
            j3 = j4;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            j3 = j2;
            paddingValues2 = paddingValues;
            windowInsets2 = windowInsets;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AppBarKt$$ExternalSyntheticLambda2(modifier2, j, j3, paddingValues2, windowInsets2, composableLambdaImpl, i);
        }
    }

    /* renamed from: BottomAppBar-e-3WI5M, reason: not valid java name */
    public static final void m254BottomAppBare3WI5M(final Modifier modifier, final long j, final long j2, final PaddingValues paddingValues, final WindowInsets windowInsets, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, final int i) {
        int i2;
        gapComposer.startRestartGroup(1562683362);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(j) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(j2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(RecyclerView.DECELERATION_RATE) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(paddingValues) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changed(windowInsets) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changed((Object) null) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 8388608 : 4194304;
        }
        if (gapComposer.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            int i3 = i2 << 6;
            m255BottomAppBarLayoutt5fmz9U(BottomAppBarTokens.ContainerHeight, modifier, j, j2, paddingValues, windowInsets, composableLambdaImpl, gapComposer, (i3 & 896) | 54 | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (29360128 & i3) | (234881024 & i3) | (i3 & 1879048192));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AppBarKt.m254BottomAppBare3WI5M(Modifier.this, j, j2, paddingValues, windowInsets, composableLambdaImpl, (GapComposer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: BottomAppBarLayout-t5fmz9U, reason: not valid java name */
    public static final void m255BottomAppBarLayoutt5fmz9U(final float f, Modifier modifier, long j, long j2, final PaddingValues paddingValues, final WindowInsets windowInsets, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        int i3;
        Object obj = OffsetKt.f5Start;
        gapComposer.startRestartGroup(-141162176);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(f) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(obj) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(j) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(j2) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changed(RecyclerView.DECELERATION_RATE) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changed(paddingValues) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i2 |= gapComposer.changed(windowInsets) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= gapComposer.changed((Object) null) ? 67108864 : 33554432;
        }
        if ((805306368 & i) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 536870912 : 268435456;
        }
        if (gapComposer.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            Object systemService = ((Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext)).getSystemService("accessibility");
            systemService.getClass();
            Object obj2 = (AccessibilityManager) systemService;
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj3 = Composer$Companion.Empty;
            if (rememberedValue == obj3) {
                rememberedValue = new Listener(false);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Listener listener = (Listener) rememberedValue;
            LifecycleOwner lifecycleOwner = (LifecycleOwner) gapComposer.consume(LocalLifecycleOwnerKt.LocalLifecycleOwner);
            boolean changed = gapComposer.changed(listener) | gapComposer.changedInstance(obj2);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == obj3) {
                i3 = i2;
                rememberedValue2 = new NavController$$ExternalSyntheticLambda3(13, listener, obj2);
                gapComposer.updateRememberedValue(rememberedValue2);
            } else {
                i3 = i2;
            }
            Function1 function1 = (Function1) rememberedValue2;
            boolean changed2 = gapComposer.changed(listener) | gapComposer.changedInstance(obj2);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == obj3) {
                rememberedValue3 = new Recomposer$$ExternalSyntheticLambda6(21, listener, obj2);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            LayoutUtilKt.ObserveState(lifecycleOwner, function1, (Function0) rememberedValue3, gapComposer, 0);
            listener.getValue();
            gapComposer.startReplaceGroup(-587975934);
            gapComposer.end(false);
            Shape value = ShapesKt.getValue(BottomAppBarTokens.ContainerShape, gapComposer);
            boolean changed3 = gapComposer.changed((Object) null);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changed3 || rememberedValue4 == obj3) {
                rememberedValue4 = new AppBarKt$$ExternalSyntheticLambda7(0);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            int i4 = i3 >> 3;
            SurfaceKt.m297SurfaceT9BRK9s(RulerKt.layout(modifier, (Function3) rememberedValue4).then(Modifier.Companion.$$INSTANCE), value, j, j2, RecyclerView.DECELERATION_RATE, null, Expect_jvmKt.rememberComposableLambda(1054101083, new Function2() { // from class: androidx.compose.material3.AppBarKt$BottomAppBarLayout$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    GapComposer gapComposer2 = (GapComposer) obj4;
                    int intValue = ((Number) obj5).intValue();
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        Modifier padding = OffsetKt.padding(SizeKt.m140height3ABfNKs(OffsetKt.windowInsetsPadding(SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f), WindowInsets.this), f), paddingValues);
                        RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer2, 48);
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
                        Updater.m327setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            Modifier.CC.m(currentCompositeKeyHash, gapComposer2, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
                        }
                        Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                        composableLambdaImpl.invoke((Object) RowScopeInstance.INSTANCE, (Object) gapComposer2, (Object) 6);
                        gapComposer2.end(true);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, (i4 & 896) | 12582912 | (i4 & 7168) | (i4 & 57344), 96);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AppBarKt$$ExternalSyntheticLambda8(f, modifier, j, j2, paddingValues, windowInsets, composableLambdaImpl, i);
        }
    }

    /* renamed from: SingleRowTopAppBar-wn8IZOc, reason: not valid java name */
    public static final void m256SingleRowTopAppBarwn8IZOc(final Modifier modifier, final ComposableLambdaImpl composableLambdaImpl, final TextStyle textStyle, final TextStyle textStyle2, final Function2 function2, final Function3 function3, final float f, final WindowInsets windowInsets, final TopAppBarColors topAppBarColors, final PinnedScrollBehavior pinnedScrollBehavior, GapComposer gapComposer, final int i, final int i2) {
        int i3;
        TextStyle textStyle3;
        Function3 function32;
        float f2;
        WindowInsets windowInsets2;
        int i4;
        PinnedScrollBehavior pinnedScrollBehavior2;
        BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
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
            textStyle3 = textStyle2;
            i3 |= gapComposer.changed(textStyle3) ? 16384 : 8192;
        } else {
            textStyle3 = textStyle2;
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
            windowInsets2 = windowInsets;
            i3 |= gapComposer.changed(windowInsets2) ? 536870912 : 268435456;
        } else {
            windowInsets2 = windowInsets;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposer.changed(topAppBarColors) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            pinnedScrollBehavior2 = pinnedScrollBehavior;
            i4 |= gapComposer.changed(pinnedScrollBehavior2) ? 32 : 16;
        } else {
            pinnedScrollBehavior2 = pinnedScrollBehavior;
        }
        if (gapComposer.shouldExecute(i3 & 1, ((306783379 & i3) == 306783378 && (i4 & 19) == 18) ? false : true)) {
            ((DefaultSingleRowTopAppBarOverride) gapComposer.consume(LocalSingleRowTopAppBarOverride)).SingleRowTopAppBar(new SingleRowTopAppBarOverrideScope(modifier, composableLambdaImpl, textStyle, textStyle3, function2, function32, f2, windowInsets2, topAppBarColors, pinnedScrollBehavior2), gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AppBarKt.m256SingleRowTopAppBarwn8IZOc(Modifier.this, composableLambdaImpl, textStyle, textStyle2, function2, function3, f, windowInsets, topAppBarColors, pinnedScrollBehavior, (GapComposer) obj, Updater.updateChangedFlags(i | 1), Updater.updateChangedFlags(i2));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0042  */
    /* renamed from: TopAppBar-GHTll3U, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m257TopAppBarGHTll3U(androidx.compose.runtime.internal.ComposableLambdaImpl r19, androidx.compose.ui.Modifier r20, kotlin.jvm.functions.Function2 r21, kotlin.jvm.functions.Function3 r22, float r23, androidx.compose.foundation.layout.WindowInsets r24, androidx.compose.material3.TopAppBarColors r25, androidx.compose.material3.PinnedScrollBehavior r26, androidx.compose.runtime.GapComposer r27, int r28, int r29) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AppBarKt.m257TopAppBarGHTll3U(androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, float, androidx.compose.foundation.layout.WindowInsets, androidx.compose.material3.TopAppBarColors, androidx.compose.material3.PinnedScrollBehavior, androidx.compose.runtime.GapComposer, int, int):void");
    }

    /* renamed from: TopAppBarLayout-lyUyIHI, reason: not valid java name */
    public static final void m258TopAppBarLayoutlyUyIHI(final Modifier modifier, final FloatProducer floatProducer, final long j, final long j2, final long j3, long j4, final ComposableLambdaImpl composableLambdaImpl, final TextStyle textStyle, final TextStyle textStyle2, Function0 function0, final Function2 function2, ComposableLambdaImpl composableLambdaImpl2, final float f, GapComposer gapComposer, final int i) {
        final Function0 function02;
        ComposableLambdaImpl composableLambdaImpl3;
        final long j5 = j4;
        BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
        gapComposer.startRestartGroup(126395868);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changed(floatProducer) ? 32 : 16) | (gapComposer.changed(j) ? 256 : 128) | (gapComposer.changed(j2) ? 2048 : 1024) | (gapComposer.changed(j3) ? 16384 : 8192) | (gapComposer.changed(j5) ? 131072 : 65536) | (gapComposer.changedInstance(composableLambdaImpl) ? 1048576 : 524288) | (gapComposer.changed(textStyle) ? 8388608 : 4194304) | (gapComposer.changedInstance(null) ? 67108864 : 33554432) | (gapComposer.changed(textStyle2) ? 536870912 : 268435456);
        int i3 = 1600566 | (gapComposer.changed(horizontal) ? 256 : 128) | (gapComposer.changedInstance(function2) ? 131072 : 65536) | (gapComposer.changed(f) ? 8388608 : 4194304);
        if (gapComposer.shouldExecute(i2 & 1, ((i2 & 306783379) == 306783378 && (4793491 & i3) == 4793490) ? false : true)) {
            boolean z = ((i2 & 112) == 32) | ((i3 & 896) == 256) | ((29360128 & i3) == 8388608);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                rememberedValue = new TopAppBarMeasurePolicy(floatProducer, f);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            TopAppBarMeasurePolicy topAppBarMeasurePolicy = (TopAppBarMeasurePolicy) rememberedValue;
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
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer, topAppBarMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$13);
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier layoutId = RulerKt.layoutId(companion, "navigationIcon");
            float f2 = TopAppBarHorizontalPadding;
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(layoutId, f2, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14);
            BiasAlignment biasAlignment = Alignment.Companion.TopStart;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            int currentCompositeKeyHash2 = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m136paddingqDBjuR0$default);
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
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ContentColorKt.LocalContentColor;
            Updater.CompositionLocalProvider(staticProvidableCompositionLocal.defaultProvidedValue$runtime(new Color(j)), function2, gapComposer, ((i3 >> 12) & 112) | 8);
            gapComposer.end(true);
            gapComposer.startReplaceGroup(-1359701523);
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(RulerKt.layoutId(companion, "title"), f2, RecyclerView.DECELERATION_RATE, 2);
            gapComposer.startReplaceGroup(510340109);
            gapComposer.end(false);
            Modifier then = m134paddingVpY3zN4$default.then(companion);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                function02 = function0;
                rememberedValue2 = new RoomDatabase$$ExternalSyntheticLambda3(3, function02);
                gapComposer.updateRememberedValue(rememberedValue2);
            } else {
                function02 = function0;
            }
            Modifier graphicsLayer = ColorKt.graphicsLayer(then, (Function1) rememberedValue2);
            MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            int currentCompositeKeyHash3 = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, graphicsLayer);
            gapComposer.startReusableNode();
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
            LayoutUtilKt.m317ProvideContentColorTextStyle3JVO9M(j2, textStyle, composableLambdaImpl, gapComposer, ((i2 >> 9) & 14) | ((i2 >> 18) & 112) | ((i2 >> 12) & 896));
            gapComposer.end(true);
            gapComposer.end(false);
            Modifier m136paddingqDBjuR0$default2 = OffsetKt.m136paddingqDBjuR0$default(RulerKt.layoutId(companion, "actionIcons"), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, f2, RecyclerView.DECELERATION_RATE, 11);
            MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            int currentCompositeKeyHash4 = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer, m136paddingqDBjuR0$default2);
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
            j5 = j4;
            composableLambdaImpl3 = composableLambdaImpl2;
            Updater.CompositionLocalProvider(staticProvidableCompositionLocal.defaultProvidedValue$runtime(new Color(j5)), composableLambdaImpl3, gapComposer, 56);
            gapComposer.end(true);
            gapComposer.end(true);
        } else {
            function02 = function0;
            composableLambdaImpl3 = composableLambdaImpl2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            final ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl3;
            endRestartGroup.block = new Function2(floatProducer, j, j2, j3, j5, composableLambdaImpl, textStyle, textStyle2, function02, function2, composableLambdaImpl4, f, i) { // from class: androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda10
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
                    AppBarKt.m258TopAppBarLayoutlyUyIHI(Modifier.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, this.f$9, this.f$10, this.f$15, this.f$16, this.f$17, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
