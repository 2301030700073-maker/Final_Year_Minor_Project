package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import com.google.android.gms.common.api.Api;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes.dex */
public class zzbv {
    private final int zza;
    private final int zzb;
    private final int zzc;
    private final int zzd;
    private int zze;
    private int zzf;
    private boolean zzg;
    private final zzfxn zzh;
    private final zzfxn zzi;
    private final zzfxn zzj;
    private final int zzk;
    private final int zzl;
    private final zzfxn zzm;
    private final zzbu zzn;
    private zzfxn zzo;
    private int zzp;
    private final HashMap zzq;
    private final HashSet zzr;

    @Deprecated
    public zzbv() {
        this.zza = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzb = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzc = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzd = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zze = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzf = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzg = true;
        this.zzh = zzfxn.zzn();
        this.zzi = zzfxn.zzn();
        this.zzj = zzfxn.zzn();
        this.zzk = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzl = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzm = zzfxn.zzn();
        this.zzn = zzbu.zza;
        this.zzo = zzfxn.zzn();
        this.zzp = 0;
        this.zzq = new HashMap();
        this.zzr = new HashSet();
    }

    public final zzbv zze(Context context) {
        CaptioningManager captioningManager;
        if ((zzei.zza >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
            this.zzp = 1088;
            Locale locale = captioningManager.getLocale();
            if (locale != null) {
                this.zzo = zzfxn.zzo(locale.toLanguageTag());
            }
        }
        return this;
    }

    public final zzbv zzf(int i, int i2, boolean z) {
        this.zze = i;
        this.zzf = i2;
        this.zzg = true;
        return this;
    }

    public zzbv(zzbw zzbwVar) {
        this.zza = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzb = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzc = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzd = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zze = zzbwVar.zzi;
        this.zzf = zzbwVar.zzj;
        this.zzg = zzbwVar.zzk;
        this.zzh = zzbwVar.zzl;
        this.zzi = zzbwVar.zzm;
        this.zzj = zzbwVar.zzo;
        this.zzk = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzl = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzm = zzbwVar.zzs;
        this.zzn = zzbwVar.zzt;
        this.zzo = zzbwVar.zzu;
        this.zzp = zzbwVar.zzv;
        this.zzr = new HashSet(zzbwVar.zzC);
        this.zzq = new HashMap(zzbwVar.zzB);
    }
}
