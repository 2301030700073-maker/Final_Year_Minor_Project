package c.b.a.d.a.a;

/* loaded from: classes.dex */
public class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f3088a;

    public g(j jVar) {
        this.f3088a = jVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f3088a.h.a() && this.f3088a.g.a()) {
            return;
        }
        this.f3088a.f3095a.runOnUiThread(new f(this));
    }
}
