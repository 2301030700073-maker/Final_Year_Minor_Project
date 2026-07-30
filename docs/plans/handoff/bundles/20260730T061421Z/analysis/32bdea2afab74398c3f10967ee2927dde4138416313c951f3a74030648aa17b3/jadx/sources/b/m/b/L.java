package b.m.b;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class L implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f1117a;

    public L(RecyclerView recyclerView) {
        this.f1117a = recyclerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        Z z = this.f1117a.mItemAnimator;
        if (z != null) {
            C0191o c0191o = (C0191o) z;
            boolean z2 = !c0191o.h.isEmpty();
            boolean z3 = !c0191o.j.isEmpty();
            boolean z4 = !c0191o.k.isEmpty();
            boolean z5 = !c0191o.i.isEmpty();
            if (z2 || z3 || z5 || z4) {
                Iterator it = c0191o.h.iterator();
                while (it.hasNext()) {
                    w0 w0Var = (w0) it.next();
                    View view = w0Var.itemView;
                    ViewPropertyAnimator animate = view.animate();
                    c0191o.q.add(w0Var);
                    animate.setDuration(c0191o.f1126d).alpha(RecentsState.NO_OFFSET).setListener(new C0179h(c0191o, w0Var, animate, view)).start();
                }
                c0191o.h.clear();
                if (z3) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(c0191o.j);
                    c0191o.m.add(arrayList);
                    c0191o.j.clear();
                    RunnableC0173e runnableC0173e = new RunnableC0173e(c0191o, arrayList);
                    if (z2) {
                        b.e.i.q.A(((C0190n) arrayList.get(0)).f1187a.itemView, runnableC0173e, c0191o.f1126d);
                    } else {
                        runnableC0173e.run();
                    }
                }
                if (z4) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.addAll(c0191o.k);
                    c0191o.n.add(arrayList2);
                    c0191o.k.clear();
                    RunnableC0175f runnableC0175f = new RunnableC0175f(c0191o, arrayList2);
                    if (z2) {
                        b.e.i.q.A(((C0189m) arrayList2.get(0)).f1181a.itemView, runnableC0175f, c0191o.f1126d);
                    } else {
                        runnableC0175f.run();
                    }
                }
                if (z5) {
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.addAll(c0191o.i);
                    c0191o.l.add(arrayList3);
                    c0191o.i.clear();
                    RunnableC0177g runnableC0177g = new RunnableC0177g(c0191o, arrayList3);
                    if (z2 || z3 || z4) {
                        b.e.i.q.A(((w0) arrayList3.get(0)).itemView, runnableC0177g, Math.max(z3 ? c0191o.e : 0L, z4 ? c0191o.f : 0L) + (z2 ? c0191o.f1126d : 0L));
                    } else {
                        runnableC0177g.run();
                    }
                }
            }
        }
        this.f1117a.mPostedAnimatorRunner = false;
    }
}
