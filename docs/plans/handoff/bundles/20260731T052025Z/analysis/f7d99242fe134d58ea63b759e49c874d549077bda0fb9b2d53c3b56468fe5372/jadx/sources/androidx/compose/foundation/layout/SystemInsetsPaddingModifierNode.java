package androidx.compose.foundation.layout;

import android.view.View;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SystemInsetsPaddingModifierNode extends InsetsPaddingModifierNode {
    public Function1 insetsGetter;
    public WindowInsetsHolder windowInsetsHolder;

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode, androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        View requireView = HitTestResultKt.requireView(this);
        WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
        WindowInsetsHolder orCreateFor = FlowRowOverflow.getOrCreateFor(requireView);
        orCreateFor.incrementAccessors(requireView);
        WindowInsets windowInsets = (WindowInsets) this.insetsGetter.invoke(orCreateFor);
        if (!Intrinsics.areEqual(windowInsets, this.insets)) {
            this.insets = windowInsets;
            insetsInvalidated();
        }
        this.windowInsetsHolder = orCreateFor;
        super.onAttach();
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode, androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        View requireView = HitTestResultKt.requireView(this);
        WindowInsetsHolder windowInsetsHolder = this.windowInsetsHolder;
        if (windowInsetsHolder != null) {
            int i = windowInsetsHolder.accessCount - 1;
            windowInsetsHolder.accessCount = i;
            if (i == 0) {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(requireView, null);
                ViewCompat.setWindowInsetsAnimationCallback(requireView, null);
                requireView.removeOnAttachStateChangeListener(windowInsetsHolder.insetsListener);
            }
        }
        super.onDetach();
    }
}
