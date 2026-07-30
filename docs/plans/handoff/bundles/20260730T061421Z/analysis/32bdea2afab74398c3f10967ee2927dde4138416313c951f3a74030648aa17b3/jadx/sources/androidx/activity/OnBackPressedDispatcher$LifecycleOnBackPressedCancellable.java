package androidx.activity;

import androidx.lifecycle.Lifecycle$Event;
import b.a.a;
import b.a.h;
import b.a.i;
import b.a.j;
import b.j.AbstractC0137g;
import b.j.InterfaceC0138h;
import b.j.l;

/* loaded from: classes.dex */
public class OnBackPressedDispatcher$LifecycleOnBackPressedCancellable implements InterfaceC0138h, a {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0137g f10a;

    /* renamed from: b, reason: collision with root package name */
    public final h f11b;

    /* renamed from: c, reason: collision with root package name */
    public a f12c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ j f13d;

    public OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(j jVar, AbstractC0137g abstractC0137g, h hVar) {
        this.f13d = jVar;
        this.f10a = abstractC0137g;
        this.f11b = hVar;
        abstractC0137g.a(this);
    }

    @Override // b.a.a
    public void cancel() {
        ((l) this.f10a).f995a.k(this);
        this.f11b.f220b.remove(this);
        a aVar = this.f12c;
        if (aVar != null) {
            aVar.cancel();
            this.f12c = null;
        }
    }

    @Override // b.j.InterfaceC0138h
    public void d(b.j.j jVar, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event == Lifecycle$Event.ON_START) {
            j jVar2 = this.f13d;
            h hVar = this.f11b;
            jVar2.f224b.add(hVar);
            i iVar = new i(jVar2, hVar);
            hVar.f220b.add(iVar);
            this.f12c = iVar;
            return;
        }
        if (lifecycle$Event != Lifecycle$Event.ON_STOP) {
            if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
                cancel();
            }
        } else {
            a aVar = this.f12c;
            if (aVar != null) {
                aVar.cancel();
            }
        }
    }
}
