package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import defpackage.C0460Qq;
import defpackage.C2619dB;
import defpackage.InterfaceC3380nG;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class AJ implements InterfaceC3380nG.Cdo, C2619dB.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f73do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f74if;

    public /* synthetic */ AJ(Object obj, Object obj2) {
        this.f73do = obj;
        this.f74if = obj2;
    }

    @Override // defpackage.C2619dB.Cdo
    public final Object apply(Object obj) {
        C2619dB c2619dB = (C2619dB) this.f73do;
        AbstractC3794uI abstractC3794uI = (AbstractC3794uI) this.f74if;
        C0823cg c0823cg = C2619dB.f12436do;
        c2619dB.getClass();
        Long m6432goto = C2619dB.m6432goto((SQLiteDatabase) obj, abstractC3794uI);
        if (m6432goto == null) {
            return Boolean.FALSE;
        }
        Cursor rawQuery = c2619dB.m6434case().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{m6432goto.toString()});
        try {
            return Boolean.valueOf(rawQuery.moveToNext());
        } finally {
            rawQuery.close();
        }
    }

    @Override // defpackage.InterfaceC3380nG.Cdo
    /* renamed from: try, reason: not valid java name */
    public final Object mo69try() {
        CJ cj = (CJ) this.f73do;
        Map map = (Map) this.f74if;
        cj.getClass();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            cj.f354do.mo6424if(((Integer) r2.getValue()).intValue(), C0460Qq.Cdo.INVALID_PAYLOD, (String) ((Map.Entry) it.next()).getKey());
        }
        return null;
    }
}
