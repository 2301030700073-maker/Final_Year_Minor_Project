package defpackage;

/* renamed from: cg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0823cg {

    /* renamed from: do, reason: not valid java name */
    public final String f8592do;

    public C0823cg(String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        this.f8592do = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0823cg)) {
            return false;
        }
        return this.f8592do.equals(((C0823cg) obj).f8592do);
    }

    public final int hashCode() {
        return this.f8592do.hashCode() ^ 1000003;
    }

    public final String toString() {
        return Creturn.m7984try(new StringBuilder("Encoding{name=\""), this.f8592do, "\"}");
    }
}
