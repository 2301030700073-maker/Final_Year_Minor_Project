package b.j;

import android.util.Log;
import android.view.View;
import androidx.fragment.app.DialogFragment;
import b.i.b.C0108g;
import b.i.b.X;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class q {
    public static final Object j = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Object f1005a;

    /* renamed from: b, reason: collision with root package name */
    public b.c.a.b.h f1006b;

    /* renamed from: c, reason: collision with root package name */
    public int f1007c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1008d;
    public volatile Object e;
    public volatile Object f;
    public int g;
    public boolean h;
    public boolean i;

    public q() {
        Object obj = j;
        this.f1005a = new Object();
        this.f1006b = new b.c.a.b.h();
        this.f1007c = 0;
        this.f = obj;
        this.e = obj;
        this.g = -1;
    }

    public static void a(String str) {
        if (b.c.a.a.a.b().f607a.a()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    public final void b(p pVar) {
        if (pVar.f1002b) {
            if (!pVar.j()) {
                pVar.h(false);
                return;
            }
            int i = pVar.f1003c;
            int i2 = this.g;
            if (i >= i2) {
                return;
            }
            pVar.f1003c = i2;
            t tVar = pVar.f1001a;
            Object obj = this.e;
            C0108g c0108g = (C0108g) tVar;
            Objects.requireNonNull(c0108g);
            if (((j) obj) != null) {
                DialogFragment dialogFragment = c0108g.f897a;
                if (dialogFragment.mShowsDialog) {
                    View requireView = dialogFragment.requireView();
                    if (requireView.getParent() != null) {
                        throw new IllegalStateException("DialogFragment can not be attached to a container view");
                    }
                    if (c0108g.f897a.mDialog != null) {
                        if (X.M(3)) {
                            Log.d("FragmentManager", "DialogFragment " + c0108g + " setting the content view on " + c0108g.f897a.mDialog);
                        }
                        c0108g.f897a.mDialog.setContentView(requireView);
                    }
                }
            }
        }
    }

    public void c(p pVar) {
        if (this.h) {
            this.i = true;
            return;
        }
        this.h = true;
        do {
            this.i = false;
            if (pVar != null) {
                b(pVar);
                pVar = null;
            } else {
                b.c.a.b.e h = this.f1006b.h();
                while (h.hasNext()) {
                    b((p) ((Map.Entry) h.next()).getValue());
                    if (this.i) {
                        break;
                    }
                }
            }
        } while (this.i);
        this.h = false;
    }

    public void d() {
    }

    public void e() {
    }

    public void f(t tVar) {
        a("removeObserver");
        p pVar = (p) this.f1006b.k(tVar);
        if (pVar == null) {
            return;
        }
        pVar.i();
        pVar.h(false);
    }
}
