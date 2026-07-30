package b.a;

/* loaded from: classes.dex */
public class i implements a {

    /* renamed from: a, reason: collision with root package name */
    public final h f221a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f222b;

    public i(j jVar, h hVar) {
        this.f222b = jVar;
        this.f221a = hVar;
    }

    @Override // b.a.a
    public void cancel() {
        this.f222b.f224b.remove(this.f221a);
        this.f221a.f220b.remove(this);
    }
}
