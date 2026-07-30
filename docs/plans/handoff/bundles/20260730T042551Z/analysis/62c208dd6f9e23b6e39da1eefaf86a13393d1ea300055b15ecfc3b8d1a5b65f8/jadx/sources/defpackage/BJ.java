package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import defpackage.C0460Qq;
import defpackage.C2619dB;
import defpackage.InterfaceC3380nG;

/* loaded from: classes.dex */
public final /* synthetic */ class BJ implements InterfaceC3380nG.Cdo, C2619dB.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f229do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f230do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f231if;

    public /* synthetic */ BJ(Object obj, long j, Object obj2) {
        this.f230do = obj;
        this.f231if = obj2;
        this.f229do = j;
    }

    @Override // defpackage.C2619dB.Cdo
    public final Object apply(Object obj) {
        String str = (String) this.f230do;
        C0460Qq.Cdo cdo = (C0460Qq.Cdo) this.f231if;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        C0823cg c0823cg = C2619dB.f12436do;
        boolean booleanValue = ((Boolean) C2619dB.m6431const(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(cdo.f3056for)}), new C3382nI(2))).booleanValue();
        long j = this.f229do;
        int i = cdo.f3056for;
        if (booleanValue) {
            sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(i)});
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(i));
            contentValues.put("events_dropped_count", Long.valueOf(j));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
        }
        return null;
    }

    @Override // defpackage.InterfaceC3380nG.Cdo
    /* renamed from: try */
    public final Object mo69try() {
        CJ cj = (CJ) this.f230do;
        AbstractC3794uI abstractC3794uI = (AbstractC3794uI) this.f231if;
        cj.f358do.mo6437final(cj.f355do.mo445do() + this.f229do, abstractC3794uI);
        return null;
    }
}
