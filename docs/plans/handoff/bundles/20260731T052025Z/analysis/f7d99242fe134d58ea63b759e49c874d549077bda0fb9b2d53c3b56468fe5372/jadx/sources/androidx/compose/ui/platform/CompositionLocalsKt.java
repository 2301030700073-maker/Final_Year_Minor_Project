package androidx.compose.ui.platform;

import androidx.compose.material3.TextKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.retain.LocalRetainedValuesStoreKt;
import androidx.compose.ui.node.Owner;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CompositionLocalsKt {
    public static final StaticProvidableCompositionLocal LocalCursorBlinkEnabled;
    public static final StaticProvidableCompositionLocal LocalPointerIconService;
    public static final DynamicProvidableCompositionLocal LocalProvidableScrollCaptureInProgress;
    public static final StaticProvidableCompositionLocal LocalSoftwareKeyboardController;
    public static final StaticProvidableCompositionLocal LocalTextInputService;
    public static final StaticProvidableCompositionLocal LocalTextToolbar;
    public static final StaticProvidableCompositionLocal LocalUriHandler;
    public static final StaticProvidableCompositionLocal LocalViewConfiguration;
    public static final StaticProvidableCompositionLocal LocalWindowInfo;
    public static final StaticProvidableCompositionLocal LocalAccessibilityManager = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$7);
    public static final StaticProvidableCompositionLocal LocalAutofill = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$8);
    public static final StaticProvidableCompositionLocal LocalAutofillTree = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$10);
    public static final StaticProvidableCompositionLocal LocalAutofillManager = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$9);
    public static final StaticProvidableCompositionLocal LocalClipboardManager = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$12);
    public static final StaticProvidableCompositionLocal LocalClipboard = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$11);
    public static final StaticProvidableCompositionLocal LocalGraphicsContext = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$17);
    public static final StaticProvidableCompositionLocal LocalDensity = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE);
    public static final StaticProvidableCompositionLocal LocalFocusManager = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$14);
    public static final StaticProvidableCompositionLocal LocalFontLoader = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$16);
    public static final StaticProvidableCompositionLocal LocalFontFamilyResolver = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$15);
    public static final StaticProvidableCompositionLocal LocalHapticFeedback = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$18);
    public static final StaticProvidableCompositionLocal LocalInputModeManager = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$19);
    public static final StaticProvidableCompositionLocal LocalLayoutDirection = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$20);
    public static final StaticProvidableCompositionLocal LocalProvidableLocaleList = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$22);

    static {
        ResultKt.lazy(new TextKt$$ExternalSyntheticLambda4(12));
        LocalTextInputService = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$25);
        LocalSoftwareKeyboardController = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$24);
        LocalTextToolbar = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$26);
        LocalUriHandler = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$27);
        LocalViewConfiguration = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$28);
        LocalWindowInfo = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$29);
        LocalPointerIconService = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$21);
        LocalProvidableScrollCaptureInProgress = new DynamicProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$23);
        LocalCursorBlinkEnabled = new StaticProvidableCompositionLocal(CompositionLocalsKt$LocalDensity$1.INSTANCE$13);
    }

    public static final void ProvideCommonCompositionLocals(Owner owner, AndroidUriHandler androidUriHandler, Function2 function2, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1925803616);
        int i2 = (gapComposer.changed(owner) ? 4 : 2) | i | (gapComposer.changed(androidUriHandler) ? 32 : 16) | (gapComposer.changedInstance(function2) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            AndroidComposeView androidComposeView = (AndroidComposeView) owner;
            ProvidedValue defaultProvidedValue$runtime = LocalAccessibilityManager.defaultProvidedValue$runtime(androidComposeView.getAccessibilityManager());
            ProvidedValue defaultProvidedValue$runtime2 = LocalAutofill.defaultProvidedValue$runtime(androidComposeView.getAutofill());
            ProvidedValue defaultProvidedValue$runtime3 = LocalAutofillManager.defaultProvidedValue$runtime(androidComposeView.getAutofillManager());
            ProvidedValue defaultProvidedValue$runtime4 = LocalAutofillTree.defaultProvidedValue$runtime(androidComposeView.getAutofillTree());
            ProvidedValue defaultProvidedValue$runtime5 = LocalClipboardManager.defaultProvidedValue$runtime(androidComposeView.m657getClipboardManager());
            ProvidedValue defaultProvidedValue$runtime6 = LocalClipboard.defaultProvidedValue$runtime(androidComposeView.m656getClipboard());
            ProvidedValue defaultProvidedValue$runtime7 = LocalDensity.defaultProvidedValue$runtime(androidComposeView.getDensity());
            ProvidedValue defaultProvidedValue$runtime8 = LocalFocusManager.defaultProvidedValue$runtime(androidComposeView.getFocusOwner());
            ProvidedValue defaultProvidedValue$runtime9 = LocalFontLoader.defaultProvidedValue$runtime(androidComposeView.getFontLoader());
            defaultProvidedValue$runtime9.canOverride = false;
            ProvidedValue defaultProvidedValue$runtime10 = LocalFontFamilyResolver.defaultProvidedValue$runtime(androidComposeView.getFontFamilyResolver());
            defaultProvidedValue$runtime10.canOverride = false;
            Updater.CompositionLocalProvider(new ProvidedValue[]{defaultProvidedValue$runtime, defaultProvidedValue$runtime2, defaultProvidedValue$runtime3, defaultProvidedValue$runtime4, defaultProvidedValue$runtime5, defaultProvidedValue$runtime6, defaultProvidedValue$runtime7, defaultProvidedValue$runtime8, defaultProvidedValue$runtime9, defaultProvidedValue$runtime10, LocalHapticFeedback.defaultProvidedValue$runtime(androidComposeView.getHapticFeedBack()), LocalInputModeManager.defaultProvidedValue$runtime(androidComposeView.getInputModeManager()), LocalLayoutDirection.defaultProvidedValue$runtime(androidComposeView.getLayoutDirection()), LocalTextInputService.defaultProvidedValue$runtime(androidComposeView.getTextInputService()), LocalSoftwareKeyboardController.defaultProvidedValue$runtime(androidComposeView.getSoftwareKeyboardController()), LocalTextToolbar.defaultProvidedValue$runtime(androidComposeView.getTextToolbar()), LocalUriHandler.defaultProvidedValue$runtime(androidUriHandler), LocalViewConfiguration.defaultProvidedValue$runtime(androidComposeView.getViewConfiguration()), LocalWindowInfo.defaultProvidedValue$runtime(androidComposeView.getWindowInfo()), LocalPointerIconService.defaultProvidedValue$runtime(androidComposeView.getPointerIconService()), LocalGraphicsContext.defaultProvidedValue$runtime(androidComposeView.getGraphicsContext()), LocalRetainedValuesStoreKt.LocalRetainedValuesStore.defaultProvidedValue$runtime(androidComposeView.getRetainedValuesStore()), LocalProvidableLocaleList.defaultProvidedValue$runtime(androidComposeView.getLocaleList())}, function2, gapComposer, ((i2 >> 3) & 112) | 8);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new WrappedComposition$setContent$1$2(owner, androidUriHandler, function2, i);
        }
    }

    public static final void access$noLocalProvidedFor(String str) {
        throw new IllegalStateException(("CompositionLocal " + str + " not present").toString());
    }
}
