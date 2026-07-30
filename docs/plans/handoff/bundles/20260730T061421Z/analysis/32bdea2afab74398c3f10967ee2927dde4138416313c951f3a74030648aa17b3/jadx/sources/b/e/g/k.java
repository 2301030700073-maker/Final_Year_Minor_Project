package b.e.g;

/* loaded from: classes.dex */
public class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f727a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f728b;

    public k(l lVar, Object obj) {
        this.f728b = lVar;
        this.f727a = obj;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f728b.f731c.a(this.f727a);
    }
}
