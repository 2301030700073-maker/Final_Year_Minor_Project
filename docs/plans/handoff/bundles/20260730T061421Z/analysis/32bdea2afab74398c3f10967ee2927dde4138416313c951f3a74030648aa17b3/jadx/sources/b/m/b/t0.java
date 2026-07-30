package b.m.b;

/* loaded from: classes.dex */
public class t0 {

    /* renamed from: a, reason: collision with root package name */
    public int f1205a = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f1206b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f1207c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f1208d = 1;
    public int e = 0;
    public boolean f = false;
    public boolean g = false;
    public boolean h = false;
    public boolean i = false;
    public boolean j = false;
    public boolean k = false;
    public int l;
    public long m;
    public int n;
    public int o;
    public int p;

    public void a(int i) {
        if ((this.f1208d & i) != 0) {
            return;
        }
        StringBuilder f = c.a.c.a.a.f("Layout state should be one of ");
        f.append(Integer.toBinaryString(i));
        f.append(" but it is ");
        f.append(Integer.toBinaryString(this.f1208d));
        throw new IllegalStateException(f.toString());
    }

    public int b() {
        return this.g ? this.f1206b - this.f1207c : this.e;
    }

    public String toString() {
        StringBuilder f = c.a.c.a.a.f("State{mTargetPosition=");
        f.append(this.f1205a);
        f.append(", mData=");
        f.append((Object) null);
        f.append(", mItemCount=");
        f.append(this.e);
        f.append(", mIsMeasuring=");
        f.append(this.i);
        f.append(", mPreviousLayoutItemCount=");
        f.append(this.f1206b);
        f.append(", mDeletedInvisibleItemCountSincePreviousLayout=");
        f.append(this.f1207c);
        f.append(", mStructureChanged=");
        f.append(this.f);
        f.append(", mInPreLayout=");
        f.append(this.g);
        f.append(", mRunSimpleAnimations=");
        f.append(this.j);
        f.append(", mRunPredictiveAnimations=");
        f.append(this.k);
        f.append('}');
        return f.toString();
    }
}
