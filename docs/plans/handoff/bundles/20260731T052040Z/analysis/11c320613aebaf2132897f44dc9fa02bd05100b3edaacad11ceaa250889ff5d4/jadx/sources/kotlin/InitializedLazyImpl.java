package kotlin;

import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class InitializedLazyImpl implements Lazy, Serializable {
    private final Object value;

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
