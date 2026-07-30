package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.IBinder;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzfgy implements zzfgw {
    private final Context zza;
    private final int zzp;
    private long zzb = 0;
    private long zzc = -1;
    private boolean zzd = false;
    private int zzq = 2;
    private int zzr = 2;
    private int zze = 0;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzg = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzh = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzi = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzfhm zzj = zzfhm.SCAR_REQUEST_TYPE_UNSPECIFIED;
    private String zzk = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzl = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzm = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private boolean zzn = false;
    private boolean zzo = false;

    public zzfgy(Context context, int i) {
        this.zza = context;
        this.zzp = i;
    }

    public final synchronized zzfgy zzA() {
        this.zzc = com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime();
        return this;
    }

    public final synchronized zzfgy zzK(int i) {
        this.zzq = i;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgw
    public final /* bridge */ /* synthetic */ zzfgw zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzr(zzeVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgw
    public final /* bridge */ /* synthetic */ zzfgw zzb(zzfbz zzfbzVar) {
        zzs(zzfbzVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgw
    public final /* bridge */ /* synthetic */ zzfgw zzc(String str) {
        zzt(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgw
    public final /* bridge */ /* synthetic */ zzfgw zzd(String str) {
        zzu(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgw
    public final /* bridge */ /* synthetic */ zzfgw zze(String str) {
        zzv(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgw
    public final /* bridge */ /* synthetic */ zzfgw zzf(zzfhm zzfhmVar) {
        zzw(zzfhmVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgw
    public final /* bridge */ /* synthetic */ zzfgw zzg(boolean z) {
        zzx(z);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgw
    public final /* bridge */ /* synthetic */ zzfgw zzh(Throwable th) {
        zzy(th);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgw
    public final /* bridge */ /* synthetic */ zzfgw zzi() {
        zzz();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgw
    public final /* bridge */ /* synthetic */ zzfgw zzj() {
        zzA();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfgw
    public final synchronized boolean zzk() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzfgw
    public final boolean zzl() {
        return !TextUtils.isEmpty(this.zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzfgw
    public final synchronized zzfha zzm() {
        zzfgz zzfgzVar = null;
        if (this.zzn) {
            return null;
        }
        this.zzn = true;
        if (!this.zzo) {
            zzz();
        }
        if (this.zzc < 0) {
            zzA();
        }
        return new zzfha(this, zzfgzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfgw
    public final /* bridge */ /* synthetic */ zzfgw zzn(int i) {
        zzK(i);
        return this;
    }

    public final synchronized zzfgy zzr(com.google.android.gms.ads.internal.client.zze zzeVar) {
        IBinder iBinder = zzeVar.zze;
        if (iBinder != null) {
            zzcvm zzcvmVar = (zzcvm) iBinder;
            String zzk = zzcvmVar.zzk();
            if (!TextUtils.isEmpty(zzk)) {
                this.zzf = zzk;
            }
            String zzi = zzcvmVar.zzi();
            if (!TextUtils.isEmpty(zzi)) {
                this.zzg = zzi;
            }
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
    
        r2.zzg = r0.zzab;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.google.android.gms.internal.ads.zzfgy zzs(com.google.android.gms.internal.ads.zzfbz r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            com.google.android.gms.internal.ads.zzfbr r0 = r3.zzb     // Catch: java.lang.Throwable -> L31
            java.lang.String r0 = r0.zzb     // Catch: java.lang.Throwable -> L31
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L31
            if (r0 != 0) goto L11
            com.google.android.gms.internal.ads.zzfbr r0 = r3.zzb     // Catch: java.lang.Throwable -> L31
            java.lang.String r0 = r0.zzb     // Catch: java.lang.Throwable -> L31
            r2.zzf = r0     // Catch: java.lang.Throwable -> L31
        L11:
            java.util.List r3 = r3.zza     // Catch: java.lang.Throwable -> L31
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> L31
        L17:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Throwable -> L31
            if (r0 == 0) goto L2f
            java.lang.Object r0 = r3.next()     // Catch: java.lang.Throwable -> L31
            com.google.android.gms.internal.ads.zzfbo r0 = (com.google.android.gms.internal.ads.zzfbo) r0     // Catch: java.lang.Throwable -> L31
            java.lang.String r1 = r0.zzab     // Catch: java.lang.Throwable -> L31
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L31
            if (r1 != 0) goto L17
            java.lang.String r3 = r0.zzab     // Catch: java.lang.Throwable -> L31
            r2.zzg = r3     // Catch: java.lang.Throwable -> L31
        L2f:
            monitor-exit(r2)
            return r2
        L31:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfgy.zzs(com.google.android.gms.internal.ads.zzfbz):com.google.android.gms.internal.ads.zzfgy");
    }

    public final synchronized zzfgy zzt(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziI)).booleanValue()) {
            this.zzm = str;
        }
        return this;
    }

    public final synchronized zzfgy zzu(String str) {
        this.zzh = str;
        return this;
    }

    public final synchronized zzfgy zzv(String str) {
        this.zzi = str;
        return this;
    }

    public final synchronized zzfgy zzw(zzfhm zzfhmVar) {
        this.zzj = zzfhmVar;
        return this;
    }

    public final synchronized zzfgy zzx(boolean z) {
        this.zzd = z;
        return this;
    }

    public final synchronized zzfgy zzy(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zziI)).booleanValue()) {
            this.zzl = zzbuh.zzf(th);
            this.zzk = (String) zzfvc.zzb(zzfty.zzc('\n')).zzd(zzbuh.zze(th)).iterator().next();
        }
        return this;
    }

    public final synchronized zzfgy zzz() {
        Configuration configuration;
        this.zze = com.google.android.gms.ads.internal.zzv.zzr().zzm(this.zza);
        Resources resources = this.zza.getResources();
        int i = 2;
        if (resources != null && (configuration = resources.getConfiguration()) != null) {
            i = configuration.orientation == 2 ? 4 : 3;
        }
        this.zzr = i;
        this.zzb = com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime();
        this.zzo = true;
        return this;
    }
}
