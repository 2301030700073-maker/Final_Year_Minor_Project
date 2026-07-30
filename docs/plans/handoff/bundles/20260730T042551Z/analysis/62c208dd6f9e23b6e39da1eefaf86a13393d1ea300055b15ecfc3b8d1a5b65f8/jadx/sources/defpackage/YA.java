package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import com.facebook.internal.FacebookRequestErrorClassification;
import defpackage.C0460Qq;
import defpackage.C2619dB;
import defpackage.C2733f8;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class YA implements C2619dB.Cdo, InterfaceC0619Xv {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f4668do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f4669do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ Object f4670for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f4671if;

    public /* synthetic */ YA(Object obj, Object obj2, Object obj3, int i) {
        this.f4668do = i;
        this.f4669do = obj;
        this.f4671if = obj2;
        this.f4670for = obj3;
    }

    @Override // defpackage.C2619dB.Cdo
    public final Object apply(Object obj) {
        long insert;
        C0460Qq.Cdo cdo = C0460Qq.Cdo.CACHE_FULL;
        int i = this.f4668do;
        Object obj2 = this.f4670for;
        Object obj3 = this.f4671if;
        Object obj4 = this.f4669do;
        switch (i) {
            case 0:
                C2619dB c2619dB = (C2619dB) obj4;
                AbstractC3696sg abstractC3696sg = (AbstractC3696sg) obj3;
                AbstractC3794uI abstractC3794uI = (AbstractC3794uI) obj2;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                long simpleQueryForLong = c2619dB.m6434case().compileStatement("PRAGMA page_size").simpleQueryForLong() * c2619dB.m6434case().compileStatement("PRAGMA page_count").simpleQueryForLong();
                AbstractC0099Ag abstractC0099Ag = c2619dB.f12437do;
                if (simpleQueryForLong >= abstractC0099Ag.mo87try()) {
                    c2619dB.mo6424if(1L, cdo, abstractC3696sg.mo2692catch());
                    return -1L;
                }
                Long m6432goto = C2619dB.m6432goto(sQLiteDatabase, abstractC3794uI);
                if (m6432goto != null) {
                    insert = m6432goto.longValue();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("backend_name", abstractC3794uI.mo8381if());
                    contentValues.put("priority", Integer.valueOf(Gx.m775do(abstractC3794uI.mo8382new())));
                    contentValues.put("next_request_ms", (Integer) 0);
                    if (abstractC3794uI.mo8380for() != null) {
                        contentValues.put("extras", Base64.encodeToString(abstractC3794uI.mo8380for(), 0));
                    }
                    insert = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                int mo86new = abstractC0099Ag.mo86new();
                byte[] bArr = abstractC3696sg.mo2697new().f4394do;
                boolean z = bArr.length <= mo86new;
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("context_id", Long.valueOf(insert));
                contentValues2.put("transport_name", abstractC3696sg.mo2692catch());
                contentValues2.put("timestamp_ms", Long.valueOf(abstractC3696sg.mo2699try()));
                contentValues2.put("uptime_ms", Long.valueOf(abstractC3696sg.mo2693class()));
                contentValues2.put("payload_encoding", abstractC3696sg.mo2697new().f4393do.f8592do);
                contentValues2.put("code", abstractC3696sg.mo2695for());
                contentValues2.put("num_attempts", (Integer) 0);
                contentValues2.put("inline", Boolean.valueOf(z));
                contentValues2.put("payload", z ? bArr : new byte[0]);
                contentValues2.put("product_id", abstractC3696sg.mo2698this());
                contentValues2.put("pseudonymous_id", abstractC3696sg.mo2690break());
                contentValues2.put("experiment_ids_clear_blob", abstractC3696sg.mo2691case());
                contentValues2.put("experiment_ids_encrypted_blob", abstractC3696sg.mo2694else());
                long insert2 = sQLiteDatabase.insert("events", null, contentValues2);
                if (!z) {
                    int ceil = (int) Math.ceil(bArr.length / mo86new);
                    for (int i2 = 1; i2 <= ceil; i2++) {
                        byte[] copyOfRange = Arrays.copyOfRange(bArr, (i2 - 1) * mo86new, Math.min(i2 * mo86new, bArr.length));
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put("event_id", Long.valueOf(insert2));
                        contentValues3.put("sequence_num", Integer.valueOf(i2));
                        contentValues3.put("bytes", copyOfRange);
                        sQLiteDatabase.insert("event_payloads", null, contentValues3);
                    }
                }
                for (Map.Entry entry : DesugarCollections.unmodifiableMap(abstractC3696sg.mo2696if()).entrySet()) {
                    ContentValues contentValues4 = new ContentValues();
                    contentValues4.put("event_id", Long.valueOf(insert2));
                    contentValues4.put(FacebookRequestErrorClassification.KEY_NAME, (String) entry.getKey());
                    contentValues4.put("value", (String) entry.getValue());
                    sQLiteDatabase.insert("event_metadata", null, contentValues4);
                }
                return Long.valueOf(insert2);
            default:
                C2619dB c2619dB2 = (C2619dB) obj4;
                Map map = (Map) obj3;
                C2733f8.Cdo cdo2 = (C2733f8.Cdo) obj2;
                Cursor cursor = (Cursor) obj;
                c2619dB2.getClass();
                while (cursor.moveToNext()) {
                    String string = cursor.getString(0);
                    int i3 = cursor.getInt(1);
                    C0460Qq.Cdo cdo3 = C0460Qq.Cdo.REASON_UNKNOWN;
                    if (i3 != 0) {
                        if (i3 == 1) {
                            cdo3 = C0460Qq.Cdo.MESSAGE_TOO_OLD;
                        } else if (i3 == 2) {
                            cdo3 = cdo;
                        } else if (i3 == 3) {
                            cdo3 = C0460Qq.Cdo.PAYLOAD_TOO_BIG;
                        } else if (i3 == 4) {
                            cdo3 = C0460Qq.Cdo.MAX_RETRIES_REACHED;
                        } else if (i3 == 5) {
                            cdo3 = C0460Qq.Cdo.INVALID_PAYLOD;
                        } else if (i3 == 6) {
                            cdo3 = C0460Qq.Cdo.SERVER_ERROR;
                        } else {
                            C0636Yq.m2960do("SQLiteEventStore", Integer.valueOf(i3), "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN");
                        }
                    }
                    long j = cursor.getLong(2);
                    if (!map.containsKey(string)) {
                        map.put(string, new ArrayList());
                    }
                    ((List) map.get(string)).add(new C0460Qq(j, cdo3));
                }
                for (Map.Entry entry2 : map.entrySet()) {
                    int i4 = C0548Uq.f3990do;
                    new ArrayList();
                    cdo2.f12843do.add(new C0548Uq((String) entry2.getKey(), DesugarCollections.unmodifiableList((List) entry2.getValue())));
                }
                final long mo445do = c2619dB2.f12439do.mo445do();
                SQLiteDatabase m6434case = c2619dB2.m6434case();
                m6434case.beginTransaction();
                try {
                    C3616rH c3616rH = (C3616rH) C2619dB.m6431const(m6434case.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]), new C2619dB.Cdo() { // from class: cB
                        @Override // defpackage.C2619dB.Cdo
                        public final Object apply(Object obj5) {
                            Cursor cursor2 = (Cursor) obj5;
                            cursor2.moveToNext();
                            return new C3616rH(cursor2.getLong(0), mo445do);
                        }
                    });
                    m6434case.setTransactionSuccessful();
                    m6434case.endTransaction();
                    cdo2.f12844do = c3616rH;
                    cdo2.f12841do = new C2886hl(new C3556qF(c2619dB2.m6434case().compileStatement("PRAGMA page_size").simpleQueryForLong() * c2619dB2.m6434case().compileStatement("PRAGMA page_count").simpleQueryForLong(), AbstractC0099Ag.f120do.f4453do));
                    cdo2.f12842do = c2619dB2.f12440do.get();
                    return new C2733f8(cdo2.f12844do, DesugarCollections.unmodifiableList(cdo2.f12843do), cdo2.f12841do, cdo2.f12842do);
                } catch (Throwable th) {
                    m6434case.endTransaction();
                    throw th;
                }
        }
    }

    @Override // defpackage.InterfaceC0619Xv
    /* renamed from: if */
    public final void mo356if(Object obj) {
        C3845vA c3845vA = (C3845vA) this.f4669do;
        FG fg = (FG) this.f4671if;
        InterfaceC3786uA interfaceC3786uA = (InterfaceC3786uA) this.f4670for;
        c3845vA.getClass();
        try {
            E9 e9 = (E9) fg.mo592class();
            if (e9 != null) {
                c3845vA.f16027do.execute(new RunnableC3998xn(6, interfaceC3786uA, c3845vA.f16028do.m8221do(e9)));
            }
        } catch (C0145Ci unused) {
        }
    }
}
