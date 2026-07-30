package b.a;

/* loaded from: classes.dex */
public class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f211a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b.a.l.j.a f212b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f213c;

    public c(e eVar, int i, b.a.l.j.a aVar) {
        this.f213c = eVar;
        this.f211a = i;
        this.f212b = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        b.a.l.f fVar;
        b.a.l.b bVar;
        e eVar = this.f213c;
        int i = this.f211a;
        Object obj = this.f212b.f239a;
        String str = (String) eVar.f236b.get(Integer.valueOf(i));
        if (str == null || (fVar = (b.a.l.f) eVar.f238d.get(str)) == null || (bVar = fVar.f233a) == null) {
            return;
        }
        bVar.a(obj);
    }
}
