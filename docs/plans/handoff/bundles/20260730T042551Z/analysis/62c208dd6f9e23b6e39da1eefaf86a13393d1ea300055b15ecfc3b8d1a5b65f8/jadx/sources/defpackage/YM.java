package defpackage;

import android.database.Cursor;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class YM implements XM {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f4730do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3904wA f4731do;

    /* renamed from: YM$do, reason: invalid class name */
    public class Cdo extends AbstractC2881hg<WM> {
        public Cdo(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // defpackage.AbstractC2881hg
        /* renamed from: new */
        public final void mo1151new(C0607Xj c0607Xj, WM wm) {
            WM wm2 = wm;
            String str = wm2.f4380do;
            if (str == null) {
                c0607Xj.m2764new(1);
            } else {
                c0607Xj.m2760case(1, str);
            }
            String str2 = wm2.f4381if;
            if (str2 == null) {
                c0607Xj.m2764new(2);
            } else {
                c0607Xj.m2760case(2, str2);
            }
        }
    }

    public YM(AbstractC3904wA abstractC3904wA) {
        this.f4731do = abstractC3904wA;
        this.f4730do = new Cdo(abstractC3904wA);
    }

    /* renamed from: do, reason: not valid java name */
    public final ArrayList m2914do(String str) {
        C4022yA m8700for = C4022yA.m8700for(1, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?");
        if (str == null) {
            m8700for.m8701case(1);
        } else {
            m8700for.m8702goto(1, str);
        }
        AbstractC3904wA abstractC3904wA = this.f4731do;
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
}
