package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzbdz;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzefm {
    private final zzbdt zza;
    private final Context zzb;
    private final zzeer zzc;
    private final VersionInfoParcel zzd;

    public zzefm(Context context, VersionInfoParcel versionInfoParcel, zzbdt zzbdtVar, zzeer zzeerVar) {
        this.zzb = context;
        this.zzd = versionInfoParcel;
        this.zza = zzbdtVar;
        this.zzc = zzeerVar;
    }

    public final void zza(final boolean z) {
        try {
            this.zzc.zza(new zzfjx() { // from class: com.google.android.gms.internal.ads.zzefl
                @Override // com.google.android.gms.internal.ads.zzfjx
                public final /* synthetic */ Object zza(Object obj) {
                    zzefm.this.zzb(z, (SQLiteDatabase) obj);
                    return null;
                }
            });
        } catch (Exception e) {
            String message = e.getMessage();
            String.valueOf(message);
            String valueOf = String.valueOf(message);
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Error in offline signals database startup: ".concat(valueOf));
        }
    }

    final /* synthetic */ Void zzb(boolean z, SQLiteDatabase sQLiteDatabase) {
        if (z) {
            this.zzb.deleteDatabase("OfflineUpload.db");
        } else {
            ArrayList arrayList = new ArrayList();
            Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
            while (query.moveToNext()) {
                try {
                    arrayList.add(zzbdz.zzaf.zza.zzk(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
                } catch (zzhxd e) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzf("Unable to deserialize proto from offline signals database:");
                    com.google.android.gms.ads.internal.util.client.zzo.zzf(e.getMessage());
                }
            }
            query.close();
            Context context = this.zzb;
            zzbdz.zzaf.zzc zzB = zzbdz.zzaf.zzB();
            zzB.zzB(context.getPackageName());
            zzB.zzH(Build.MODEL);
            zzB.zzo(zzefg.zzc(sQLiteDatabase, 0));
            zzB.zzj(arrayList);
            zzB.zzs(zzefg.zzc(sQLiteDatabase, 1));
            zzB.zzQ(zzefg.zzc(sQLiteDatabase, 3));
            zzB.zzw(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
            zzB.zzM(zzefg.zzd(sQLiteDatabase, 2));
            final zzbdz.zzaf zzbu = zzB.zzbu();
            int size = arrayList.size();
            long j = 0;
            for (int i2 = 0; i2 < size; i2++) {
                zzbdz.zzaf.zza zzaVar = (zzbdz.zzaf.zza) arrayList.get(i2);
                if (zzaVar.zzf() == zzbdz.zzq.ENUM_TRUE && zzaVar.zzb() > j) {
                    j = zzaVar.zzb();
                }
            }
            if (j != 0) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("value", Long.valueOf(j));
                sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
            }
            zzbdt zzbdtVar = this.zza;
            zzbdtVar.zzb(new zzbds() { // from class: com.google.android.gms.internal.ads.zzefj
                @Override // com.google.android.gms.internal.ads.zzbds
                public final /* synthetic */ void zza(zzbdz.zzt.zza zzaVar2) {
                    zzaVar2.zzaf(zzbdz.zzaf.this);
                }
            });
            VersionInfoParcel versionInfoParcel = this.zzd;
            zzbdz.zzar.zza zzs = zzbdz.zzar.zzs();
            zzs.zzc(versionInfoParcel.buddyApkVersion);
            zzs.zzg(versionInfoParcel.clientJarVersion);
            zzs.zzk(true != versionInfoParcel.isClientJar ? 2 : 0);
            final zzbdz.zzar zzbu2 = zzs.zzbu();
            zzbdtVar.zzb(new zzbds() { // from class: com.google.android.gms.internal.ads.zzefk
                @Override // com.google.android.gms.internal.ads.zzbds
                public final /* synthetic */ void zza(zzbdz.zzt.zza zzaVar2) {
                    zzbdz.zzm.zza zzcc = zzaVar2.zzG().zzcc();
                    zzcc.zzs(zzbdz.zzar.this);
                    zzaVar2.zzI(zzcc);
                }
            });
            zzbdtVar.zzc(10004);
            zzefg.zzb(sQLiteDatabase);
        }
        return null;
    }
}
