package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultSingleRowTopAppBarOverride {
    public static final DefaultSingleRowTopAppBarOverride INSTANCE = new DefaultSingleRowTopAppBarOverride();

    public final void SingleRowTopAppBar(SingleRowTopAppBarOverrideScope singleRowTopAppBarOverrideScope, Composer composer, int i) {
        float f = singleRowTopAppBarOverrideScope.expandedHeight;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2137486921);
        int i2 = (gapComposer.changed(singleRowTopAppBarOverrideScope) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            TopAppBarColors topAppBarColors = singleRowTopAppBarOverrideScope.colors;
            if (Float.isNaN(f) || (Float.floatToRawIntBits(f) & Integer.MAX_VALUE) >= 2139095040) {
                UriKt$$ExternalSyntheticBUOutline0.m("The expandedHeight is expected to be specified and finite");
                return;
            }
            boolean changed = gapComposer.changed(topAppBarColors) | gapComposer.changed((Object) null);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.derivedStateOf(new GapPending$keyMap$2(1, singleRowTopAppBarOverrideScope));
                gapComposer.updateRememberedValue(rememberedValue);
            }
            State m110animateColorAsStateeuL9pac = SingleValueAnimationKt.m110animateColorAsStateeuL9pac(((Color) ((State) rememberedValue).getValue()).value, CardKt.value(MotionSchemeKeyTokens.DefaultEffects, gapComposer), gapComposer);
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1658896622, new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(2, singleRowTopAppBarOverrideScope), gapComposer);
            gapComposer.startReplaceGroup(690108113);
            gapComposer.end(false);
            Modifier modifier = singleRowTopAppBarOverrideScope.modifier;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier then = modifier.then(companion);
            boolean changed2 = gapComposer.changed(m110animateColorAsStateeuL9pac);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new DiskLruCache$$ExternalSyntheticLambda0(1, m110animateColorAsStateeuL9pac);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Modifier drawBehind = ClipKt.drawBehind(then, (Function1) rememberedValue2);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new TextKt$$ExternalSyntheticLambda1(6);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Modifier semantics = SemanticsModifierKt.semantics(drawBehind, false, (Function1) rememberedValue3);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = SurfaceKt$Surface$1$3$1.INSTANCE$1;
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(semantics, Unit.INSTANCE, (PointerInputEventHandler) rememberedValue4);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, pointerInput);
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
            Modifier clipToBounds = ClipKt.clipToBounds(OffsetKt.windowInsetsPadding(companion, singleRowTopAppBarOverrideScope.windowInsets));
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AppBarKt.LocalSingleRowTopAppBarOverride;
            boolean z = (i2 & 14) == 4;
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (z || rememberedValue5 == neverEqualPolicy) {
                rememberedValue5 = new DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda2();
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            FloatProducer floatProducer = (FloatProducer) rememberedValue5;
            long j = topAppBarColors.navigationIconContentColor;
            long j2 = topAppBarColors.titleContentColor;
            long j3 = topAppBarColors.actionIconContentColor;
            long j4 = topAppBarColors.subtitleContentColor;
            ComposableLambdaImpl composableLambdaImpl = singleRowTopAppBarOverrideScope.title;
            TextStyle textStyle = singleRowTopAppBarOverrideScope.titleTextStyle;
            TextStyle textStyle2 = singleRowTopAppBarOverrideScope.subtitleTextStyle;
            Function2 function2 = singleRowTopAppBarOverrideScope.navigationIcon;
            float f2 = singleRowTopAppBarOverrideScope.expandedHeight;
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (rememberedValue6 == neverEqualPolicy) {
                rememberedValue6 = new ImmLeaksCleaner$$ExternalSyntheticLambda0(29);
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            AppBarKt.m323TopAppBarLayoutlyUyIHI(clipToBounds, floatProducer, j, j2, j4, j3, composableLambdaImpl, textStyle, textStyle2, (Function0) rememberedValue6, function2, rememberComposableLambda, f2, gapComposer, 0);
            gapComposer = gapComposer;
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GapComposer$$ExternalSyntheticLambda3(i, 14, this, singleRowTopAppBarOverrideScope);
        }
    }
}
