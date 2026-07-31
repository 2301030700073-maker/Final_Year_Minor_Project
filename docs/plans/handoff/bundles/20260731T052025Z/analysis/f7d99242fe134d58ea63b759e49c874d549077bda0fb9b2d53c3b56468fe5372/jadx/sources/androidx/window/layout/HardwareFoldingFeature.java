package androidx.window.layout;

import androidx.window.core.Bounds;
import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HardwareFoldingFeature {
    public final Bounds featureBounds;
    public final FoldingFeature$State state;
    public final FoldingFeature$State type;

    public HardwareFoldingFeature(Bounds bounds, FoldingFeature$State foldingFeature$State, FoldingFeature$State foldingFeature$State2) {
        this.featureBounds = bounds;
        this.type = foldingFeature$State;
        this.state = foldingFeature$State2;
        if (bounds.getWidth() == 0 && bounds.getHeight() == 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("Bounds must be non zero");
            throw null;
        }
        if (bounds.left == 0 || bounds.top == 0) {
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Bounding rectangle must start at the top or left window edge for folding features");
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (HardwareFoldingFeature.class.equals(obj != null ? obj.getClass() : null)) {
            obj.getClass();
            HardwareFoldingFeature hardwareFoldingFeature = (HardwareFoldingFeature) obj;
            return this.featureBounds.equals(hardwareFoldingFeature.featureBounds) && this.type == hardwareFoldingFeature.type && this.state == hardwareFoldingFeature.state;
        }
        return false;
    }

    public final int hashCode() {
        return this.state.hashCode() + ((this.type.hashCode() + (this.featureBounds.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "HardwareFoldingFeature { " + this.featureBounds + ", type=" + this.type + ", state=" + this.state + " }";
    }
}
