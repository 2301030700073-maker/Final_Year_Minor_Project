package b.a.l;

/* loaded from: classes.dex */
public class d extends c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f225a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b.a.l.j.b f226b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f227c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ g f228d;

    public d(g gVar, int i, b.a.l.j.b bVar, String str) {
        this.f228d = gVar;
        this.f225a = i;
        this.f226b = bVar;
        this.f227c = str;
    }

    @Override // b.a.l.c
    public void a(Object obj, b.e.b.c cVar) {
        this.f228d.b(this.f225a, this.f226b, obj, cVar);
    }

    @Override // b.a.l.c
    public void b() {
        this.f228d.f(this.f227c);
    }
}
