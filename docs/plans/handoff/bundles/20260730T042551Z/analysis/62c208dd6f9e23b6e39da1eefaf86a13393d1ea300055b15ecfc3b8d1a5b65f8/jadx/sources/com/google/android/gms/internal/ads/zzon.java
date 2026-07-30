package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzon {
    private final Context zza;
    private final Handler zzb;
    private final zzoj zzc;
    private final BroadcastReceiver zzd;
    private final zzok zze;
    private zzoi zzf;
    private zzoo zzg;
    private zze zzh;
    private boolean zzi;
    private final zzpw zzj;

    /* JADX WARN: Multi-variable type inference failed */
    public zzon(Context context, zzpw zzpwVar, zze zzeVar, zzoo zzooVar) {
        Context applicationContext = context.getApplicationContext();
        this.zza = applicationContext;
        this.zzj = zzpwVar;
        this.zzh = zzeVar;
        this.zzg = zzooVar;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Handler handler = new Handler(zzei.zzz(), null);
        this.zzb = handler;
        this.zzc = zzei.zza >= 23 ? new zzoj(this, objArr2 == true ? 1 : 0) : null;
        this.zzd = new zzol(this, objArr == true ? 1 : 0);
        Uri zza = zzoi.zza();
        this.zze = zza != null ? new zzok(this, handler, applicationContext.getContentResolver(), zza) : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzj(zzoi zzoiVar) {
        if (!this.zzi || zzoiVar.equals(this.zzf)) {
            return;
        }
        this.zzf = zzoiVar;
        this.zzj.zza.zzJ(zzoiVar);
    }

    public final zzoi zzc() {
        zzoj zzojVar;
        if (this.zzi) {
            zzoi zzoiVar = this.zzf;
            zzoiVar.getClass();
            return zzoiVar;
        }
        this.zzi = true;
        zzok zzokVar = this.zze;
        if (zzokVar != null) {
            zzokVar.zza();
        }
        if (zzei.zza >= 23 && (zzojVar = this.zzc) != null) {
            Context context = this.zza;
            Handler handler = this.zzb;
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            audioManager.getClass();
            audioManager.registerAudioDeviceCallback(zzojVar, handler);
        }
        zzoi zzd = zzoi.zzd(this.zza, this.zza.registerReceiver(this.zzd, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, this.zzb), this.zzh, this.zzg);
        this.zzf = zzd;
        return zzd;
    }

    public final void zzg(zze zzeVar) {
        this.zzh = zzeVar;
        zzj(zzoi.zzc(this.zza, zzeVar, this.zzg));
    }

    public final void zzh(AudioDeviceInfo audioDeviceInfo) {
        zzoo zzooVar = this.zzg;
        if (Objects.equals(audioDeviceInfo, zzooVar == null ? null : zzooVar.zza)) {
            return;
        }
        zzoo zzooVar2 = audioDeviceInfo != null ? new zzoo(audioDeviceInfo) : null;
        this.zzg = zzooVar2;
        zzj(zzoi.zzc(this.zza, this.zzh, zzooVar2));
    }

    public final void zzi() {
        zzoj zzojVar;
        if (this.zzi) {
            this.zzf = null;
            if (zzei.zza >= 23 && (zzojVar = this.zzc) != null) {
                AudioManager audioManager = (AudioManager) this.zza.getSystemService("audio");
                audioManager.getClass();
                audioManager.unregisterAudioDeviceCallback(zzojVar);
            }
            this.zza.unregisterReceiver(this.zzd);
            zzok zzokVar = this.zze;
            if (zzokVar != null) {
                zzokVar.zzb();
            }
            this.zzi = false;
        }
    }
}
