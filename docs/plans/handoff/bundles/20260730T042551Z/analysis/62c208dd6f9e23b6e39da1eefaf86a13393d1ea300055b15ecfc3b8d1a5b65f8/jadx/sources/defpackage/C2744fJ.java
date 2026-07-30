package defpackage;

/* renamed from: fJ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2744fJ<T> extends KB<T> {

    /* renamed from: do, reason: not valid java name */
    public final ThreadLocal<C3653rw<InterfaceC3161jb, Object>> f12894do;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2744fJ(defpackage.AbstractC0620Ya r3, defpackage.InterfaceC3161jb r4) {
        /*
            r2 = this;
            gJ r0 = defpackage.C2803gJ.f13086do
            jb$if r1 = r4.mo814new(r0)
            if (r1 != 0) goto Ld
            jb r0 = r4.k(r0)
            goto Le
        Ld:
            r0 = r4
        Le:
            r2.<init>(r3, r0)
            java.lang.ThreadLocal r0 = new java.lang.ThreadLocal
            r0.<init>()
            r2.f12894do = r0
            jb r3 = r3.mo2221if()
            Za$do r0 = defpackage.InterfaceC0642Za.Cdo.f4868do
            jb$if r3 = r3.mo814new(r0)
            boolean r3 = r3 instanceof defpackage.AbstractC3338mb
            if (r3 != 0) goto L31
            r3 = 0
            java.lang.Object r3 = defpackage.C2683eH.m6541for(r4, r3)
            defpackage.C2683eH.m6540do(r4, r3)
            r2.z(r4, r3)
        L31:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2744fJ.<init>(Ya, jb):void");
    }

    @Override // defpackage.KB, defpackage.Cgoto
    public final void w(Object obj) {
        if (this.threadLocalIsSet) {
            C3653rw<InterfaceC3161jb, Object> c3653rw = this.f12894do.get();
            if (c3653rw != null) {
                C2683eH.m6540do(c3653rw.f15340do, c3653rw.f15341if);
            }
            this.f12894do.remove();
        }
        Object m8457public = C3850vF.m8457public(obj);
        InterfaceC0576Wa<T> interfaceC0576Wa = ((KB) this).f1773do;
        InterfaceC3161jb mo2221if = interfaceC0576Wa.mo2221if();
        Object m6541for = C2683eH.m6541for(mo2221if, null);
        C2744fJ<?> m7273if = m6541for != C2683eH.f12658do ? C3220kb.m7273if(interfaceC0576Wa, mo2221if, m6541for) : null;
        try {
            ((KB) this).f1773do.mo1746while(m8457public);
            C3206kJ c3206kJ = C3206kJ.f13965do;
        } finally {
            if (m7273if == null || m7273if.y()) {
                C2683eH.m6540do(mo2221if, m6541for);
            }
        }
    }

    public final boolean y() {
        boolean z = this.threadLocalIsSet && this.f12894do.get() == null;
        this.f12894do.remove();
        return !z;
    }

    public final void z(InterfaceC3161jb interfaceC3161jb, Object obj) {
        this.threadLocalIsSet = true;
        this.f12894do.set(new C3653rw<>(interfaceC3161jb, obj));
    }
}
