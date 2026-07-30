package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzvp implements zzzj, zzuj {
    final /* synthetic */ zzvy zza;
    private final long zzb;
    private final Uri zzc;
    private final zzgy zzd;
    private final zzvn zze;
    private final zzadd zzf;
    private final zzdf zzg;
    private final zzaea zzh;
    private volatile boolean zzi;
    private boolean zzj;
    private long zzk;
    private zzgf zzl;
    private zzaem zzm;
    private boolean zzn;

    public zzvp(zzvy zzvyVar, Uri uri, zzgb zzgbVar, zzvn zzvnVar, zzadd zzaddVar, zzdf zzdfVar) {
        Objects.requireNonNull(zzvyVar);
        this.zza = zzvyVar;
        this.zzc = uri;
        this.zzd = new zzgy(zzgbVar);
        this.zze = zzvnVar;
        this.zzf = zzaddVar;
        this.zzg = zzdfVar;
        this.zzh = new zzaea();
        this.zzj = true;
        this.zzb = zzul.zza();
        this.zzl = zzi(0L);
    }

    private final zzgf zzi(long j) {
        Map map;
        zzge zzgeVar = new zzge();
        zzgeVar.zza(this.zzc);
        zzgeVar.zzc(j);
        zzgeVar.zzd(6);
        map = zzvy.zzb;
        zzgeVar.zzb(map);
        return zzgeVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzb() {
        this.zzi = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a8 A[Catch: all -> 0x0204, TryCatch #3 {all -> 0x0204, blocks: (B:6:0x0009, B:11:0x003a, B:12:0x003f, B:15:0x0058, B:17:0x005e, B:21:0x009d, B:23:0x00a8, B:24:0x00b4, B:26:0x00be, B:27:0x00ca, B:29:0x00d4, B:30:0x00e0, B:32:0x00ea, B:33:0x00fc, B:35:0x0106, B:37:0x010c, B:41:0x0149, B:42:0x0150, B:44:0x015d, B:46:0x0166, B:47:0x0181, B:49:0x0199, B:50:0x019c, B:52:0x01a0, B:98:0x0116, B:101:0x0134, B:110:0x006a, B:113:0x0088), top: B:5:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00be A[Catch: all -> 0x0204, TryCatch #3 {all -> 0x0204, blocks: (B:6:0x0009, B:11:0x003a, B:12:0x003f, B:15:0x0058, B:17:0x005e, B:21:0x009d, B:23:0x00a8, B:24:0x00b4, B:26:0x00be, B:27:0x00ca, B:29:0x00d4, B:30:0x00e0, B:32:0x00ea, B:33:0x00fc, B:35:0x0106, B:37:0x010c, B:41:0x0149, B:42:0x0150, B:44:0x015d, B:46:0x0166, B:47:0x0181, B:49:0x0199, B:50:0x019c, B:52:0x01a0, B:98:0x0116, B:101:0x0134, B:110:0x006a, B:113:0x0088), top: B:5:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d4 A[Catch: all -> 0x0204, TryCatch #3 {all -> 0x0204, blocks: (B:6:0x0009, B:11:0x003a, B:12:0x003f, B:15:0x0058, B:17:0x005e, B:21:0x009d, B:23:0x00a8, B:24:0x00b4, B:26:0x00be, B:27:0x00ca, B:29:0x00d4, B:30:0x00e0, B:32:0x00ea, B:33:0x00fc, B:35:0x0106, B:37:0x010c, B:41:0x0149, B:42:0x0150, B:44:0x015d, B:46:0x0166, B:47:0x0181, B:49:0x0199, B:50:0x019c, B:52:0x01a0, B:98:0x0116, B:101:0x0134, B:110:0x006a, B:113:0x0088), top: B:5:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ea A[Catch: all -> 0x0204, TryCatch #3 {all -> 0x0204, blocks: (B:6:0x0009, B:11:0x003a, B:12:0x003f, B:15:0x0058, B:17:0x005e, B:21:0x009d, B:23:0x00a8, B:24:0x00b4, B:26:0x00be, B:27:0x00ca, B:29:0x00d4, B:30:0x00e0, B:32:0x00ea, B:33:0x00fc, B:35:0x0106, B:37:0x010c, B:41:0x0149, B:42:0x0150, B:44:0x015d, B:46:0x0166, B:47:0x0181, B:49:0x0199, B:50:0x019c, B:52:0x01a0, B:98:0x0116, B:101:0x0134, B:110:0x006a, B:113:0x0088), top: B:5:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0106 A[Catch: all -> 0x0204, TRY_LEAVE, TryCatch #3 {all -> 0x0204, blocks: (B:6:0x0009, B:11:0x003a, B:12:0x003f, B:15:0x0058, B:17:0x005e, B:21:0x009d, B:23:0x00a8, B:24:0x00b4, B:26:0x00be, B:27:0x00ca, B:29:0x00d4, B:30:0x00e0, B:32:0x00ea, B:33:0x00fc, B:35:0x0106, B:37:0x010c, B:41:0x0149, B:42:0x0150, B:44:0x015d, B:46:0x0166, B:47:0x0181, B:49:0x0199, B:50:0x019c, B:52:0x01a0, B:98:0x0116, B:101:0x0134, B:110:0x006a, B:113:0x0088), top: B:5:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0149 A[Catch: all -> 0x0204, TryCatch #3 {all -> 0x0204, blocks: (B:6:0x0009, B:11:0x003a, B:12:0x003f, B:15:0x0058, B:17:0x005e, B:21:0x009d, B:23:0x00a8, B:24:0x00b4, B:26:0x00be, B:27:0x00ca, B:29:0x00d4, B:30:0x00e0, B:32:0x00ea, B:33:0x00fc, B:35:0x0106, B:37:0x010c, B:41:0x0149, B:42:0x0150, B:44:0x015d, B:46:0x0166, B:47:0x0181, B:49:0x0199, B:50:0x019c, B:52:0x01a0, B:98:0x0116, B:101:0x0134, B:110:0x006a, B:113:0x0088), top: B:5:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015d A[Catch: all -> 0x0204, TryCatch #3 {all -> 0x0204, blocks: (B:6:0x0009, B:11:0x003a, B:12:0x003f, B:15:0x0058, B:17:0x005e, B:21:0x009d, B:23:0x00a8, B:24:0x00b4, B:26:0x00be, B:27:0x00ca, B:29:0x00d4, B:30:0x00e0, B:32:0x00ea, B:33:0x00fc, B:35:0x0106, B:37:0x010c, B:41:0x0149, B:42:0x0150, B:44:0x015d, B:46:0x0166, B:47:0x0181, B:49:0x0199, B:50:0x019c, B:52:0x01a0, B:98:0x0116, B:101:0x0134, B:110:0x006a, B:113:0x0088), top: B:5:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0199 A[Catch: all -> 0x0204, TryCatch #3 {all -> 0x0204, blocks: (B:6:0x0009, B:11:0x003a, B:12:0x003f, B:15:0x0058, B:17:0x005e, B:21:0x009d, B:23:0x00a8, B:24:0x00b4, B:26:0x00be, B:27:0x00ca, B:29:0x00d4, B:30:0x00e0, B:32:0x00ea, B:33:0x00fc, B:35:0x0106, B:37:0x010c, B:41:0x0149, B:42:0x0150, B:44:0x015d, B:46:0x0166, B:47:0x0181, B:49:0x0199, B:50:0x019c, B:52:0x01a0, B:98:0x0116, B:101:0x0134, B:110:0x006a, B:113:0x0088), top: B:5:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01a0 A[Catch: all -> 0x0204, TRY_LEAVE, TryCatch #3 {all -> 0x0204, blocks: (B:6:0x0009, B:11:0x003a, B:12:0x003f, B:15:0x0058, B:17:0x005e, B:21:0x009d, B:23:0x00a8, B:24:0x00b4, B:26:0x00be, B:27:0x00ca, B:29:0x00d4, B:30:0x00e0, B:32:0x00ea, B:33:0x00fc, B:35:0x0106, B:37:0x010c, B:41:0x0149, B:42:0x0150, B:44:0x015d, B:46:0x0166, B:47:0x0181, B:49:0x0199, B:50:0x019c, B:52:0x01a0, B:98:0x0116, B:101:0x0134, B:110:0x006a, B:113:0x0088), top: B:5:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0222 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:? A[LOOP:0: B:2:0x0002->B:84:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01e7 A[EDGE_INSN: B:94:0x01e7->B:73:0x01e7 BREAK  A[LOOP:1: B:54:0x01ae->B:65:0x01ae], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01aa  */
    @Override // com.google.android.gms.internal.ads.zzzj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzc() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 547
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvp.zzc():void");
    }

    final /* synthetic */ void zzd(long j, long j2) {
        this.zzh.zza = j;
        this.zzk = j2;
        this.zzj = true;
        this.zzn = false;
    }

    final /* synthetic */ long zze() {
        return this.zzb;
    }

    final /* synthetic */ zzgy zzf() {
        return this.zzd;
    }

    final /* synthetic */ long zzg() {
        return this.zzk;
    }

    final /* synthetic */ zzgf zzh() {
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzuj
    public final void zza(zzeg zzegVar) {
        long max = !this.zzn ? this.zzk : Math.max(this.zza.zzI(true), this.zzk);
        int zzd = zzegVar.zzd();
        zzaem zzaemVar = this.zzm;
        zzaemVar.getClass();
        zzaemVar.zzz(zzegVar, zzd);
        zzaemVar.zzx(max, 1, zzd, 0, null);
        this.zzn = true;
    }
}
