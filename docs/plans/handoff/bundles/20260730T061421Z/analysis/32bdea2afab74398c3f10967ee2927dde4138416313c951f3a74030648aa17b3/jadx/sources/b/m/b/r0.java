package b.m.b;

import android.util.Log;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class r0 {

    /* renamed from: a, reason: collision with root package name */
    public int f1200a;

    /* renamed from: b, reason: collision with root package name */
    public int f1201b;

    /* renamed from: d, reason: collision with root package name */
    public int f1203d = -1;
    public boolean f = false;
    public int g = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f1202c = RecyclerView.UNDEFINED_DURATION;
    public Interpolator e = null;

    public r0(int i, int i2) {
        this.f1200a = i;
        this.f1201b = i2;
    }

    public void a(RecyclerView recyclerView) {
        int i = this.f1203d;
        if (i >= 0) {
            this.f1203d = -1;
            recyclerView.jumpToPositionForSmoothScroller(i);
            this.f = false;
            return;
        }
        if (!this.f) {
            this.g = 0;
            return;
        }
        if (this.e != null && this.f1202c < 1) {
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        int i2 = this.f1202c;
        if (i2 < 1) {
            throw new IllegalStateException("Scroll duration must be a positive number");
        }
        recyclerView.mViewFlinger.b(this.f1200a, this.f1201b, i2, this.e);
        int i3 = this.g + 1;
        this.g = i3;
        if (i3 > 10) {
            Log.e(RecyclerView.TAG, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
        }
        this.f = false;
    }
}
