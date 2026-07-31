package androidx.compose.runtime.composer.gapbuffer;

import kotlin.ResultKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RelativeGroupPath extends ResultKt {
    public final int index;
    public final ResultKt parent;

    public RelativeGroupPath(ResultKt resultKt, int i) {
        this.parent = resultKt;
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
