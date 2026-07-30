package defpackage;

/* renamed from: vg, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC3873vg extends AbstractC3338mb {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f16105for = 0;

    /* renamed from: do, reason: not valid java name */
    public long f16106do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public A2<AbstractC0119Be<?>> f16107do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16108do;

    public final void s(boolean z) {
        long j = this.f16106do - (z ? 4294967296L : 1L);
        this.f16106do = j;
        if (j <= 0 && this.f16108do) {
            shutdown();
        }
    }

    public void shutdown() {
    }

    public final void t(boolean z) {
        this.f16106do = (z ? 4294967296L : 1L) + this.f16106do;
        if (z) {
            return;
        }
        this.f16108do = true;
    }

    public long u() {
        return !v() ? Long.MAX_VALUE : 0L;
    }

    public final boolean v() {
        A2<AbstractC0119Be<?>> a2 = this.f16107do;
        if (a2 == null) {
            return false;
        }
        AbstractC0119Be<?> removeFirst = a2.isEmpty() ? null : a2.removeFirst();
        if (removeFirst == null) {
            return false;
        }
        removeFirst.run();
        return true;
    }
}
