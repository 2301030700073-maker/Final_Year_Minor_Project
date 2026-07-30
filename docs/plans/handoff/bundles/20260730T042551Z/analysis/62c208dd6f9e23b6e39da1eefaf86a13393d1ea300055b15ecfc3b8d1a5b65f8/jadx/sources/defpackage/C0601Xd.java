package defpackage;

import android.database.Cursor;
import java.util.ArrayList;

/* renamed from: Xd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0601Xd implements InterfaceC0579Wd {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f4527do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3904wA f4528do;

    /* renamed from: Xd$do, reason: invalid class name */
    public class Cdo extends AbstractC2881hg<C0491Sd> {
        public Cdo(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        @Override // defpackage.AbstractC2881hg
        /* renamed from: new */
        public final void mo1151new(C0607Xj c0607Xj, C0491Sd c0491Sd) {
            C0491Sd c0491Sd2 = c0491Sd;
            String str = c0491Sd2.f3530do;
            if (str == null) {
                c0607Xj.m2764new(1);
            } else {
                c0607Xj.m2760case(1, str);
            }
            String str2 = c0491Sd2.f3531if;
            if (str2 == null) {
                c0607Xj.m2764new(2);
            } else {
                c0607Xj.m2760case(2, str2);
            }
        }
    }

    public C0601Xd(AbstractC3904wA abstractC3904wA) {
        this.f4528do = abstractC3904wA;
        this.f4527do = new Cdo(abstractC3904wA);
    }

    /* renamed from: do, reason: not valid java name */
    public final ArrayList m2840do(String str) {
        C4022yA m8700for = C4022yA.m8700for(1, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?");
        if (str == null) {
            m8700for.m8701case(1);
        } else {
            m8700for.m8702goto(1, str);
        }
        AbstractC3904wA abstractC3904wA = this.f4528do;
        abstractC3904wA.m8562if();
        Cursor m8559else = abstractC3904wA.m8559else(m8700for);
        try {
            ArrayList arrayList = new ArrayList(m8559else.getCount());
            while (m8559else.moveToNext()) {
                arrayList.add(m8559else.getString(0));
            }
            return arrayList;
        } finally {
            m8559else.close();
            m8700for.release();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m2841if(String str) {
        C4022yA m8700for = C4022yA.m8700for(1, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)");
        if (str == null) {
            m8700for.m8701case(1);
        } else {
            m8700for.m8702goto(1, str);
        }
        AbstractC3904wA abstractC3904wA = this.f4528do;
        abstractC3904wA.m8562if();
        Cursor m8559else = abstractC3904wA.m8559else(m8700for);
        try {
            boolean z = false;
            if (m8559else.moveToFirst()) {
                z = m8559else.getInt(0) != 0;
            }
            return z;
        } finally {
            m8559else.close();
            m8700for.release();
        }
    }
}
