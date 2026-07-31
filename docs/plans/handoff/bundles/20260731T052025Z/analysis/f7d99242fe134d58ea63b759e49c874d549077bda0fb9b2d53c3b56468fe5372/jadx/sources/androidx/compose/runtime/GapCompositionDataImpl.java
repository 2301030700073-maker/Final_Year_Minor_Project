package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionData;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
