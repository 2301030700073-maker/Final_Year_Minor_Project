package androidx.lifecycle;

import b.j.InterfaceC0136f;
import b.j.InterfaceC0138h;
import b.j.j;
import b.j.r;

/* loaded from: classes.dex */
public class CompositeGeneratedAdaptersObserver implements InterfaceC0138h {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0136f[] f126a;

    public CompositeGeneratedAdaptersObserver(InterfaceC0136f[] interfaceC0136fArr) {
        this.f126a = interfaceC0136fArr;
    }

    @Override // b.j.InterfaceC0138h
    public void d(j jVar, Lifecycle$Event lifecycle$Event) {
        r rVar = new r();
        for (InterfaceC0136f interfaceC0136f : this.f126a) {
            interfaceC0136f.a(jVar, lifecycle$Event, false, rVar);
        }
        for (InterfaceC0136f interfaceC0136f2 : this.f126a) {
            interfaceC0136f2.a(jVar, lifecycle$Event, true, rVar);
        }
    }
}
