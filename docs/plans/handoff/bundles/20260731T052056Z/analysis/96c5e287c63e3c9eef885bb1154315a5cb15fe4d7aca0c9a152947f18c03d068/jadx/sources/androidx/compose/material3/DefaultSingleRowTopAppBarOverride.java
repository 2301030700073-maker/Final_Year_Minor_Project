package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultSingleRowTopAppBarOverride {
    public static final DefaultSingleRowTopAppBarOverride INSTANCE = new DefaultSingleRowTopAppBarOverride();

    public final void SingleRowTopAppBar(SingleRowTopAppBarOverrideScope singleRowTopAppBarOverrideScope, GapComposer gapComposer, int i) {
        TopAppBarState topAppBarState;
        Modifier onSizeChanged;
        GapComposer gapComposer2 = gapComposer;
        float f = singleRowTopAppBarOverrideScope.expandedHeight;
        gapComposer2.startRestartGroup(2137486921);
        int i2 = 2;
        int i3 = i | (gapComposer2.changed(singleRowTopAppBarOverrideScope) ? 4 : 2);
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 3) != 2)) {
            TopAppBarColors topAppBarColors = singleRowTopAppBarOverrideScope.colors;
            PinnedScrollBehavior pinnedScrollBehavior = singleRowTopAppBarOverrideScope.scrollBehavior;
            if (Float.isNaN(f) || (Float.floatToRawIntBits(f) & Integer.MAX_VALUE) >= 2139095040) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("The expandedHeight is expected to be specified and finite");
                return;
            }
            boolean changed = gapComposer2.changed(topAppBarColors) | gapComposer2.changed(pinnedScrollBehavior);
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                rememberedValue = SnapshotStateKt__DerivedStateKt.derivedStateOf(new GapPending$keyMap$2(1, singleRowTopAppBarOverrideScope));
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            State m18animateColorAsStateeuL9pac = SingleValueAnimationKt.m18animateColorAsStateeuL9pac(((Color) ((State) rememberedValue).getValue()).value, CardKt.value(MotionSchemeKeyTokens.DefaultEffects, gapComposer2), gapComposer2);
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1658896622, new CardKt$Card$1(i2, singleRowTopAppBarOverrideScope), gapComposer2);
            gapComposer2.startReplaceGroup(690108113);
            gapComposer2.end(false);
            Modifier modifier = singleRowTopAppBarOverrideScope.modifier;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier then = modifier.then(companion);
            boolean changed2 = gapComposer2.changed(m18animateColorAsStateeuL9pac);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (changed2 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda0(m18animateColorAsStateeuL9pac, 0);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            Modifier drawBehind = ClipKt.drawBehind(then, (Function1) rememberedValue2);
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new ChipKt$$ExternalSyntheticLambda2(18);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            Modifier semantics = SemanticsModifierKt.semantics(drawBehind, false, (Function1) rememberedValue3);
            Object rememberedValue4 = gapComposer2.rememberedValue();
            if (rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = SurfaceKt$Surface$1$3$1.INSTANCE$1;
                gapComposer2.updateRememberedValue(rememberedValue4);
            }
            Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(semantics, Unit.INSTANCE, (PointerInputEventHandler) rememberedValue4);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer2);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, pointerInput);
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
            Modifier clipToBounds = ClipKt.clipToBounds(OffsetKt.windowInsetsPadding(companion, singleRowTopAppBarOverrideScope.windowInsets));
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = AppBarKt.LocalSingleRowTopAppBarOverride;
            if (pinnedScrollBehavior != null && (topAppBarState = pinnedScrollBehavior.state) != null && (onSizeChanged = RulerKt.onSizeChanged(clipToBounds, new AppBarKt$$ExternalSyntheticLambda11(0, topAppBarState))) != null) {
                clipToBounds = onSizeChanged;
            }
            boolean z = (i3 & 14) == 4;
            Object rememberedValue5 = gapComposer2.rememberedValue();
            if (z || rememberedValue5 == neverEqualPolicy) {
                rememberedValue5 = new DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda2(0, singleRowTopAppBarOverrideScope);
                gapComposer2.updateRememberedValue(rememberedValue5);
            }
            FloatProducer floatProducer = (FloatProducer) rememberedValue5;
            Modifier modifier2 = clipToBounds;
            long j = topAppBarColors.navigationIconContentColor;
            long j2 = topAppBarColors.titleContentColor;
            long j3 = topAppBarColors.actionIconContentColor;
            long j4 = topAppBarColors.subtitleContentColor;
            ComposableLambdaImpl composableLambdaImpl = singleRowTopAppBarOverrideScope.title;
            TextStyle textStyle = singleRowTopAppBarOverrideScope.titleTextStyle;
            TextStyle textStyle2 = singleRowTopAppBarOverrideScope.subtitleTextStyle;
            Function2 function2 = singleRowTopAppBarOverrideScope.navigationIcon;
            float f2 = singleRowTopAppBarOverrideScope.expandedHeight;
            Object rememberedValue6 = gapComposer2.rememberedValue();
            if (rememberedValue6 == neverEqualPolicy) {
                rememberedValue6 = new ImmLeaksCleaner$$ExternalSyntheticLambda0(28);
                gapComposer2.updateRememberedValue(rememberedValue6);
            }
            AppBarKt.m258TopAppBarLayoutlyUyIHI(modifier2, floatProducer, j, j2, j4, j3, composableLambdaImpl, textStyle, textStyle2, (Function0) rememberedValue6, function2, rememberComposableLambda, f2, gapComposer2, 0);
            gapComposer2 = gapComposer2;
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda17(this, singleRowTopAppBarOverrideScope, i, 14);
        }
    }
}
