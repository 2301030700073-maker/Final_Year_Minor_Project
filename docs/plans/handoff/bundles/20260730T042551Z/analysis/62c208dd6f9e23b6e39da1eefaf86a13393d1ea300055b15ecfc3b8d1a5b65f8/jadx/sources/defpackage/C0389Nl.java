package defpackage;

import defpackage.C0181Ea;
import defpackage.C3985xa;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: Nl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0389Nl extends C0181Ea {

    /* renamed from: goto, reason: not valid java name */
    public float f2428goto = -1.0f;

    /* renamed from: return, reason: not valid java name */
    public int f2429return = -1;

    /* renamed from: static, reason: not valid java name */
    public int f2430static = -1;

    /* renamed from: this, reason: not valid java name */
    public C3985xa f2432this = ((C0181Ea) this).f840if;

    /* renamed from: switch, reason: not valid java name */
    public int f2431switch = 0;

    public C0389Nl() {
        ((C0181Ea) this).f813do.clear();
        ((C0181Ea) this).f813do.add(this.f2432this);
        int length = ((C0181Ea) this).f821do.length;
        for (int i = 0; i < length; i++) {
            ((C0181Ea) this).f821do[i] = this.f2432this;
        }
    }

    @Override // defpackage.C0181Ea
    /* renamed from: catch */
    public final C3985xa mo460catch(C3985xa.Cdo cdo) {
        switch (cdo) {
            case NONE:
            case BASELINE:
            case CENTER:
            case CENTER_X:
            case CENTER_Y:
                return null;
            case LEFT:
            case RIGHT:
                if (this.f2431switch == 1) {
                    return this.f2432this;
                }
                break;
            case TOP:
            case BOTTOM:
                if (this.f2431switch == 0) {
                    return this.f2432this;
                }
                break;
        }
        throw new AssertionError(cdo.name());
    }

    @Override // defpackage.C0181Ea
    /* renamed from: continue */
    public final void mo463continue(C3706sq c3706sq) {
        if (((C0181Ea) this).f808do == null) {
            return;
        }
        C3985xa c3985xa = this.f2432this;
        c3706sq.getClass();
        int m8144const = C3706sq.m8144const(c3985xa);
        if (this.f2431switch == 1) {
            this.f805const = m8144const;
            this.f826final = 0;
            m466extends(((C0181Ea) this).f808do.m462const());
            m474private(0);
            return;
        }
        this.f805const = 0;
        this.f826final = m8144const;
        m474private(((C0181Ea) this).f808do.m481throw());
        m466extends(0);
    }

    @Override // defpackage.C0181Ea
    /* renamed from: new */
    public final void mo472new(C3706sq c3706sq) {
        C0203Fa c0203Fa = (C0203Fa) ((C0181Ea) this).f808do;
        if (c0203Fa == null) {
            return;
        }
        C3985xa mo460catch = c0203Fa.mo460catch(C3985xa.Cdo.LEFT);
        C3985xa mo460catch2 = c0203Fa.mo460catch(C3985xa.Cdo.RIGHT);
        C0181Ea c0181Ea = ((C0181Ea) this).f808do;
        C0181Ea.Cdo cdo = C0181Ea.Cdo.WRAP_CONTENT;
        boolean z = c0181Ea != null && c0181Ea.f819do[0] == cdo;
        if (this.f2431switch == 0) {
            mo460catch = c0203Fa.mo460catch(C3985xa.Cdo.TOP);
            mo460catch2 = c0203Fa.mo460catch(C3985xa.Cdo.BOTTOM);
            C0181Ea c0181Ea2 = ((C0181Ea) this).f808do;
            z = c0181Ea2 != null && c0181Ea2.f819do[1] == cdo;
        }
        if (this.f2429return != -1) {
            HE m8145break = c3706sq.m8145break(this.f2432this);
            c3706sq.m8160try(m8145break, c3706sq.m8145break(mo460catch), this.f2429return, 8);
            if (z) {
                c3706sq.m8146case(c3706sq.m8145break(mo460catch2), m8145break, 0, 5);
                return;
            }
            return;
        }
        if (this.f2430static != -1) {
            HE m8145break2 = c3706sq.m8145break(this.f2432this);
            HE m8145break3 = c3706sq.m8145break(mo460catch2);
            c3706sq.m8160try(m8145break2, m8145break3, -this.f2430static, 8);
            if (z) {
                c3706sq.m8146case(m8145break2, c3706sq.m8145break(mo460catch), 0, 5);
                c3706sq.m8146case(m8145break3, m8145break2, 0, 5);
                return;
            }
            return;
        }
        if (this.f2428goto != -1.0f) {
            HE m8145break4 = c3706sq.m8145break(this.f2432this);
            HE m8145break5 = c3706sq.m8145break(mo460catch2);
            float f = this.f2428goto;
            G2 m8147catch = c3706sq.m8147catch();
            m8147catch.f1116do.mo327break(m8145break4, -1.0f);
            m8147catch.f1116do.mo327break(m8145break5, f);
            c3706sq.m8152for(m8147catch);
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m1550strictfp(int i) {
        if (this.f2431switch == i) {
            return;
        }
        this.f2431switch = i;
        ArrayList<C3985xa> arrayList = ((C0181Ea) this).f813do;
        arrayList.clear();
        if (this.f2431switch == 1) {
            this.f2432this = ((C0181Ea) this).f815do;
        } else {
            this.f2432this = ((C0181Ea) this).f840if;
        }
        arrayList.add(this.f2432this);
        C3985xa[] c3985xaArr = ((C0181Ea) this).f821do;
        int length = c3985xaArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            c3985xaArr[i2] = this.f2432this;
        }
    }

    @Override // defpackage.C0181Ea
    /* renamed from: this */
    public final void mo480this(C0181Ea c0181Ea, HashMap<C0181Ea, C0181Ea> hashMap) {
        super.mo480this(c0181Ea, hashMap);
        C0389Nl c0389Nl = (C0389Nl) c0181Ea;
        this.f2428goto = c0389Nl.f2428goto;
        this.f2429return = c0389Nl.f2429return;
        this.f2430static = c0389Nl.f2430static;
        m1550strictfp(c0389Nl.f2431switch);
    }

    @Override // defpackage.C0181Ea
    /* renamed from: try */
    public final boolean mo483try() {
        return true;
    }
}
