package b.m.b;

/* renamed from: b.m.b.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0189m {

    /* renamed from: a, reason: collision with root package name */
    public w0 f1181a;

    /* renamed from: b, reason: collision with root package name */
    public w0 f1182b;

    /* renamed from: c, reason: collision with root package name */
    public int f1183c;

    /* renamed from: d, reason: collision with root package name */
    public int f1184d;
    public int e;
    public int f;

    public C0189m(w0 w0Var, w0 w0Var2, int i, int i2, int i3, int i4) {
        this.f1181a = w0Var;
        this.f1182b = w0Var2;
        this.f1183c = i;
        this.f1184d = i2;
        this.e = i3;
        this.f = i4;
    }

    public String toString() {
        StringBuilder f = c.a.c.a.a.f("ChangeInfo{oldHolder=");
        f.append(this.f1181a);
        f.append(", newHolder=");
        f.append(this.f1182b);
        f.append(", fromX=");
        f.append(this.f1183c);
        f.append(", fromY=");
        f.append(this.f1184d);
        f.append(", toX=");
        f.append(this.e);
        f.append(", toY=");
        f.append(this.f);
        f.append('}');
        return f.toString();
    }
}
