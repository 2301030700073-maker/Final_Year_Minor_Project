package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import androidx.media3.common.PlaybackException;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import io.sentry.Session;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfta implements zzfrv {
    private final Object zza;
    private final zzftb zzb;
    private final zzftm zzc;
    private final zzfrs zzd;
    private final boolean zze;

    zzfta(Object obj, zzftb zzftbVar, zzftm zzftmVar, zzfrs zzfrsVar, boolean z) {
        this.zza = obj;
        this.zzb = zzftbVar;
        this.zzc = zzftmVar;
        this.zzd = zzfrsVar;
        this.zze = z;
    }

    private static String zzi(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        zzavp zza = zzavq.zza();
        zza.zzd(5);
        zza.zza(zzhvi.zzr(bArr, 0, bArr.length));
        return Base64.encodeToString(((zzavq) zza.zzbu()).zzaN(), 11);
    }

    private final synchronized byte[] zzj(Map map, Map map2) {
        Object obj;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            obj = this.zza;
        } catch (Exception e) {
            this.zzd.zzc(PlaybackException.ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED, System.currentTimeMillis() - currentTimeMillis, e);
            return null;
        }
        return (byte[]) obj.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(obj, null, map2);
    }

    @Override // com.google.android.gms.internal.ads.zzfrv
    public final synchronized String zza(Context context, String str) {
        byte[] zzj;
        Map zzb = this.zzc.zzb();
        zzb.put("f", "q");
        zzb.put("ctx", context);
        zzb.put("aid", null);
        zzj = zzj(null, zzb);
        if (this.zze) {
            zzb.clear();
        }
        return zzi(zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzfrv
    public final synchronized String zzb(Context context, String str, View view, Activity activity) {
        byte[] zzj;
        Map zzc = this.zzc.zzc();
        zzc.put("f", "v");
        zzc.put("ctx", context);
        zzc.put("aid", null);
        zzc.put(ViewHierarchyConstants.VIEW_KEY, view);
        zzc.put("act", activity);
        zzj = zzj(null, zzc);
        if (this.zze) {
            zzc.clear();
        }
        return zzi(zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzfrv
    public final synchronized String zzc(Context context, String str, String str2, View view, Activity activity) {
        byte[] zzj;
        Map zzd = this.zzc.zzd();
        zzd.put("f", "c");
        zzd.put("ctx", context);
        zzd.put("cs", str2);
        zzd.put("aid", null);
        zzd.put(ViewHierarchyConstants.VIEW_KEY, view);
        zzd.put("act", activity);
        zzj = zzj(null, zzd);
        if (this.zze) {
            zzd.clear();
        }
        return zzi(zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzfrv
    public final synchronized void zzd(String str, MotionEvent motionEvent) throws zzftk {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            Map zze = this.zzc.zze();
            zze.put("aid", null);
            zze.put("evt", motionEvent);
            Object obj = this.zza;
            obj.getClass().getDeclaredMethod("he", Map.class).invoke(obj, zze);
            this.zzd.zzb(3003, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e) {
            throw new zzftk(PlaybackException.ERROR_CODE_IO_FILE_NOT_FOUND, e);
        }
    }

    final zzftb zze() {
        return this.zzb;
    }

    final synchronized boolean zzf() throws zzftk {
        Object obj;
        try {
            obj = this.zza;
        } catch (Exception e) {
            throw new zzftk(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED, e);
        }
        return ((Boolean) obj.getClass().getDeclaredMethod(Session.JsonKeys.INIT, new Class[0]).invoke(obj, new Object[0])).booleanValue();
    }

    public final synchronized void zzg() throws zzftk {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            Object obj = this.zza;
            obj.getClass().getDeclaredMethod("close", new Class[0]).invoke(obj, new Object[0]);
            this.zzd.zzb(3001, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e) {
            throw new zzftk(PlaybackException.ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE, e);
        }
    }

    public final synchronized int zzh() throws zzftk {
        Object obj;
        try {
            obj = this.zza;
        } catch (Exception e) {
            throw new zzftk(PlaybackException.ERROR_CODE_IO_NO_PERMISSION, e);
        }
        return ((Integer) obj.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(obj, new Object[0])).intValue();
    }
}
