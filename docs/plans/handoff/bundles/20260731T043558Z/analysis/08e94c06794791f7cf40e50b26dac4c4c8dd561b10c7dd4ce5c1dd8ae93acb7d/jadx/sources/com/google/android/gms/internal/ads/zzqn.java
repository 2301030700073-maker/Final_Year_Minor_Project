package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.os.Build;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzqn {
    private final Context zza;
    private Boolean zzb;

    public zzqn() {
        this(null);
    }

    public zzqn(Context context) {
        this.zza = context == null ? null : context.getApplicationContext();
    }

    public final zzpl zza(zzv zzvVar, zzd zzdVar) {
        int i;
        boolean booleanValue;
        zzvVar.getClass();
        zzdVar.getClass();
        if (Build.VERSION.SDK_INT < 29 || (i = zzvVar.zzH) == -1) {
            return zzpl.zza;
        }
        Context context = this.zza;
        Boolean bool = this.zzb;
        boolean z = false;
        if (bool != null) {
            booleanValue = bool.booleanValue();
        } else {
            if (context != null) {
                String parameters = zzcb.zza(context).getParameters("offloadVariableRateSupported");
                this.zzb = Boolean.valueOf(parameters != null && parameters.equals("offloadVariableRateSupported=1"));
            } else {
                this.zzb = false;
            }
            booleanValue = this.zzb.booleanValue();
        }
        String str = zzvVar.zzo;
        str.getClass();
        int zzh = zzas.zzh(str, zzvVar.zzk);
        if (zzh == 0 || Build.VERSION.SDK_INT < zzep.zzD(zzh)) {
            return zzpl.zza;
        }
        int zzB = zzep.zzB(zzvVar.zzG);
        if (zzB == 0) {
            return zzpl.zza;
        }
        try {
            AudioFormat zzC = zzep.zzC(i, zzB, zzh);
            if (Build.VERSION.SDK_INT < 31) {
                if (!AudioManager.isOffloadedPlaybackSupported(zzC, zzdVar.zza())) {
                    return zzpl.zza;
                }
                zzpk zzpkVar = new zzpk();
                zzpkVar.zza(true);
                zzpkVar.zzc(booleanValue);
                return zzpkVar.zzd();
            }
            int playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(zzC, zzdVar.zza());
            if (playbackOffloadSupport == 0) {
                return zzpl.zza;
            }
            zzpk zzpkVar2 = new zzpk();
            if (Build.VERSION.SDK_INT > 32 && playbackOffloadSupport == 2) {
                z = true;
            }
            zzpkVar2.zza(true);
            zzpkVar2.zzb(z);
            zzpkVar2.zzc(booleanValue);
            return zzpkVar2.zzd();
        } catch (IllegalArgumentException unused) {
            return zzpl.zza;
        }
    }
}
