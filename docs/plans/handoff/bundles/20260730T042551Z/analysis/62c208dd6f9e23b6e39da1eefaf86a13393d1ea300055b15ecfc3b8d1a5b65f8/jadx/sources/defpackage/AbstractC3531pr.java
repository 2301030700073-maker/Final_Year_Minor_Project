package defpackage;

/* renamed from: pr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC3531pr extends AbstractC3338mb {
    public abstract AbstractC3531pr s();

    @Override // defpackage.AbstractC3338mb
    public String toString() {
        AbstractC3531pr abstractC3531pr;
        String str;
        C3752td c3752td = C0185Ee.f871do;
        AbstractC3531pr abstractC3531pr2 = C3648rr.f15331do;
        if (this == abstractC3531pr2) {
            str = "Dispatchers.Main";
        } else {
            try {
                abstractC3531pr = abstractC3531pr2.s();
            } catch (UnsupportedOperationException unused) {
                abstractC3531pr = null;
            }
            str = this == abstractC3531pr ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        return getClass().getSimpleName() + '@' + C0820cd.m4914try(this);
    }
}
