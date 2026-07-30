package b.j;

import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public class l extends AbstractC0137g {

    /* renamed from: c, reason: collision with root package name */
    public final WeakReference f997c;

    /* renamed from: a, reason: collision with root package name */
    public b.c.a.b.a f995a = new b.c.a.b.a();

    /* renamed from: d, reason: collision with root package name */
    public int f998d = 0;
    public boolean e = false;
    public boolean f = false;
    public ArrayList g = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public Lifecycle$State f996b = Lifecycle$State.INITIALIZED;

    public l(j jVar) {
        this.f997c = new WeakReference(jVar);
    }

    public static Lifecycle$State d(Lifecycle$State lifecycle$State, Lifecycle$State lifecycle$State2) {
        return (lifecycle$State2 == null || lifecycle$State2.compareTo(lifecycle$State) >= 0) ? lifecycle$State : lifecycle$State2;
    }

    @Override // b.j.AbstractC0137g
    public void a(InterfaceC0139i interfaceC0139i) {
        j jVar;
        Lifecycle$State lifecycle$State = this.f996b;
        Lifecycle$State lifecycle$State2 = Lifecycle$State.DESTROYED;
        if (lifecycle$State != lifecycle$State2) {
            lifecycle$State2 = Lifecycle$State.INITIALIZED;
        }
        k kVar = new k(interfaceC0139i, lifecycle$State2);
        if (((k) this.f995a.j(interfaceC0139i, kVar)) == null && (jVar = (j) this.f997c.get()) != null) {
            boolean z = this.f998d != 0 || this.e;
            Lifecycle$State b2 = b(interfaceC0139i);
            this.f998d++;
            while (kVar.f993a.compareTo(b2) < 0 && this.f995a.e.containsKey(interfaceC0139i)) {
                this.g.add(kVar.f993a);
                Lifecycle$Event g = Lifecycle$Event.g(kVar.f993a);
                if (g == null) {
                    StringBuilder f = c.a.c.a.a.f("no event up from ");
                    f.append(kVar.f993a);
                    throw new IllegalStateException(f.toString());
                }
                kVar.a(jVar, g);
                f();
                b2 = b(interfaceC0139i);
            }
            if (!z) {
                g();
            }
            this.f998d--;
        }
    }

    public final Lifecycle$State b(InterfaceC0139i interfaceC0139i) {
        b.c.a.b.a aVar = this.f995a;
        Lifecycle$State lifecycle$State = null;
        b.c.a.b.d dVar = aVar.e.containsKey(interfaceC0139i) ? ((b.c.a.b.d) aVar.e.get(interfaceC0139i)).f615d : null;
        Lifecycle$State lifecycle$State2 = dVar != null ? ((k) dVar.getValue()).f993a : null;
        if (!this.g.isEmpty()) {
            lifecycle$State = (Lifecycle$State) this.g.get(r0.size() - 1);
        }
        return d(d(this.f996b, lifecycle$State2), lifecycle$State);
    }

    public void c(Lifecycle$Event lifecycle$Event) {
        e(lifecycle$Event.e());
    }

    public final void e(Lifecycle$State lifecycle$State) {
        if (this.f996b == lifecycle$State) {
            return;
        }
        this.f996b = lifecycle$State;
        if (this.e || this.f998d != 0) {
            this.f = true;
            return;
        }
        this.e = true;
        g();
        this.e = false;
    }

    public final void f() {
        this.g.remove(r1.size() - 1);
    }

    public final void g() {
        j jVar = (j) this.f997c.get();
        if (jVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
        while (true) {
            b.c.a.b.a aVar = this.f995a;
            boolean z = true;
            if (aVar.f624d != 0) {
                Lifecycle$State lifecycle$State = ((k) aVar.f621a.f613b).f993a;
                Lifecycle$State lifecycle$State2 = ((k) aVar.f622b.f613b).f993a;
                if (lifecycle$State != lifecycle$State2 || this.f996b != lifecycle$State2) {
                    z = false;
                }
            }
            if (z) {
                this.f = false;
                return;
            }
            this.f = false;
            if (this.f996b.compareTo(((k) this.f995a.f621a.f613b).f993a) < 0) {
                b.c.a.b.a aVar2 = this.f995a;
                b.c.a.b.c cVar = new b.c.a.b.c(aVar2.f622b, aVar2.f621a);
                aVar2.f623c.put(cVar, Boolean.FALSE);
                while (cVar.hasNext() && !this.f) {
                    Map.Entry entry = (Map.Entry) cVar.next();
                    k kVar = (k) entry.getValue();
                    while (kVar.f993a.compareTo(this.f996b) > 0 && !this.f && this.f995a.contains(entry.getKey())) {
                        int ordinal = kVar.f993a.ordinal();
                        Lifecycle$Event lifecycle$Event = ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? null : Lifecycle$Event.ON_PAUSE : Lifecycle$Event.ON_STOP : Lifecycle$Event.ON_DESTROY;
                        if (lifecycle$Event == null) {
                            StringBuilder f = c.a.c.a.a.f("no event down from ");
                            f.append(kVar.f993a);
                            throw new IllegalStateException(f.toString());
                        }
                        this.g.add(lifecycle$Event.e());
                        kVar.a(jVar, lifecycle$Event);
                        f();
                    }
                }
            }
            b.c.a.b.d dVar = this.f995a.f622b;
            if (!this.f && dVar != null && this.f996b.compareTo(((k) dVar.f613b).f993a) > 0) {
                b.c.a.b.e h = this.f995a.h();
                while (h.hasNext() && !this.f) {
                    Map.Entry entry2 = (Map.Entry) h.next();
                    k kVar2 = (k) entry2.getValue();
                    while (kVar2.f993a.compareTo(this.f996b) < 0 && !this.f && this.f995a.contains(entry2.getKey())) {
                        this.g.add(kVar2.f993a);
                        Lifecycle$Event g = Lifecycle$Event.g(kVar2.f993a);
                        if (g == null) {
                            StringBuilder f2 = c.a.c.a.a.f("no event up from ");
                            f2.append(kVar2.f993a);
                            throw new IllegalStateException(f2.toString());
                        }
                        kVar2.a(jVar, g);
                        f();
                    }
                }
            }
        }
    }
}
