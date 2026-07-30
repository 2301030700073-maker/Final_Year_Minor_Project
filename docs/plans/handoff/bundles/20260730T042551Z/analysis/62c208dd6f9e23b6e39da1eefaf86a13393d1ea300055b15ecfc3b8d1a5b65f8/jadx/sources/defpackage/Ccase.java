package defpackage;

/* renamed from: case, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Ccase<T> extends AbstractC2838gw<T> {

    /* renamed from: do, reason: not valid java name */
    public static final Ccase<Object> f8559do = new Ccase<>();

    private Object readResolve() {
        return f8559do;
    }

    @Override // defpackage.AbstractC2838gw
    /* renamed from: do */
    public final T mo242do() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    @Override // defpackage.AbstractC2838gw
    /* renamed from: if */
    public final boolean mo243if() {
        return false;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
