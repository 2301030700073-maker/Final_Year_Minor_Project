package androidx.lifecycle;

import b.j.AbstractC0137g;
import b.j.B;
import b.j.InterfaceC0138h;
import b.j.j;
import b.j.l;
import b.j.y;
import b.j.z;
import b.n.c;
import b.n.d;
import java.util.Map;

/* loaded from: classes.dex */
public final class SavedStateHandleController implements InterfaceC0138h {

    /* renamed from: a, reason: collision with root package name */
    public final String f136a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f137b = false;

    /* renamed from: c, reason: collision with root package name */
    public final y f138c;

    public SavedStateHandleController(String str, y yVar) {
        this.f136a = str;
        this.f138c = yVar;
    }

    public static void h(B b2, d dVar, AbstractC0137g abstractC0137g) {
        Object obj;
        Map map = b2.f980a;
        if (map == null) {
            obj = null;
        } else {
            synchronized (map) {
                obj = b2.f980a.get("androidx.lifecycle.savedstate.vm.tag");
            }
        }
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
        if (savedStateHandleController == null || savedStateHandleController.f137b) {
            return;
        }
        savedStateHandleController.i(dVar, abstractC0137g);
        j(dVar, abstractC0137g);
    }

    public static void j(final d dVar, final AbstractC0137g abstractC0137g) {
        Lifecycle$State lifecycle$State = ((l) abstractC0137g).f996b;
        if (lifecycle$State != Lifecycle$State.INITIALIZED) {
            if (!(lifecycle$State.compareTo(Lifecycle$State.STARTED) >= 0)) {
                abstractC0137g.a(new InterfaceC0138h() { // from class: androidx.lifecycle.SavedStateHandleController.1
                    @Override // b.j.InterfaceC0138h
                    public void d(j jVar, Lifecycle$Event lifecycle$Event) {
                        if (lifecycle$Event == Lifecycle$Event.ON_START) {
                            ((l) AbstractC0137g.this).f995a.k(this);
                            dVar.b(z.class);
                        }
                    }
                });
                return;
            }
        }
        dVar.b(z.class);
    }

    @Override // b.j.InterfaceC0138h
    public void d(j jVar, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
            this.f137b = false;
            ((l) jVar.getLifecycle()).f995a.k(this);
        }
    }

    public void i(d dVar, AbstractC0137g abstractC0137g) {
        if (this.f137b) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.f137b = true;
        abstractC0137g.a(this);
        if (((c) dVar.f1231a.j(this.f136a, this.f138c.f1013d)) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }
}
