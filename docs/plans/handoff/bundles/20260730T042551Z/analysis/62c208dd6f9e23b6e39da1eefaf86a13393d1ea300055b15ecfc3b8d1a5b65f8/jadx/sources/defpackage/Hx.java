package defpackage;

/* loaded from: classes3.dex */
public final class Hx {

    /* renamed from: do, reason: not valid java name */
    public final int f1410do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f1411do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f1412do;

    /* renamed from: if, reason: not valid java name */
    public final int f1413if;

    public Hx(boolean z, String str, int i, int i2) {
        this.f1411do = str;
        this.f1410do = i;
        this.f1413if = i2;
        this.f1412do = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Hx)) {
            return false;
        }
        Hx hx = (Hx) obj;
        return C0173Do.m394do(this.f1411do, hx.f1411do) && this.f1410do == hx.f1410do && this.f1413if == hx.f1413if && this.f1412do == hx.f1412do;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = ((((this.f1411do.hashCode() * 31) + this.f1410do) * 31) + this.f1413if) * 31;
        boolean z = this.f1412do;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final String toString() {
        return "ProcessDetails(processName=" + this.f1411do + ", pid=" + this.f1410do + ", importance=" + this.f1413if + ", isDefaultProcess=" + this.f1412do + ')';
    }
}
