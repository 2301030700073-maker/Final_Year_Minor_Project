package androidx.compose.ui.platform;

import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.retain.LocalRetainedValuesStoreKt;
import androidx.compose.ui.node.Owner;
import androidx.glance.appwidget.components.ButtonsKt$M3TextButton$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CompositionLocalsKt {
    public static final StaticProvidableCompositionLocal LocalAccessibilityManager = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$7);
    public static final StaticProvidableCompositionLocal LocalAutofill = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$8);
    public static final StaticProvidableCompositionLocal LocalAutofillTree = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$10);
    public static final StaticProvidableCompositionLocal LocalAutofillManager = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$9);
    public static final StaticProvidableCompositionLocal LocalClipboardManager = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$12);
    public static final StaticProvidableCompositionLocal LocalClipboard = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$11);
    public static final StaticProvidableCompositionLocal LocalGraphicsContext = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$17);
    public static final StaticProvidableCompositionLocal LocalDensity = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE);
    public static final StaticProvidableCompositionLocal LocalFocusManager = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$14);
    public static final StaticProvidableCompositionLocal LocalFontLoader = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$16);
    public static final StaticProvidableCompositionLocal LocalFontFamilyResolver = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$15);
    public static final StaticProvidableCompositionLocal LocalHapticFeedback = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$18);
    public static final StaticProvidableCompositionLocal LocalInputModeManager = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$19);
    public static final StaticProvidableCompositionLocal LocalLayoutDirection = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$20);
    public static final StaticProvidableCompositionLocal LocalProvidableLocaleList = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$22);
    public static final ComputedProvidableCompositionLocal LocalLocale = new ComputedProvidableCompositionLocal(CompositionLocalsKt$LocalLocale$1.INSTANCE);
    public static final StaticProvidableCompositionLocal LocalTextInputService = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$25);
    public static final StaticProvidableCompositionLocal LocalSoftwareKeyboardController = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$24);
    public static final StaticProvidableCompositionLocal LocalTextToolbar = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$26);
    public static final StaticProvidableCompositionLocal LocalUriHandler = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$27);
    public static final StaticProvidableCompositionLocal LocalViewConfiguration = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$28);
    public static final StaticProvidableCompositionLocal LocalWindowInfo = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$29);
    public static final StaticProvidableCompositionLocal LocalPointerIconService = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$21);
    public static final StaticProvidableCompositionLocal LocalProvidableScrollCaptureInProgress = new StaticProvidableCompositionLocal(1, CompositionLocalsKt$LocalDensity$1.INSTANCE$23);
    public static final StaticProvidableCompositionLocal LocalCursorBlinkEnabled = new StaticProvidableCompositionLocal(0, CompositionLocalsKt$LocalDensity$1.INSTANCE$13);

    public static final void ProvideCommonCompositionLocals(Owner owner, AndroidUriHandler androidUriHandler, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(1925803616);
        int i2 = (gapComposer.changed(owner) ? 4 : 2) | i | (gapComposer.changed(androidUriHandler) ? 32 : 16) | (gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            AndroidComposeView androidComposeView = (AndroidComposeView) owner;
            ProvidedValue defaultProvidedValue$runtime = LocalAccessibilityManager.defaultProvidedValue$runtime(androidComposeView.getAccessibilityManager());
            ProvidedValue defaultProvidedValue$runtime2 = LocalAutofill.defaultProvidedValue$runtime(androidComposeView.getAutofill());
            ProvidedValue defaultProvidedValue$runtime3 = LocalAutofillManager.defaultProvidedValue$runtime(androidComposeView.getAutofillManager());
            ProvidedValue defaultProvidedValue$runtime4 = LocalAutofillTree.defaultProvidedValue$runtime(androidComposeView.getAutofillTree());
            ProvidedValue defaultProvidedValue$runtime5 = LocalClipboardManager.defaultProvidedValue$runtime(androidComposeView.m597getClipboardManager());
            ProvidedValue defaultProvidedValue$runtime6 = LocalClipboard.defaultProvidedValue$runtime(androidComposeView.m596getClipboard());
            ProvidedValue defaultProvidedValue$runtime7 = LocalDensity.defaultProvidedValue$runtime(androidComposeView.getDensity());
            ProvidedValue defaultProvidedValue$runtime8 = LocalFocusManager.defaultProvidedValue$runtime(androidComposeView.getFocusOwner());
            ProvidedValue defaultProvidedValue$runtime9 = LocalFontLoader.defaultProvidedValue$runtime(androidComposeView.getFontLoader());
            defaultProvidedValue$runtime9.canOverride = false;
            ProvidedValue defaultProvidedValue$runtime10 = LocalFontFamilyResolver.defaultProvidedValue$runtime(androidComposeView.getFontFamilyResolver());
            defaultProvidedValue$runtime10.canOverride = false;
            Updater.CompositionLocalProvider(new ProvidedValue[]{defaultProvidedValue$runtime, defaultProvidedValue$runtime2, defaultProvidedValue$runtime3, defaultProvidedValue$runtime4, defaultProvidedValue$runtime5, defaultProvidedValue$runtime6, defaultProvidedValue$runtime7, defaultProvidedValue$runtime8, defaultProvidedValue$runtime9, defaultProvidedValue$runtime10, LocalHapticFeedback.defaultProvidedValue$runtime(androidComposeView.getHapticFeedBack()), LocalInputModeManager.defaultProvidedValue$runtime(androidComposeView.getInputModeManager()), LocalLayoutDirection.defaultProvidedValue$runtime(androidComposeView.getLayoutDirection()), LocalTextInputService.defaultProvidedValue$runtime(androidComposeView.getTextInputService()), LocalSoftwareKeyboardController.defaultProvidedValue$runtime(androidComposeView.getSoftwareKeyboardController()), LocalTextToolbar.defaultProvidedValue$runtime(androidComposeView.getTextToolbar()), LocalUriHandler.defaultProvidedValue$runtime(androidUriHandler), LocalViewConfiguration.defaultProvidedValue$runtime(androidComposeView.getViewConfiguration()), LocalWindowInfo.defaultProvidedValue$runtime(androidComposeView.getWindowInfo()), LocalPointerIconService.defaultProvidedValue$runtime(androidComposeView.getPointerIconService()), LocalGraphicsContext.defaultProvidedValue$runtime(androidComposeView.getGraphicsContext()), LocalRetainedValuesStoreKt.LocalRetainedValuesStore.defaultProvidedValue$runtime(androidComposeView.getRetainedValuesStore()), LocalProvidableLocaleList.defaultProvidedValue$runtime(androidComposeView.getLocaleList())}, composableLambdaImpl, gapComposer, ((i2 >> 3) & 112) | 8);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ButtonsKt$M3TextButton$1(owner, androidUriHandler, composableLambdaImpl, i);
        }
    }

    public static final void noLocalProvidedFor(String str) {
        throw new IllegalStateException(("CompositionLocal " + str + " not present").toString());
    }
}
