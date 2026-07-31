package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.internal.zzlb;
import com.google.android.gms.internal.zzld;
import com.google.android.gms.tagmanager.zzcx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import org.apache.http.impl.client.DefaultHttpClient;

/* loaded from: classes.dex */
class zzby implements zzau {
    private static final String zzKg = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL,'%s' INTEGER NOT NULL);", "gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time");
    private final Context mContext;
    private final zzb zzaMs;
    private volatile zzac zzaMt;
    private final zzav zzaMu;
    private final String zzaMv;
    private long zzaMw;
    private final int zzaMx;
    private zzlb zzpw;

    class zza implements zzcx.zza {
        zza() {
        }

        @Override // com.google.android.gms.tagmanager.zzcx.zza
        public void zza(zzaq zzaqVar) {
            zzby.this.zzq(zzaqVar.zzyO());
        }

        @Override // com.google.android.gms.tagmanager.zzcx.zza
        public void zzb(zzaq zzaqVar) {
            zzby.this.zzq(zzaqVar.zzyO());
            zzbg.zzaB("Permanent failure dispatching hitId: " + zzaqVar.zzyO());
        }

        @Override // com.google.android.gms.tagmanager.zzcx.zza
        public void zzc(zzaq zzaqVar) {
            long zzyP = zzaqVar.zzyP();
            if (zzyP == 0) {
                zzby.this.zzd(zzaqVar.zzyO(), zzby.this.zzpw.currentTimeMillis());
                return;
            }
            if (zzyP + 14400000 < zzby.this.zzpw.currentTimeMillis()) {
                zzby.this.zzq(zzaqVar.zzyO());
                zzbg.zzaB("Giving up on failed hitId: " + zzaqVar.zzyO());
            }
        }
    }

    class zzb extends SQLiteOpenHelper {
        private long zzaMA;
        private boolean zzaMz;

        zzb(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
            this.zzaMA = 0L;
        }

        private boolean zza(String str, SQLiteDatabase sQLiteDatabase) {
            Cursor query;
            Cursor cursor = null;
            try {
                try {
                    query = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (SQLiteException e) {
            }
            try {
                boolean moveToFirst = query.moveToFirst();
                if (query != null) {
                    query.close();
                }
                return moveToFirst;
            } catch (SQLiteException e2) {
                cursor = query;
                zzbg.zzaC("Error querying for table " + str);
                if (cursor != null) {
                    cursor.close();
                }
                return false;
            } catch (Throwable th2) {
                th = th2;
                cursor = query;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }

        private void zzc(SQLiteDatabase sQLiteDatabase) {
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM gtm_hits WHERE 0", null);
            HashSet hashSet = new HashSet();
            try {
                for (String str : rawQuery.getColumnNames()) {
                    hashSet.add(str);
                }
                rawQuery.close();
                if (!hashSet.remove("hit_id") || !hashSet.remove("hit_url") || !hashSet.remove("hit_time") || !hashSet.remove("hit_first_send_time")) {
                    throw new SQLiteException("Database column missing");
                }
                if (!hashSet.isEmpty()) {
                    throw new SQLiteException("Database has extra columns");
                }
            } catch (Throwable th) {
                rawQuery.close();
                throw th;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public SQLiteDatabase getWritableDatabase() {
            if (this.zzaMz && this.zzaMA + 3600000 > zzby.this.zzpw.currentTimeMillis()) {
                throw new SQLiteException("Database creation failed");
            }
            SQLiteDatabase sQLiteDatabase = null;
            this.zzaMz = true;
            this.zzaMA = zzby.this.zzpw.currentTimeMillis();
            try {
                sQLiteDatabase = super.getWritableDatabase();
            } catch (SQLiteException e) {
                zzby.this.mContext.getDatabasePath(zzby.this.zzaMv).delete();
            }
            if (sQLiteDatabase == null) {
                sQLiteDatabase = super.getWritableDatabase();
            }
            this.zzaMz = false;
            return sQLiteDatabase;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            zzal.zzbe(sQLiteDatabase.getPath());
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (Build.VERSION.SDK_INT < 15) {
                Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
                try {
                    rawQuery.moveToFirst();
                } finally {
                    rawQuery.close();
                }
            }
            if (zza("gtm_hits", sQLiteDatabase)) {
                zzc(sQLiteDatabase);
            } else {
                sQLiteDatabase.execSQL(zzby.zzKg);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    zzby(zzav zzavVar, Context context) {
        this(zzavVar, context, "gtm_urls.db", 2000);
    }

    zzby(zzav zzavVar, Context context, String str, int i) {
        this.mContext = context.getApplicationContext();
        this.zzaMv = str;
        this.zzaMu = zzavVar;
        this.zzpw = zzld.zzoQ();
        this.zzaMs = new zzb(this.mContext, this.zzaMv);
        this.zzaMt = new zzcx(new DefaultHttpClient(), this.mContext, new zza());
        this.zzaMw = 0L;
        this.zzaMx = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzd(long j, long j2) {
        SQLiteDatabase zzer = zzer("Error opening database for getNumStoredHits.");
        if (zzer == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_first_send_time", Long.valueOf(j2));
        try {
            zzer.update("gtm_hits", contentValues, "hit_id=?", new String[]{String.valueOf(j)});
        } catch (SQLiteException e) {
            zzbg.zzaC("Error setting HIT_FIRST_DISPATCH_TIME for hitId: " + j);
            zzq(j);
        }
    }

    private SQLiteDatabase zzer(String str) {
        try {
            return this.zzaMs.getWritableDatabase();
        } catch (SQLiteException e) {
            zzbg.zzaC(str);
            return null;
        }
    }

    private void zzh(long j, String str) {
        SQLiteDatabase zzer = zzer("Error opening database for putHit");
        if (zzer == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_time", Long.valueOf(j));
        contentValues.put("hit_url", str);
        contentValues.put("hit_first_send_time", (Integer) 0);
        try {
            zzer.insert("gtm_hits", null, contentValues);
            this.zzaMu.zzan(false);
        } catch (SQLiteException e) {
            zzbg.zzaC("Error storing hit");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzq(long j) {
        zzf(new String[]{String.valueOf(j)});
    }

    private void zzzb() {
        int zzzc = (zzzc() - this.zzaMx) + 1;
        if (zzzc > 0) {
            List<String> zziY = zziY(zzzc);
            zzbg.zzaB("Store full, deleting " + zziY.size() + " hits to make room.");
            zzf((String[]) zziY.toArray(new String[0]));
        }
    }

    @Override // com.google.android.gms.tagmanager.zzau
    public void dispatch() {
        zzbg.zzaB("GTM Dispatch running...");
        if (this.zzaMt.zzyH()) {
            List<zzaq> zziZ = zziZ(40);
            if (zziZ.isEmpty()) {
                zzbg.zzaB("...nothing to dispatch");
                this.zzaMu.zzan(true);
            } else {
                this.zzaMt.zzr(zziZ);
                if (zzzd() > 0) {
                    zzcu.zzzz().dispatch();
                }
            }
        }
    }

    void zzf(String[] strArr) {
        SQLiteDatabase zzer;
        if (strArr == null || strArr.length == 0 || (zzer = zzer("Error opening database for deleteHits.")) == null) {
            return;
        }
        boolean z = true;
        try {
            zzer.delete("gtm_hits", String.format("HIT_ID in (%s)", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
            zzav zzavVar = this.zzaMu;
            if (zzzc() != 0) {
                z = false;
            }
            zzavVar.zzan(z);
        } catch (SQLiteException e) {
            zzbg.zzaC("Error deleting hits");
        }
    }

    @Override // com.google.android.gms.tagmanager.zzau
    public void zzg(long j, String str) {
        zzis();
        zzzb();
        zzh(j, str);
    }

    List<String> zziY(int i) {
        Cursor query;
        ArrayList arrayList = new ArrayList();
        if (i <= 0) {
            zzbg.zzaC("Invalid maxHits specified. Skipping");
            return arrayList;
        }
        SQLiteDatabase zzer = zzer("Error opening database for peekHitIds.");
        if (zzer == null) {
            return arrayList;
        }
        Cursor cursor = null;
        try {
            try {
                query = zzer.query("gtm_hits", new String[]{"hit_id"}, null, null, null, null, String.format("%s ASC", "hit_id"), Integer.toString(i));
            } catch (SQLiteException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (query.moveToFirst()) {
                do {
                    arrayList.add(String.valueOf(query.getLong(0)));
                } while (query.moveToNext());
            }
            if (query != null) {
                query.close();
                return arrayList;
            }
        } catch (SQLiteException e2) {
            cursor = query;
            e = e2;
            zzbg.zzaC("Error in peekHits fetching hitIds: " + e.getMessage());
            if (cursor != null) {
                cursor.close();
            }
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            cursor = query;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0128 A[Catch: all -> 0x0146, TryCatch #1 {all -> 0x0146, blocks: (B:21:0x00a0, B:24:0x00a7, B:26:0x00b4, B:27:0x00dd, B:31:0x00c2, B:38:0x0101, B:39:0x0122, B:41:0x0128, B:46:0x013c), top: B:15:0x0076 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:89:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.google.android.gms.tagmanager.zzaq> zziZ(int r19) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzby.zziZ(int):java.util.List");
    }

    int zzis() {
        long currentTimeMillis = this.zzpw.currentTimeMillis();
        if (currentTimeMillis <= this.zzaMw + 86400000) {
            return 0;
        }
        this.zzaMw = currentTimeMillis;
        SQLiteDatabase zzer = zzer("Error opening database for deleteStaleHits.");
        if (zzer == null) {
            return 0;
        }
        int delete = zzer.delete("gtm_hits", "HIT_TIME < ?", new String[]{Long.toString(this.zzpw.currentTimeMillis() - 2592000000L)});
        this.zzaMu.zzan(zzzc() == 0);
        return delete;
    }

    int zzzc() {
        Cursor rawQuery;
        SQLiteDatabase zzer = zzer("Error opening database for getNumStoredHits.");
        if (zzer == null) {
            return 0;
        }
        Cursor cursor = null;
        try {
            try {
                rawQuery = zzer.rawQuery("SELECT COUNT(*) from gtm_hits", null);
            } catch (SQLiteException e) {
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            r1 = rawQuery.moveToFirst() ? (int) rawQuery.getLong(0) : 0;
            if (rawQuery != null) {
                rawQuery.close();
                return r1;
            }
        } catch (SQLiteException e2) {
            cursor = rawQuery;
            zzbg.zzaC("Error getting numStoredHits");
            if (cursor != null) {
                cursor.close();
            }
            return r1;
        } catch (Throwable th2) {
            th = th2;
            cursor = rawQuery;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return r1;
    }

    int zzzd() {
        Cursor query;
        SQLiteDatabase zzer = zzer("Error opening database for getNumStoredHits.");
        if (zzer == null) {
            return 0;
        }
        Cursor cursor = null;
        try {
            try {
                query = zzer.query("gtm_hits", new String[]{"hit_id", "hit_first_send_time"}, "hit_first_send_time=0", null, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
        } catch (SQLiteException e) {
        }
        try {
            int count = query.getCount();
            if (query != null) {
                query.close();
            }
            return count;
        } catch (SQLiteException e2) {
            cursor = query;
            zzbg.zzaC("Error getting num untried hits");
            if (cursor != null) {
                cursor.close();
            }
            return 0;
        } catch (Throwable th2) {
            th = th2;
            cursor = query;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }
}
