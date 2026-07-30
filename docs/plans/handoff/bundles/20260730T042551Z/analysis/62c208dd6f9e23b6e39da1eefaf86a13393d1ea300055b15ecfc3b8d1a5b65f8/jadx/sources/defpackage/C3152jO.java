package defpackage;

/* renamed from: jO, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3152jO extends AbstractRunnableC2749fO {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3917wN f13711do;

    public C3152jO(C3917wN c3917wN) {
        this.f13711do = c3917wN;
    }

    @Override // defpackage.AbstractRunnableC2749fO
    public final void b() {
        synchronized (this.f13711do.f16329do) {
            try {
                if (this.f13711do.f16334do.get() > 0 && this.f13711do.f16334do.decrementAndGet() > 0) {
                    this.f13711do.f16327do.m6563if("Leaving the connection open for other ongoing calls.", new Object[0]);
                    return;
                }
                C3917wN c3917wN = this.f13711do;
                if (c3917wN.f16326do != null) {
                    c3917wN.f16327do.m6563if("Unbind from service.", new Object[0]);
                    C3917wN c3917wN2 = this.f13711do;
                    c3917wN2.f16324do.unbindService(c3917wN2.f16336do);
                    C3917wN c3917wN3 = this.f13711do;
                    c3917wN3.f16337do = false;
                    c3917wN3.f16326do = null;
                    c3917wN3.f16336do = null;
                }
                this.f13711do.m8573try();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
