package androidx.compose.runtime.composer.gapbuffer;

import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RelativeGroupPath extends AppKt {
    public final int index;
    public final AppKt parent;

    public RelativeGroupPath(AppKt appKt, int i) {
        this.parent = appKt;
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
