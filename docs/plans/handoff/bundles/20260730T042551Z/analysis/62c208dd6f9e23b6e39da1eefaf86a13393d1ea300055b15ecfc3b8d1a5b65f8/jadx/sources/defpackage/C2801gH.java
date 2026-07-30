package defpackage;

/* renamed from: gH, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2801gH {

    /* renamed from: do, reason: not valid java name */
    public static final ThreadLocal<AbstractC3873vg> f13085do = new ThreadLocal<>();

    /* renamed from: do, reason: not valid java name */
    public static AbstractC3873vg m6717do() {
        ThreadLocal<AbstractC3873vg> threadLocal = f13085do;
        AbstractC3873vg abstractC3873vg = threadLocal.get();
        if (abstractC3873vg != null) {
            return abstractC3873vg;
        }
        B5 b5 = new B5(Thread.currentThread());
        threadLocal.set(b5);
        return b5;
    }
}
