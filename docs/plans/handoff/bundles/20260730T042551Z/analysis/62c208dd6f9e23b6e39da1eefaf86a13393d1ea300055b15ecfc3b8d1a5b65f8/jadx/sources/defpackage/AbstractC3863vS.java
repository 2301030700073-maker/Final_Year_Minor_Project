package defpackage;

/* renamed from: vS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC3863vS extends C4098zR {

    /* renamed from: do, reason: not valid java name */
    public boolean f16089do;

    public AbstractC3863vS(TS ts) {
        super(ts);
        ((TS) super.f14527do).f3680do++;
    }

    /* renamed from: import, reason: not valid java name */
    public final void m8474import() {
        if (!this.f16089do) {
            throw new IllegalStateException("Not initialized");
        }
    }

    /* renamed from: native, reason: not valid java name */
    public final void m8475native() {
        if (this.f16089do) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (mo1327public()) {
            return;
        }
        ((TS) super.f14527do).f3698do.incrementAndGet();
        this.f16089do = true;
    }

    /* renamed from: public */
    public abstract boolean mo1327public();
}
