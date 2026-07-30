package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import defpackage.Cpublic;

/* loaded from: classes.dex */
final class zzhq {
    private final zzfvf zza;
    private final zzho zzb;
    private zzhp zzc;
    private float zze = 1.0f;
    private int zzd = 0;

    public zzhq(final Context context, Handler handler, zzhp zzhpVar) {
        this.zza = zzfvj.zza(new zzfvf() { // from class: com.google.android.gms.internal.ads.zzhm
            @Override // com.google.android.gms.internal.ads.zzfvf
            public final Object zza() {
                AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
                audioManager.getClass();
                return audioManager;
            }
        });
        this.zzc = zzhpVar;
        this.zzb = new zzho(this, handler);
    }

    public static /* bridge */ /* synthetic */ void zzc(zzhq zzhqVar, int i) {
        if (i == -3 || i == -2) {
            if (i != -2) {
                zzhqVar.zzg(4);
                return;
            } else {
                zzhqVar.zzf(0);
                zzhqVar.zzg(3);
                return;
            }
        }
        if (i == -1) {
            zzhqVar.zzf(-1);
            zzhqVar.zze();
            zzhqVar.zzg(1);
        } else if (i != 1) {
            Cpublic.m7824goto("Unknown focus change type: ", i, "AudioFocusManager");
        } else {
            zzhqVar.zzg(2);
            zzhqVar.zzf(1);
        }
    }

    private final void zze() {
        int i = this.zzd;
        if (i == 1 || i == 0 || zzei.zza >= 26) {
            return;
        }
        ((AudioManager) this.zza.zza()).abandonAudioFocus(this.zzb);
    }

    private final void zzf(int i) {
        int zzS;
        zzhp zzhpVar = this.zzc;
        if (zzhpVar != null) {
            zzS = zzjp.zzS(i);
            zzjp zzjpVar = ((zzjl) zzhpVar).zza;
            zzjpVar.zzae(zzjpVar.zzu(), i, zzS);
        }
    }

    private final void zzg(int i) {
        if (this.zzd == i) {
            return;
        }
        this.zzd = i;
        float f = i == 4 ? 0.2f : 1.0f;
        if (this.zze != f) {
            this.zze = f;
            zzhp zzhpVar = this.zzc;
            if (zzhpVar != null) {
                ((zzjl) zzhpVar).zza.zzab();
            }
        }
    }

    public final float zza() {
        return this.zze;
    }

    public final int zzb(boolean z, int i) {
        zze();
        zzg(0);
        return 1;
    }

    public final void zzd() {
        this.zzc = null;
        zze();
        zzg(0);
    }
}
