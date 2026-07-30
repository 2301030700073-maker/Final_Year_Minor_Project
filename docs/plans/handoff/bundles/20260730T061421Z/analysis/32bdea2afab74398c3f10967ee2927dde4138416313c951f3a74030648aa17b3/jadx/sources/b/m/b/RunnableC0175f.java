package b.m.b;

import android.view.View;
import android.view.ViewPropertyAnimator;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* renamed from: b.m.b.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0175f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1149a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0191o f1150b;

    public RunnableC0175f(C0191o c0191o, ArrayList arrayList) {
        this.f1150b = c0191o;
        this.f1149a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f1149a.iterator();
        while (it.hasNext()) {
            C0189m c0189m = (C0189m) it.next();
            C0191o c0191o = this.f1150b;
            Objects.requireNonNull(c0191o);
            w0 w0Var = c0189m.f1181a;
            View view = w0Var == null ? null : w0Var.itemView;
            w0 w0Var2 = c0189m.f1182b;
            View view2 = w0Var2 != null ? w0Var2.itemView : null;
            if (view != null) {
                ViewPropertyAnimator duration = view.animate().setDuration(c0191o.f);
                c0191o.r.add(c0189m.f1181a);
                duration.translationX(c0189m.e - c0189m.f1183c);
                duration.translationY(c0189m.f - c0189m.f1184d);
                duration.alpha(RecentsState.NO_OFFSET).setListener(new C0185k(c0191o, c0189m, duration, view)).start();
            }
            if (view2 != null) {
                ViewPropertyAnimator animate = view2.animate();
                c0191o.r.add(c0189m.f1182b);
                animate.translationX(RecentsState.NO_OFFSET).translationY(RecentsState.NO_OFFSET).setDuration(c0191o.f).alpha(1.0f).setListener(new C0187l(c0191o, c0189m, animate, view2)).start();
            }
        }
        this.f1149a.clear();
        this.f1150b.n.remove(this.f1149a);
    }
}
