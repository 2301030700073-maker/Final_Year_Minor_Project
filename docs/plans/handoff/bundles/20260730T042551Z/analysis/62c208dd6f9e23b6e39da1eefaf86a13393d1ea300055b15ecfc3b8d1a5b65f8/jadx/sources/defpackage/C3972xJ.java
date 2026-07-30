package defpackage;

import android.database.sqlite.SQLiteDatabase;
import com.facebook.internal.FacebookRequestErrorClassification;
import defpackage.C2619dB;
import defpackage.InterfaceC3380nG;
import defpackage.W3;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.ListIterator;
import java.util.Set;

/* renamed from: xJ, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C3972xJ implements InterfaceC3380nG.Cdo, C2619dB.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f16543do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ AbstractC3794uI f16544do;

    public /* synthetic */ C3972xJ(Object obj, AbstractC3794uI abstractC3794uI) {
        this.f16543do = obj;
        this.f16544do = abstractC3794uI;
    }

    @Override // defpackage.C2619dB.Cdo
    public final Object apply(Object obj) {
        C2619dB c2619dB = (C2619dB) this.f16543do;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        AbstractC0099Ag abstractC0099Ag = c2619dB.f12437do;
        int mo84for = abstractC0099Ag.mo84for();
        AbstractC3794uI abstractC3794uI = this.f16544do;
        ArrayList m6433break = c2619dB.m6433break(sQLiteDatabase, abstractC3794uI, mo84for);
        for (Ex ex : Ex.values()) {
            if (ex != abstractC3794uI.mo8382new()) {
                int mo84for2 = abstractC0099Ag.mo84for() - m6433break.size();
                if (mo84for2 <= 0) {
                    break;
                }
                m6433break.addAll(c2619dB.m6433break(sQLiteDatabase, abstractC3794uI.m8383try(ex), mo84for2));
            }
        }
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < m6433break.size(); i++) {
            sb.append(((Iw) m6433break.get(i)).mo991if());
            if (i < m6433break.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        C2619dB.m6431const(sQLiteDatabase.query("event_metadata", new String[]{"event_id", FacebookRequestErrorClassification.KEY_NAME, "value"}, sb.toString(), null, null, null, null), new TK(hashMap));
        ListIterator listIterator = m6433break.listIterator();
        while (listIterator.hasNext()) {
            Iw iw = (Iw) listIterator.next();
            if (hashMap.containsKey(Long.valueOf(iw.mo991if()))) {
                W3.Cdo m8133const = iw.mo989do().m8133const();
                for (C2619dB.Cif cif : (Set) hashMap.get(Long.valueOf(iw.mo991if()))) {
                    m8133const.m8136do(cif.f12442do, cif.f12443if);
                }
                listIterator.set(new C3191k4(iw.mo991if(), iw.mo990for(), m8133const.m2701if()));
            }
        }
        return m6433break;
    }

    @Override // defpackage.InterfaceC3380nG.Cdo
    /* renamed from: try */
    public final Object mo69try() {
        return Boolean.valueOf(((CJ) this.f16543do).f358do.mo6435default(this.f16544do));
    }
}
