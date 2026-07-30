package b.m.b;

import android.view.View;
import android.view.ViewPropertyAnimator;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* renamed from: b.m.b.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0173e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1143a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0191o f1144b;

    public RunnableC0173e(C0191o c0191o, ArrayList arrayList) {
        this.f1144b = c0191o;
        this.f1143a = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.f1143a.iterator();
        while (it.hasNext()) {
            C0190n c0190n = (C0190n) it.next();
            C0191o c0191o = this.f1144b;
            w0 w0Var = c0190n.f1187a;
            int i = c0190n.f1188b;
            int i2 = c0190n.f1189c;
            int i3 = c0190n.f1190d;
            int i4 = c0190n.e;
            Objects.requireNonNull(c0191o);
            View view = w0Var.itemView;
            int i5 = i3 - i;
            int i6 = i4 - i2;
            if (i5 != 0) {
                view.animate().translationX(RecentsState.NO_OFFSET);
            }
            if (i6 != 0) {
                view.animate().translationY(RecentsState.NO_OFFSET);
            }
            ViewPropertyAnimator animate = view.animate();
            c0191o.p.add(w0Var);
            animate.setDuration(c0191o.e).setListener(new C0183j(c0191o, w0Var, i5, view, i6, animate)).start();
        }
        this.f1143a.clear();
        this.f1144b.m.remove(this.f1143a);
    }
}
