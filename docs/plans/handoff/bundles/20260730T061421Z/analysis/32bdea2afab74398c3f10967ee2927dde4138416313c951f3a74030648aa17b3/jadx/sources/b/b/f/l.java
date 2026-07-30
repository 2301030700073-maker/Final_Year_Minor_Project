package b.b.f;

import android.view.View;
import android.view.animation.Interpolator;
import b.e.i.t;
import b.e.i.u;
import b.e.i.v;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class l {

    /* renamed from: c, reason: collision with root package name */
    public Interpolator f358c;

    /* renamed from: d, reason: collision with root package name */
    public u f359d;
    public boolean e;

    /* renamed from: b, reason: collision with root package name */
    public long f357b = -1;
    public final v f = new k(this);

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f356a = new ArrayList();

    public void a() {
        if (this.e) {
            Iterator it = this.f356a.iterator();
            while (it.hasNext()) {
                ((t) it.next()).b();
            }
            this.e = false;
        }
    }

    public void b() {
        View view;
        if (this.e) {
            return;
        }
        Iterator it = this.f356a.iterator();
        while (it.hasNext()) {
            t tVar = (t) it.next();
            long j = this.f357b;
            if (j >= 0) {
                tVar.c(j);
            }
            Interpolator interpolator = this.f358c;
            if (interpolator != null && (view = (View) tVar.f781a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f359d != null) {
                v vVar = this.f;
                View view2 = (View) tVar.f781a.get();
                if (view2 != null) {
                    tVar.e(view2, vVar);
                }
            }
            View view3 = (View) tVar.f781a.get();
            if (view3 != null) {
                view3.animate().start();
            }
        }
        this.e = true;
    }
}
