package defpackage;

/* renamed from: qT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC3570qT extends C3393nT {

    /* renamed from: do, reason: not valid java name */
    public boolean f15118do;

    public AbstractC3570qT(TS ts) {
        super(ts);
        ((TS) super.f14527do).f3680do++;
    }

    /* renamed from: class, reason: not valid java name */
    public final void m7886class() {
        if (!this.f15118do) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final void m7887const() {
        if (this.f15118do) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (mo1961final()) {
            return;
        }
        ((TS) super.f14527do).f3698do.incrementAndGet();
        this.f15118do = true;
    }

    /* renamed from: final */
    public abstract boolean mo1961final();
}
