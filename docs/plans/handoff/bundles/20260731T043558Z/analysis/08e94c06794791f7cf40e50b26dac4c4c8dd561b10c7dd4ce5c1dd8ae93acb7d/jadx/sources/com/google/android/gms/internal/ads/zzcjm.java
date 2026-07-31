package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcjm implements zzawv {
    private final Context zza;
    private final zzfxp zzb;

    zzcjm(Context context, VersionInfoParcel versionInfoParcel) {
        this.zza = context;
        int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdg)).intValue();
        int i = intValue != 1 ? (intValue == 2 || intValue != 3) ? 3 : 4 : 2;
        zzfyk zze = zzfyl.zze();
        zze.zza(((Float) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdn)).floatValue());
        zzfyl zzfylVar = (zzfyl) zze.zzbu();
        zzfym zze2 = zzfyn.zze();
        zze2.zza(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdo)).booleanValue());
        zze2.zzb(((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdq)).longValue());
        zzfyn zzfynVar = (zzfyn) zze2.zzbu();
        zzfxs zzs = zzfxt.zzs();
        zzs.zzi(i);
        zzs.zzb(versionInfoParcel.afmaVersion);
        zzs.zza(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcK)).booleanValue());
        zzs.zzh(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdd)).intValue() == -1);
        zzs.zzg(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdf)).intValue());
        zzs.zze(((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzdp)).longValue());
        zzs.zzd(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzde)).intValue());
        zzs.zzc(zzfylVar);
        zzs.zzf(zzfynVar);
        zzfxp zza = zzfxp.zza(context, zzcbv.zza, (zzfxt) zzs.zzbu());
        this.zzb = zza;
        zza.zzb();
    }

    public final String zza() {
        int zzh = this.zzb.zzh() - 1;
        return zzh != 1 ? zzh != 2 ? zzh != 3 ? "uns" : "3.0" : "2.0" : "1.0";
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final void zzd(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return;
        }
        this.zzb.zzg(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    @Deprecated
    public final void zze(int i, int i2, int i3) {
        com.google.android.gms.ads.internal.client.zzbb.zza();
        Context context = this.zza;
        float zzC = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i);
        com.google.android.gms.ads.internal.client.zzbb.zza();
        float zzC2 = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i2);
        zzfxp zzfxpVar = this.zzb;
        long j = i3;
        MotionEvent obtain = MotionEvent.obtain(0L, j, 0, zzC, zzC2, 0);
        zzfxpVar.zzg(obtain);
        obtain.recycle();
        com.google.android.gms.ads.internal.client.zzbb.zza();
        float zzC3 = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i);
        com.google.android.gms.ads.internal.client.zzbb.zza();
        MotionEvent obtain2 = MotionEvent.obtain(0L, j, 2, zzC3, com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i2), 0);
        zzfxpVar.zzg(obtain2);
        obtain2.recycle();
        com.google.android.gms.ads.internal.client.zzbb.zza();
        float zzC4 = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i);
        com.google.android.gms.ads.internal.client.zzbb.zza();
        MotionEvent obtain3 = MotionEvent.obtain(0L, j, 1, zzC4, com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i2), 0);
        zzfxpVar.zzg(obtain3);
        obtain3.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final String zzf(Context context, String str, View view, Activity activity) {
        return this.zzb.zze(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final String zzg(Context context, String str, View view) {
        return this.zzb.zze(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final void zzh(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final void zzi(StackTraceElement[] stackTraceElementArr) {
        this.zzb.zzf(Arrays.asList(stackTraceElementArr));
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final String zzj(Context context, View view, Activity activity) {
        return this.zzb.zzd(context, null, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final String zzk(Context context) {
        return this.zzb.zzc(context);
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final String zzl(Context context) {
        return this.zzb.zzc(context);
    }
}
