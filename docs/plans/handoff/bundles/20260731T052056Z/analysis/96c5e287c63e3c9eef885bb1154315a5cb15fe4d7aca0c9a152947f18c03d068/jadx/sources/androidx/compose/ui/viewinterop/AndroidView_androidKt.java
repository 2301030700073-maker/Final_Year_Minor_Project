package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.view.View;
import androidx.compose.runtime.AbstractApplier;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$5;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.UiApplier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.glance.layout.BoxKt$Box$3;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import androidx.work.impl.AutoMigration_14_15;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AndroidView_androidKt {
    public static final AutoMigration_14_15 NoOpScrollConnection = new AutoMigration_14_15(6);

    public static final void AndroidView(Function1 function1, Modifier modifier, Function1 function12, GapComposer gapComposer, int i) {
        int i2;
        Function1 function13;
        Modifier modifier2;
        LifecycleOwner lifecycleOwner;
        Density density;
        AndroidView_androidKt$NoOpUpdate$1 androidView_androidKt$NoOpUpdate$1;
        LayoutDirection layoutDirection;
        AndroidView_androidKt$NoOpUpdate$1 androidView_androidKt$NoOpUpdate$12 = AndroidView_androidKt$NoOpUpdate$1.INSTANCE;
        gapComposer.startRestartGroup(-180024211);
        AbstractApplier abstractApplier = gapComposer.applier;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(function1) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        int i3 = i2 | 384;
        if ((i & 3072) == 0) {
            i3 |= gapComposer.changedInstance(androidView_androidKt$NoOpUpdate$12) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer.changedInstance(function12) ? 16384 : 8192;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier.then(FocusGroupPropertiesElement.INSTANCE).then(FocusTargetNode.FocusTargetElement.INSTANCE).then(FocusTargetPropertiesElement.INSTANCE).then(FocusTargetInteropElement.INSTANCE));
            Density density2 = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
            LayoutDirection layoutDirection2 = (LayoutDirection) gapComposer.consume(CompositionLocalsKt.LocalLayoutDirection);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            LifecycleOwner lifecycleOwner2 = (LifecycleOwner) gapComposer.consume(LocalLifecycleOwnerKt.LocalLifecycleOwner);
            SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) gapComposer.consume(LocalSavedStateRegistryOwnerKt.LocalSavedStateRegistryOwner);
            gapComposer.startReplaceGroup(1314774735);
            int i5 = i3 & 14;
            long j2 = gapComposer.compositeKeyHashCode;
            int i6 = (int) (j2 ^ (j2 >>> 32));
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            GapComposer.CompositionContextImpl rememberCompositionContext = Updater.rememberCompositionContext(gapComposer);
            SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) gapComposer.consume(SaveableStateRegistryKt.LocalSaveableStateRegistry);
            View view = (View) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalView);
            boolean changedInstance = gapComposer.changedInstance(context) | ((((i5 & 14) ^ 6) > 4 && gapComposer.changed(function1)) || (i5 & 6) == 4) | gapComposer.changedInstance(rememberCompositionContext) | gapComposer.changedInstance(saveableStateRegistry) | gapComposer.changed(i6) | gapComposer.changedInstance(view);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                modifier2 = materializeModifier;
                lifecycleOwner = lifecycleOwner2;
                density = density2;
                androidView_androidKt$NoOpUpdate$1 = androidView_androidKt$NoOpUpdate$12;
                layoutDirection = layoutDirection2;
                AndroidView_androidKt$createAndroidViewNodeFactory$1$1 androidView_androidKt$createAndroidViewNodeFactory$1$1 = new AndroidView_androidKt$createAndroidViewNodeFactory$1$1(i6, 0, context, function1, rememberCompositionContext, saveableStateRegistry, view);
                gapComposer.updateRememberedValue(androidView_androidKt$createAndroidViewNodeFactory$1$1);
                rememberedValue = androidView_androidKt$createAndroidViewNodeFactory$1$1;
            } else {
                modifier2 = materializeModifier;
                lifecycleOwner = lifecycleOwner2;
                density = density2;
                androidView_androidKt$NoOpUpdate$1 = androidView_androidKt$NoOpUpdate$12;
                layoutDirection = layoutDirection2;
            }
            Function0 function0 = (Function0) rememberedValue;
            if (!(abstractApplier instanceof UiApplier)) {
                Updater.invalidApplier();
                throw null;
            }
            gapComposer.startNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(function0);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode.Companion.getClass();
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, modifier2, AndroidView_androidKt$AndroidView$3$1.INSTANCE$2);
            Updater.m327setimpl(gapComposer, density, AndroidView_androidKt$AndroidView$3$1.INSTANCE$3);
            Updater.m327setimpl(gapComposer, lifecycleOwner, AndroidView_androidKt$AndroidView$3$1.INSTANCE$4);
            Updater.m327setimpl(gapComposer, savedStateRegistryOwner, AndroidView_androidKt$AndroidView$3$1.INSTANCE$5);
            Updater.m327setimpl(gapComposer, layoutDirection, AndroidView_androidKt$AndroidView$3$1.INSTANCE$6);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            function13 = function12;
            Updater.m327setimpl(gapComposer, function13, AndroidView_androidKt$AndroidView$3$1.INSTANCE);
            Updater.m327setimpl(gapComposer, androidView_androidKt$NoOpUpdate$1, AndroidView_androidKt$AndroidView$3$1.INSTANCE$1);
            gapComposer.end(true);
            gapComposer.end(false);
        } else {
            function13 = function12;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SubcomposeLayoutKt$SubcomposeLayout$5(function1, modifier, function13, i, 1);
        }
    }

    public static final View getEmbeddedView(Modifier.Node node) {
        ViewFactoryHolder viewFactoryHolder = HitTestResultKt.requireLayoutNode(node.node).interopViewFactoryHolder;
        View interopView = viewFactoryHolder != null ? viewFactoryHolder.getInteropView() : null;
        if (interopView != null) {
            return interopView;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Could not fetch interop view");
        return null;
    }

    public static final void layoutAccordingTo(ViewFactoryHolder viewFactoryHolder, LayoutNode layoutNode) {
        long mo520localToRootMKHz9U = ((InnerNodeCoordinator) layoutNode.nodes.innerCoordinator).mo520localToRootMKHz9U(0L);
        int round = Math.round(Float.intBitsToFloat((int) (mo520localToRootMKHz9U >> 32)));
        int round2 = Math.round(Float.intBitsToFloat((int) (mo520localToRootMKHz9U & 4294967295L)));
        viewFactoryHolder.layout(round, round2, viewFactoryHolder.getMeasuredWidth() + round, viewFactoryHolder.getMeasuredHeight() + round2);
    }

    public static final ViewFactoryHolder requireViewFactoryHolder(LayoutNode layoutNode) {
        ViewFactoryHolder viewFactoryHolder = layoutNode.interopViewFactoryHolder;
        if (viewFactoryHolder != null) {
            return viewFactoryHolder;
        }
        throw Modifier.CC.m("Required value was null.");
    }

    public static final void AndroidView(Function1 function1, Modifier modifier, Function1 function12, GapComposer gapComposer, int i, int i2) {
        int i3;
        int i4;
        AndroidView_androidKt$NoOpUpdate$1 androidView_androidKt$NoOpUpdate$1 = AndroidView_androidKt$NoOpUpdate$1.INSTANCE;
        gapComposer.startRestartGroup(-1783766393);
        if ((i & 6) == 0) {
            i3 = (gapComposer.changedInstance(function1) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        int i5 = i2 & 4;
        if (i5 != 0) {
            i4 = i3 | 384;
        } else {
            i4 = i3 | (gapComposer.changedInstance(function12) ? 256 : 128);
        }
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 147) != 146)) {
            if (i5 != 0) {
                function12 = androidView_androidKt$NoOpUpdate$1;
            }
            AndroidView(function1, modifier, function12, gapComposer, (i4 & 14) | 3072 | (i4 & 112) | ((i4 << 6) & 57344));
        } else {
            gapComposer.skipToGroupEnd();
        }
        Function1 function13 = function12;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new BoxKt$Box$3(function1, modifier, function13, i, i2, 1);
        }
    }
}
