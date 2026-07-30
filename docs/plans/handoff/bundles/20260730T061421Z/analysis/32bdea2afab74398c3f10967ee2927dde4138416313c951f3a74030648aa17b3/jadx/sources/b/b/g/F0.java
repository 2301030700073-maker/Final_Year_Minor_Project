package b.b.g;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class F0 {

    /* renamed from: a, reason: collision with root package name */
    public int f445a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f446b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f447c = RecyclerView.UNDEFINED_DURATION;

    /* renamed from: d, reason: collision with root package name */
    public int f448d = RecyclerView.UNDEFINED_DURATION;
    public int e = 0;
    public int f = 0;
    public boolean g = false;
    public boolean h = false;

    public void a(int i, int i2) {
        this.f447c = i;
        this.f448d = i2;
        this.h = true;
        if (this.g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f445a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f446b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f445a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f446b = i2;
        }
    }
}
