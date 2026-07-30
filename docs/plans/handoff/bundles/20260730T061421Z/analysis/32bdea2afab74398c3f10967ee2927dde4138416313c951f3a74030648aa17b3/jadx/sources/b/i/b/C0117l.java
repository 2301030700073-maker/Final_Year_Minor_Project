package b.i.b;

/* renamed from: b.i.b.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0117l implements b.c.a.c.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f914a;

    public C0117l(r rVar) {
        this.f914a = rVar;
    }

    @Override // b.c.a.c.a
    public Object apply(Object obj) {
        r rVar = this.f914a;
        Object obj2 = rVar.mHost;
        return obj2 instanceof b.a.l.h ? ((b.a.l.h) obj2).getActivityResultRegistry() : rVar.requireActivity().getActivityResultRegistry();
    }
}
