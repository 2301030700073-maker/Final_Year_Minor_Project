package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbsh extends zzbsi implements zzbjp {
    DisplayMetrics zza;
    int zzb;
    int zzc;
    int zzd;
    int zze;
    int zzf;
    int zzg;
    private final zzcex zzh;
    private final Context zzi;
    private final WindowManager zzj;
    private final zzbbt zzk;
    private float zzl;
    private int zzm;

    public zzbsh(zzcex zzcexVar, Context context, zzbbt zzbbtVar) {
        super(zzcexVar, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        this.zzb = -1;
        this.zzc = -1;
        this.zzd = -1;
        this.zze = -1;
        this.zzf = -1;
        this.zzg = -1;
        this.zzh = zzcexVar;
        this.zzi = context;
        this.zzk = zzbbtVar;
        this.zzj = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* synthetic */ void zza(Object obj, Map map) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        JSONObject jSONObject;
        this.zza = new DisplayMetrics();
        Display defaultDisplay = this.zzj.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zza);
        this.zzl = this.zza.density;
        this.zzm = defaultDisplay.getRotation();
        com.google.android.gms.ads.internal.client.zzbc.zzb();
        DisplayMetrics displayMetrics = this.zza;
        this.zzb = com.google.android.gms.ads.internal.util.client.zzf.zzv(displayMetrics, displayMetrics.widthPixels);
        com.google.android.gms.ads.internal.client.zzbc.zzb();
        DisplayMetrics displayMetrics2 = this.zza;
        this.zzc = com.google.android.gms.ads.internal.util.client.zzf.zzv(displayMetrics2, displayMetrics2.heightPixels);
        Activity zzi = this.zzh.zzi();
        if (zzi == null || zzi.getWindow() == null) {
            this.zzd = this.zzb;
            this.zze = this.zzc;
        } else {
            com.google.android.gms.ads.internal.zzv.zzq();
            int[] zzQ = com.google.android.gms.ads.internal.util.zzs.zzQ(zzi);
            com.google.android.gms.ads.internal.client.zzbc.zzb();
            this.zzd = com.google.android.gms.ads.internal.util.client.zzf.zzv(this.zza, zzQ[0]);
            com.google.android.gms.ads.internal.client.zzbc.zzb();
            this.zze = com.google.android.gms.ads.internal.util.client.zzf.zzv(this.zza, zzQ[1]);
        }
        if (this.zzh.zzO().zzi()) {
            this.zzf = this.zzb;
            this.zzg = this.zzc;
        } else {
            this.zzh.measure(0, 0);
        }
        zzj(this.zzb, this.zzc, this.zzd, this.zze, this.zzl, this.zzm);
        zzbsg zzbsgVar = new zzbsg();
        zzbbt zzbbtVar = this.zzk;
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        zzbsgVar.zze(zzbbtVar.zza(intent));
        zzbbt zzbbtVar2 = this.zzk;
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        zzbsgVar.zzc(zzbbtVar2.zza(intent2));
        zzbsgVar.zza(this.zzk.zzb());
        zzbsgVar.zzd(this.zzk.zzc());
        zzbsgVar.zzb(true);
        z = zzbsgVar.zza;
        z2 = zzbsgVar.zzb;
        z3 = zzbsgVar.zzc;
        z4 = zzbsgVar.zzd;
        z5 = zzbsgVar.zze;
        zzcex zzcexVar = this.zzh;
        try {
            jSONObject = new JSONObject().put("sms", z).put("tel", z2).put("calendar", z3).put("storePicture", z4).put("inlineVideo", z5);
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error occurred while obtaining the MRAID capabilities.", e);
            jSONObject = null;
        }
        zzcexVar.zze("onDeviceFeaturesReceived", jSONObject);
        int[] iArr = new int[2];
        this.zzh.getLocationOnScreen(iArr);
        zzb(com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(this.zzi, iArr[0]), com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(this.zzi, iArr[1]));
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(2)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Dispatching Ready Event.");
        }
        zzi(this.zzh.zzn().afmaVersion);
    }

    public final void zzb(int i, int i2) {
        int i3;
        Context context = this.zzi;
        int i4 = 0;
        if (context instanceof Activity) {
            com.google.android.gms.ads.internal.zzv.zzq();
            i3 = com.google.android.gms.ads.internal.util.zzs.zzR((Activity) context)[0];
        } else {
            i3 = 0;
        }
        if (this.zzh.zzO() == null || !this.zzh.zzO().zzi()) {
            zzcex zzcexVar = this.zzh;
            int width = zzcexVar.getWidth();
            int height = zzcexVar.getHeight();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzad)).booleanValue()) {
                if (width == 0) {
                    width = this.zzh.zzO() != null ? this.zzh.zzO().zzb : 0;
                }
                if (height == 0) {
                    if (this.zzh.zzO() != null) {
                        i4 = this.zzh.zzO().zza;
                    }
                    this.zzf = com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(this.zzi, width);
                    this.zzg = com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(this.zzi, i4);
                }
            }
            i4 = height;
            this.zzf = com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(this.zzi, width);
            this.zzg = com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(this.zzi, i4);
        }
        zzg(i, i2 - i3, this.zzf, this.zzg);
        this.zzh.zzN().zzD(i, i2);
    }
}
