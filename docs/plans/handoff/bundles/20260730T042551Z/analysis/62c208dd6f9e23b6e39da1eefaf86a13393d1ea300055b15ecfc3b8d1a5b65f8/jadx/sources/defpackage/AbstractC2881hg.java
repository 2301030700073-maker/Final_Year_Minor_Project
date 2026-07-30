package defpackage;

/* renamed from: hg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC2881hg<T> extends PD {
    public AbstractC2881hg(AbstractC3904wA abstractC3904wA) {
        super(abstractC3904wA);
    }

    /* renamed from: new */
    public abstract void mo1151new(C0607Xj c0607Xj, T t);

    /* renamed from: try, reason: not valid java name */
    public final void m6827try(T t) {
        C0607Xj m1752do = m1752do();
        try {
            mo1151new(m1752do, t);
            m1752do.f4595do.executeInsert();
        } finally {
            m1753for(m1752do);
        }
    }
}
