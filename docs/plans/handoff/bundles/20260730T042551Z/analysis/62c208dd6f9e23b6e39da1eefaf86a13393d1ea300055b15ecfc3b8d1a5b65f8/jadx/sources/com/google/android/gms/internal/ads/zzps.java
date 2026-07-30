package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;

/* loaded from: classes.dex */
public final class zzps {
    private final Context zza;
    private Boolean zzb;

    public zzps() {
        this.zza = null;
    }

    public zzps(Context context) {
        this.zza = context;
    }

    public final zzor zza(zzab zzabVar, zze zzeVar) {
        boolean booleanValue;
        boolean isOffloadedPlaybackSupported;
        int playbackOffloadSupport;
        zzabVar.getClass();
        zzeVar.getClass();
        int i = zzei.zza;
        if (i < 29 || zzabVar.zzE == -1) {
            return zzor.zza;
        }
        Context context = this.zza;
        Boolean bool = this.zzb;
        boolean z = false;
        if (bool != null) {
            booleanValue = bool.booleanValue();
        } else {
            if (context != null) {
                AudioManager audioManager = (AudioManager) context.getSystemService("audio");
                if (audioManager != null) {
                    String parameters = audioManager.getParameters("offloadVariableRateSupported");
                    this.zzb = Boolean.valueOf(parameters != null && parameters.equals("offloadVariableRateSupported=1"));
                } else {
                    this.zzb = Boolean.FALSE;
                }
            } else {
                this.zzb = Boolean.FALSE;
            }
            booleanValue = this.zzb.booleanValue();
        }
        String str = zzabVar.zzo;
        str.getClass();
        int zza = zzbb.zza(str, zzabVar.zzk);
        if (zza == 0 || i < zzei.zzh(zza)) {
            return zzor.zza;
        }
        int zzi = zzei.zzi(zzabVar.zzD);
        if (zzi == 0) {
            return zzor.zza;
        }
        try {
            AudioFormat zzx = zzei.zzx(zzabVar.zzE, zzi, zza);
            if (i < 31) {
                isOffloadedPlaybackSupported = AudioManager.isOffloadedPlaybackSupported(zzx, zzeVar.zza().zza);
                if (!isOffloadedPlaybackSupported) {
                    return zzor.zza;
                }
                zzop zzopVar = new zzop();
                zzopVar.zza(true);
                zzopVar.zzc(booleanValue);
                return zzopVar.zzd();
            }
            playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(zzx, zzeVar.zza().zza);
            if (playbackOffloadSupport == 0) {
                return zzor.zza;
            }
            zzop zzopVar2 = new zzop();
            if (i > 32 && playbackOffloadSupport == 2) {
                z = true;
            }
            zzopVar2.zza(true);
            zzopVar2.zzb(z);
            zzopVar2.zzc(booleanValue);
            return zzopVar2.zzd();
        } catch (IllegalArgumentException unused) {
            return zzor.zza;
        }
    }
}
