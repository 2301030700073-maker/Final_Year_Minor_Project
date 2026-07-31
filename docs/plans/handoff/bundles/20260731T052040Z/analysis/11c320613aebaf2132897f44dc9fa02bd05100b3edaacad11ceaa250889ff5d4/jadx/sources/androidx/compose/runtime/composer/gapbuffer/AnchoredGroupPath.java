package androidx.compose.runtime.composer.gapbuffer;

import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnchoredGroupPath extends AppKt {
    public final int group;

    public AnchoredGroupPath(int i) {
        this.group = i;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof AnchoredGroupPath) && ((AnchoredGroupPath) obj).group == this.group;
    }

    public final int hashCode() {
        return this.group * 31;
    }
}
