package defpackage;

/* loaded from: classes3.dex */
public final class V8 {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC2650dk<Throwable, C3206kJ> f4043do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f4044do;

    /* JADX WARN: Multi-variable type inference failed */
    public V8(Object obj, InterfaceC2650dk<? super Throwable, C3206kJ> interfaceC2650dk) {
        this.f4044do = obj;
        this.f4043do = interfaceC2650dk;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof V8)) {
            return false;
        }
        V8 v8 = (V8) obj;
        return C0173Do.m394do(this.f4044do, v8.f4044do) && C0173Do.m394do(this.f4043do, v8.f4043do);
    }

    public final int hashCode() {
        Object obj = this.f4044do;
        return this.f4043do.hashCode() + ((obj == null ? 0 : obj.hashCode()) * 31);
    }

    public final String toString() {
        return "CompletedWithCancellation(result=" + this.f4044do + ", onCancellation=" + this.f4043do + ')';
    }
}
