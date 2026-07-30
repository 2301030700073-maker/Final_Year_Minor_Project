package defpackage;

import java.io.Serializable;

/* renamed from: rw, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3653rw<A, B> implements Serializable {

    /* renamed from: do, reason: not valid java name */
    public final A f15340do;

    /* renamed from: if, reason: not valid java name */
    public final B f15341if;

    public C3653rw(A a, B b) {
        this.f15340do = a;
        this.f15341if = b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3653rw)) {
            return false;
        }
        C3653rw c3653rw = (C3653rw) obj;
        return C0173Do.m394do(this.f15340do, c3653rw.f15340do) && C0173Do.m394do(this.f15341if, c3653rw.f15341if);
    }

    public final int hashCode() {
        A a = this.f15340do;
        int hashCode = (a == null ? 0 : a.hashCode()) * 31;
        B b = this.f15341if;
        return hashCode + (b != null ? b.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f15340do + ", " + this.f15341if + ')';
    }
}
