package androidx.compose.ui.semantics;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CustomAccessibilityAction {
    public final Function0 action;
    public final String label;

    public CustomAccessibilityAction(String str, Function0 function0) {
        this.label = str;
        this.action = function0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomAccessibilityAction)) {
            return false;
        }
        CustomAccessibilityAction customAccessibilityAction = (CustomAccessibilityAction) obj;
        return Intrinsics.areEqual(this.label, customAccessibilityAction.label) && this.action == customAccessibilityAction.action;
    }

    public final String getLabel() {
        return this.label;
    }

    public final int hashCode() {
        return this.action.hashCode() + (this.label.hashCode() * 31);
    }

    public final String toString() {
        return "CustomAccessibilityAction(label=" + this.label + ", action=" + this.action + ')';
    }
}
