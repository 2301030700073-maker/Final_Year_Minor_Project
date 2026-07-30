package b.m.b;

/* renamed from: b.m.b.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0165a {

    /* renamed from: a, reason: collision with root package name */
    public int f1127a;

    /* renamed from: b, reason: collision with root package name */
    public int f1128b;

    /* renamed from: c, reason: collision with root package name */
    public Object f1129c;

    /* renamed from: d, reason: collision with root package name */
    public int f1130d;

    public C0165a(int i, int i2, int i3, Object obj) {
        this.f1127a = i;
        this.f1128b = i2;
        this.f1130d = i3;
        this.f1129c = obj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0165a)) {
            return false;
        }
        C0165a c0165a = (C0165a) obj;
        int i = this.f1127a;
        if (i != c0165a.f1127a) {
            return false;
        }
        if (i == 8 && Math.abs(this.f1130d - this.f1128b) == 1 && this.f1130d == c0165a.f1128b && this.f1128b == c0165a.f1130d) {
            return true;
        }
        if (this.f1130d != c0165a.f1130d || this.f1128b != c0165a.f1128b) {
            return false;
        }
        Object obj2 = this.f1129c;
        if (obj2 != null) {
            if (!obj2.equals(c0165a.f1129c)) {
                return false;
            }
        } else if (c0165a.f1129c != null) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (((this.f1127a * 31) + this.f1128b) * 31) + this.f1130d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i = this.f1127a;
        sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
        sb.append(",s:");
        sb.append(this.f1128b);
        sb.append("c:");
        sb.append(this.f1130d);
        sb.append(",p:");
        sb.append(this.f1129c);
        sb.append("]");
        return sb.toString();
    }
}
