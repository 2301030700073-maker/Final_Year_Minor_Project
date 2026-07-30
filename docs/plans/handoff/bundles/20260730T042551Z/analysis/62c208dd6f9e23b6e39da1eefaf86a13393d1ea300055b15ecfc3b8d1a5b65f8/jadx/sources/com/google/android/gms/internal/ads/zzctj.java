package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzctj implements zzcyq, zzdee {
    private zzbve zza;
    private final Context zzc;
    private final zzfhk zzd;
    private final VersionInfoParcel zze;
    private final Executor zzf;
    private boolean zzg = false;
    private boolean zzh = false;
    private final AtomicBoolean zzb = new AtomicBoolean();

    public zzctj(Context context, zzfhk zzfhkVar, VersionInfoParcel versionInfoParcel, Executor executor) {
        this.zzc = context;
        this.zzd = zzfhkVar;
        this.zze = versionInfoParcel;
        this.zzf = executor;
    }

    public final /* synthetic */ void zzc() {
        zzbbv.zze(this.zzc);
        this.zzh = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0066, code lost:
    
        if (android.text.TextUtils.equals(r0, "service") != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd() {
        /*
            r5 = this;
            java.util.concurrent.atomic.AtomicBoolean r0 = r5.zzb
            r1 = 1
            boolean r0 = r0.getAndSet(r1)
            if (r0 == 0) goto Lb
            goto La5
        Lb:
            com.google.android.gms.internal.ads.zzbdv r0 = com.google.android.gms.internal.ads.zzbel.zzj
            java.lang.Object r0 = r0.zze()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r2 = 2
            if (r0 == 0) goto L1c
        L1a:
            r3 = 2
            goto L68
        L1c:
            com.google.android.gms.internal.ads.zzbdv r0 = com.google.android.gms.internal.ads.zzbel.zzk
            java.lang.Object r0 = r0.zze()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r3 = 3
            if (r0 == 0) goto L2c
            goto L68
        L2c:
            com.google.android.gms.internal.ads.zzbdv r0 = com.google.android.gms.internal.ads.zzbel.zzi
            java.lang.Object r0 = r0.zze()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L3c
        L3a:
            r3 = 1
            goto L68
        L3c:
            com.google.android.gms.internal.ads.zzbzm r0 = com.google.android.gms.ads.internal.zzv.zzp()
            com.google.android.gms.ads.internal.util.zzg r0 = r0.zzi()
            com.google.android.gms.internal.ads.zzbzg r0 = r0.zzg()
            java.lang.String r0 = r0.zzc()
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: org.json.JSONException -> L3a
            r4.<init>(r0)     // Catch: org.json.JSONException -> L3a
            java.lang.String r0 = "local_flag_write"
            java.lang.String r0 = r4.optString(r0)     // Catch: org.json.JSONException -> L3a
            java.lang.String r4 = "client"
            boolean r4 = android.text.TextUtils.equals(r0, r4)     // Catch: org.json.JSONException -> L3a
            if (r4 == 0) goto L60
            goto L1a
        L60:
            java.lang.String r4 = "service"
            boolean r0 = android.text.TextUtils.equals(r0, r4)     // Catch: org.json.JSONException -> L3a
            if (r0 == 0) goto L3a
        L68:
            int r3 = r3 + (-1)
            if (r3 == r1) goto L80
            if (r3 == r2) goto L6f
            goto La5
        L6f:
            android.content.Context r0 = r5.zzc
            com.google.android.gms.internal.ads.zzfhk r2 = r5.zzd
            com.google.android.gms.internal.ads.zzbnx r3 = com.google.android.gms.ads.internal.zzv.zzg()
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r4 = com.google.android.gms.ads.internal.util.client.VersionInfoParcel.forPackage()
            com.google.android.gms.internal.ads.zzbog r0 = r3.zzb(r0, r4, r2)
            goto L90
        L80:
            android.content.Context r0 = r5.zzc
            com.google.android.gms.internal.ads.zzfhk r2 = r5.zzd
            com.google.android.gms.internal.ads.zzbnx r3 = com.google.android.gms.ads.internal.zzv.zzg()
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r4 = com.google.android.gms.ads.internal.util.client.VersionInfoParcel.forPackage()
            com.google.android.gms.internal.ads.zzbog r0 = r3.zza(r0, r4, r2)
        L90:
            java.lang.String r2 = "google.afma.sdkConstants.getSdkConstants"
            com.google.android.gms.internal.ads.zzboa r3 = com.google.android.gms.internal.ads.zzbod.zza
            com.google.android.gms.internal.ads.zzbnw r0 = r0.zza(r2, r3, r3)
            android.content.Context r2 = r5.zzc
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r3 = r5.zze
            com.google.android.gms.internal.ads.zzbvg r4 = new com.google.android.gms.internal.ads.zzbvg
            r4.<init>(r2, r0, r3)
            r5.zza = r4
            r5.zzg = r1
        La5:
            boolean r0 = r5.zzg
            if (r0 != 0) goto Laa
            goto Ld3
        Laa:
            com.google.android.gms.internal.ads.zzbve r0 = r5.zza
            if (r0 == 0) goto Ld3
            wq r0 = r0.zza()
            boolean r1 = r5.zzh
            if (r1 != 0) goto Lce
            com.google.android.gms.internal.ads.zzbdv r1 = com.google.android.gms.internal.ads.zzbed.zzi
            java.lang.Object r1 = r1.zze()
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto Lce
            com.google.android.gms.internal.ads.zzcti r1 = new com.google.android.gms.internal.ads.zzcti
            r1.<init>()
            java.util.concurrent.Executor r2 = r5.zzf
            r0.addListener(r1, r2)
        Lce:
            java.lang.String r1 = "persistFlagsClient"
            com.google.android.gms.internal.ads.zzbzz.zza(r0, r1)
        Ld3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzctj.zzd():void");
    }

    @Override // com.google.android.gms.internal.ads.zzcyq
    public final void zzdl(zzbvk zzbvkVar) {
        zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcyq
    public final void zzdm(zzfca zzfcaVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdee
    public final void zze(com.google.android.gms.ads.nonagon.signalgeneration.zzbk zzbkVar) {
        zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzdee
    public final void zzf(String str) {
        zzd();
    }
}
