package defpackage;

/* loaded from: classes3.dex */
public final class KG extends EG {

    /* renamed from: do, reason: not valid java name */
    public final Runnable f1783do;

    public KG(Runnable runnable, long j, HG hg) {
        super(j, hg);
        this.f1783do = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f1783do.run();
        } finally {
            ((EG) this).f765do.mo496if();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.f1783do;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(C0820cd.m4914try(runnable));
        sb.append(", ");
        sb.append(((EG) this).f764do);
        sb.append(", ");
        sb.append(((EG) this).f765do);
        sb.append(']');
        return sb.toString();
    }
}
