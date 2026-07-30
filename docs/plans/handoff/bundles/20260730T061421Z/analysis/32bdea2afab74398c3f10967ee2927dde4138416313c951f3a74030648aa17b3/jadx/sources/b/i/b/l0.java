package b.i.b;

/* loaded from: classes.dex */
public class l0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ K f915a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f916b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b.e.f.b f917c;

    public l0(K k, r rVar, b.e.f.b bVar) {
        this.f915a = k;
        this.f916b = rVar;
        this.f917c = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f915a.a(this.f916b, this.f917c);
    }
}
