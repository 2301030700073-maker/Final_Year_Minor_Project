package net.thunderbird.core.common.state.debug;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DiffContext {
    public final int indentSize;
    public final boolean isStateClassChanged;

    public DiffContext(int i, boolean z) {
        this.indentSize = i;
        this.isStateClassChanged = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DiffContext)) {
            return false;
        }
        DiffContext diffContext = (DiffContext) obj;
        return this.indentSize == diffContext.indentSize && this.isStateClassChanged == diffContext.isStateClassChanged;
    }

    public final int hashCode() {
        return (this.indentSize * 31) + (this.isStateClassChanged ? 1231 : 1237);
    }

    public final String toString() {
        return "DiffContext(indentSize=" + this.indentSize + ", isStateClassChanged=" + this.isStateClassChanged + ")";
    }
}
