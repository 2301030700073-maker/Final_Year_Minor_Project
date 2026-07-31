package androidx.compose.foundation.text.contextmenu.internal;

import android.view.View;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.text.contextmenu.ProcessTextApi23Impl$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.TooltipKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.window.PopupProperties;
import app.k9mail.core.ui.compose.designsystem.template.ResponsiveContentKt$$ExternalSyntheticLambda1;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AndroidTextContextMenuToolbarProvider_androidKt {
    public static final ComposableLambdaImpl lambda$636288403 = new ComposableLambdaImpl(636288403, new ProcessTextApi23Impl$$ExternalSyntheticLambda1(1), false);

    /* renamed from: lambda$-1357803046, reason: not valid java name */
    public static final ComposableLambdaImpl f8lambda$1357803046 = new ComposableLambdaImpl(-1357803046, new ProcessTextApi23Impl$$ExternalSyntheticLambda1(2), false);

    public static final void ProvideBothDefaultProviders(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(790527681);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = new ParcelableSnapshotMutableState(null, NeverEqualPolicy.INSTANCE);
                gapComposer.updateRememberedValue(parcelableSnapshotMutableState);
                rememberedValue = parcelableSnapshotMutableState;
            }
            MutableState mutableState = (MutableState) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 7);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Function0 function0 = (Function0) rememberedValue2;
            PopupProperties popupProperties = DefaultTextContextMenuDropdownProvider_androidKt.DefaultPopupProperties;
            BasicTextContextMenuProvider basicTextContextMenuProvider = IntOffsetKt.basicTextContextMenuProvider(f8lambda$1357803046, gapComposer, 6);
            Updater.CompositionLocalProvider(new ProvidedValue[]{TextContextMenuProviderKt.LocalTextContextMenuToolbarProvider.defaultProvidedValue$runtime(platformTextContextMenuToolbarProvider(function0, gapComposer, 2)), TextContextMenuProviderKt.LocalTextContextMenuDropdownProvider.defaultProvidedValue$runtime(basicTextContextMenuProvider)}, Expect_jvmKt.rememberComposableLambda(1070596993, new CoilImageKt$$ExternalSyntheticLambda15(modifier, mutableState, composableLambdaImpl, basicTextContextMenuProvider, function0, 1), gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ResponsiveContentKt$$ExternalSyntheticLambda1(modifier, composableLambdaImpl, i, 5);
        }
    }

    public static final void ProvideDefaultPlatformTextContextMenuProviders(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(155925518);
        int i3 = 4;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            boolean z = gapComposer.consume(TextContextMenuProviderKt.LocalTextContextMenuDropdownProvider) != null;
            boolean z2 = gapComposer.consume(TextContextMenuProviderKt.LocalTextContextMenuToolbarProvider) != null;
            if (z && z2) {
                gapComposer.startReplaceGroup(-1977187922);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
                long j = gapComposer.compositeKeyHashCode;
                int i4 = (int) ((j >>> 32) ^ j);
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
                Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                composableLambdaImpl.invoke(gapComposer, Integer.valueOf((i2 >> 3) & 14));
                gapComposer.end(true);
                gapComposer.end(false);
            } else if (z) {
                gapComposer.startReplaceGroup(-1976997706);
                ProvidePlatformTextContextMenuToolbar(modifier, composableLambdaImpl, gapComposer, i2 & 126);
                gapComposer.end(false);
            } else if (z2) {
                gapComposer.startReplaceGroup(-1976846922);
                DefaultTextContextMenuDropdownProvider_androidKt.ProvideDefaultTextContextMenuDropdown(modifier, composableLambdaImpl, gapComposer, i2 & 126);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1976716505);
                ProvideBothDefaultProviders(modifier, composableLambdaImpl, gapComposer, i2 & 126);
                gapComposer.end(false);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ResponsiveContentKt$$ExternalSyntheticLambda1(modifier, composableLambdaImpl, i, i3);
        }
    }

    public static final void ProvidePlatformTextContextMenuToolbar(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2064964257);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            ProvidePlatformTextContextMenuToolbar$1(modifier, composableLambdaImpl, gapComposer, ((i2 << 3) & 896) | (i2 & 14) | 48);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ResponsiveContentKt$$ExternalSyntheticLambda1(modifier, composableLambdaImpl, i, i3);
        }
    }

    public static final void ProvidePlatformTextContextMenuToolbar$1(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(771959668);
        int i3 = 2;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(null) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = new ParcelableSnapshotMutableState(null, NeverEqualPolicy.INSTANCE);
                gapComposer.updateRememberedValue(parcelableSnapshotMutableState);
                rememberedValue = parcelableSnapshotMutableState;
            }
            MutableState mutableState = (MutableState) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 6);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.CompositionLocalProvider(TextContextMenuProviderKt.LocalTextContextMenuToolbarProvider.defaultProvidedValue$runtime(platformTextContextMenuToolbarProvider((Function0) rememberedValue2, gapComposer, 0)), Expect_jvmKt.rememberComposableLambda(-291176396, new SegmentedButtonKt$$ExternalSyntheticLambda4(3, composableLambdaImpl, modifier, mutableState), gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ResponsiveContentKt$$ExternalSyntheticLambda1(modifier, composableLambdaImpl, i, i3);
        }
    }

    public static final AndroidTextContextMenuToolbarProvider platformTextContextMenuToolbarProvider(Function0 function0, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        View view = (View) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalView);
        boolean changed = gapComposer.changed(view);
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (changed || rememberedValue == neverEqualPolicy) {
            rememberedValue = new AndroidTextContextMenuToolbarProvider(view, null, function0);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        AndroidTextContextMenuToolbarProvider androidTextContextMenuToolbarProvider = (AndroidTextContextMenuToolbarProvider) rememberedValue;
        boolean changedInstance = gapComposer.changedInstance(androidTextContextMenuToolbarProvider);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda0(androidTextContextMenuToolbarProvider, 3);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.DisposableEffect(androidTextContextMenuToolbarProvider, (Function1) rememberedValue2, gapComposer);
        return androidTextContextMenuToolbarProvider;
    }
}
