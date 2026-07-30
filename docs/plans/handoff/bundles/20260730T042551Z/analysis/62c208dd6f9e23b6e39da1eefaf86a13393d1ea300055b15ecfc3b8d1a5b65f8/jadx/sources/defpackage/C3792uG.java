package defpackage;

/* renamed from: uG, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3792uG {

    /* renamed from: do, reason: not valid java name */
    public final int f15871do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f15872do;

    public C3792uG(String str, int i) {
        this.f15872do = str;
        this.f15871do = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3792uG)) {
            return false;
        }
        C3792uG c3792uG = (C3792uG) obj;
        if (this.f15871do != c3792uG.f15871do) {
            return false;
        }
        return this.f15872do.equals(c3792uG.f15872do);
    }

    public final int hashCode() {
        return (this.f15872do.hashCode() * 31) + this.f15871do;
    }
}
