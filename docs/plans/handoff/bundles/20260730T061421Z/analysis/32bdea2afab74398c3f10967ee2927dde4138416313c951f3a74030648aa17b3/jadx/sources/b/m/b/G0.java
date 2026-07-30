package b.m.b;

/* loaded from: classes.dex */
public class G0 {

    /* renamed from: a, reason: collision with root package name */
    public int f1103a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f1104b;

    /* renamed from: c, reason: collision with root package name */
    public int f1105c;

    /* renamed from: d, reason: collision with root package name */
    public int f1106d;
    public int e;

    public boolean a() {
        int i = this.f1103a;
        if ((i & 7) != 0 && (i & (b(this.f1106d, this.f1104b) << 0)) == 0) {
            return false;
        }
        int i2 = this.f1103a;
        if ((i2 & 112) != 0 && (i2 & (b(this.f1106d, this.f1105c) << 4)) == 0) {
            return false;
        }
        int i3 = this.f1103a;
        if ((i3 & 1792) != 0 && (i3 & (b(this.e, this.f1104b) << 8)) == 0) {
            return false;
        }
        int i4 = this.f1103a;
        return (i4 & 28672) == 0 || ((b(this.e, this.f1105c) << 12) & i4) != 0;
    }

    public int b(int i, int i2) {
        if (i > i2) {
            return 1;
        }
        return i == i2 ? 2 : 4;
    }
}
