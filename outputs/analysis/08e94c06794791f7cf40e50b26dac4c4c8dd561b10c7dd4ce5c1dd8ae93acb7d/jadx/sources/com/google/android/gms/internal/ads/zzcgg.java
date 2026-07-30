package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.view.Surface;
import io.sentry.rrweb.RRWebVideoEvent;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcgg extends zzcdi implements zzgz, zzml {
    public static final /* synthetic */ int zza = 0;
    private final Context zzb;
    private final zzcfq zzc;
    private final zzyi zzd;
    private final zzcdq zze;
    private final WeakReference zzf;
    private final zzwb zzg;
    private zzim zzh;
    private ByteBuffer zzi;
    private boolean zzj;
    private zzcdh zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private final String zzo;
    private final int zzp;
    private Integer zzr;
    private final ArrayList zzs;
    private volatile zzcft zzt;
    private final Object zzq = new Object();
    private final Set zzu = new HashSet();

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00e3, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(com.google.android.gms.internal.ads.zzbeu.zzch)).booleanValue() == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00e9, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ec, code lost:
    
        if (r5.zzl == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ee, code lost:
    
        r6 = new com.google.android.gms.internal.ads.zzcfw(r3, r4, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0105, code lost:
    
        if (r5.zzi == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0107, code lost:
    
        r5 = new com.google.android.gms.internal.ads.zzcfz(r3, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x010f, code lost:
    
        r4 = r3.zzi;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0111, code lost:
    
        if (r4 == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0117, code lost:
    
        if (r4.limit() <= 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0119, code lost:
    
        r4 = new byte[r3.zzi.limit()];
        r3.zzi.get(r4);
        r5 = new com.google.android.gms.internal.ads.zzcga(r5, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x010e, code lost:
    
        r5 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f6, code lost:
    
        if (r5.zzh <= 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f8, code lost:
    
        r6 = new com.google.android.gms.internal.ads.zzcfy(r3, r4, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00fe, code lost:
    
        r6 = new com.google.android.gms.internal.ads.zzcfx(r3, r4, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e7, code lost:
    
        if (r5.zzi == false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzcgg(android.content.Context r4, com.google.android.gms.internal.ads.zzcdq r5, com.google.android.gms.internal.ads.zzcdr r6, java.lang.Integer r7) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcgg.<init>(android.content.Context, com.google.android.gms.internal.ads.zzcdq, com.google.android.gms.internal.ads.zzcdr, java.lang.Integer):void");
    }

    private final boolean zzY() {
        return this.zzt != null && this.zzt.zzl();
    }

    public final void finalize() {
        zzf().decrementAndGet();
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("SimpleExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzA(int i) {
        Iterator it = this.zzu.iterator();
        while (it.hasNext()) {
            zzcfp zzcfpVar = (zzcfp) ((WeakReference) it.next()).get();
            if (zzcfpVar != null) {
                zzcfpVar.zzk(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final boolean zzB() {
        return this.zzh != null;
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final int zzC() {
        return this.zzh.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final long zzD() {
        return this.zzh.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzE(boolean z) {
        this.zzh.zzj(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzF(int i) {
        this.zzc.zzk(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzG(int i) {
        this.zzc.zzl(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final long zzH() {
        return this.zzh.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final long zzI() {
        if (zzY()) {
            return 0L;
        }
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final long zzJ() {
        if (zzY() && this.zzt.zzm()) {
            return Math.min(this.zzl, this.zzt.zzo());
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final long zzK() {
        if (zzY()) {
            return this.zzt.zzp();
        }
        synchronized (this.zzq) {
            while (true) {
                ArrayList arrayList = this.zzs;
                if (!arrayList.isEmpty()) {
                    long j = this.zzn;
                    Map zzj = ((zzgu) arrayList.remove(0)).zzj();
                    long j2 = 0;
                    if (zzj != null) {
                        Iterator it = zzj.entrySet().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            Map.Entry entry = (Map.Entry) it.next();
                            if (entry != null) {
                                try {
                                    if (entry.getKey() != null && zzglm.zze("content-length", (CharSequence) entry.getKey()) && entry.getValue() != null && ((List) entry.getValue()).get(0) != null) {
                                        j2 = Long.parseLong((String) ((List) entry.getValue()).get(0));
                                        break;
                                    }
                                } catch (NumberFormatException unused) {
                                    continue;
                                }
                            }
                        }
                    }
                    this.zzn = j + j2;
                }
            }
        }
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final int zzL() {
        return this.zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzM(boolean z) {
        if (this.zzh == null) {
            return;
        }
        int i = 0;
        while (true) {
            this.zzh.zzF();
            if (i >= 2) {
                return;
            }
            zzyi zzyiVar = this.zzd;
            zzxs zzd = zzyiVar.zzc().zzd();
            zzd.zzy(i, !z);
            zzyiVar.zzf(zzd);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final long zzN() {
        return this.zzh.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final long zzO() {
        return this.zzl;
    }

    final zzuw zzR(Uri uri) {
        zzz zzzVar = new zzz();
        zzzVar.zzb(uri);
        zzak zzc = zzzVar.zzc();
        zzwb zzwbVar = this.zzg;
        zzwbVar.zza(this.zze.zzf);
        return zzwbVar.zzb(zzc);
    }

    final /* synthetic */ zzgb zzS(String str, boolean z) {
        zzcgg zzcggVar = true != z ? null : this;
        zzcdq zzcdqVar = this.zze;
        return new zzcgj(str, zzcggVar, zzcdqVar.zzd, zzcdqVar.zze, zzcdqVar.zzm, zzcdqVar.zzn);
    }

    final /* synthetic */ zzgb zzT(String str, boolean z) {
        zzgi zzgiVar = new zzgi();
        zzgiVar.zzb(str);
        zzgiVar.zzf(true != z ? null : this);
        zzcdq zzcdqVar = this.zze;
        zzgiVar.zzc(zzcdqVar.zzd);
        zzgiVar.zzd(zzcdqVar.zze);
        zzgiVar.zze(true);
        return zzgiVar.zza();
    }

    final /* synthetic */ zzgb zzU(String str, boolean z) {
        zzcgg zzcggVar = true != z ? null : this;
        zzcdq zzcdqVar = this.zze;
        zzcfp zzcfpVar = new zzcfp(str, zzcggVar, zzcdqVar.zzd, zzcdqVar.zze, zzcdqVar.zzh);
        this.zzu.add(new WeakReference(zzcfpVar));
        return zzcfpVar;
    }

    final /* synthetic */ zzgb zzV(zzga zzgaVar) {
        zzgb zza2 = zzgaVar.zza();
        zzcfr zzcfrVar = new zzcfr() { // from class: com.google.android.gms.internal.ads.zzcge
            @Override // com.google.android.gms.internal.ads.zzcfr
            public final /* synthetic */ void zza(boolean z, long j) {
                zzcgg.this.zzX(z, j);
            }
        };
        return new zzcft(this.zzb, zza2, this.zzo, this.zzp, this, zzcfrVar);
    }

    final /* synthetic */ zzln[] zzW(Handler handler, zzabs zzabsVar, zzqa zzqaVar, zzwy zzwyVar, zzts zztsVar) {
        zztg zztgVar = zztg.zzb;
        Context context = this.zzb;
        zzrl zzrlVar = new zzrl(context, new zzsn(context, null, null), zztgVar, false, handler, zzqaVar, new zzqp(context).zza());
        zzaai zzaaiVar = new zzaai(context);
        zzaaiVar.zza(zztgVar);
        zzaaiVar.zzb(handler);
        zzaaiVar.zzc(zzabsVar);
        return new zzln[]{zzrlVar, zzaaiVar.zzd()};
    }

    final /* synthetic */ void zzX(boolean z, long j) {
        zzcdh zzcdhVar = this.zzk;
        if (zzcdhVar != null) {
            zzcdhVar.zzr(z, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgz
    public final void zza(zzgb zzgbVar, zzgf zzgfVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzgz
    public final void zzb(zzgb zzgbVar, zzgf zzgfVar, boolean z) {
        if (zzgbVar instanceof zzgu) {
            synchronized (this.zzq) {
                this.zzs.add((zzgu) zzgbVar);
            }
        } else if (zzgbVar instanceof zzcft) {
            this.zzt = (zzcft) zzgbVar;
            final zzcdr zzcdrVar = (zzcdr) this.zzf.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzch)).booleanValue() && zzcdrVar != null && this.zzt.zzk()) {
                final HashMap hashMap = new HashMap();
                hashMap.put("gcacheHit", String.valueOf(this.zzt.zzm()));
                hashMap.put("gcacheDownloaded", String.valueOf(this.zzt.zzn()));
                com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgf
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        int i = zzcgg.zza;
                        zzcdr.this.zze("onGcacheInfoEvent", hashMap);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgz
    public final void zzc(zzgb zzgbVar, zzgf zzgfVar, boolean z, int i) {
        this.zzl += i;
    }

    @Override // com.google.android.gms.internal.ads.zzgz
    public final void zzd(zzgb zzgbVar, zzgf zzgfVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzml
    public final void zze(zzmj zzmjVar, int i) {
        zzcdh zzcdhVar = this.zzk;
        if (zzcdhVar != null) {
            zzcdhVar.zzs(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzml
    public final void zzg(zzmj zzmjVar, zzau zzauVar) {
        zzcdh zzcdhVar = this.zzk;
        if (zzcdhVar != null) {
            zzcdhVar.zzu("onPlayerError", zzauVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzml
    public final void zzh(zzmj zzmjVar, zzul zzulVar, zzuq zzuqVar, IOException iOException, boolean z) {
        zzcdh zzcdhVar = this.zzk;
        if (zzcdhVar != null) {
            if (this.zze.zzj) {
                zzcdhVar.zzv("onLoadException", iOException);
            } else {
                zzcdhVar.zzu("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final Integer zzj() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzml
    public final void zzk(zzmj zzmjVar, zzv zzvVar, zzht zzhtVar) {
        zzcdr zzcdrVar = (zzcdr) this.zzf.get();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzch)).booleanValue() || zzcdrVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        String str = zzvVar.zzn;
        if (str != null) {
            hashMap.put("audioMime", str);
        }
        String str2 = zzvVar.zzo;
        if (str2 != null) {
            hashMap.put("audioSampleMime", str2);
        }
        String str3 = zzvVar.zzk;
        if (str3 != null) {
            hashMap.put("audioCodec", str3);
        }
        zzcdrVar.zze("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzml
    public final void zzl(zzmj zzmjVar, zzv zzvVar, zzht zzhtVar) {
        zzcdr zzcdrVar = (zzcdr) this.zzf.get();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzch)).booleanValue() || zzcdrVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(RRWebVideoEvent.JsonKeys.FRAME_RATE, String.valueOf(zzvVar.zzz));
        hashMap.put("bitRate", String.valueOf(zzvVar.zzj));
        int i = zzvVar.zzv;
        int i2 = zzvVar.zzw;
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 1 + String.valueOf(i2).length());
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        hashMap.put("resolution", sb.toString());
        String str = zzvVar.zzn;
        if (str != null) {
            hashMap.put("videoMime", str);
        }
        String str2 = zzvVar.zzo;
        if (str2 != null) {
            hashMap.put("videoSampleMime", str2);
        }
        String str3 = zzvVar.zzk;
        if (str3 != null) {
            hashMap.put("videoCodec", str3);
        }
        zzcdrVar.zze("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzml
    public final void zzm(zzmj zzmjVar, int i, long j) {
        this.zzm += i;
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzn(Integer num) {
        this.zzr = num;
    }

    @Override // com.google.android.gms.internal.ads.zzml
    public final void zzo(zzmj zzmjVar, Object obj, long j) {
        zzcdh zzcdhVar = this.zzk;
        if (zzcdhVar != null) {
            zzcdhVar.zzD();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzml
    public final void zzp(zzmj zzmjVar, zzbv zzbvVar) {
        zzcdh zzcdhVar = this.zzk;
        if (zzcdhVar != null) {
            zzcdhVar.zzt(zzbvVar.zzb, zzbvVar.zzc);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzq(Uri[] uriArr, String str) {
        zzr(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzs(zzcdh zzcdhVar) {
        this.zzk = zzcdhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzt() {
        zzim zzimVar = this.zzh;
        if (zzimVar != null) {
            zzimVar.zzE(this);
            this.zzh.zzH();
            this.zzh = null;
            zzi().decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzu(Surface surface, boolean z) {
        zzim zzimVar = this.zzh;
        if (zzimVar != null) {
            zzimVar.zzC(surface);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzv(float f, boolean z) {
        zzim zzimVar = this.zzh;
        if (zzimVar != null) {
            zzimVar.zzB(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzw() {
        this.zzh.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzx(long j) {
        this.zzh.zzb(j);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzy(int i) {
        this.zzc.zzm(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzz(int i) {
        this.zzc.zzn(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzr(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzuw zzvlVar;
        if (this.zzh != null) {
            this.zzi = byteBuffer;
            this.zzj = z;
            int length = uriArr.length;
            if (length == 1) {
                zzvlVar = zzR(uriArr[0]);
            } else {
                zzuw[] zzuwVarArr = new zzuw[length];
                for (int i = 0; i < uriArr.length; i++) {
                    zzuwVarArr[i] = zzR(uriArr[i]);
                }
                zzvlVar = new zzvl(false, false, new zzuf(), zzuwVarArr);
            }
            this.zzh.zzG(zzvlVar);
            this.zzh.zzg();
            zzi().incrementAndGet();
        }
    }
}
