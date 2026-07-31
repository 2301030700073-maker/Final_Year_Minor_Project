package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import androidx.media3.common.MimeTypes;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzery implements zzeya {
    private final zzgus zza;
    private final Context zzb;

    public zzery(zzgus zzgusVar, Context context) {
        this.zza = zzgusVar;
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final ListenableFuture zza() {
        return this.zza.submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzerx
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzery.this.zzc();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeya
    public final int zzb() {
        return 13;
    }

    final /* synthetic */ zzerz zzc() {
        int i;
        int i2;
        AudioManager audioManager = (AudioManager) this.zzb.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        float zzb = com.google.android.gms.ads.internal.zzt.zzi().zzb();
        boolean zzd = com.google.android.gms.ads.internal.zzt.zzi().zzd();
        if (audioManager == null) {
            return new zzerz(-1, false, false, -1, -1, -1, -1, -1, zzb, zzd, true);
        }
        int mode = audioManager.getMode();
        boolean isMusicActive = audioManager.isMusicActive();
        boolean isSpeakerphoneOn = audioManager.isSpeakerphoneOn();
        int streamVolume = audioManager.getStreamVolume(3);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlY)).booleanValue()) {
            int zzk = com.google.android.gms.ads.internal.zzt.zzf().zzk(audioManager);
            i2 = audioManager.getStreamMaxVolume(3);
            i = zzk;
        } else {
            i = -1;
            i2 = -1;
        }
        return new zzerz(mode, isMusicActive, isSpeakerphoneOn, streamVolume, i, i2, audioManager.getRingerMode(), audioManager.getStreamVolume(2), zzb, zzd, false);
    }
}
