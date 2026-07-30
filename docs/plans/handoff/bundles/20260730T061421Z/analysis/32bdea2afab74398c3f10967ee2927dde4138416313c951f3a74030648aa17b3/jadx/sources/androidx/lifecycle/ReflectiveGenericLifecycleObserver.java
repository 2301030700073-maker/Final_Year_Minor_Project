package androidx.lifecycle;

import b.j.C0132b;
import b.j.C0134d;
import b.j.InterfaceC0138h;
import b.j.j;
import java.util.List;

/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements InterfaceC0138h {

    /* renamed from: a, reason: collision with root package name */
    public final Object f133a;

    /* renamed from: b, reason: collision with root package name */
    public final C0132b f134b;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f133a = obj;
        this.f134b = C0134d.f990c.b(obj.getClass());
    }

    @Override // b.j.InterfaceC0138h
    public void d(j jVar, Lifecycle$Event lifecycle$Event) {
        C0132b c0132b = this.f134b;
        Object obj = this.f133a;
        C0132b.a((List) c0132b.f986a.get(lifecycle$Event), jVar, lifecycle$Event, obj);
        C0132b.a((List) c0132b.f986a.get(Lifecycle$Event.ON_ANY), jVar, lifecycle$Event, obj);
    }
}
