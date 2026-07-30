package defpackage;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VA {

    /* renamed from: do, reason: not valid java name */
    public final AbstractC2747fM f4047do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<AbstractC2747fM> f4048do = new ArrayList<>();

    public VA(AbstractC2747fM abstractC2747fM) {
        this.f4047do = null;
        this.f4047do = abstractC2747fM;
    }

    /* renamed from: do, reason: not valid java name */
    public static long m2545do(C0702ae c0702ae, long j) {
        AbstractC2747fM abstractC2747fM = c0702ae.f4976if;
        if (abstractC2747fM instanceof C2652dm) {
            return j;
        }
        ArrayList arrayList = c0702ae.f4970do;
        int size = arrayList.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            InterfaceC0535Ud interfaceC0535Ud = (InterfaceC0535Ud) arrayList.get(i);
            if (interfaceC0535Ud instanceof C0702ae) {
                C0702ae c0702ae2 = (C0702ae) interfaceC0535Ud;
                if (c0702ae2.f4976if != abstractC2747fM) {
                    j2 = Math.min(j2, m2545do(c0702ae2, c0702ae2.f4975if + j));
                }
            }
        }
        if (c0702ae != abstractC2747fM.f12905if) {
            return j2;
        }
        long mo6656break = abstractC2747fM.mo6656break();
        long j3 = j - mo6656break;
        return Math.min(Math.min(j2, m2545do(abstractC2747fM.f12900do, j3)), j3 - r9.f4975if);
    }

    /* renamed from: if, reason: not valid java name */
    public static long m2546if(C0702ae c0702ae, long j) {
        AbstractC2747fM abstractC2747fM = c0702ae.f4976if;
        if (abstractC2747fM instanceof C2652dm) {
            return j;
        }
        ArrayList arrayList = c0702ae.f4970do;
        int size = arrayList.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            InterfaceC0535Ud interfaceC0535Ud = (InterfaceC0535Ud) arrayList.get(i);
            if (interfaceC0535Ud instanceof C0702ae) {
                C0702ae c0702ae2 = (C0702ae) interfaceC0535Ud;
                if (c0702ae2.f4976if != abstractC2747fM) {
                    j2 = Math.max(j2, m2546if(c0702ae2, c0702ae2.f4975if + j));
                }
            }
        }
        if (c0702ae != abstractC2747fM.f12900do) {
            return j2;
        }
        long mo6656break = abstractC2747fM.mo6656break();
        long j3 = j + mo6656break;
        return Math.max(Math.max(j2, m2546if(abstractC2747fM.f12905if, j3)), j3 - r9.f4975if);
    }
}
