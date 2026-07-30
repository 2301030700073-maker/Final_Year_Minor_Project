package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import android.util.Log;
import defpackage.C0460Qq;
import defpackage.C2733f8;
import defpackage.InterfaceC3380nG;
import defpackage.W3;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* renamed from: dB, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2619dB implements InterfaceC4109zg, InterfaceC3380nG, InterfaceC2616d8 {

    /* renamed from: do, reason: not valid java name */
    public static final C0823cg f12436do = new C0823cg("proto");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0099Ag f12437do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final JB f12438do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC2792g8 f12439do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3597qy<String> f12440do;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC2792g8 f12441if;

    /* renamed from: dB$do, reason: invalid class name */
    public interface Cdo<T, U> {
        U apply(T t);
    }

    /* renamed from: dB$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final String f12442do;

        /* renamed from: if, reason: not valid java name */
        public final String f12443if;

        public Cif(String str, String str2) {
            this.f12442do = str;
            this.f12443if = str2;
        }
    }

    public C2619dB(InterfaceC2792g8 interfaceC2792g8, InterfaceC2792g8 interfaceC2792g82, AbstractC0099Ag abstractC0099Ag, JB jb, InterfaceC3597qy<String> interfaceC3597qy) {
        this.f12438do = jb;
        this.f12439do = interfaceC2792g8;
        this.f12441if = interfaceC2792g82;
        this.f12437do = abstractC0099Ag;
        this.f12440do = interfaceC3597qy;
    }

    /* renamed from: class, reason: not valid java name */
    public static String m6430class(Iterable<Iw> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<Iw> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().mo991if());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: const, reason: not valid java name */
    public static <T> T m6431const(Cursor cursor, Cdo<Cursor, T> cdo) {
        try {
            return cdo.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static Long m6432goto(SQLiteDatabase sQLiteDatabase, AbstractC3794uI abstractC3794uI) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(abstractC3794uI.mo8381if(), String.valueOf(Gx.m775do(abstractC3794uI.mo8382new()))));
        if (abstractC3794uI.mo8380for() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(abstractC3794uI.mo8380for(), 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor query = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            return !query.moveToNext() ? null : Long.valueOf(query.getLong(0));
        } finally {
            query.close();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final ArrayList m6433break(SQLiteDatabase sQLiteDatabase, final AbstractC3794uI abstractC3794uI, int i) {
        final ArrayList arrayList = new ArrayList();
        Long m6432goto = m6432goto(sQLiteDatabase, abstractC3794uI);
        if (m6432goto == null) {
            return arrayList;
        }
        m6431const(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline", "product_id", "pseudonymous_id", "experiment_ids_clear_blob", "experiment_ids_encrypted_blob"}, "context_id = ?", new String[]{m6432goto.toString()}, null, null, null, String.valueOf(i)), new Cdo() { // from class: bB
            @Override // defpackage.C2619dB.Cdo
            public final Object apply(Object obj) {
                C2619dB c2619dB = (C2619dB) this;
                List list = (List) arrayList;
                AbstractC3794uI abstractC3794uI2 = (AbstractC3794uI) abstractC3794uI;
                Cursor cursor = (Cursor) obj;
                c2619dB.getClass();
                while (cursor.moveToNext()) {
                    long j = cursor.getLong(0);
                    boolean z = cursor.getInt(7) != 0;
                    W3.Cdo cdo = new W3.Cdo();
                    cdo.f4316do = new HashMap();
                    cdo.m2702new(cursor.getString(1));
                    cdo.f4314do = Long.valueOf(cursor.getLong(2));
                    cdo.f4319if = Long.valueOf(cursor.getLong(3));
                    if (z) {
                        String string = cursor.getString(4);
                        cdo.m2700for(new C0581Wf(string == null ? C2619dB.f12436do : new C0823cg(string), cursor.getBlob(5)));
                    } else {
                        String string2 = cursor.getString(4);
                        cdo.m2700for(new C0581Wf(string2 == null ? C2619dB.f12436do : new C0823cg(string2), (byte[]) C2619dB.m6431const(c2619dB.m6434case().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), new C0472Rg(6))));
                    }
                    if (!cursor.isNull(6)) {
                        cdo.f4313do = Integer.valueOf(cursor.getInt(6));
                    }
                    if (!cursor.isNull(8)) {
                        cdo.f4318if = Integer.valueOf(cursor.getInt(8));
                    }
                    if (!cursor.isNull(9)) {
                        cdo.f4320if = cursor.getString(9);
                    }
                    if (!cursor.isNull(10)) {
                        cdo.f4317do = cursor.getBlob(10);
                    }
                    if (!cursor.isNull(11)) {
                        cdo.f4321if = cursor.getBlob(11);
                    }
                    list.add(new C3191k4(j, abstractC3794uI2, cdo.m2701if()));
                }
                return null;
            }
        });
        return arrayList;
    }

    /* renamed from: case, reason: not valid java name */
    public final SQLiteDatabase m6434case() {
        JB jb = this.f12438do;
        Objects.requireNonNull(jb);
        InterfaceC2792g8 interfaceC2792g8 = this.f12441if;
        long mo445do = interfaceC2792g8.mo445do();
        while (true) {
            try {
                return jb.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e) {
                if (interfaceC2792g8.mo445do() >= this.f12437do.mo83do() + mo445do) {
                    throw new C3321mG("Timed out while trying to open db.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f12438do.close();
    }

    @Override // defpackage.InterfaceC4109zg
    public final Iterable<Iw> d(AbstractC3794uI abstractC3794uI) {
        return (Iterable) m6443this(new C3972xJ(this, abstractC3794uI));
    }

    @Override // defpackage.InterfaceC4109zg
    /* renamed from: default, reason: not valid java name */
    public final boolean mo6435default(AbstractC3794uI abstractC3794uI) {
        return ((Boolean) m6443this(new AJ(this, abstractC3794uI))).booleanValue();
    }

    @Override // defpackage.InterfaceC2616d8
    /* renamed from: do */
    public final C2733f8 mo6422do() {
        int i = C2733f8.f12836do;
        C2733f8.Cdo cdo = new C2733f8.Cdo();
        HashMap hashMap = new HashMap();
        SQLiteDatabase m6434case = m6434case();
        m6434case.beginTransaction();
        try {
            C2733f8 c2733f8 = (C2733f8) m6431const(m6434case.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new YA(this, hashMap, cdo, 1));
            m6434case.setTransactionSuccessful();
            return c2733f8;
        } finally {
            m6434case.endTransaction();
        }
    }

    @Override // defpackage.InterfaceC4109zg
    /* renamed from: extends, reason: not valid java name */
    public final int mo6436extends() {
        final long mo445do = this.f12439do.mo445do() - this.f12437do.mo85if();
        return ((Integer) m6443this(new Cdo() { // from class: ZA
            @Override // defpackage.C2619dB.Cdo
            public final Object apply(Object obj) {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                C2619dB c2619dB = C2619dB.this;
                c2619dB.getClass();
                String[] strArr = {String.valueOf(mo445do)};
                C2619dB.m6431const(sQLiteDatabase.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr), new C2598cr(c2619dB));
                return Integer.valueOf(sQLiteDatabase.delete("events", "timestamp_ms < ?", strArr));
            }
        })).intValue();
    }

    @Override // defpackage.InterfaceC4109zg
    /* renamed from: final, reason: not valid java name */
    public final void mo6437final(final long j, final AbstractC3794uI abstractC3794uI) {
        m6443this(new Cdo() { // from class: aB
            @Override // defpackage.C2619dB.Cdo
            public final Object apply(Object obj) {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                ContentValues contentValues = new ContentValues();
                contentValues.put("next_request_ms", Long.valueOf(j));
                AbstractC3794uI abstractC3794uI2 = abstractC3794uI;
                if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{abstractC3794uI2.mo8381if(), String.valueOf(Gx.m775do(abstractC3794uI2.mo8382new()))}) < 1) {
                    contentValues.put("backend_name", abstractC3794uI2.mo8381if());
                    contentValues.put("priority", Integer.valueOf(Gx.m775do(abstractC3794uI2.mo8382new())));
                    sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                return null;
            }
        });
    }

    @Override // defpackage.InterfaceC4109zg
    /* renamed from: finally, reason: not valid java name */
    public final long mo6438finally(AbstractC3794uI abstractC3794uI) {
        Cursor rawQuery = m6434case().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{abstractC3794uI.mo8381if(), String.valueOf(Gx.m775do(abstractC3794uI.mo8382new()))});
        try {
            Long valueOf = rawQuery.moveToNext() ? Long.valueOf(rawQuery.getLong(0)) : 0L;
            rawQuery.close();
            return valueOf.longValue();
        } catch (Throwable th) {
            rawQuery.close();
            throw th;
        }
    }

    @Override // defpackage.InterfaceC2616d8
    /* renamed from: for */
    public final void mo6423for() {
        m6443this(new C0775br(this));
    }

    @Override // defpackage.InterfaceC2616d8
    /* renamed from: if */
    public final void mo6424if(long j, C0460Qq.Cdo cdo, String str) {
        m6443this(new BJ(str, j, cdo));
    }

    @Override // defpackage.InterfaceC4109zg
    /* renamed from: native, reason: not valid java name */
    public final C3191k4 mo6439native(AbstractC3794uI abstractC3794uI, AbstractC3696sg abstractC3696sg) {
        int i = 0;
        Object[] objArr = {abstractC3794uI.mo8382new(), abstractC3696sg.mo2692catch(), abstractC3794uI.mo8381if()};
        if (Log.isLoggable(C0636Yq.m2961if("SQLiteEventStore"), 3)) {
            String.format("Storing event with priority=%s, name=%s for destination %s", objArr);
        }
        long longValue = ((Long) m6443this(new YA(this, abstractC3696sg, abstractC3794uI, i))).longValue();
        if (longValue < 1) {
            return null;
        }
        return new C3191k4(longValue, abstractC3794uI, abstractC3696sg);
    }

    @Override // defpackage.InterfaceC3380nG
    /* renamed from: new, reason: not valid java name */
    public final <T> T mo6440new(InterfaceC3380nG.Cdo<T> cdo) {
        SQLiteDatabase m6434case = m6434case();
        C0472Rg c0472Rg = new C0472Rg(5);
        InterfaceC2792g8 interfaceC2792g8 = this.f12441if;
        long mo445do = interfaceC2792g8.mo445do();
        while (true) {
            try {
                m6434case.beginTransaction();
            } catch (SQLiteDatabaseLockedException e) {
                if (interfaceC2792g8.mo445do() >= this.f12437do.mo83do() + mo445do) {
                    c0472Rg.apply(e);
                    break;
                }
                SystemClock.sleep(50L);
            }
        }
        try {
            T mo69try = cdo.mo69try();
            m6434case.setTransactionSuccessful();
            return mo69try;
        } finally {
            m6434case.endTransaction();
        }
    }

    @Override // defpackage.InterfaceC4109zg
    public final void o(Iterable<Iw> iterable) {
        if (iterable.iterator().hasNext()) {
            m6434case().compileStatement("DELETE FROM events WHERE _id in " + m6430class(iterable)).execute();
        }
    }

    @Override // defpackage.InterfaceC4109zg
    /* renamed from: private, reason: not valid java name */
    public final Iterable<AbstractC3794uI> mo6441private() {
        return (Iterable) m6443this(new C3697sh(2));
    }

    @Override // defpackage.InterfaceC4109zg
    /* renamed from: switch, reason: not valid java name */
    public final void mo6442switch(Iterable<Iw> iterable) {
        if (iterable.iterator().hasNext()) {
            String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + m6430class(iterable);
            SQLiteDatabase m6434case = m6434case();
            m6434case.beginTransaction();
            try {
                m6434case.compileStatement(str).execute();
                Cursor rawQuery = m6434case.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", null);
                while (rawQuery.moveToNext()) {
                    try {
                        mo6424if(rawQuery.getInt(0), C0460Qq.Cdo.MAX_RETRIES_REACHED, rawQuery.getString(1));
                    } catch (Throwable th) {
                        rawQuery.close();
                        throw th;
                    }
                }
                rawQuery.close();
                m6434case.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                m6434case.setTransactionSuccessful();
            } finally {
                m6434case.endTransaction();
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final <T> T m6443this(Cdo<SQLiteDatabase, T> cdo) {
        SQLiteDatabase m6434case = m6434case();
        m6434case.beginTransaction();
        try {
            T apply = cdo.apply(m6434case);
            m6434case.setTransactionSuccessful();
            return apply;
        } finally {
            m6434case.endTransaction();
        }
    }
}
