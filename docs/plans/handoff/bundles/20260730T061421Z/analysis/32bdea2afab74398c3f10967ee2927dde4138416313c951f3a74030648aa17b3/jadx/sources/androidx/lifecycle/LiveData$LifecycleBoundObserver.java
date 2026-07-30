package androidx.lifecycle;

import b.j.InterfaceC0138h;
import b.j.j;
import b.j.l;
import b.j.p;
import b.j.q;

/* loaded from: classes.dex */
public class LiveData$LifecycleBoundObserver extends p implements InterfaceC0138h {
    public final j e;
    public final /* synthetic */ q f;

    @Override // b.j.InterfaceC0138h
    public void d(j jVar, Lifecycle$Event lifecycle$Event) {
        Lifecycle$State lifecycle$State = ((l) this.e.getLifecycle()).f996b;
        if (lifecycle$State == Lifecycle$State.DESTROYED) {
            this.f.f(this.f1001a);
            return;
        }
        Lifecycle$State lifecycle$State2 = null;
        while (lifecycle$State2 != lifecycle$State) {
            h(j());
            lifecycle$State2 = lifecycle$State;
            lifecycle$State = ((l) this.e.getLifecycle()).f996b;
        }
    }

    @Override // b.j.p
    public void i() {
        ((l) this.e.getLifecycle()).f995a.k(this);
    }

    @Override // b.j.p
    public boolean j() {
        return ((l) this.e.getLifecycle()).f996b.compareTo(Lifecycle$State.STARTED) >= 0;
    }
}
