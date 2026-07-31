package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.animation.AnimatedContentKt$AnimatedContent$4$1;
import androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1$2;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.semantics.AppendedSemanticsElement;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.text.TextStyle;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.util.Log;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultSingleRowTopAppBarOverride {
    public static final DefaultSingleRowTopAppBarOverride INSTANCE = new DefaultSingleRowTopAppBarOverride();

    public final void SingleRowTopAppBar(SingleRowTopAppBarOverrideScope singleRowTopAppBarOverrideScope, Composer composer, int i) {
        Modifier then;
        float f = singleRowTopAppBarOverrideScope.expandedHeight;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2137486921);
        int i2 = i | (gapComposer.changed(singleRowTopAppBarOverrideScope) ? 4 : 2);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            TopAppBarColors topAppBarColors = singleRowTopAppBarOverrideScope.colors;
            if (Float.isNaN(f) || (Float.floatToRawIntBits(f) & Log.LOG_LEVEL_OFF) >= 2139095040) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("The expandedHeight is expected to be specified and finite");
                return;
            }
            boolean changed = gapComposer.changed(topAppBarColors) | gapComposer.changed((Object) null);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (changed || rememberedValue == obj) {
                rememberedValue = Updater.derivedStateOf(new GapPending$keyMap$2(singleRowTopAppBarOverrideScope, 1));
                gapComposer.updateRememberedValue(rememberedValue);
            }
            long j = ((Color) ((State) rememberedValue).getValue()).value;
            FiniteAnimationSpec value = BadgeKt.value(MotionSchemeKeyTokens.DefaultEffects, gapComposer);
            boolean changed2 = gapComposer.changed(Color.m247getColorSpaceimpl(j));
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue2 == obj) {
                TwoWayConverterImpl twoWayConverterImpl = new TwoWayConverterImpl(AnimatedContentKt$AnimatedContent$4$1.INSTANCE$2, new ColorVectorConverterKt$ColorToVector$1$2(Color.m247getColorSpaceimpl(j)));
                gapComposer.updateRememberedValue(twoWayConverterImpl);
                rememberedValue2 = twoWayConverterImpl;
            }
            State animateValueAsState = AnimateAsStateKt.animateValueAsState(new Color(j), (TwoWayConverterImpl) rememberedValue2, value, "ColorAnimation", gapComposer, 0);
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1658896622, new Updater$$ExternalSyntheticLambda0(singleRowTopAppBarOverrideScope, 5), gapComposer);
            gapComposer.startReplaceGroup(690075377);
            gapComposer.end(false);
            Modifier then2 = singleRowTopAppBarOverrideScope.modifier.then(Modifier.Companion.$$INSTANCE);
            boolean changed3 = gapComposer.changed(animateValueAsState);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed3 || rememberedValue3 == obj) {
                rememberedValue3 = new DiskLruCache$$ExternalSyntheticLambda0(animateValueAsState, 10);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Modifier drawBehind = ClipKt.drawBehind(then2, (Function1) rememberedValue3);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (rememberedValue4 == obj) {
                rememberedValue4 = new SaversKt$$ExternalSyntheticLambda2(7);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            then = drawBehind.then(new AppendedSemanticsElement((Function1) rememberedValue4, false));
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (rememberedValue5 == obj) {
                rememberedValue5 = SurfaceKt$Surface$1$3$1.INSTANCE$1;
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            PointerEvent pointerEvent = SuspendingPointerInputFilterKt.EmptyPointerEvent;
            Modifier then3 = then.then(new SuspendPointerInputElement(Unit.INSTANCE, null, (PointerInputEventHandler) rememberedValue5, 6));
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j2 = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = RangesKt.materializeModifier(gapComposer, then3);
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
            Modifier clipToBounds = ClipKt.clipToBounds(SpacerKt.windowInsetsPadding(singleRowTopAppBarOverrideScope.windowInsets));
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AppBarKt.LocalSingleRowTopAppBarOverride;
            boolean z = (i2 & 14) == 4;
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (z || rememberedValue6 == obj) {
                rememberedValue6 = new DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda3();
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            FloatProducer floatProducer = (FloatProducer) rememberedValue6;
            long j3 = topAppBarColors.navigationIconContentColor;
            long j4 = topAppBarColors.titleContentColor;
            long j5 = topAppBarColors.actionIconContentColor;
            long j6 = topAppBarColors.subtitleContentColor;
            ComposableLambdaImpl composableLambdaImpl = singleRowTopAppBarOverrideScope.title;
            TextStyle textStyle = singleRowTopAppBarOverrideScope.titleTextStyle;
            TextStyle textStyle2 = singleRowTopAppBarOverrideScope.subtitleTextStyle;
            ComposableLambdaImpl composableLambdaImpl2 = singleRowTopAppBarOverrideScope.navigationIcon;
            float f2 = singleRowTopAppBarOverrideScope.expandedHeight;
            PaddingValues paddingValues = singleRowTopAppBarOverrideScope.contentPadding;
            Object rememberedValue7 = gapComposer.rememberedValue();
            if (rememberedValue7 == obj) {
                rememberedValue7 = new ImmLeaksCleaner$$ExternalSyntheticLambda0(12);
                gapComposer.updateRememberedValue(rememberedValue7);
            }
            AppBarKt.m131TopAppBarLayout_5F1rQI(clipToBounds, floatProducer, j3, j4, j6, j5, composableLambdaImpl, textStyle, textStyle2, (Function0) rememberedValue7, composableLambdaImpl2, rememberComposableLambda, f2, paddingValues, gapComposer, 0);
            gapComposer = gapComposer;
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextKt$$ExternalSyntheticLambda2(i, this, singleRowTopAppBarOverrideScope, 8);
        }
    }
}
