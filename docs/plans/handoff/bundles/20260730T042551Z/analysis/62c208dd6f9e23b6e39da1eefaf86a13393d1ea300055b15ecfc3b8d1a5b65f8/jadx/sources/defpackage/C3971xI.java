package defpackage;

import defpackage.W3;
import java.util.HashMap;

/* renamed from: xI, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3971xI<T> implements InterfaceC3617rI<T> {

    /* renamed from: do, reason: not valid java name */
    public final C0823cg f16538do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3146jI<T, byte[]> f16539do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f16540do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3794uI f16541do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC4089zI f16542do;

    public C3971xI(AbstractC3794uI abstractC3794uI, String str, C0823cg c0823cg, InterfaceC3146jI<T, byte[]> interfaceC3146jI, InterfaceC4089zI interfaceC4089zI) {
        this.f16541do = abstractC3794uI;
        this.f16540do = str;
        this.f16538do = c0823cg;
        this.f16539do = interfaceC3146jI;
        this.f16542do = interfaceC4089zI;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8640do(V3 v3, EI ei) {
        AbstractC3794uI abstractC3794uI = this.f16541do;
        if (abstractC3794uI == null) {
            throw new NullPointerException("Null transportContext");
        }
        String str = this.f16540do;
        if (str == null) {
            throw new NullPointerException("Null transportName");
        }
        InterfaceC3146jI<T, byte[]> interfaceC3146jI = this.f16539do;
        if (interfaceC3146jI == null) {
            throw new NullPointerException("Null transformer");
        }
        C0823cg c0823cg = this.f16538do;
        if (c0823cg == null) {
            throw new NullPointerException("Null encoding");
        }
        C3662s4 c3662s4 = new C3662s4(abstractC3794uI, str, v3, interfaceC3146jI, c0823cg);
        BI bi = (BI) this.f16542do;
        bi.getClass();
        AbstractC3343mg<?> abstractC3343mg = c3662s4.f15377do;
        C4075z4 m8383try = c3662s4.f15378do.m8383try(abstractC3343mg.mo2510new());
        W3.Cdo cdo = new W3.Cdo();
        cdo.f4316do = new HashMap();
        cdo.f4314do = Long.valueOf(bi.f226do.mo445do());
        cdo.f4319if = Long.valueOf(bi.f228if.mo445do());
        cdo.m2702new(c3662s4.f15376do);
        cdo.m2700for(new C0581Wf(c3662s4.f15374do, c3662s4.f15375do.apply(abstractC3343mg.mo2508for())));
        cdo.f4313do = abstractC3343mg.mo2507do();
        if (abstractC3343mg.mo2511try() != null && abstractC3343mg.mo2511try().mo1559do() != null) {
            cdo.f4318if = abstractC3343mg.mo2511try().mo1559do();
        }
        abstractC3343mg.mo2509if();
        bi.f227do.mo8377do(ei, cdo.m2701if(), m8383try);
    }
}
