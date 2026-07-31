package androidx.compose.runtime.composer.gapbuffer;

import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RelativeGroupPath extends Util {
    public final int index;
    public final Util parent;

    public RelativeGroupPath(Util util, int i) {
        this.parent = util;
        this.index = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof RelativeGroupPath)) {
            return false;
        }
        RelativeGroupPath relativeGroupPath = (RelativeGroupPath) obj;
        return relativeGroupPath.parent.equals(this.parent) && relativeGroupPath.index == this.index;
    }

    public final int hashCode() {
        return this.parent.hashCode() + (this.index * 31);
    }
}
