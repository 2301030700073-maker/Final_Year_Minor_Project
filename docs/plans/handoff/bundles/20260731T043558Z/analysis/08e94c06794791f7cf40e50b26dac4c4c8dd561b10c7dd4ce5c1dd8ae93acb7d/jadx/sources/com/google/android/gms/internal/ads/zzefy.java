package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzefy extends zzfua {
    private final Context zza;
    private final zzgus zzb;

    public zzefy(Context context, zzgus zzgusVar) {
        super(context, "AdMobOfflineBufferedPings.db", null, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzjk)).intValue(), zzfuc.zza);
        this.zza = context;
        this.zzb = zzgusVar;
    }

    static /* synthetic */ Void zzf(com.google.android.gms.ads.internal.util.client.zzu zzuVar, SQLiteDatabase sQLiteDatabase) {
        zzj(sQLiteDatabase, zzuVar);
        return null;
    }

    static /* synthetic */ void zzg(SQLiteDatabase sQLiteDatabase, String str, com.google.android.gms.ads.internal.util.client.zzu zzuVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_state", (Integer) 1);
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str});
        zzj(sQLiteDatabase, zzuVar);
    }

    static final void zzi(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{str, Integer.toString(0)});
    }

    private static void zzj(SQLiteDatabase sQLiteDatabase, com.google.android.gms.ads.internal.util.client.zzu zzuVar) {
        String sb;
        sQLiteDatabase.beginTransaction();
        try {
            StringBuilder sb2 = new StringBuilder(15);
            sb2.append("event_state = 1");
            Cursor query = sQLiteDatabase.query("offline_buffered_pings", new String[]{"timestamp", "url"}, sb2.toString(), null, null, null, "timestamp ASC", null);
            int count = query.getCount();
            String[] strArr = new String[count];
            int i = 0;
            while (query.moveToNext()) {
                int columnIndex = query.getColumnIndex("timestamp");
                int columnIndex2 = query.getColumnIndex("url");
                if (columnIndex2 != -1) {
                    long j = query.getLong(columnIndex);
                    String string = query.getString(columnIndex2);
                    if (string == null) {
                        sb = "";
                    } else {
                        Uri parse = Uri.parse(string);
                        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - j;
                        String encodedQuery = parse.getEncodedQuery();
                        Uri.Builder clearQuery = parse.buildUpon().clearQuery();
                        clearQuery.appendQueryParameter("bd", Long.toString(currentTimeMillis));
                        String valueOf = String.valueOf(clearQuery.build());
                        StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(encodedQuery).length());
                        sb3.append(valueOf);
                        sb3.append("&");
                        sb3.append(encodedQuery);
                        sb = sb3.toString();
                    }
                    strArr[i] = sb;
                }
                i++;
            }
            query.close();
            sQLiteDatabase.delete("offline_buffered_pings", "event_state = ?", new String[]{Integer.toString(1)});
            sQLiteDatabase.setTransactionSuccessful();
            for (int i2 = 0; i2 < count; i2++) {
                zzuVar.zzc(strArr[i2], null);
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE offline_buffered_pings (timestamp INTEGER PRIMARY_KEY, gws_query_id TEXT, url TEXT, event_state INTEGER)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    final void zza(zzfjx zzfjxVar) {
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.ads.zzefx
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzefy.this.getWritableDatabase();
            }
        };
        zzgus zzgusVar = this.zzb;
        zzgui.zzr(zzgusVar.submit(callable), new zzefr(this, zzfjxVar), zzgusVar);
    }

    final void zzb(final SQLiteDatabase sQLiteDatabase, final com.google.android.gms.ads.internal.util.client.zzu zzuVar, final String str) {
        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzefs
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzefy.zzg(sQLiteDatabase, str, zzuVar);
            }
        });
    }

    public final void zzc(final com.google.android.gms.ads.internal.util.client.zzu zzuVar, final String str) {
        zza(new zzfjx() { // from class: com.google.android.gms.internal.ads.zzeft
            @Override // com.google.android.gms.internal.ads.zzfjx
            public final /* synthetic */ Object zza(Object obj) {
                zzefy.this.zzb((SQLiteDatabase) obj, zzuVar, str);
                return null;
            }
        });
    }

    public final void zzd(final String str) {
        zza(new zzfjx(this) { // from class: com.google.android.gms.internal.ads.zzefu
            @Override // com.google.android.gms.internal.ads.zzfjx
            public final /* synthetic */ Object zza(Object obj) {
                zzefy.zzi((SQLiteDatabase) obj, str);
                return null;
            }
        });
    }

    public final void zze(final zzega zzegaVar) {
        zza(new zzfjx() { // from class: com.google.android.gms.internal.ads.zzefv
            @Override // com.google.android.gms.internal.ads.zzfjx
            public final /* synthetic */ Object zza(Object obj) {
                zzefy.this.zzh(zzegaVar, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    final /* synthetic */ Void zzh(zzega zzegaVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("timestamp", Long.valueOf(zzegaVar.zza));
        contentValues.put("gws_query_id", zzegaVar.zzb);
        contentValues.put("url", zzegaVar.zzc);
        contentValues.put("event_state", Integer.valueOf(zzegaVar.zzd - 1));
        sQLiteDatabase.insert("offline_buffered_pings", null, contentValues);
        com.google.android.gms.ads.internal.zzt.zzc();
        Context context = this.zza;
        com.google.android.gms.ads.internal.util.zzbo zzD = com.google.android.gms.ads.internal.util.zzs.zzD(context);
        if (zzD != null) {
            try {
                zzD.zzf(ObjectWrapper.wrap(context));
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.zze.zzb("Failed to schedule offline ping sender.", e);
            }
        }
        return null;
    }
}
