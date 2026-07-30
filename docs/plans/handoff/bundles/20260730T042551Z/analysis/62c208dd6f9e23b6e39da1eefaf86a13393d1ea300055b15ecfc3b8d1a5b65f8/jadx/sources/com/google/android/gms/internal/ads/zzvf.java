package com.google.android.gms.internal.ads;

import android.net.Uri;

/* loaded from: classes.dex */
final class zzvf implements zzyt, zztv {
    final /* synthetic */ zzvk zza;
    private final Uri zzc;
    private final zzgx zzd;
    private final zzuz zze;
    private final zzacq zzf;
    private final zzda zzg;
    private volatile boolean zzi;
    private long zzk;
    private zzadt zzm;
    private boolean zzn;
    private final zzadj zzh = new zzadj();
    private boolean zzj = true;
    private final long zzb = zztx.zza();
    private zzgd zzl = zzi(0);

    public zzvf(zzvk zzvkVar, Uri uri, zzfy zzfyVar, zzuz zzuzVar, zzacq zzacqVar, zzda zzdaVar) {
        this.zza = zzvkVar;
        this.zzc = uri;
        this.zzd = new zzgx(zzfyVar);
        this.zze = zzuzVar;
        this.zzf = zzacqVar;
        this.zzg = zzdaVar;
    }

    public static /* bridge */ /* synthetic */ void zzf(zzvf zzvfVar, long j, long j2) {
        zzvfVar.zzh.zza = j;
        zzvfVar.zzk = j2;
        zzvfVar.zzj = true;
        zzvfVar.zzn = false;
    }

