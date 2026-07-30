package b.e.i;

/* renamed from: b.e.i.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0090d {

    /* renamed from: a, reason: collision with root package name */
    public final Object f761a;

    public C0090d(Object obj) {
        this.f761a = obj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0090d.class != obj.getClass()) {
            return false;
        }
        C0090d c0090d = (C0090d) obj;
        Object obj2 = this.f761a;
        return obj2 == null ? c0090d.f761a == null : obj2.equals(c0090d.f761a);
    }

    public int hashCode() {
        Object obj = this.f761a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        StringBuilder f = c.a.c.a.a.f("DisplayCutoutCompat{");
        f.append(this.f761a);
        f.append("}");
        return f.toString();
    }
}
