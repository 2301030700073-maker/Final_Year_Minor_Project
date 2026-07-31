package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzalq implements zzaki {
    private final zzeg zza = new zzeg();

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(byte[] bArr, int i, int i2, zzakh zzakhVar, zzdg zzdgVar) {
        zzcm zzr;
        zzeg zzegVar = this.zza;
        zzegVar.zzb(bArr, i2 + i);
        zzegVar.zzh(i);
        ArrayList arrayList = new ArrayList();
        while (zzegVar.zzd() > 0) {
            zzgmd.zzb(zzegVar.zzd() >= 8, "Incomplete Mp4Webvtt Top Level box header found.");
            int zzB = zzegVar.zzB() - 8;
            if (zzegVar.zzB() == 1987343459) {
                CharSequence charSequence = null;
                zzcl zzclVar = null;
                while (zzB > 0) {
                    zzgmd.zzb(zzB >= 8, "Incomplete vtt cue box header found.");
                    int zzB2 = zzegVar.zzB();
                    int zzB3 = zzegVar.zzB();
                    int i3 = zzB - 8;
                    int i4 = zzB2 - 8;
                    String zzj = zzep.zzj(zzegVar.zzi(), zzegVar.zzg(), i4);
                    zzegVar.zzk(i4);
                    if (zzB3 == 1937011815) {
                        zzclVar = zzalz.zzb(zzj);
                    } else if (zzB3 == 1885436268) {
                        charSequence = zzalz.zzc(null, zzj.trim(), Collections.emptyList());
                    }
                    zzB = i3 - i4;
                }
                if (charSequence == null) {
                    charSequence = "";
                }
                if (zzclVar != null) {
                    zzclVar.zza(charSequence);
                    zzr = zzclVar.zzr();
                } else {
                    Pattern pattern = zzalz.zza;
                    zzaly zzalyVar = new zzaly();
                    zzalyVar.zzc = charSequence;
                    zzr = zzalyVar.zza().zzr();
                }
                arrayList.add(zzr);
            } else {
                zzegVar.zzk(zzB);
            }
        }
        zzdgVar.zza(new zzaka(arrayList, C.TIME_UNSET, C.TIME_UNSET));
    }
}
