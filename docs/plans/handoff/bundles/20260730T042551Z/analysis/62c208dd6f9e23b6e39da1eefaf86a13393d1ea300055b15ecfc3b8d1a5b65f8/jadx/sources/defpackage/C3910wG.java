package defpackage;

import android.database.Cursor;

/* renamed from: wG, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3910wG implements InterfaceC3851vG {

    /* renamed from: do, reason: not valid java name */
    public final AbstractC3904wA f16309do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f16310do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f16311do;

    /* renamed from: wG$do, reason: invalid class name */
    public class Cdo extends AbstractC2881hg<C3792uG> {
        public Cdo(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)";
        }

        @Override // defpackage.AbstractC2881hg
        /* renamed from: new */
        public final void mo1151new(C0607Xj c0607Xj, C3792uG c3792uG) {
            String str = c3792uG.f15872do;
            if (str == null) {
                c0607Xj.m2764new(1);
            } else {
                c0607Xj.m2760case(1, str);
            }
            c0607Xj.m2762for(2, r4.f15871do);
        }
    }

    /* renamed from: wG$if, reason: invalid class name */
    public class Cif extends PD {
        public Cif(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "DELETE FROM SystemIdInfo where work_spec_id=?";
        }
    }

    public C3910wG(AbstractC3904wA abstractC3904wA) {
        this.f16309do = abstractC3904wA;
        this.f16310do = new Cdo(abstractC3904wA);
        this.f16311do = new Cif(abstractC3904wA);
    }

    /* renamed from: do, reason: not valid java name */
    public final C3792uG m8566do(String str) {
        C4022yA m8700for = C4022yA.m8700for(1, "SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?");
        if (str == null) {
            m8700for.m8701case(1);
        } else {
            m8700for.m8702goto(1, str);
        }
        AbstractC3904wA abstractC3904wA = this.f16309do;
        abstractC3904wA.m8562if();
        Cursor m8559else = abstractC3904wA.m8559else(m8700for);
        try {
            return m8559else.moveToFirst() ? new C3792uG(m8559else.getString(O2.m1591this(m8559else, "work_spec_id")), m8559else.getInt(O2.m1591this(m8559else, "system_id"))) : null;
        } finally {
            m8559else.close();
            m8700for.release();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m8567if(String str) {
        AbstractC3904wA abstractC3904wA = this.f16309do;
        abstractC3904wA.m8562if();
        Cif cif = this.f16311do;
        C0607Xj m1752do = cif.m1752do();
        if (str == null) {
            m1752do.m2764new(1);
        } else {
            m1752do.m2760case(1, str);
        }
        abstractC3904wA.m8560for();
        try {
            m1752do.m2868goto();
            abstractC3904wA.m8561goto();
        } finally {
            abstractC3904wA.m8557case();
            cif.m1753for(m1752do);
        }
    }
}
