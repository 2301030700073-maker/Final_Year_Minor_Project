package defpackage;

import j$.util.Objects;

/* renamed from: sw, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3712sw<F, S> {

    /* renamed from: do, reason: not valid java name */
    public final F f15568do;

    /* renamed from: if, reason: not valid java name */
    public final S f15569if;

    public C3712sw(F f, S s) {
        this.f15568do = f;
        this.f15569if = s;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3712sw)) {
            return false;
        }
        C3712sw c3712sw = (C3712sw) obj;
        return Objects.equals(c3712sw.f15568do, this.f15568do) && Objects.equals(c3712sw.f15569if, this.f15569if);
    }

    public final int hashCode() {
        F f = this.f15568do;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.f15569if;
        return (s != null ? s.hashCode() : 0) ^ hashCode;
    }

    public final String toString() {
        return "Pair{" + this.f15568do + " " + this.f15569if + "}";
    }
}
