package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.InputEvent;
import android.view.View;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzggb implements zzgfh {
    private final zzght zza;
    private final zzggu zzb;
    private final ExecutorService zzc;
    private final zzghy zzd;
    private final zzgjd zze;
    private final Object zzf = new Object();
    private final String zzg;
    private final long zzh;
    private final long zzi;
    private zzgga zzj;

    zzggb(zzifw zzifwVar, zzght zzghtVar, zzggu zzgguVar, zzghy zzghyVar, zzgjd zzgjdVar, zzfxt zzfxtVar, ExecutorService executorService) {
        this.zza = zzghtVar;
        this.zzb = zzgguVar;
        this.zzc = executorService;
        this.zzd = zzghyVar;
        this.zze = zzgjdVar;
        this.zzg = zzfxtVar.zzb();
        this.zzh = zzfxtVar.zzk();
        this.zzi = zzfxtVar.zzj();
    }

    private final String zzq(Map map) throws zzarp, zzarl {
        String zzb;
        zzgjd zzgjdVar = this.zze;
        try {
            zzgjdVar.zza(20110).zza();
            synchronized (this.zzf) {
                zzgga zzggaVar = this.zzj;
                if (zzggaVar == null) {
                    zzgjdVar.zzb(20109);
                    zzb = "";
                } else {
                    zzb = zzggaVar.zzb(map);
                }
            }
            return zzb;
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgfh
    public final String zza() {
        synchronized (this.zzf) {
            zzgga zzggaVar = this.zzj;
            if (zzggaVar == null) {
                return "3.-1";
            }
            return zzggaVar.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgfh
    public final ListenableFuture zzb() {
        zzgua zzw = zzgua.zzw(this.zzb.zza());
        zzgfz zzgfzVar = zzgfz.zza;
        ExecutorService executorService = this.zzc;
        return (zzgua) zzgui.zzj((zzgua) zzgui.zzg(zzw, Throwable.class, zzgfzVar, executorService), new zzgtq() { // from class: com.google.android.gms.internal.ads.zzgfr
            @Override // com.google.android.gms.internal.ads.zzgtq
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzggb.this.zzi((zzgaa) obj);
            }
        }, executorService);
    }

    @Override // com.google.android.gms.internal.ads.zzgfh
    public final ListenableFuture zzc(final Context context) {
        return zzgui.zzd(new Callable() { // from class: com.google.android.gms.internal.ads.zzgfs
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzggb.this.zzj(context);
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzgfh
    public final ListenableFuture zzd(final Context context, String str, final View view, final Activity activity) {
        final String str2 = null;
        return zzgui.zzd(new Callable(context, str2, view, activity) { // from class: com.google.android.gms.internal.ads.zzgft
            private final /* synthetic */ Context zzb;
            private final /* synthetic */ View zzc;
            private final /* synthetic */ Activity zzd;

            {
                this.zzc = view;
                this.zzd = activity;
            }

            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzggb.this.zzk(this.zzb, null, this.zzc, this.zzd);
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzgfh
    public final ListenableFuture zze(final Context context, final String str, final View view, Activity activity) {
        final Activity activity2 = null;
        return zzgui.zzd(new Callable(context, str, view, activity2) { // from class: com.google.android.gms.internal.ads.zzgfu
            private final /* synthetic */ Context zzb;
            private final /* synthetic */ String zzc;
            private final /* synthetic */ View zzd;

            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzggb.this.zzl(this.zzb, this.zzc, this.zzd, null);
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzgfh
    public final void zzf(InputEvent inputEvent) {
        try {
            synchronized (this.zzf) {
                zzgga zzggaVar = this.zzj;
                if (zzggaVar != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("evt", inputEvent);
                    zzggaVar.zzc(hashMap);
                } else {
                    this.zze.zzb(20105);
                }
            }
        } catch (zzarl | zzarp e) {
            this.zze.zzd(20104, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgfh
    public final int zzg() {
        return 4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zzh(java.util.Map r12) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzggb.zzh(java.util.Map):void");
    }

    final /* synthetic */ ListenableFuture zzi(zzgaa zzgaaVar) {
        if (this.zza.zzb(zzgaaVar)) {
            return zzgui.zzk(this.zzb.zzc(), new zzglu() { // from class: com.google.android.gms.internal.ads.zzgfv
                @Override // com.google.android.gms.internal.ads.zzglu
                public final /* synthetic */ Object apply(Object obj) {
                    zzggb.this.zzm((byte[]) obj);
                    return null;
                }
            }, zzguz.zza());
        }
        this.zze.zzb(20103);
        throw new zzgfi(1);
    }

    final /* synthetic */ String zzj(final Context context) {
        final HashMap hashMap = new HashMap();
        this.zze.zzf(20106, new Runnable() { // from class: com.google.android.gms.internal.ads.zzgfw
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzggb.this.zzn(hashMap, context);
            }
        });
        String zzq = zzq(hashMap);
        hashMap.clear();
        return zzq;
    }

    final /* synthetic */ String zzk(final Context context, String str, final View view, final Activity activity) {
        final HashMap hashMap = new HashMap();
        final String str2 = null;
        this.zze.zzf(20106, new Runnable(hashMap, context, view, activity, str2) { // from class: com.google.android.gms.internal.ads.zzgfx
            private final /* synthetic */ Map zzb;
            private final /* synthetic */ Context zzc;
            private final /* synthetic */ View zzd;
            private final /* synthetic */ Activity zze;

            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzggb.this.zzo(this.zzb, this.zzc, this.zzd, this.zze, null);
            }
        });
        String zzq = zzq(hashMap);
        hashMap.clear();
        return zzq;
    }

    final /* synthetic */ String zzl(final Context context, final String str, final View view, Activity activity) {
        final HashMap hashMap = new HashMap();
        final Activity activity2 = null;
        this.zze.zzf(20106, new Runnable(hashMap, context, view, activity2, str) { // from class: com.google.android.gms.internal.ads.zzgfy
            private final /* synthetic */ Map zzb;
            private final /* synthetic */ Context zzc;
            private final /* synthetic */ View zzd;
            private final /* synthetic */ String zze;

            {
                this.zze = str;
            }

            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzggb.this.zzp(this.zzb, this.zzc, this.zzd, null, this.zze);
            }
        });
        String zzq = zzq(hashMap);
        hashMap.clear();
        return zzq;
    }

    final /* synthetic */ Void zzm(byte[] bArr) {
        zzarn zzc = zzgge.zzc();
        zzgjb zza = this.zze.zza(20102);
        try {
            try {
                zza.zza();
                synchronized (this.zzf) {
                    this.zzj = zzgga.zza(zzc, bArr);
                }
                zza.zzc();
                return null;
            } catch (zzarl e) {
                e = e;
                zza.zzb(e);
                throw new zzgfi(2, e);
            } catch (zzarp e2) {
                e = e2;
                zza.zzb(e);
                throw new zzgfi(2, e);
            } catch (Throwable th) {
                zza.zzb(th);
                throw th;
            }
        } catch (Throwable th2) {
            zza.zzc();
            throw th2;
        }
    }

    final /* synthetic */ void zzn(Map map, Context context) {
        map.putAll(this.zzd.zzb());
        zzh(map);
        map.put("f", "q");
        map.put("ctx", context);
    }

    final /* synthetic */ void zzo(Map map, Context context, View view, Activity activity, String str) {
        map.putAll(this.zzd.zzc(context, view));
        zzh(map);
        map.put("f", "v");
        map.put("ctx", context);
        map.put(ViewHierarchyConstants.VIEW_KEY, view);
        map.put("act", activity);
        map.put("bds", null);
    }

    final /* synthetic */ void zzp(Map map, Context context, View view, Activity activity, String str) {
        map.putAll(this.zzd.zzd());
        zzh(map);
        map.put("f", "c");
        map.put("ctx", context);
        map.put(ViewHierarchyConstants.VIEW_KEY, view);
        map.put("act", null);
        map.put("bds", str);
    }
}
