package defpackage;

@Deprecated
/* loaded from: classes.dex */
public final class V6 {

    /* renamed from: do, reason: not valid java name */
    public Cdo f4037do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4038do;

    /* renamed from: if, reason: not valid java name */
    public boolean f4039if;

    /* renamed from: V6$do, reason: invalid class name */
    public interface Cdo {
        void onCancel();
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2542do() {
        synchronized (this) {
            if (this.f4038do) {
                return;
            }
            this.f4038do = true;
            this.f4039if = true;
            Cdo cdo = this.f4037do;
            if (cdo != null) {
                try {
                    cdo.onCancel();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f4039if = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            synchronized (this) {
                this.f4039if = false;
                notifyAll();
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2543if(Cdo cdo) {
        synchronized (this) {
            while (this.f4039if) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                }
            }
            if (this.f4037do == cdo) {
                return;
            }
            this.f4037do = cdo;
            if (this.f4038do) {
                cdo.onCancel();
            }
        }
    }
}