    private final zzgd zzi(long j) {
        zzgb zzgbVar = new zzgb();
        zzgbVar.zzd(this.zzc);
        zzgbVar.zzc(j);
        zzgbVar.zza(6);
        zzgbVar.zzb(zzvk.zzb);
        return zzgbVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zztv
    public final void zza(zzdy zzdyVar) {
        long max = !this.zzn ? this.zzk : Math.max(zzvk.zzr(this.zza, true), this.zzk);
        int zzb = zzdyVar.zzb();
        zzadt zzadtVar = this.zzm;
        zzadtVar.getClass();
        zzadtVar.zzr(zzdyVar, zzb);
        zzadtVar.zzt(max, 1, zzb, 0, null);
        this.zzn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzyt
    public final void zzg() {
        this.zzi = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x009e A[Catch: all -> 0x0207, TryCatch #1 {all -> 0x0207, blocks: (B:6:0x000b, B:11:0x003c, B:12:0x0041, B:15:0x0057, B:17:0x005d, B:21:0x0093, B:23:0x009e, B:24:0x00aa, B:26:0x00b4, B:27:0x00c0, B:29:0x00ca, B:30:0x00d6, B:32:0x00e0, B:33:0x00f2, B:35:0x00fc, B:37:0x0102, B:41:0x0132, B:42:0x0139, B:44:0x0146, B:46:0x014e, B:47:0x016b, B:49:0x0186, B:50:0x018b, B:52:0x018f, B:104:0x010c, B:107:0x0120, B:116:0x0069, B:119:0x007f), top: B:5:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b4 A[Catch: all -> 0x0207, TryCatch #1 {all -> 0x0207, blocks: (B:6:0x000b, B:11:0x003c, B:12:0x0041, B:15:0x0057, B:17:0x005d, B:21:0x0093, B:23:0x009e, B:24:0x00aa, B:26:0x00b4, B:27:0x00c0, B:29:0x00ca, B:30:0x00d6, B:32:0x00e0, B:33:0x00f2, B:35:0x00fc, B:37:0x0102, B:41:0x0132, B:42:0x0139, B:44:0x0146, B:46:0x014e, B:47:0x016b, B:49:0x0186, B:50:0x018b, B:52:0x018f, B:104:0x010c, B:107:0x0120, B:116:0x0069, B:119:0x007f), top: B:5:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ca A[Catch: all -> 0x0207, TryCatch #1 {all -> 0x0207, blocks: (B:6:0x000b, B:11:0x003c, B:12:0x0041, B:15:0x0057, B:17:0x005d, B:21:0x0093, B:23:0x009e, B:24:0x00aa, B:26:0x00b4, B:27:0x00c0, B:29:0x00ca, B:30:0x00d6, B:32:0x00e0, B:33:0x00f2, B:35:0x00fc, B:37:0x0102, B:41:0x0132, B:42:0x0139, B:44:0x0146, B:46:0x014e, B:47:0x016b, B:49:0x0186, B:50:0x018b, B:52:0x018f, B:104:0x010c, B:107:0x0120, B:116:0x0069, B:119:0x007f), top: B:5:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e0 A[Catch: all -> 0x0207, TryCatch #1 {all -> 0x0207, blocks: (B:6:0x000b, B:11:0x003c, B:12:0x0041, B:15:0x0057, B:17:0x005d, B:21:0x0093, B:23:0x009e, B:24:0x00aa, B:26:0x00b4, B:27:0x00c0, B:29:0x00ca, B:30:0x00d6, B:32:0x00e0, B:33:0x00f2, B:35:0x00fc, B:37:0x0102, B:41:0x0132, B:42:0x0139, B:44:0x0146, B:46:0x014e, B:47:0x016b, B:49:0x0186, B:50:0x018b, B:52:0x018f, B:104:0x010c, B:107:0x0120, B:116:0x0069, B:119:0x007f), top: B:5:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00fc A[Catch: all -> 0x0207, TRY_LEAVE, TryCatch #1 {all -> 0x0207, blocks: (B:6:0x000b, B:11:0x003c, B:12:0x0041, B:15:0x0057, B:17:0x005d, B:21:0x0093, B:23:0x009e, B:24:0x00aa, B:26:0x00b4, B:27:0x00c0, B:29:0x00ca, B:30:0x00d6, B:32:0x00e0, B:33:0x00f2, B:35:0x00fc, B:37:0x0102, B:41:0x0132, B:42:0x0139, B:44:0x0146, B:46:0x014e, B:47:0x016b, B:49:0x0186, B:50:0x018b, B:52:0x018f, B:104:0x010c, B:107:0x0120, B:116:0x0069, B:119:0x007f), top: B:5:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0132 A[Catch: all -> 0x0207, TryCatch #1 {all -> 0x0207, blocks: (B:6:0x000b, B:11:0x003c, B:12:0x0041, B:15:0x0057, B:17:0x005d, B:21:0x0093, B:23:0x009e, B:24:0x00aa, B:26:0x00b4, B:27:0x00c0, B:29:0x00ca, B:30:0x00d6, B:32:0x00e0, B:33:0x00f2, B:35:0x00fc, B:37:0x0102, B:41:0x0132, B:42:0x0139, B:44:0x0146, B:46:0x014e, B:47:0x016b, B:49:0x0186, B:50:0x018b, B:52:0x018f, B:104:0x010c, B:107:0x0120, B:116:0x0069, B:119:0x007f), top: B:5:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0146 A[Catch: all -> 0x0207, TryCatch #1 {all -> 0x0207, blocks: (B:6:0x000b, B:11:0x003c, B:12:0x0041, B:15:0x0057, B:17:0x005d, B:21:0x0093, B:23:0x009e, B:24:0x00aa, B:26:0x00b4, B:27:0x00c0, B:29:0x00ca, B:30:0x00d6, B:32:0x00e0, B:33:0x00f2, B:35:0x00fc, B:37:0x0102, B:41:0x0132, B:42:0x0139, B:44:0x0146, B:46:0x014e, B:47:0x016b, B:49:0x0186, B:50:0x018b, B:52:0x018f, B:104:0x010c, B:107:0x0120, B:116:0x0069, B:119:0x007f), top: B:5:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0186 A[Catch: all -> 0x0207, TryCatch #1 {all -> 0x0207, blocks: (B:6:0x000b, B:11:0x003c, B:12:0x0041, B:15:0x0057, B:17:0x005d, B:21:0x0093, B:23:0x009e, B:24:0x00aa, B:26:0x00b4, B:27:0x00c0, B:29:0x00ca, B:30:0x00d6, B:32:0x00e0, B:33:0x00f2, B:35:0x00fc, B:37:0x0102, B:41:0x0132, B:42:0x0139, B:44:0x0146, B:46:0x014e, B:47:0x016b, B:49:0x0186, B:50:0x018b, B:52:0x018f, B:104:0x010c, B:107:0x0120, B:116:0x0069, B:119:0x007f), top: B:5:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x018f A[Catch: all -> 0x0207, TRY_LEAVE, TryCatch #1 {all -> 0x0207, blocks: (B:6:0x000b, B:11:0x003c, B:12:0x0041, B:15:0x0057, B:17:0x005d, B:21:0x0093, B:23:0x009e, B:24:0x00aa, B:26:0x00b4, B:27:0x00c0, B:29:0x00ca, B:30:0x00d6, B:32:0x00e0, B:33:0x00f2, B:35:0x00fc, B:37:0x0102, B:41:0x0132, B:42:0x0139, B:44:0x0146, B:46:0x014e, B:47:0x016b, B:49:0x0186, B:50:0x018b, B:52:0x018f, B:104:0x010c, B:107:0x0120, B:116:0x0069, B:119:0x007f), top: B:5:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0227 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[LOOP:0: B:2:0x0004->B:83:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01e5 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzyt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh() {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvf.zzh():void");
    }
}
