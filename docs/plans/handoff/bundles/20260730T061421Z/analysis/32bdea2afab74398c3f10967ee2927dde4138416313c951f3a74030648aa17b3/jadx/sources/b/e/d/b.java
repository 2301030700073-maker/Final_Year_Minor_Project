package b.e.d;

/* loaded from: classes.dex */
public final class b {
    public static final b e = new b(0, 0, 0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final int f693a;

    /* renamed from: b, reason: collision with root package name */
    public final int f694b;

    /* renamed from: c, reason: collision with root package name */
    public final int f695c;

    /* renamed from: d, reason: collision with root package name */
    public final int f696d;

    public b(int i, int i2, int i3, int i4) {
        this.f693a = i;
        this.f694b = i2;
        this.f695c = i3;
        this.f696d = i4;
    }

    public static b a(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? e : new b(i, i2, i3, i4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f696d == bVar.f696d && this.f693a == bVar.f693a && this.f695c == bVar.f695c && this.f694b == bVar.f694b;
    }

    public int hashCode() {
        return (((((this.f693a * 31) + this.f694b) * 31) + this.f695c) * 31) + this.f696d;
    }

    public String toString() {
        StringBuilder f = c.a.c.a.a.f("Insets{left=");
        f.append(this.f693a);
        f.append(", top=");
        f.append(this.f694b);
        f.append(", right=");
        f.append(this.f695c);
        f.append(", bottom=");
        f.append(this.f696d);
        f.append('}');
        return f.toString();
    }
}
