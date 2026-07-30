package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzbbq;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzeax {
    private final zzbbj zza;
    private final Context zzb;
    private final zzeac zzc;
    private final VersionInfoParcel zzd;

    public zzeax(Context context, VersionInfoParcel versionInfoParcel, zzbbj zzbbjVar, zzeac zzeacVar) {
        this.zzb = context;
        this.zzd = versionInfoParcel;
        this.zza = zzbbjVar;
        this.zzc = zzeacVar;
    }

    public final /* synthetic */ Void zza(boolean z, SQLiteDatabase sQLiteDatabase) {
        if (z) {
            this.zzb.deleteDatabase("OfflineUpload.db");
        } else {
            ArrayList arrayList = new ArrayList();
            Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
            while (query.moveToNext()) {
                try {
                    arrayList.add(zzbbq.zzaf.zza.zzx(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
                } catch (zzgyg e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to deserialize proto from offline signals database:");
                    com.google.android.gms.ads.internal.util.client.zzo.zzg(e.getMessage());
                }
            }
            query.close();
            Context context = this.zzb;
            zzbbq.zzaf.zzc zzi = zzbbq.zzaf.zzi();
            zzi.zzv(context.getPackageName());
            zzi.zzy(Build.MODEL);
            zzi.zzA(zzear.zza(sQLiteDatabase, 0));
            zzi.zzh(arrayList);
            zzi.zzE(zzear.zza(sQLiteDatabase, 1));
            zzi.zzx(zzear.zza(sQLiteDatabase, 3));
            zzi.zzF(com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis());
            zzi.zzB(zzear.zzb(sQLiteDatabase, 2));
            final zzbbq.zzaf zzbr = zzi.zzbr();
            int size = arrayList.size();
            long j = 0;
            for (int i = 0; i < size; i++) {
                zzbbq.zzaf.zza zzaVar = (zzbbq.zzaf.zza) arrayList.get(i);
                if (zzaVar.zzk() == zzbbq.zzq.ENUM_TRUE && zzaVar.zze() > j) {
                    j = zzaVar.zze();
                }
            }
            if (j != 0) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("value", Long.valueOf(j));
                sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
            }
            this.zza.zzb(new zzbbi() { // from class: com.google.android.gms.internal.ads.zzeav
                @Override // com.google.android.gms.internal.ads.zzbbi
                public final void zza(zzbbq.zzt.zza zzaVar2) {
                    zzaVar2.zzW(zzbbq.zzaf.this);
                }
            });
            VersionInfoParcel versionInfoParcel = this.zzd;
            zzbbq.zzar.zza zzd = zzbbq.zzar.zzd();
            zzd.zzg(versionInfoParcel.buddyApkVersion);
            zzd.zzi(this.zzd.clientJarVersion);
            zzd.zzh(true != this.zzd.isClientJar ? 2 : 0);
            final zzbbq.zzar zzbr2 = zzd.zzbr();
            this.zza.zzb(new zzbbi() { // from class: com.google.android.gms.internal.ads.zzeaw
                @Override // com.google.android.gms.internal.ads.zzbbi
                public final void zza(zzbbq.zzt.zza zzaVar2) {
                    zzbbq.zzm.zza zzbM = zzaVar2.zzg().zzbM();
                    zzbM.zzw(zzbbq.zzar.this);
                    zzaVar2.zzK(zzbM);
                }
            });
            this.zza.zzc(10004);
            zzear.zze(sQLiteDatabase);
        }
        return null;
    }

    public final void zzb(final boolean z) {
        try {
            this.zzc.zza(new zzffr() { // from class: com.google.android.gms.internal.ads.zzeau
                @Override // com.google.android.gms.internal.ads.zzffr
                public final Object zza(Object obj) {
                    zzeax.this.zza(z, (SQLiteDatabase) obj);
                    return null;
                }
            });
        } catch (Exception e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error in offline signals database startup: ".concat(String.valueOf(e.getMessage())));
        }
    }
}
