package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GapCompositionDataImpl implements CompositionData {
    public final Composition composition;

    public GapCompositionDataImpl(Composition composition) {
        this.composition = composition;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof GapCompositionDataImpl) {
            return this.composition.equals(((GapCompositionDataImpl) obj).composition);
        }
        return false;
    }

    public final int hashCode() {
        return this.composition.hashCode() * 31;
    }
}
