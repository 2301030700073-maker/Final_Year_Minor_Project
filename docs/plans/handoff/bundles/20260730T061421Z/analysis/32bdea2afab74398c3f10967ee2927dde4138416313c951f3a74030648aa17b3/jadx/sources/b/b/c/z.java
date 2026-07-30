package b.b.c;

import android.view.View;
import android.widget.PopupWindow;

/* loaded from: classes.dex */
public class z extends b.e.i.v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ A f325a;

    public z(A a2) {
        this.f325a = a2;
    }

    @Override // b.e.i.u
    public void a(View view) {
        this.f325a.f245b.o.setVisibility(8);
        J j = this.f325a.f245b;
        PopupWindow popupWindow = j.p;
        if (popupWindow != null) {
            popupWindow.dismiss();
        } else if (j.o.getParent() instanceof View) {
            b.e.i.q.B((View) this.f325a.f245b.o.getParent());
        }
        this.f325a.f245b.o.removeAllViews();
        this.f325a.f245b.r.d(null);
        J j2 = this.f325a.f245b;
        j2.r = null;
        b.e.i.q.B(j2.u);
    }
}
