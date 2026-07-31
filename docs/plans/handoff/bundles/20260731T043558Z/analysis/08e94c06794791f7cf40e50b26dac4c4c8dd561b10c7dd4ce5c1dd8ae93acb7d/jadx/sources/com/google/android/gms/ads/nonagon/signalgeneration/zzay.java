package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzbdz;
import com.google.android.gms.internal.ads.zzcaw;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzay {
    private final String zza;
    private final String zzb;
    private final zzcaw zzc;

    /* synthetic */ zzay(zzax zzaxVar, byte[] bArr) {
        this.zza = zzaxVar.zzd();
        this.zzb = zzaxVar.zze();
        this.zzc = zzaxVar.zzf();
    }

    public final Set zza() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.zza.toLowerCase(Locale.ROOT));
        return hashSet;
    }

    public final String zzb() {
        return this.zza.toLowerCase(Locale.ROOT);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final zzbdz.zza.EnumC0014zza zzc() {
        char c;
        String str = this.zza;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        return c != 0 ? c != 1 ? c != 2 ? c != 3 ? zzbdz.zza.EnumC0014zza.AD_INITIATER_UNSPECIFIED : zzbdz.zza.EnumC0014zza.REWARD_BASED_VIDEO_AD : zzbdz.zza.EnumC0014zza.AD_LOADER : zzbdz.zza.EnumC0014zza.INTERSTITIAL : zzbdz.zza.EnumC0014zza.BANNER;
    }

    final String zzd() {
        return this.zzb;
    }

    final zzcaw zze() {
        return this.zzc;
    }
}
