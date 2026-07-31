package kotlin;

import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InitializedLazyImpl implements Serializable, Lazy {
    public final /* synthetic */ int $r8$classId = 1;
    public Object value;

    public InitializedLazyImpl(Object obj) {
        this.value = obj;
    }

    @Override // kotlin.Lazy
    public Object getValue() {
        return this.value;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return String.valueOf(this.value);
            default:
                return super.toString();
        }
    }

    public /* synthetic */ InitializedLazyImpl() {
    }
}
