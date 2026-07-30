package b.e.f;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public boolean f700a;

    /* renamed from: b, reason: collision with root package name */
    public a f701b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f702c;

    public void a() {
        synchronized (this) {
            if (this.f700a) {
                return;
            }
            this.f700a = true;
            this.f702c = true;
            a aVar = this.f701b;
            if (aVar != null) {
                try {
                    aVar.onCancel();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f702c = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            synchronized (this) {
                this.f702c = false;
                notifyAll();
            }
        }
    }

    public void b(a aVar) {
        synchronized (this) {
            while (this.f702c) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                }
            }
            if (this.f701b == aVar) {
                return;
            }
            this.f701b = aVar;
            if (this.f700a) {
                aVar.onCancel();
            }
        }
    }
}
