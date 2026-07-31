package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class SystemInsetsPaddingModifierElement extends ModifierNodeElement {
    public final Function1 insetsGetter;

    public SystemInsetsPaddingModifierElement(Function1 function1) {
        this.insetsGetter = function1;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        SystemInsetsPaddingModifierNode systemInsetsPaddingModifierNode = new SystemInsetsPaddingModifierNode(OffsetKt.EmptyWindowInsets);
        systemInsetsPaddingModifierNode.insetsGetter = this.insetsGetter;
        return systemInsetsPaddingModifierNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SystemInsetsPaddingModifierElement) {
            return this.insetsGetter == ((SystemInsetsPaddingModifierElement) obj).insetsGetter;
        }
        return false;
    }

    public final int hashCode() {
        return this.insetsGetter.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        SystemInsetsPaddingModifierNode systemInsetsPaddingModifierNode = (SystemInsetsPaddingModifierNode) node;
        Function1 function1 = systemInsetsPaddingModifierNode.insetsGetter;
        Function1 function12 = this.insetsGetter;
        if (function1 != function12) {
            systemInsetsPaddingModifierNode.insetsGetter = function12;
            WindowInsetsHolder windowInsetsHolder = systemInsetsPaddingModifierNode.windowInsetsHolder;
            if (windowInsetsHolder != null) {
                WindowInsets windowInsets = (WindowInsets) function12.invoke(windowInsetsHolder);
                if (Intrinsics.areEqual(windowInsets, systemInsetsPaddingModifierNode.insets)) {
                    return;
                }
                systemInsetsPaddingModifierNode.insets = windowInsets;
                systemInsetsPaddingModifierNode.insetsInvalidated();
            }
        }
    }
}
