package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: m7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3312m7 extends AbstractC2747fM {

    /* renamed from: do, reason: not valid java name */
    public final ArrayList<AbstractC2747fM> f14314do;

    /* renamed from: new, reason: not valid java name */
    public int f14315new;

    public C3312m7(C0181Ea c0181Ea, int i) {
        super(c0181Ea);
        C0181Ea c0181Ea2;
        this.f14314do = new ArrayList<>();
        ((AbstractC2747fM) this).f12904if = i;
        C0181Ea c0181Ea3 = ((AbstractC2747fM) this).f12898do;
        C0181Ea m478super = c0181Ea3.m478super(i);
        while (true) {
            C0181Ea c0181Ea4 = m478super;
            c0181Ea2 = c0181Ea3;
            c0181Ea3 = c0181Ea4;
            if (c0181Ea3 == null) {
                break;
            } else {
                m478super = c0181Ea3.m478super(((AbstractC2747fM) this).f12904if);
            }
        }
        ((AbstractC2747fM) this).f12898do = c0181Ea2;
        int i2 = ((AbstractC2747fM) this).f12904if;
        AbstractC2747fM abstractC2747fM = i2 == 0 ? c0181Ea2.f810do : i2 == 1 ? c0181Ea2.f809do : null;
        ArrayList<AbstractC2747fM> arrayList = this.f14314do;
        arrayList.add(abstractC2747fM);
        C0181Ea m467final = c0181Ea2.m467final(((AbstractC2747fM) this).f12904if);
        while (m467final != null) {
            int i3 = ((AbstractC2747fM) this).f12904if;
            arrayList.add(i3 == 0 ? m467final.f810do : i3 == 1 ? m467final.f809do : null);
            m467final = m467final.m467final(((AbstractC2747fM) this).f12904if);
        }
        Iterator<AbstractC2747fM> it = arrayList.iterator();
        while (it.hasNext()) {
            AbstractC2747fM next = it.next();
            int i4 = ((AbstractC2747fM) this).f12904if;
            if (i4 == 0) {
                next.f12898do.f814do = this;
            } else if (i4 == 1) {
                next.f12898do.f839if = this;
            }
        }
        if ((((AbstractC2747fM) this).f12904if == 0 && ((C0203Fa) ((AbstractC2747fM) this).f12898do.f808do).f1067new) && arrayList.size() > 1) {
            ((AbstractC2747fM) this).f12898do = arrayList.get(arrayList.size() - 1).f12898do;
        }
        this.f14315new = ((AbstractC2747fM) this).f12904if == 0 ? ((AbstractC2747fM) this).f12898do.f846native : ((AbstractC2747fM) this).f12898do.f850public;
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: break */
    public final long mo6656break() {
        ArrayList<AbstractC2747fM> arrayList = this.f14314do;
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = r5.f12905if.f4975if + arrayList.get(i).mo6656break() + j + r5.f12900do.f4975if;
        }
        return j;
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: case */
    public final void mo1140case() {
        ((AbstractC2747fM) this).f12899do = null;
        Iterator<AbstractC2747fM> it = this.f14314do.iterator();
        while (it.hasNext()) {
            it.next().mo1140case();
        }
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: catch */
    public final boolean mo1141catch() {
        ArrayList<AbstractC2747fM> arrayList = this.f14314do;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (!arrayList.get(i).mo1141catch()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: const, reason: not valid java name */
    public final C0181Ea m7444const() {
        int i = 0;
        while (true) {
            ArrayList<AbstractC2747fM> arrayList = this.f14314do;
            if (i >= arrayList.size()) {
                return null;
            }
            C0181Ea c0181Ea = arrayList.get(i).f12898do;
            if (c0181Ea.f845import != 8) {
                return c0181Ea;
            }
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:301:0x03f4, code lost:
    
        r3 = r3 - r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0111, code lost:
    
        r4 = r17;
        r6 = r18;
     */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00e3  */
    @Override // defpackage.AbstractC2747fM, defpackage.InterfaceC0535Ud
    /* renamed from: do */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo1143do(defpackage.InterfaceC0535Ud r28) {
        /*
            Method dump skipped, instructions count: 1043
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3312m7.mo1143do(Ud):void");
    }

    /* renamed from: final, reason: not valid java name */
    public final C0181Ea m7445final() {
        ArrayList<AbstractC2747fM> arrayList = this.f14314do;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0181Ea c0181Ea = arrayList.get(size).f12898do;
            if (c0181Ea.f845import != 8) {
                return c0181Ea;
            }
        }
        return null;
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: new */
    public final void mo1144new() {
        ArrayList<AbstractC2747fM> arrayList = this.f14314do;
        Iterator<AbstractC2747fM> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().mo1144new();
        }
        int size = arrayList.size();
        if (size < 1) {
            return;
        }
        C0181Ea c0181Ea = arrayList.get(0).f12898do;
        C0181Ea c0181Ea2 = arrayList.get(size - 1).f12898do;
        int i = ((AbstractC2747fM) this).f12904if;
        C0702ae c0702ae = ((AbstractC2747fM) this).f12905if;
        C0702ae c0702ae2 = ((AbstractC2747fM) this).f12900do;
        if (i == 0) {
            C3985xa c3985xa = c0181Ea.f815do;
            C3985xa c3985xa2 = c0181Ea2.f830for;
            C0702ae m6655this = AbstractC2747fM.m6655this(c3985xa, 0);
            int m8646for = c3985xa.m8646for();
            C0181Ea m7444const = m7444const();
            if (m7444const != null) {
                m8646for = m7444const.f815do.m8646for();
            }
            if (m6655this != null) {
                AbstractC2747fM.m6654if(c0702ae2, m6655this, m8646for);
            }
            C0702ae m6655this2 = AbstractC2747fM.m6655this(c3985xa2, 0);
            int m8646for2 = c3985xa2.m8646for();
            C0181Ea m7445final = m7445final();
            if (m7445final != null) {
                m8646for2 = m7445final.f830for.m8646for();
            }
            if (m6655this2 != null) {
                AbstractC2747fM.m6654if(c0702ae, m6655this2, -m8646for2);
            }
        } else {
            C3985xa c3985xa3 = c0181Ea.f840if;
            C3985xa c3985xa4 = c0181Ea2.f849new;
            C0702ae m6655this3 = AbstractC2747fM.m6655this(c3985xa3, 1);
            int m8646for3 = c3985xa3.m8646for();
            C0181Ea m7444const2 = m7444const();
            if (m7444const2 != null) {
                m8646for3 = m7444const2.f840if.m8646for();
            }
            if (m6655this3 != null) {
                AbstractC2747fM.m6654if(c0702ae2, m6655this3, m8646for3);
            }
            C0702ae m6655this4 = AbstractC2747fM.m6655this(c3985xa4, 1);
            int m8646for4 = c3985xa4.m8646for();
            C0181Ea m7445final2 = m7445final();
            if (m7445final2 != null) {
                m8646for4 = m7445final2.f849new.m8646for();
            }
            if (m6655this4 != null) {
                AbstractC2747fM.m6654if(c0702ae, m6655this4, -m8646for4);
            }
        }
        c0702ae2.f4969do = this;
        c0702ae.f4969do = this;
    }

    public final String toString() {
        String concat = "ChainRun ".concat(((AbstractC2747fM) this).f12904if == 0 ? "horizontal : " : "vertical : ");
        Iterator<AbstractC2747fM> it = this.f14314do.iterator();
        while (it.hasNext()) {
            AbstractC2747fM next = it.next();
            concat = Cpublic.m7816case(Cpublic.m7816case(concat, "<") + next, "> ");
        }
        return concat;
    }

    @Override // defpackage.AbstractC2747fM
    /* renamed from: try */
    public final void mo1145try() {
        int i = 0;
        while (true) {
            ArrayList<AbstractC2747fM> arrayList = this.f14314do;
            if (i >= arrayList.size()) {
                return;
            }
            arrayList.get(i).mo1145try();
            i++;
        }
    }
}
