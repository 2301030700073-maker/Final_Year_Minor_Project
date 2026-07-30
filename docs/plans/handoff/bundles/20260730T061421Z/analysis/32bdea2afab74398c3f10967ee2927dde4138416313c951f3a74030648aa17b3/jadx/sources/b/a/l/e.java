package b.a.l;

/* loaded from: classes.dex */
public class e extends c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f229a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b.a.l.j.b f230b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f231c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g f232d;

    public e(g gVar, int i, b.a.l.j.b bVar, String str) {
        this.f232d = gVar;
        this.f229a = i;
        this.f230b = bVar;
        this.f231c = str;
    }

    @Override // b.a.l.c
    public void a(Object obj, b.e.b.c cVar) {
        this.f232d.b(this.f229a, this.f230b, obj, cVar);
    }

    @Override // b.a.l.c
    public void b() {
        this.f232d.f(this.f231c);
    }
}
