package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Looper;
import androidx.media3.common.MimeTypes;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcb {
    private static AudioManager zza;

    public static synchronized AudioManager zza(Context context) {
        synchronized (zzcb.class) {
            final Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                zza = null;
            }
            AudioManager audioManager = zza;
            if (audioManager != null) {
                return audioManager;
            }
            Looper myLooper = Looper.myLooper();
            if (myLooper != null && myLooper != Looper.getMainLooper()) {
                final zzdf zzdfVar = new zzdf(zzdc.zza);
                zzcw.zza().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzca
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzcb.zzd(applicationContext, zzdfVar);
                    }
                });
                zzdfVar.zzd();
                AudioManager audioManager2 = zza;
                if (audioManager2 == null) {
                    throw null;
                }
                AudioManager audioManager3 = audioManager2;
                return audioManager2;
            }
            AudioManager audioManager4 = (AudioManager) applicationContext.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            zza = audioManager4;
            if (audioManager4 == null) {
                throw null;
            }
            AudioManager audioManager5 = audioManager4;
            return audioManager4;
        }
    }

    public static int zzb(AudioManager audioManager, zzbz zzbzVar) {
        if (Build.VERSION.SDK_INT >= 26) {
            return audioManager.requestAudioFocus(zzbzVar.zzc());
        }
        AudioManager.OnAudioFocusChangeListener zzb = zzbzVar.zzb();
        zzbzVar.zza();
        return audioManager.requestAudioFocus(zzb, 3, 1);
    }

    public static int zzc(AudioManager audioManager, zzbz zzbzVar) {
        return Build.VERSION.SDK_INT >= 26 ? audioManager.abandonAudioFocusRequest(zzbzVar.zzc()) : audioManager.abandonAudioFocus(zzbzVar.zzb());
    }

    static /* synthetic */ void zzd(Context context, zzdf zzdfVar) {
        zza = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        zzdfVar.zza();
    }
}
