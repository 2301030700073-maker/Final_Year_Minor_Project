package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbum extends zzbun implements zzblx {
    DisplayMetrics zza;
    int zzb;
    int zzc;
    int zzd;
    int zze;
    int zzf;
    int zzg;
    private final zzcgy zzh;
    private final Context zzi;
    private final WindowManager zzj;
    private final zzbeb zzk;
    private float zzl;
    private int zzm;

    public zzbum(zzcgy zzcgyVar, Context context, zzbeb zzbebVar) {
        super(zzcgyVar, "");
        this.zzb = -1;
        this.zzc = -1;
        this.zzd = -1;
        this.zze = -1;
        this.zzf = -1;
        this.zzg = -1;
        this.zzh = zzcgyVar;
        this.zzi = context;
        this.zzk = zzbebVar;
        this.zzj = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.internal.ads.zzblx
    public final /* synthetic */ void zza(Object obj, Map map) {
        JSONObject jSONObject;
        this.zza = new DisplayMetrics();
        Display defaultDisplay = this.zzj.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zza);
        this.zzl = this.zza.density;
        this.zzm = defaultDisplay.getRotation();
        com.google.android.gms.ads.internal.client.zzbb.zza();
        DisplayMetrics displayMetrics = this.zza;
        this.zzb = com.google.android.gms.ads.internal.util.client.zzf.zzA(displayMetrics, displayMetrics.widthPixels);
        com.google.android.gms.ads.internal.client.zzbb.zza();
        DisplayMetrics displayMetrics2 = this.zza;
        this.zzc = com.google.android.gms.ads.internal.util.client.zzf.zzA(displayMetrics2, displayMetrics2.heightPixels);
        zzcgy zzcgyVar = this.zzh;
        Activity zzj = zzcgyVar.zzj();
        if (zzj == null || zzj.getWindow() == null) {
            this.zzd = this.zzb;
            this.zze = this.zzc;
        } else {
            com.google.android.gms.ads.internal.zzt.zzc();
            int[] zzW = com.google.android.gms.ads.internal.util.zzs.zzW(zzj);
            com.google.android.gms.ads.internal.client.zzbb.zza();
            this.zzd = com.google.android.gms.ads.internal.util.client.zzf.zzA(this.zza, zzW[0]);
            com.google.android.gms.ads.internal.client.zzbb.zza();
            this.zze = com.google.android.gms.ads.internal.util.client.zzf.zzA(this.zza, zzW[1]);
        }
        if (zzcgyVar.zzN().zzg()) {
            this.zzf = this.zzb;
            this.zzg = this.zzc;
        } else {
            zzcgyVar.measure(0, 0);
        }
        zzl(this.zzb, this.zzc, this.zzd, this.zze, this.zzl, this.zzm);
        zzbul zzbulVar = new zzbul();
        zzbeb zzbebVar = this.zzk;
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        zzbulVar.zzb(zzbebVar.zzc(intent));
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        zzbulVar.zza(zzbebVar.zzc(intent2));
        zzbulVar.zzc(zzbebVar.zzb());
        zzbulVar.zzd(zzbebVar.zza());
        zzbulVar.zze(true);
        boolean zzf = zzbulVar.zzf();
        boolean zzg = zzbulVar.zzg();
        boolean zzh = zzbulVar.zzh();
        boolean zzi = zzbulVar.zzi();
        try {
            jSONObject = new JSONObject().put("sms", zzf).put("tel", zzg).put("calendar", zzh).put("storePicture", zzi).put("inlineVideo", zzbulVar.zzj());
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error occurred while obtaining the MRAID capabilities.", e);
            jSONObject = null;
        }
        zzcgyVar.zzd("onDeviceFeaturesReceived", jSONObject);
        int[] iArr = new int[2];
        zzcgyVar.getLocationOnScreen(iArr);
        Context context = this.zzi;
        zzb(com.google.android.gms.ads.internal.client.zzbb.zza().zza(context, iArr[0]), com.google.android.gms.ads.internal.client.zzbb.zza().zza(context, iArr[1]));
        if (com.google.android.gms.ads.internal.util.zze.zzm(2)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Dispatching Ready Event.");
        }
        zzh(zzcgyVar.zzs().afmaVersion);
    }

    public final void zzb(int i, int i2) {
        int i3;
        Context context = this.zzi;
        int i4 = 0;
        if (context instanceof Activity) {
            com.google.android.gms.ads.internal.zzt.zzc();
            i3 = com.google.android.gms.ads.internal.util.zzs.zzX((Activity) context)[0];
        } else {
            i3 = 0;
        }
        zzcgy zzcgyVar = this.zzh;
        if (zzcgyVar.zzN() == null || !zzcgyVar.zzN().zzg()) {
            int width = zzcgyVar.getWidth();
            int height = zzcgyVar.getHeight();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzal)).booleanValue()) {
                if (width == 0) {
                    width = zzcgyVar.zzN() != null ? zzcgyVar.zzN().zzb : 0;
                }
                if (height == 0) {
                    if (zzcgyVar.zzN() != null) {
                        i4 = zzcgyVar.zzN().zza;
                    }
                    this.zzf = com.google.android.gms.ads.internal.client.zzbb.zza().zza(context, width);
                    this.zzg = com.google.android.gms.ads.internal.client.zzbb.zza().zza(context, i4);
                }
            }
            i4 = height;
            this.zzf = com.google.android.gms.ads.internal.client.zzbb.zza().zza(context, width);
            this.zzg = com.google.android.gms.ads.internal.client.zzbb.zza().zza(context, i4);
        }
        zzj(i, i2 - i3, this.zzf, this.zzg);
        zzcgyVar.zzP().zzN(i, i2);
    }
}
