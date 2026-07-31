package com.google.android.gms.analytics.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import java.io.Closeable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;

/* loaded from: classes.dex */
class zzj extends zzd implements Closeable {
    private static final String zzKg = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id");
    private static final String zzKh = String.format("SELECT MAX(%s) FROM %s WHERE 1;", "hit_time", "hits2");
    private final zza zzKi;
    private final zzaj zzKj;
    private final zzaj zzKk;

    class zza extends SQLiteOpenHelper {
        zza(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        }

        private void zza(SQLiteDatabase sQLiteDatabase) {
            Set<String> zzb = zzb(sQLiteDatabase, "hits2");
            for (String str : new String[]{"hit_id", "hit_string", "hit_time", "hit_url"}) {
                if (!zzb.remove(str)) {
                    throw new SQLiteException("Database hits2 is missing required column: " + str);
                }
            }
            boolean z = !zzb.remove("hit_app_id");
            if (!zzb.isEmpty()) {
                throw new SQLiteException("Database hits2 has extra columns");
            }
            if (z) {
                sQLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id INTEGER");
            }
        }

        private boolean zza(SQLiteDatabase sQLiteDatabase, String str) {
            Cursor query;
            Cursor cursor = null;
            try {
                try {
                    query = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (SQLiteException e) {
                e = e;
            }
            try {
                boolean moveToFirst = query.moveToFirst();
                if (query != null) {
                    query.close();
                }
                return moveToFirst;
            } catch (SQLiteException e2) {
                cursor = query;
                e = e2;
                zzj.this.zzc("Error querying for table", str, e);
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

        private Set<String> zzb(SQLiteDatabase sQLiteDatabase, String str) {
            HashSet hashSet = new HashSet();
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " LIMIT 0", null);
            try {
                for (String str2 : rawQuery.getColumnNames()) {
                    hashSet.add(str2);
                }
                return hashSet;
            } finally {
                rawQuery.close();
            }
        }

        private void zzb(SQLiteDatabase sQLiteDatabase) {
            Set<String> zzb = zzb(sQLiteDatabase, "properties");
            for (String str : new String[]{"app_uid", "cid", "tid", "params", "adid", "hits_count"}) {
                if (!zzb.remove(str)) {
                    throw new SQLiteException("Database properties is missing required column: " + str);
                }
            }
            if (!zzb.isEmpty()) {
                throw new SQLiteException("Database properties table has extra columns");
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public SQLiteDatabase getWritableDatabase() {
            if (!zzj.this.zzKk.zzv(3600000L)) {
                throw new SQLiteException("Database open failed");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e) {
                zzj.this.zzKk.start();
                zzj.this.zzaX("Opening the database failed, dropping the table and recreating it");
                zzj.this.getContext().getDatabasePath(zzj.this.zziv()).delete();
                try {
                    SQLiteDatabase writableDatabase = super.getWritableDatabase();
                    zzj.this.zzKk.clear();
                    return writableDatabase;
                } catch (SQLiteException e2) {
                    zzj.this.zze("Failed to open freshly created database", e2);
                    throw e2;
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            zzx.zzbe(sQLiteDatabase.getPath());
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
            if (zza(sQLiteDatabase, "hits2")) {
                zza(sQLiteDatabase);
            } else {
                sQLiteDatabase.execSQL(zzj.zzKg);
            }
            if (zza(sQLiteDatabase, "properties")) {
                zzb(sQLiteDatabase);
            } else {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS properties ( app_uid INTEGER NOT NULL, cid TEXT NOT NULL, tid TEXT NOT NULL, params TEXT NOT NULL, adid INTEGER NOT NULL, hits_count INTEGER NOT NULL, PRIMARY KEY (app_uid, cid, tid)) ;");
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    zzj(zzf zzfVar) {
        super(zzfVar);
        this.zzKj = new zzaj(zzhP());
        this.zzKk = new zzaj(zzhP());
        this.zzKi = new zza(zzfVar.getContext(), zziv());
    }

    private static String zzA(Map<String, String> map) {
        com.google.android.gms.common.internal.zzu.zzu(map);
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builder.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String encodedQuery = builder.build().getEncodedQuery();
        return encodedQuery == null ? "" : encodedQuery;
    }

    private long zza(String str, String[] strArr, long j) {
        Cursor rawQuery;
        Cursor cursor = null;
        try {
            try {
                rawQuery = getWritableDatabase().rawQuery(str, strArr);
            } catch (SQLiteException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (!rawQuery.moveToFirst()) {
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return j;
            }
            long j2 = rawQuery.getLong(0);
            if (rawQuery != null) {
                rawQuery.close();
            }
            return j2;
        } catch (SQLiteException e2) {
            e = e2;
            cursor = rawQuery;
            zzd("Database error", str, e);
            throw e;
        } catch (Throwable th2) {
            th = th2;
            cursor = rawQuery;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private long zzb(String str, String[] strArr) {
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            try {
                cursor = getWritableDatabase().rawQuery(str, strArr);
            } catch (SQLiteException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
            cursor = cursor2;
        }
        try {
            if (!cursor.moveToFirst()) {
                throw new SQLiteException("Database returned empty set");
            }
            long j = cursor.getLong(0);
            if (cursor != null) {
                cursor.close();
            }
            return j;
        } catch (SQLiteException e2) {
            e = e2;
            cursor2 = cursor;
            zzd("Database error", str, e);
            throw e;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private String zzd(zzab zzabVar) {
        return zzabVar.zzjY() ? zzhR().zzjk() : zzhR().zzjl();
    }

    private static String zze(zzab zzabVar) {
        com.google.android.gms.common.internal.zzu.zzu(zzabVar);
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : zzabVar.zzn().entrySet()) {
            String key = entry.getKey();
            if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key)) {
                builder.appendQueryParameter(key, entry.getValue());
            }
        }
        String encodedQuery = builder.build().getEncodedQuery();
        return encodedQuery == null ? "" : encodedQuery;
    }

    private void zziu() {
        int zzju = zzhR().zzju();
        long zzil = zzil();
        if (zzil > zzju - 1) {
            List<Long> zzo = zzo((zzil - zzju) + 1);
            zzd("Store full, deleting hits to make room, count", Integer.valueOf(zzo.size()));
            zzd(zzo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String zziv() {
        if (zzhR().zziW() && !zzhR().zziX()) {
            return zzhR().zzjx();
        }
        return zzhR().zzjw();
    }

    public void beginTransaction() {
        zzia();
        getWritableDatabase().beginTransaction();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        String str;
        try {
            this.zzKi.close();
        } catch (SQLiteException e) {
            e = e;
            str = "Sql error closing database";
            zze(str, e);
        } catch (IllegalStateException e2) {
            e = e2;
            str = "Error closing database";
            zze(str, e);
        }
    }

    public void endTransaction() {
        zzia();
        getWritableDatabase().endTransaction();
    }

    SQLiteDatabase getWritableDatabase() {
        try {
            return this.zzKi.getWritableDatabase();
        } catch (SQLiteException e) {
            zzd("Error opening database", e);
            throw e;
        }
    }

    boolean isEmpty() {
        return zzil() == 0;
    }

    public void setTransactionSuccessful() {
        zzia();
        getWritableDatabase().setTransactionSuccessful();
    }

    public long zza(long j, String str, String str2) {
        com.google.android.gms.common.internal.zzu.zzcj(str);
        com.google.android.gms.common.internal.zzu.zzcj(str2);
        zzia();
        zzhO();
        return zza("SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?", new String[]{String.valueOf(j), str, str2}, 0L);
    }

    public void zza(long j, String str) {
        com.google.android.gms.common.internal.zzu.zzcj(str);
        zzia();
        zzhO();
        int delete = getWritableDatabase().delete("properties", "app_uid=? AND cid<>?", new String[]{String.valueOf(j), str});
        if (delete > 0) {
            zza("Deleted property records", Integer.valueOf(delete));
        }
    }

    Map<String, String> zzaY(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            if (!str.startsWith("?")) {
                str = "?" + str;
            }
            List<NameValuePair> parse = URLEncodedUtils.parse(new URI(str), "UTF-8");
            HashMap hashMap = new HashMap(parse.size());
            for (NameValuePair nameValuePair : parse) {
                hashMap.put(nameValuePair.getName(), nameValuePair.getValue());
            }
            return hashMap;
        } catch (URISyntaxException e) {
            zze("Error parsing hit parameters", e);
            return new HashMap(0);
        }
    }

    Map<String, String> zzaZ(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap(0);
        }
        try {
            List<NameValuePair> parse = URLEncodedUtils.parse(new URI("?" + str), "UTF-8");
            HashMap hashMap = new HashMap(parse.size());
            for (NameValuePair nameValuePair : parse) {
                hashMap.put(nameValuePair.getName(), nameValuePair.getValue());
            }
            return hashMap;
        } catch (URISyntaxException e) {
            zze("Error parsing property parameters", e);
            return new HashMap(0);
        }
    }

    public void zzb(zzh zzhVar) {
        com.google.android.gms.common.internal.zzu.zzu(zzhVar);
        zzia();
        zzhO();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        String zzA = zzA(zzhVar.zzn());
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_uid", Long.valueOf(zzhVar.zzii()));
        contentValues.put("cid", zzhVar.getClientId());
        contentValues.put("tid", zzhVar.zzij());
        contentValues.put("adid", Integer.valueOf(zzhVar.zzik() ? 1 : 0));
        contentValues.put("hits_count", Long.valueOf(zzhVar.zzil()));
        contentValues.put("params", zzA);
        try {
            if (writableDatabase.insertWithOnConflict("properties", null, contentValues, 5) == -1) {
                zzaX("Failed to insert/update a property (got -1)");
            }
        } catch (SQLiteException e) {
            zze("Error storing a property", e);
        }
    }

    public void zzc(zzab zzabVar) {
        com.google.android.gms.common.internal.zzu.zzu(zzabVar);
        zzhO();
        zzia();
        String zze = zze(zzabVar);
        if (zze.length() > 8192) {
            zzhQ().zza(zzabVar, "Hit length exceeds the maximum allowed size");
            return;
        }
        zziu();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_string", zze);
        contentValues.put("hit_time", Long.valueOf(zzabVar.zzjW()));
        contentValues.put("hit_app_id", Integer.valueOf(zzabVar.zzjU()));
        contentValues.put("hit_url", zzd(zzabVar));
        try {
            long insert = writableDatabase.insert("hits2", null, contentValues);
            if (insert == -1) {
                zzaX("Failed to insert a hit (got -1)");
            } else {
                zzb("Hit saved to database. db-id, hit", Long.valueOf(insert), zzabVar);
            }
        } catch (SQLiteException e) {
            zze("Error storing a hit", e);
        }
    }

    public void zzd(List<Long> list) {
        com.google.android.gms.common.internal.zzu.zzu(list);
        zzhO();
        zzia();
        if (list.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder("hit_id");
        sb.append(" in (");
        for (int i = 0; i < list.size(); i++) {
            Long l = list.get(i);
            if (l == null || l.longValue() == 0) {
                throw new SQLiteException("Invalid hit id");
            }
            if (i > 0) {
                sb.append(",");
            }
            sb.append(l);
        }
        sb.append(")");
        String sb2 = sb.toString();
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            zza("Deleting dispatched hits. count", Integer.valueOf(list.size()));
            int delete = writableDatabase.delete("hits2", sb2, null);
            if (delete != list.size()) {
                zzb("Deleted fewer hits then expected", Integer.valueOf(list.size()), Integer.valueOf(delete), sb2);
            }
        } catch (SQLiteException e) {
            zze("Error deleting hits", e);
            throw e;
        }
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzhn() {
    }

    public long zzil() {
        zzhO();
        zzia();
        return zzb("SELECT COUNT(*) FROM hits2", (String[]) null);
    }

    public void zziq() {
        zzhO();
        zzia();
        getWritableDatabase().delete("hits2", null, null);
    }

    public void zzir() {
        zzhO();
        zzia();
        getWritableDatabase().delete("properties", null, null);
    }

    public int zzis() {
        zzhO();
        zzia();
        if (!this.zzKj.zzv(86400000L)) {
            return 0;
        }
        this.zzKj.start();
        zzaT("Deleting stale hits (if any)");
        int delete = getWritableDatabase().delete("hits2", "hit_time < ?", new String[]{Long.toString(zzhP().currentTimeMillis() - 2592000000L)});
        zza("Deleted stale hits, count", Integer.valueOf(delete));
        return delete;
    }

    public long zzit() {
        zzhO();
        zzia();
        return zza(zzKh, (String[]) null, 0L);
    }

    public List<Long> zzo(long j) {
        Cursor query;
        zzhO();
        zzia();
        if (j <= 0) {
            return Collections.emptyList();
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                query = writableDatabase.query("hits2", new String[]{"hit_id"}, null, null, null, null, String.format("%s ASC", "hit_id"), Long.toString(j));
            } catch (SQLiteException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (query.moveToFirst()) {
                do {
                    arrayList.add(Long.valueOf(query.getLong(0)));
                } while (query.moveToNext());
            }
            if (query != null) {
                query.close();
                return arrayList;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = query;
            zzd("Error selecting hit ids", e);
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

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.google.android.gms.analytics.internal.zzab> zzp(long r24) {
        /*
            r23 = this;
            r10 = r23
            r1 = 0
            int r5 = (r24 > r1 ? 1 : (r24 == r1 ? 0 : -1))
            r11 = 0
            r12 = 1
            if (r5 < 0) goto Lc
            r1 = 1
            goto Ld
        Lc:
            r1 = 0
        Ld:
            com.google.android.gms.common.internal.zzu.zzV(r1)
            r23.zzhO()
            r23.zzia()
            android.database.sqlite.SQLiteDatabase r13 = r23.getWritableDatabase()
            r1 = 0
            java.lang.String r14 = "hits2"
            r2 = 5
            java.lang.String[] r15 = new java.lang.String[r2]     // Catch: java.lang.Throwable -> La1 android.database.sqlite.SQLiteException -> La5
            java.lang.String r2 = "hit_id"
            r15[r11] = r2     // Catch: java.lang.Throwable -> La1 android.database.sqlite.SQLiteException -> La5
            java.lang.String r2 = "hit_time"
            r15[r12] = r2     // Catch: java.lang.Throwable -> La1 android.database.sqlite.SQLiteException -> La5
            java.lang.String r2 = "hit_string"
            r9 = 2
            r15[r9] = r2     // Catch: java.lang.Throwable -> La1 android.database.sqlite.SQLiteException -> La5
            java.lang.String r2 = "hit_url"
            r7 = 3
            r15[r7] = r2     // Catch: java.lang.Throwable -> La1 android.database.sqlite.SQLiteException -> La5
            java.lang.String r2 = "hit_app_id"
            r8 = 4
            r15[r8] = r2     // Catch: java.lang.Throwable -> La1 android.database.sqlite.SQLiteException -> La5
            r16 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            java.lang.String r2 = "%s ASC"
            java.lang.Object[] r5 = new java.lang.Object[r12]     // Catch: java.lang.Throwable -> La1 android.database.sqlite.SQLiteException -> La5
            java.lang.String r6 = "hit_id"
            r5[r11] = r6     // Catch: java.lang.Throwable -> La1 android.database.sqlite.SQLiteException -> La5
            java.lang.String r20 = java.lang.String.format(r2, r5)     // Catch: java.lang.Throwable -> La1 android.database.sqlite.SQLiteException -> La5
            java.lang.String r21 = java.lang.Long.toString(r24)     // Catch: java.lang.Throwable -> La1 android.database.sqlite.SQLiteException -> La5
            android.database.Cursor r13 = r13.query(r14, r15, r16, r17, r18, r19, r20, r21)     // Catch: java.lang.Throwable -> La1 android.database.sqlite.SQLiteException -> La5
            java.util.ArrayList r14 = new java.util.ArrayList     // Catch: android.database.sqlite.SQLiteException -> L9f java.lang.Throwable -> Lae
            r14.<init>()     // Catch: android.database.sqlite.SQLiteException -> L9f java.lang.Throwable -> Lae
            boolean r1 = r13.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L9f java.lang.Throwable -> Lae
            if (r1 == 0) goto L99
        L5e:
            long r15 = r13.getLong(r11)     // Catch: android.database.sqlite.SQLiteException -> L9f java.lang.Throwable -> Lae
            long r4 = r13.getLong(r12)     // Catch: android.database.sqlite.SQLiteException -> L9f java.lang.Throwable -> Lae
            java.lang.String r1 = r13.getString(r9)     // Catch: android.database.sqlite.SQLiteException -> L9f java.lang.Throwable -> Lae
            java.lang.String r2 = r13.getString(r7)     // Catch: android.database.sqlite.SQLiteException -> L9f java.lang.Throwable -> Lae
            int r17 = r13.getInt(r8)     // Catch: android.database.sqlite.SQLiteException -> L9f java.lang.Throwable -> Lae
            java.util.Map r3 = r10.zzaY(r1)     // Catch: android.database.sqlite.SQLiteException -> L9f java.lang.Throwable -> Lae
            boolean r6 = com.google.android.gms.analytics.internal.zzam.zzbn(r2)     // Catch: android.database.sqlite.SQLiteException -> L9f java.lang.Throwable -> Lae
            com.google.android.gms.analytics.internal.zzab r2 = new com.google.android.gms.analytics.internal.zzab     // Catch: android.database.sqlite.SQLiteException -> L9f java.lang.Throwable -> Lae
            r1 = r2
            r11 = r2
            r2 = r10
            r18 = 3
            r19 = 4
            r7 = r15
            r15 = 2
            r9 = r17
            r1.<init>(r2, r3, r4, r6, r7, r9)     // Catch: android.database.sqlite.SQLiteException -> L9f java.lang.Throwable -> Lae
            r14.add(r11)     // Catch: android.database.sqlite.SQLiteException -> L9f java.lang.Throwable -> Lae
            boolean r1 = r13.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L9f java.lang.Throwable -> Lae
            if (r1 != 0) goto L94
            goto L99
        L94:
            r7 = 3
            r8 = 4
            r9 = 2
            r11 = 0
            goto L5e
        L99:
            if (r13 == 0) goto L9e
            r13.close()
        L9e:
            return r14
        L9f:
            r0 = move-exception
            goto La7
        La1:
            r0 = move-exception
            r13 = r1
        La3:
            r1 = r0
            goto Lb0
        La5:
            r0 = move-exception
            r13 = r1
        La7:
            r1 = r0
            java.lang.String r2 = "Error loading hits from the database"
            r10.zze(r2, r1)     // Catch: java.lang.Throwable -> Lae
            throw r1     // Catch: java.lang.Throwable -> Lae
        Lae:
            r0 = move-exception
            goto La3
        Lb0:
            if (r13 == 0) goto Lb5
            r13.close()
        Lb5:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzj.zzp(long):java.util.List");
    }

    public void zzq(long j) {
        zzhO();
        zzia();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Long.valueOf(j));
        zza("Deleting hit, id", Long.valueOf(j));
        zzd(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.google.android.gms.analytics.internal.zzh> zzr(long r28) {
        /*
            r27 = this;
            r1 = r27
            r27.zzia()
            r27.zzhO()
            android.database.sqlite.SQLiteDatabase r2 = r27.getWritableDatabase()
            r3 = 5
            java.lang.String[] r4 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lc0
            java.lang.String r3 = "cid"
            r12 = 0
            r4[r12] = r3     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lc0
            java.lang.String r3 = "tid"
            r13 = 1
            r4[r13] = r3     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lc0
            java.lang.String r3 = "adid"
            r14 = 2
            r4[r14] = r3     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lc0
            java.lang.String r3 = "hits_count"
            r15 = 3
            r4[r15] = r3     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lc0
            java.lang.String r3 = "params"
            r10 = 4
            r4[r10] = r3     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lc0
            com.google.android.gms.analytics.internal.zzr r3 = r27.zzhR()     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lc0
            int r9 = r3.zzjv()     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lc0
            java.lang.String r16 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lc0
            java.lang.String r5 = "app_uid=?"
            java.lang.String[] r6 = new java.lang.String[r13]     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lc0
            java.lang.String r3 = java.lang.String.valueOf(r28)     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lc0
            r6[r12] = r3     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lc0
            java.lang.String r3 = "properties"
            r7 = 0
            r8 = 0
            r17 = 0
            r11 = r9
            r9 = r17
            r10 = r16
            android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> Lbc android.database.sqlite.SQLiteException -> Lc0
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            r3.<init>()     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            boolean r4 = r2.moveToFirst()     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            if (r4 == 0) goto La4
        L58:
            java.lang.String r4 = r2.getString(r12)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            java.lang.String r5 = r2.getString(r13)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            int r6 = r2.getInt(r14)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            if (r6 == 0) goto L69
            r23 = 1
            goto L6b
        L69:
            r23 = 0
        L6b:
            int r6 = r2.getInt(r15)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            long r6 = (long) r6     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            r8 = 4
            java.lang.String r9 = r2.getString(r8)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            java.util.Map r26 = r1.zzaZ(r9)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            boolean r9 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            if (r9 != 0) goto L99
            boolean r9 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            if (r9 == 0) goto L86
            goto L99
        L86:
            com.google.android.gms.analytics.internal.zzh r9 = new com.google.android.gms.analytics.internal.zzh     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            r18 = r9
            r19 = r28
            r21 = r4
            r22 = r5
            r24 = r6
            r18.<init>(r19, r21, r22, r23, r24, r26)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            r3.add(r9)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            goto L9e
        L99:
            java.lang.String r6 = "Read property with empty client id or tracker id"
            r1.zzc(r6, r4, r5)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
        L9e:
            boolean r4 = r2.moveToNext()     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            if (r4 != 0) goto L58
        La4:
            int r4 = r3.size()     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
            if (r4 < r11) goto Laf
            java.lang.String r4 = "Sending hits to too many properties. Campaign report might be incorrect"
            r1.zzaW(r4)     // Catch: java.lang.Throwable -> Lb5 android.database.sqlite.SQLiteException -> Lb8
        Laf:
            if (r2 == 0) goto Lb4
            r2.close()
        Lb4:
            return r3
        Lb5:
            r0 = move-exception
            r11 = r2
            goto Lca
        Lb8:
            r0 = move-exception
            r11 = r2
            r2 = r0
            goto Lc3
        Lbc:
            r0 = move-exception
            r2 = r0
            r11 = 0
            goto Lcb
        Lc0:
            r0 = move-exception
            r2 = r0
            r11 = 0
        Lc3:
            java.lang.String r3 = "Error loading hits from the database"
            r1.zze(r3, r2)     // Catch: java.lang.Throwable -> Lc9
            throw r2     // Catch: java.lang.Throwable -> Lc9
        Lc9:
            r0 = move-exception
        Lca:
            r2 = r0
        Lcb:
            if (r11 == 0) goto Ld0
            r11.close()
        Ld0:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.zzj.zzr(long):java.util.List");
    }
}
