package c.b.a.b.b.l;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class y {

    /* renamed from: a, reason: collision with root package name */
    public final z f2698a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2699b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2700c;

    /* renamed from: d, reason: collision with root package name */
    public Bitmap f2701d;
    public Bitmap e;
    public final /* synthetic */ A f;

    public y(A a2, z zVar, int i, int i2) {
        this.f = a2;
        this.f2698a = zVar;
        this.f2699b = i;
        this.f2700c = i2;
    }

    public void a(Canvas canvas, int i) {
        A a2 = this.f;
        float f = a2.v;
        if (f > RecentsState.NO_OFFSET) {
            Bitmap bitmap = this.f2701d;
            Bitmap bitmap2 = this.e;
            if (bitmap != bitmap2) {
                if (f >= 1.0f) {
                    this.f2698a.a(bitmap2, canvas, i);
                    return;
                }
                a2.f2619c.paint.setAlpha(Math.round((1.0f - f) * 255.0f));
                this.f2698a.a(this.f2701d, canvas, i);
                A a3 = this.f;
                a3.f2619c.paint.setAlpha(Math.round(a3.v * 255.0f));
                this.f2698a.a(this.e, canvas, i);
                this.f.f2619c.paint.setAlpha(255);
                return;
            }
        }
        this.f2698a.a(this.f2701d, canvas, i);
    }
}
