package b.e.j;

import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public int f790a;

    /* renamed from: b, reason: collision with root package name */
    public int f791b;

    /* renamed from: c, reason: collision with root package name */
    public float f792c;

    /* renamed from: d, reason: collision with root package name */
    public float f793d;
    public float j;
    public int k;
    public long e = Long.MIN_VALUE;
    public long i = -1;
    public long f = 0;
    public int g = 0;
    public int h = 0;

    public final float a(long j) {
        if (j < this.e) {
            return RecentsState.NO_OFFSET;
        }
        long j2 = this.i;
        if (j2 < 0 || j < j2) {
            return c.b((j - this.e) / this.f790a, RecentsState.NO_OFFSET, 1.0f) * 0.5f;
        }
        float f = this.j;
        return (c.b((j - j2) / this.k, RecentsState.NO_OFFSET, 1.0f) * f) + (1.0f - f);
    }
}
