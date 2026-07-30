package defpackage;

import android.database.Cursor;

/* renamed from: mx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3360mx implements InterfaceC3301lx {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f14413do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3904wA f14414do;

    /* renamed from: mx$do, reason: invalid class name */
    public class Cdo extends AbstractC2881hg<C3242kx> {
        public Cdo(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }

        @Override // defpackage.AbstractC2881hg
        /* renamed from: new */
        public final void mo1151new(C0607Xj c0607Xj, C3242kx c3242kx) {
            C3242kx c3242kx2 = c3242kx;
            String str = c3242kx2.f14067do;
            if (str == null) {
                c0607Xj.m2764new(1);
            } else {
                c0607Xj.m2760case(1, str);
            }
            Long l = c3242kx2.f14066do;
            if (l == null) {
                c0607Xj.m2764new(2);
            } else {
                c0607Xj.m2762for(2, l.longValue());
            }
        }
    }

    public C3360mx(AbstractC3904wA abstractC3904wA) {
        this.f14414do = abstractC3904wA;
        this.f14413do = new Cdo(abstractC3904wA);
    }

    /* renamed from: do, reason: not valid java name */
    public final Long m7486do(String str) {
        Long l;
        C4022yA m8700for = C4022yA.m8700for(1, "SELECT long_value FROM Preference where `key`=?");
        m8700for.m8702goto(1, str);
        AbstractC3904wA abstractC3904wA = this.f14414do;
        abstractC3904wA.m8562if();
        Cursor m8559else = abstractC3904wA.m8559else(m8700for);
        try {
            if (m8559else.moveToFirst() && !m8559else.isNull(0)) {
                l = Long.valueOf(m8559else.getLong(0));
                return l;
            }
            l = null;
            return l;
        } finally {
            m8559else.close();
            m8700for.release();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7487if(C3242kx c3242kx) {
        AbstractC3904wA abstractC3904wA = this.f14414do;
        abstractC3904wA.m8562if();
        abstractC3904wA.m8560for();
        try {
            this.f14413do.m6827try(c3242kx);
            abstractC3904wA.m8561goto();
        } finally {
            abstractC3904wA.m8557case();
        }
    }
}
