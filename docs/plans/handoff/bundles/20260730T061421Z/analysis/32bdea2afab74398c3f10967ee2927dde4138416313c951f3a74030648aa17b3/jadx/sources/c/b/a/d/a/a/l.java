package c.b.a.d.a.a;

/* loaded from: classes.dex */
public class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f3099a;

    public l(m mVar) {
        this.f3099a = mVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        m mVar = this.f3099a;
        if (mVar.f) {
            mVar.f3100a.unbindService(mVar);
            mVar.f = false;
        }
    }
}
