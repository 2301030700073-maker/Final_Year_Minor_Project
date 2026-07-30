package defpackage;

/* renamed from: fO, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractRunnableC2749fO implements Runnable {
    private final GG a;

    public AbstractRunnableC2749fO() {
        this.a = null;
    }

    public AbstractRunnableC2749fO(GG gg) {
        this.a = gg;
    }

    public void a(Exception exc) {
        GG gg = this.a;
        if (gg != null) {
            gg.m720for(exc);
        }
    }

    public abstract void b();

    public final GG c() {
        return this.a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            b();
        } catch (Exception e) {
            a(e);
        }
    }
}
