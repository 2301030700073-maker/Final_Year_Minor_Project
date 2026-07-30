package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzoj extends AudioDeviceCallback {
    final /* synthetic */ zzon zza;

    public /* synthetic */ zzoj(zzon zzonVar, zzom zzomVar) {
        this.zza = zzonVar;
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
        Context context;
        zze zzeVar;
        zzoo zzooVar;
        zzon zzonVar = this.zza;
        context = zzonVar.zza;
        zzeVar = zzonVar.zzh;
        zzooVar = zzonVar.zzg;
        this.zza.zzj(zzoi.zzc(context, zzeVar, zzooVar));
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
        zzoo zzooVar;
        Context context;
        zze zzeVar;
        zzoo zzooVar2;
        zzooVar = this.zza.zzg;
        int i = zzei.zza;
        int length = audioDeviceInfoArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            if (Objects.equals(audioDeviceInfoArr[i2], zzooVar)) {
                this.zza.zzg = null;
                break;
            }
            i2++;
        }
        zzon zzonVar = this.zza;
        context = zzonVar.zza;
        zzeVar = zzonVar.zzh;
        zzooVar2 = zzonVar.zzg;
        zzonVar.zzj(zzoi.zzc(context, zzeVar, zzooVar2));
    }
}
