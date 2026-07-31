package kotlin;

import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InitializedLazyImpl implements Lazy, Serializable {
    public final Object value;

    public InitializedLazyImpl(Object obj) {
        this.value = obj;
    }

    @Override // kotlin.Lazy
    public final Object getValue() {
        return this.value;
    }

    public final String toString() {
        return String.valueOf(this.value);
    }
}
