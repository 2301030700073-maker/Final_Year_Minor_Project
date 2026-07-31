package com.google.android.gms.ads.internal.purchase;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;
import com.google.android.gms.internal.zzgd;
import java.util.LinkedList;
import java.util.List;

@zzgd
/* loaded from: classes.dex */
public class zzh {
    private static zzh zzAZ;
    private final zza zzAY;
    private static final String zzAX = String.format("CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)", "InAppPurchase", "purchase_id", "product_id", "developer_payload", "record_time");
    private static final Object zzqt = new Object();

    public class zza extends SQLiteOpenHelper {
        public zza(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 4);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(zzh.zzAX);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaA("Database updated from version " + i + " to version " + i2);
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS InAppPurchase");
            onCreate(sQLiteDatabase);
        }
    }

    zzh(Context context) {
        this.zzAY = new zza(context, "google_inapp_purchase.db");
    }

    public static zzh zzy(Context context) {
        zzh zzhVar;
        synchronized (zzqt) {
            if (zzAZ == null) {
                zzAZ = new zzh(context);
            }
            zzhVar = zzAZ;
        }
        return zzhVar;
    }

    public int getRecordCount() {
        Cursor rawQuery;
        boolean moveToFirst;
        synchronized (zzqt) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return 0;
            }
            Cursor cursor = null;
            Cursor cursor2 = null;
            try {
                try {
                    rawQuery = writableDatabase.rawQuery("select count(*) from InAppPurchase", null);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (SQLiteException e) {
                e = e;
            }
            try {
                moveToFirst = rawQuery.moveToFirst();
                cursor = moveToFirst;
            } catch (SQLiteException e2) {
                cursor2 = rawQuery;
                e = e2;
                com.google.android.gms.ads.internal.util.client.zzb.zzaC("Error getting record count" + e.getMessage());
                cursor = cursor2;
                if (cursor2 != null) {
                    cursor2.close();
                    cursor = cursor2;
                }
                return 0;
            } catch (Throwable th2) {
                th = th2;
                cursor = rawQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
            if (moveToFirst) {
                int i = rawQuery.getInt(0);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return i;
            }
            if (rawQuery != null) {
                rawQuery.close();
                cursor = moveToFirst;
            }
            return 0;
        }
    }

    public SQLiteDatabase getWritableDatabase() {
        try {
            return this.zzAY.getWritableDatabase();
        } catch (SQLiteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaC("Error opening writable conversion tracking database");
            return null;
        }
    }

    public zzf zza(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        return new zzf(cursor.getLong(0), cursor.getString(1), cursor.getString(2));
    }

    public void zza(zzf zzfVar) {
        if (zzfVar == null) {
            return;
        }
        synchronized (zzqt) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return;
            }
            writableDatabase.delete("InAppPurchase", String.format("%s = %d", "purchase_id", Long.valueOf(zzfVar.zzAR)), null);
        }
    }

    public void zzb(zzf zzfVar) {
        if (zzfVar == null) {
            return;
        }
        synchronized (zzqt) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("product_id", zzfVar.zzAT);
            contentValues.put("developer_payload", zzfVar.zzAS);
            contentValues.put("record_time", Long.valueOf(SystemClock.elapsedRealtime()));
            zzfVar.zzAR = writableDatabase.insert("InAppPurchase", null, contentValues);
            if (getRecordCount() > 20000) {
                zzfg();
            }
        }
    }

    public List<zzf> zzf(long j) {
        Cursor query;
        synchronized (zzqt) {
            LinkedList linkedList = new LinkedList();
            if (j <= 0) {
                return linkedList;
            }
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return linkedList;
            }
            Cursor cursor = null;
            try {
                try {
                    query = writableDatabase.query("InAppPurchase", null, null, null, null, null, "record_time ASC", String.valueOf(j));
                } catch (Throwable th) {
                    th = th;
                }
            } catch (SQLiteException e) {
                e = e;
            }
            try {
                if (query.moveToFirst()) {
                    do {
                        linkedList.add(zza(query));
                    } while (query.moveToNext());
                }
                if (query != null) {
                    query.close();
                }
            } catch (SQLiteException e2) {
                e = e2;
                cursor = query;
                com.google.android.gms.ads.internal.util.client.zzb.zzaC("Error extracing purchase info: " + e.getMessage());
                if (cursor != null) {
                    cursor.close();
                }
                return linkedList;
            } catch (Throwable th2) {
                th = th2;
                cursor = query;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
            return linkedList;
        }
    }

    public void zzfg() {
        synchronized (zzqt) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return;
            }
            Cursor cursor = null;
            try {
                try {
                    Cursor query = writableDatabase.query("InAppPurchase", null, null, null, null, null, "record_time ASC", "1");
                    if (query != null) {
                        try {
                            if (query.moveToFirst()) {
                                zza(zza(query));
                            }
                        } catch (SQLiteException e) {
                            e = e;
                            cursor = query;
                            com.google.android.gms.ads.internal.util.client.zzb.zzaC("Error remove oldest record" + e.getMessage());
                            if (cursor != null) {
                                cursor.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            cursor = query;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    if (query != null) {
                        query.close();
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }
}
