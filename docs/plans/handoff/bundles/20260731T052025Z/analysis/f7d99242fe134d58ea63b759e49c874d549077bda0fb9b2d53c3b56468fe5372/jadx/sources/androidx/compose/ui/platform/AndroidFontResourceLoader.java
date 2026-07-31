package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.text.font.Font$ResourceLoader;
import androidx.core.view.insets.SystemBarStateMonitor;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidFontResourceLoader implements CoroutineContext.Key, ViewCompositionStrategy, Font$ResourceLoader {
    public static final /* synthetic */ AndroidFontResourceLoader $$INSTANCE = new AndroidFontResourceLoader();
    public static final AndroidFontResourceLoader INSTANCE = new AndroidFontResourceLoader();
    public static final WindowRecomposerFactory$Companion$$ExternalSyntheticLambda0 LifecycleAware = new WindowRecomposerFactory$Companion$$ExternalSyntheticLambda0();

    @Override // androidx.compose.ui.platform.ViewCompositionStrategy
    public Function0 installFor(AbstractComposeView abstractComposeView) {
        if (!abstractComposeView.isAttachedToWindow()) {
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            SystemBarStateMonitor.AnonymousClass3 anonymousClass3 = new SystemBarStateMonitor.AnonymousClass3(abstractComposeView, ref$ObjectRef, 1);
            abstractComposeView.addOnAttachStateChangeListener(anonymousClass3);
            ref$ObjectRef.element = new FocusTargetNode$invalidateFocus$1(7, abstractComposeView, anonymousClass3);
            return new LayoutNode$_foldedChildren$1(12, ref$ObjectRef);
        }
        LifecycleOwner lifecycleOwner = ViewModelKt.get((View) abstractComposeView);
        if (lifecycleOwner != null) {
            return TestTagKt.access$installForLifecycle(abstractComposeView, lifecycleOwner.getLifecycle());
        }
        InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("View tree for " + abstractComposeView + " has no ViewTreeLifecycleOwner");
        _UtilJvmKt$$ExternalSyntheticLambda0.m();
        return null;
    }
}
