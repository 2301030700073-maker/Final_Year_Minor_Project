package androidx.lifecycle;

import b.j.InterfaceC0136f;
import b.j.InterfaceC0138h;
import b.j.j;

/* loaded from: classes.dex */
public class SingleGeneratedAdapterObserver implements InterfaceC0138h {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0136f f141a;

    public SingleGeneratedAdapterObserver(InterfaceC0136f interfaceC0136f) {
        this.f141a = interfaceC0136f;
    }

    @Override // b.j.InterfaceC0138h
    public void d(j jVar, Lifecycle$Event lifecycle$Event) {
        this.f141a.a(jVar, lifecycle$Event, false, null);
        this.f141a.a(jVar, lifecycle$Event, true, null);
    }
}
