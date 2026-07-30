package b.m.b;

import android.view.View;

/* loaded from: classes.dex */
public class I0 {

    /* renamed from: a, reason: collision with root package name */
    public final H0 f1107a;

    /* renamed from: b, reason: collision with root package name */
    public G0 f1108b = new G0();

    public I0(H0 h0) {
        this.f1107a = h0;
    }

    public View a(int i, int i2, int i3, int i4) {
        int c2 = this.f1107a.c();
        int b2 = this.f1107a.b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View a2 = this.f1107a.a(i);
            int childStart = this.f1107a.getChildStart(a2);
            int d2 = this.f1107a.d(a2);
            G0 g0 = this.f1108b;
            g0.f1104b = c2;
            g0.f1105c = b2;
            g0.f1106d = childStart;
            g0.e = d2;
            if (i3 != 0) {
                g0.f1103a = 0;
                g0.f1103a = i3 | 0;
                if (g0.a()) {
                    return a2;
                }
            }
            if (i4 != 0) {
                G0 g02 = this.f1108b;
                g02.f1103a = 0;
                g02.f1103a = i4 | 0;
                if (g02.a()) {
                    view = a2;
                }
            }
            i += i5;
        }
        return view;
    }

    public boolean b(View view, int i) {
        G0 g0 = this.f1108b;
        int c2 = this.f1107a.c();
        int b2 = this.f1107a.b();
        int childStart = this.f1107a.getChildStart(view);
        int d2 = this.f1107a.d(view);
        g0.f1104b = c2;
        g0.f1105c = b2;
        g0.f1106d = childStart;
        g0.e = d2;
        if (i == 0) {
            return false;
        }
        G0 g02 = this.f1108b;
        g02.f1103a = 0;
        g02.f1103a = 0 | i;
        return g02.a();
    }
}
