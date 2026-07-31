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
import com.google.android.gms.tagmanager.DataLayer;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
class zzw implements DataLayer.zzc {
    private static final String zzaLp = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", "datalayer", "ID", "key", "value", "expires");
    private final Context mContext;
    private final Executor zzaLq;
    private zza zzaLr;
    private int zzaLs;
    private zzlb zzpw;

    class zza extends SQLiteOpenHelper {
        zza(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
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
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM datalayer WHERE 0", null);
            HashSet hashSet = new HashSet();
            try {
                for (String str : rawQuery.getColumnNames()) {
                    hashSet.add(str);
                }
                rawQuery.close();
                if (!hashSet.remove("key") || !hashSet.remove("value") || !hashSet.remove("ID") || !hashSet.remove("expires")) {
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
            SQLiteDatabase sQLiteDatabase;
            try {
                sQLiteDatabase = super.getWritableDatabase();
            } catch (SQLiteException e) {
                zzw.this.mContext.getDatabasePath("google_tagmanager.db").delete();
                sQLiteDatabase = null;
            }
            return sQLiteDatabase == null ? super.getWritableDatabase() : sQLiteDatabase;
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
            if (zza("datalayer", sQLiteDatabase)) {
                zzc(sQLiteDatabase);
            } else {
                sQLiteDatabase.execSQL(zzw.zzaLp);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    private static class zzb {
        final byte[] zzaLy;
        final String zztw;

        zzb(String str, byte[] bArr) {
            this.zztw = str;
            this.zzaLy = bArr;
        }

        public String toString() {
            return "KeyAndSerialized: key = " + this.zztw + " serialized hash = " + Arrays.hashCode(this.zzaLy);
        }
    }

    public zzw(Context context) {
        this(context, zzld.zzoQ(), "google_tagmanager.db", 2000, Executors.newSingleThreadExecutor());
    }

    zzw(Context context, zzlb zzlbVar, String str, int i, Executor executor) {
        this.mContext = context;
        this.zzpw = zzlbVar;
        this.zzaLs = i;
        this.zzaLq = executor;
        this.zzaLr = new zza(this.mContext, str);
    }

    private byte[] zzA(Object obj) {
        ObjectOutputStream objectOutputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream2 = null;
        try {
            objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        } catch (IOException e) {
            objectOutputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            objectOutputStream.writeObject(obj);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (IOException e2) {
                    return byteArray;
                }
            }
            byteArrayOutputStream.close();
            return byteArray;
        } catch (IOException e3) {
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (IOException e4) {
                    return null;
                }
            }
            byteArrayOutputStream.close();
            return null;
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream2 = objectOutputStream;
            if (objectOutputStream2 != null) {
                try {
                    objectOutputStream2.close();
                } catch (IOException e5) {
                    throw th;
                }
            }
            byteArrayOutputStream.close();
            throw th;
        }
    }

    private void zzS(long j) {
        SQLiteDatabase zzer = zzer("Error opening database for deleteOlderThan.");
        if (zzer == null) {
            return;
        }
        try {
            zzbg.zzaB("Deleted " + zzer.delete("datalayer", "expires <= ?", new String[]{Long.toString(j)}) + " expired items");
        } catch (SQLiteException e) {
            zzbg.zzaC("Error deleting old entries.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void zzb(List<zzb> list, long j) {
        try {
            long currentTimeMillis = this.zzpw.currentTimeMillis();
            zzS(currentTimeMillis);
            zziS(list.size());
            zzc(list, currentTimeMillis + j);
        } finally {
            zzyF();
        }
    }

    private void zzc(List<zzb> list, long j) {
        SQLiteDatabase zzer = zzer("Error opening database for writeEntryToDatabase.");
        if (zzer == null) {
            return;
        }
        for (zzb zzbVar : list) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("expires", Long.valueOf(j));
            contentValues.put("key", zzbVar.zztw);
            contentValues.put("value", zzbVar.zzaLy);
            zzer.insert("datalayer", null, contentValues);
        }
    }

    private void zze(String[] strArr) {
        SQLiteDatabase zzer;
        if (strArr == null || strArr.length == 0 || (zzer = zzer("Error opening database for deleteEntries.")) == null) {
            return;
        }
        try {
            zzer.delete("datalayer", String.format("%s in (%s)", "ID", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
        } catch (SQLiteException e) {
            zzbg.zzaC("Error deleting entries " + Arrays.toString(strArr));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzeq(String str) {
        SQLiteDatabase zzer = zzer("Error opening database for clearKeysWithPrefix.");
        if (zzer == null) {
            return;
        }
        try {
            try {
                zzbg.zzaB("Cleared " + zzer.delete("datalayer", "key = ? OR key LIKE ?", new String[]{str, str + ".%"}) + " items");
            } catch (SQLiteException e) {
                zzbg.zzaC("Error deleting entries with key prefix: " + str + " (" + e + ").");
            }
        } finally {
            zzyF();
        }
    }

    private SQLiteDatabase zzer(String str) {
        try {
            return this.zzaLr.getWritableDatabase();
        } catch (SQLiteException e) {
            zzbg.zzaC(str);
            return null;
        }
    }

    private void zziS(int i) {
        int zzyE = (zzyE() - this.zzaLs) + i;
        if (zzyE > 0) {
            List<String> zziT = zziT(zzyE);
            zzbg.zzaA("DataLayer store full, deleting " + zziT.size() + " entries to make room.");
            zze((String[]) zziT.toArray(new String[0]));
        }
    }

    private List<String> zziT(int i) {
        Cursor query;
        ArrayList arrayList = new ArrayList();
        if (i <= 0) {
            zzbg.zzaC("Invalid maxEntries specified. Skipping.");
            return arrayList;
        }
        SQLiteDatabase zzer = zzer("Error opening database for peekEntryIds.");
        if (zzer == null) {
            return arrayList;
        }
        Cursor cursor = null;
        try {
            try {
                query = zzer.query("datalayer", new String[]{"ID"}, null, null, null, null, String.format("%s ASC", "ID"), Integer.toString(i));
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
            zzbg.zzaC("Error in peekEntries fetching entryIds: " + e.getMessage());
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

    private List<DataLayer.zza> zzp(List<zzb> list) {
        ArrayList arrayList = new ArrayList();
        for (zzb zzbVar : list) {
            arrayList.add(new DataLayer.zza(zzbVar.zztw, zzq(zzbVar.zzaLy)));
        }
        return arrayList;
    }

    private Object zzq(byte[] bArr) {
        ObjectInputStream objectInputStream;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ObjectInputStream objectInputStream2 = null;
        try {
            objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                Object readObject = objectInputStream.readObject();
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e) {
                        return readObject;
                    }
                }
                byteArrayInputStream.close();
                return readObject;
            } catch (IOException e2) {
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e3) {
                        return null;
                    }
                }
                byteArrayInputStream.close();
                return null;
            } catch (ClassNotFoundException e4) {
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e5) {
                        return null;
                    }
                }
                byteArrayInputStream.close();
                return null;
            } catch (Throwable th) {
                th = th;
                objectInputStream2 = objectInputStream;
                if (objectInputStream2 != null) {
                    try {
                        objectInputStream2.close();
                    } catch (IOException e6) {
                        throw th;
                    }
                }
                byteArrayInputStream.close();
                throw th;
            }
        } catch (IOException e7) {
            objectInputStream = null;
        } catch (ClassNotFoundException e8) {
            objectInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private List<zzb> zzq(List<DataLayer.zza> list) {
        ArrayList arrayList = new ArrayList();
        for (DataLayer.zza zzaVar : list) {
            arrayList.add(new zzb(zzaVar.zztw, zzA(zzaVar.zzGK)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<DataLayer.zza> zzyC() {
        try {
            zzS(this.zzpw.currentTimeMillis());
            return zzp(zzyD());
        } finally {
            zzyF();
        }
    }

    private List<zzb> zzyD() {
        SQLiteDatabase zzer = zzer("Error opening database for loadSerialized.");
        ArrayList arrayList = new ArrayList();
        if (zzer == null) {
            return arrayList;
        }
        Cursor query = zzer.query("datalayer", new String[]{"key", "value"}, null, null, null, null, "ID", null);
        while (query.moveToNext()) {
            try {
                arrayList.add(new zzb(query.getString(0), query.getBlob(1)));
            } finally {
                query.close();
            }
        }
        return arrayList;
    }

    private int zzyE() {
        Cursor rawQuery;
        SQLiteDatabase zzer = zzer("Error opening database for getNumStoredEntries.");
        if (zzer == null) {
            return 0;
        }
        Cursor cursor = null;
        try {
            try {
                rawQuery = zzer.rawQuery("SELECT COUNT(*) from datalayer", null);
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
            zzbg.zzaC("Error getting numStoredEntries");
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

    private void zzyF() {
        try {
            this.zzaLr.close();
        } catch (SQLiteException e) {
        }
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public void zza(final DataLayer.zzc.zza zzaVar) {
        this.zzaLq.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzw.2
            @Override // java.lang.Runnable
            public void run() {
                zzaVar.zzo(zzw.this.zzyC());
            }
        });
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public void zza(List<DataLayer.zza> list, final long j) {
        final List<zzb> zzq = zzq(list);
        this.zzaLq.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzw.1
            @Override // java.lang.Runnable
            public void run() {
                zzw.this.zzb(zzq, j);
            }
        });
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public void zzep(final String str) {
        this.zzaLq.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.zzw.3
            @Override // java.lang.Runnable
            public void run() {
                zzw.this.zzeq(str);
            }
        });
    }
}
