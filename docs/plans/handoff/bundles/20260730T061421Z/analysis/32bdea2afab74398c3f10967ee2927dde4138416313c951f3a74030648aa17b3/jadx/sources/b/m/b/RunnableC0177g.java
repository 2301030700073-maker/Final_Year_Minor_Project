package b.m.b;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* renamed from: b.m.b.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0177g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1151a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0191o f1152b;

    public RunnableC0177g(C0191o c0191o, ArrayList arrayList) {
        this.f1152b = c0191o;
        this.f1151a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f1151a.iterator();
        while (it.hasNext()) {
            w0 w0Var = (w0) it.next();
            C0191o c0191o = this.f1152b;
            Objects.requireNonNull(c0191o);
            View view = w0Var.itemView;
            ViewPropertyAnimator animate = view.animate();
            c0191o.o.add(w0Var);
            animate.alpha(1.0f).setDuration(c0191o.f1125c).setListener(new C0181i(c0191o, w0Var, view, animate)).start();
        }
        this.f1151a.clear();
        this.f1152b.l.remove(this.f1151a);
    }
}
