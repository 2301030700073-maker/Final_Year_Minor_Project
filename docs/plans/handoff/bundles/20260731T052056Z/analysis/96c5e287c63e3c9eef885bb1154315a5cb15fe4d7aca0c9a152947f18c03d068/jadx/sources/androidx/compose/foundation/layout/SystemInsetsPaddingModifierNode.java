package androidx.compose.foundation.layout;

import android.view.View;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import java.util.WeakHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SystemInsetsPaddingModifierNode extends InsetsPaddingModifierNode {
    public Function1 insetsGetter;
    public WindowInsetsHolder windowInsetsHolder;

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode, androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        View requireView = HitTestResultKt.requireView(this);
        WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
        WindowInsetsHolder orCreateFor = OffsetKt.getOrCreateFor(requireView);
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
                WindowInsetsAnimationCompat.setCallback(requireView, null);
                requireView.removeOnAttachStateChangeListener(windowInsetsHolder.insetsListener);
            }
        }
        super.onDetach();
    }
}
