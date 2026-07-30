package b.j;

import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.Lifecycle$State;

/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public Lifecycle$State f993a;

    /* renamed from: b, reason: collision with root package name */
    public InterfaceC0138h f994b;

    public k(InterfaceC0139i interfaceC0139i, Lifecycle$State lifecycle$State) {
        this.f994b = n.d(interfaceC0139i);
        this.f993a = lifecycle$State;
    }

    public void a(j jVar, Lifecycle$Event lifecycle$Event) {
        Lifecycle$State e = lifecycle$Event.e();
        this.f993a = l.d(this.f993a, e);
        this.f994b.d(jVar, lifecycle$Event);
        this.f993a = e;
    }
}
