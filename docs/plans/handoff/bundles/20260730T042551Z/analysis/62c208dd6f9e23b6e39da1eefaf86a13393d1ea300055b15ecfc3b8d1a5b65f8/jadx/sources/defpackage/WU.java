package defpackage;

/* loaded from: classes3.dex */
public abstract class WU extends XU {

    /* renamed from: do, reason: not valid java name */
    public boolean f4386do;

    public WU(ZU zu) {
        super(zu);
        ((XU) this).f4519do.f4826do++;
    }

    /* renamed from: super, reason: not valid java name */
    public final void m2733super() {
        if (!this.f4386do) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m2734throw() {
        if (this.f4386do) {
            throw new IllegalStateException("Can't initialize twice");
        }
        mo372while();
        ((XU) this).f4519do.f4852if++;
        this.f4386do = true;
    }

    /* renamed from: while */
    public abstract boolean mo372while();
}
