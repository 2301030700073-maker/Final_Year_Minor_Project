package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.IOException;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdwm {
    public final long zza;
    public final int[] zzb;

    private zzdwm(long j, int[] iArr) {
        this.zza = j;
        this.zzb = iArr;
    }

    public static zzgpe zza(JsonReader jsonReader) throws IOException {
        int[] iArr;
        int i = zzgpe.zzd;
        zzgpb zzgpbVar = new zzgpb();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            zzgpe zzi = zzgpe.zzi();
            jsonReader.beginObject();
            zzdwm zzdwmVar = null;
            Long l = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (Objects.equals(nextName, "id")) {
                    l = Long.valueOf(jsonReader.nextLong());
                } else if (Objects.equals(nextName, "event_types")) {
                    zzgpb zzgpbVar2 = new zzgpb();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        zzgpbVar2.zzf(Integer.valueOf(jsonReader.nextInt()));
                    }
                    jsonReader.endArray();
                    zzi = zzgpbVar2.zzi();
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            if (l != null && !zzi.isEmpty()) {
                long longValue = l.longValue();
                if (zzi == null) {
                    iArr = new int[0];
                } else {
                    int[] iArr2 = new int[zzi.size()];
                    for (int i2 = 0; i2 < zzi.size(); i2++) {
                        iArr2[i2] = ((Integer) zzi.get(i2)).intValue();
                    }
                    iArr = iArr2;
                }
                zzdwmVar = new zzdwm(longValue, iArr);
            }
            if (zzdwmVar != null) {
                zzgpbVar.zzf(zzdwmVar);
            }
        }
        jsonReader.endArray();
        return zzgpbVar.zzi();
    }
}
