package androidx.compose.material3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class InteractiveListColorState {
    public final boolean dragged;
    public final boolean enabled;

    public InteractiveListColorState(boolean z, boolean z2) {
        this.enabled = z;
        this.dragged = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InteractiveListColorState)) {
            return false;
        }
        InteractiveListColorState interactiveListColorState = (InteractiveListColorState) obj;
        return this.enabled == interactiveListColorState.enabled && this.dragged == interactiveListColorState.dragged;
    }

    public final int hashCode() {
        return ((((this.enabled ? 1231 : 1237) * 31) + 1237) * 31) + (this.dragged ? 1231 : 1237);
    }

    public final String toString() {
        return "InteractiveListColorState(enabled=" + this.enabled + ", selected=false, dragged=" + this.dragged + ')';
    }
}
