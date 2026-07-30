package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.collection.ArrayMap;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdll extends zzcto {
    public static final zzgpe zzc = zzgpe.zzn("3010", "3008", "1005", "1009", "2011", "2007");
    private final List zzA;
    private final Executor zzd;
    private final zzdlq zze;
    private final zzdly zzf;
    private final zzdmp zzg;
    private final zzdlv zzh;
    private final zzdma zzi;
    private final zzifb zzj;
    private final zzifb zzk;
    private final zzifb zzl;
    private final zzifb zzm;
    private final zzifb zzn;
    private zzdnn zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private final zzcac zzt;
    private final zzaxa zzu;
    private final VersionInfoParcel zzv;
    private final Context zzw;
    private final zzdln zzx;
    private final zzeow zzy;
    private final Map zzz;

    public zzdll(zzctn zzctnVar, Executor executor, zzdlq zzdlqVar, zzdly zzdlyVar, zzdmp zzdmpVar, zzdlv zzdlvVar, zzdma zzdmaVar, zzifb zzifbVar, zzifb zzifbVar2, zzifb zzifbVar3, zzifb zzifbVar4, zzifb zzifbVar5, zzcac zzcacVar, zzaxa zzaxaVar, VersionInfoParcel versionInfoParcel, Context context, zzdln zzdlnVar, zzeow zzeowVar, zzbax zzbaxVar) {
        super(zzctnVar);
        this.zzd = executor;
        this.zze = zzdlqVar;
        this.zzf = zzdlyVar;
        this.zzg = zzdmpVar;
        this.zzh = zzdlvVar;
        this.zzi = zzdmaVar;
        this.zzj = zzifbVar;
        this.zzk = zzifbVar2;
        this.zzl = zzifbVar3;
        this.zzm = zzifbVar4;
        this.zzn = zzifbVar5;
        this.zzt = zzcacVar;
        this.zzu = zzaxaVar;
        this.zzv = versionInfoParcel;
        this.zzw = context;
        this.zzx = zzdlnVar;
        this.zzy = zzeowVar;
        this.zzz = new HashMap();
        this.zzA = new ArrayList();
    }

    public static boolean zzI(View view) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlE)).booleanValue()) {
            return view.isShown() && view.getGlobalVisibleRect(new Rect(), new Point());
        }
        com.google.android.gms.ads.internal.zzt.zzc();
        long zzA = com.google.android.gms.ads.internal.util.zzs.zzA(view);
        if (view.isShown() && view.getGlobalVisibleRect(new Rect(), new Point())) {
            if (zzA >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzlF)).intValue()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzac, reason: merged with bridge method [inline-methods] */
    public final synchronized void zzU(zzdnn zzdnnVar) {
        Iterator<String> keys;
        View view;
        zzawv zzb;
        if (!this.zzp) {
            this.zzo = zzdnnVar;
            this.zzg.zza(zzdnnVar);
            this.zzf.zza(zzdnnVar.zzdJ(), zzdnnVar.zzk(), zzdnnVar.zzl(), zzdnnVar, zzdnnVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcZ)).booleanValue() && (zzb = this.zzu.zzb()) != null) {
                zzb.zzh(zzdnnVar.zzdJ());
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcb)).booleanValue()) {
                zzffu zzffuVar = this.zzb;
                if (zzffuVar.zzak && (keys = zzffuVar.zzaj.keys()) != null) {
                    while (keys.hasNext()) {
                        String next = keys.next();
                        zzdnn zzdnnVar2 = this.zzo;
                        WeakReference weakReference = zzdnnVar2 == null ? null : (WeakReference) zzdnnVar2.zzj().get(next);
                        this.zzz.put(next, false);
                        if (weakReference != null && (view = (View) weakReference.get()) != null) {
                            zzbaw zzbawVar = new zzbaw(this.zzw, view);
                            this.zzA.add(zzbawVar);
                            zzbawVar.zza(new zzdla(this, next));
                        }
                    }
                }
            }
            if (zzdnnVar.zzh() != null) {
                zzdnnVar.zzh().zza(this.zzt);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzad, reason: merged with bridge method [inline-methods] */
    public final void zzV(zzdnn zzdnnVar) {
        this.zzf.zzb(zzdnnVar.zzdJ(), zzdnnVar.zzj());
        if (zzdnnVar.zzdF() != null) {
            zzdnnVar.zzdF().setClickable(false);
            zzdnnVar.zzdF().removeAllViews();
        }
        if (zzdnnVar.zzh() != null) {
            zzdnnVar.zzh().zzb(this.zzt);
        }
        this.zzo = null;
    }

    private final synchronized void zzae(View view, Map map, Map map2) {
        this.zzg.zzc(this.zzo);
        this.zzf.zzw(view, map, map2, zzah());
        this.zzq = true;
    }

    private final synchronized void zzaf(View view, Map map, Map map2) {
        View zzag;
        if (!this.zzr && (zzag = zzag(map)) != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzoy)).booleanValue()) {
                Rect rect = new Rect();
                if (zzag.getGlobalVisibleRect(rect, new Point()) && zzag.getHeight() == rect.height() && zzag.getWidth() == rect.width()) {
                    this.zzf.zzx(view, map, map2, zzah());
                    this.zzr = true;
                }
            } else if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzoz)).booleanValue()) {
                zzbel zzbelVar = zzbeu.zzoA;
                if (((Float) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).floatValue() > 0.0d) {
                    double floatValue = ((Float) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbelVar)).floatValue();
                    if (zzag.getGlobalVisibleRect(new Rect(), new Point())) {
                        if (r1.height() * r1.width() >= zzag.getHeight() * zzag.getWidth() * (floatValue / 100.0d)) {
                            this.zzf.zzx(view, map, map2, zzah());
                            this.zzr = true;
                        }
                    }
                }
            } else if (zzI(zzag)) {
                this.zzf.zzx(view, map, map2, zzah());
                this.zzr = true;
            }
        }
    }

    private final synchronized View zzag(Map map) {
        if (map != null) {
            zzgpe zzgpeVar = zzc;
            int size = zzgpeVar.size();
            int i = 0;
            while (i < size) {
                WeakReference weakReference = (WeakReference) map.get((String) zzgpeVar.get(i));
                i++;
                if (weakReference != null) {
                    return (View) weakReference.get();
                }
            }
        }
        return null;
    }

    private final synchronized ImageView.ScaleType zzah() {
        zzdnn zzdnnVar = this.zzo;
        if (zzdnnVar == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Ad should be associated with an ad view before calling getMediaviewScaleType()");
            return null;
        }
        IObjectWrapper zzo = zzdnnVar.zzo();
        if (zzo != null) {
            return (ImageView.ScaleType) ObjectWrapper.unwrap(zzo);
        }
        return zzdmp.zza;
    }

    private final void zzai(String str, boolean z) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfW)).booleanValue()) {
            zzL("Google", true);
            return;
        }
        ListenableFuture zzX = this.zze.zzX();
        if (zzX == null) {
            return;
        }
        zzgui.zzr(zzX, new zzdlb(this, "Google", true), this.zzd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzaj, reason: merged with bridge method [inline-methods] */
    public final void zzY(View view, zzehf zzehfVar) {
        zzcgy zzW = this.zze.zzW();
        if (!this.zzh.zzd() || zzehfVar == null || zzW == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzu().zzh(zzehfVar.zza(), view);
    }

    public final synchronized void zzA(com.google.android.gms.ads.internal.client.zzdj zzdjVar) {
        this.zzf.zzr(zzdjVar);
    }

    public final synchronized void zzB(com.google.android.gms.ads.internal.client.zzdf zzdfVar) {
        this.zzf.zzs(zzdfVar);
    }

    public final synchronized void zzC() {
        this.zzf.zzg();
    }

    public final synchronized void zzD() {
        zzdnn zzdnnVar = this.zzo;
        if (zzdnnVar == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Ad should be associated with an ad view before calling recordCustomClickGesture()");
        } else {
            final boolean z = zzdnnVar instanceof zzdmj;
            this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdlg
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzdll.this.zzW(z);
                }
            });
        }
    }

    public final synchronized void zzE(final View view, final int i) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzmA)).booleanValue()) {
            zzdnn zzdnnVar = this.zzo;
            if (zzdnnVar == null) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("Ad should be associated with an ad view before calling performClickForCustomGesture()");
            } else {
                final boolean z = zzdnnVar instanceof zzdmj;
                this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdlh
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzdll.this.zzX(view, z, i);
                    }
                });
            }
        }
    }

    public final synchronized boolean zzF() {
        return this.zzf.zzh();
    }

    public final synchronized int zzG() {
        return this.zzf.zzu();
    }

    public final synchronized boolean zzH() {
        return this.zzf.zzv();
    }

    public final boolean zzJ() {
        return this.zzh.zzc();
    }

    public final String zzK() {
        return this.zzh.zzf();
    }

    public final zzehf zzL(String str, boolean z) {
        boolean z2;
        String str2;
        zzehb zzehbVar;
        zzehc zzehcVar;
        zzdlv zzdlvVar = this.zzh;
        if (zzdlvVar.zzd() && !TextUtils.isEmpty(str)) {
            zzdlq zzdlqVar = this.zze;
            zzcgy zzW = zzdlqVar.zzW();
            zzcgy zzT = zzdlqVar.zzT();
            if (zzW == null && zzT == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid display and video webview are null. Skipping initialization.");
                return null;
            }
            zzdlvVar.zzg();
            int zzc2 = zzdlvVar.zzg().zzc();
            int i2 = zzc2 - 1;
            boolean z3 = false;
            if (i2 != 0) {
                if (i2 != 1) {
                    String str3 = zzc2 != 1 ? zzc2 != 2 ? "UNKNOWN" : "DISPLAY" : ShareConstants.VIDEO_URL;
                    StringBuilder sb = new StringBuilder(str3.length() + 49);
                    sb.append("Unknown omid media type: ");
                    sb.append(str3);
                    sb.append(". Not initializing Omid.");
                    String sb2 = sb.toString();
                    int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi(sb2);
                    return null;
                }
                if (zzW == null) {
                    int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid media type was display but there was no display webview.");
                    return null;
                }
                z2 = false;
                z3 = true;
            } else if (zzT != null) {
                z2 = true;
            } else {
                int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid media type was video but there was no video webview.");
            }
            if (z3) {
                str2 = null;
            } else {
                str2 = "javascript";
                zzW = zzT;
            }
            if (zzW == null) {
                int i6 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Webview is null in InternalNativeAd");
                return null;
            }
            if (!com.google.android.gms.ads.internal.zzt.zzu().zza(this.zzw)) {
                int i7 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to initialize omid in InternalNativeAd");
                return null;
            }
            VersionInfoParcel versionInfoParcel = this.zzv;
            int i8 = versionInfoParcel.buddyApkVersion;
            int i9 = versionInfoParcel.clientJarVersion;
            StringBuilder sb3 = new StringBuilder(String.valueOf(i8).length() + 1 + String.valueOf(i9).length());
            sb3.append(i8);
            sb3.append(".");
            sb3.append(i9);
            String sb4 = sb3.toString();
            if (z2) {
                zzehbVar = zzehb.VIDEO;
                zzehcVar = zzehc.DEFINED_BY_JAVASCRIPT;
            } else {
                zzehbVar = zzehb.NATIVE_DISPLAY;
                zzehcVar = zzdlqVar.zzx() == 3 ? zzehc.UNSPECIFIED : zzehc.ONE_PIXEL;
            }
            zzehf zzd = com.google.android.gms.ads.internal.zzt.zzu().zzd(sb4, zzW.zzD(), "", "javascript", str2, str, zzehcVar, zzehbVar, this.zzb.zzal);
            if (zzd == null) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to create omid session in InternalNativeAd");
                return null;
            }
            zzdlqVar.zzq(zzd);
            zzW.zzak(zzd);
            if (z2) {
                zzfou zza = zzd.zza();
                if (zzT != null) {
                    com.google.android.gms.ads.internal.zzt.zzu().zzh(zza, zzT.zzE());
                }
                this.zzs = true;
            }
            if (z) {
                com.google.android.gms.ads.internal.zzt.zzu().zze(zzd.zza());
                zzW.zze("onSdkLoaded", new ArrayMap());
            }
            return zzd;
        }
        return null;
    }

    public final boolean zzM() {
        return this.zzh.zzd();
    }

    public final void zzN(View view) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzfW)).booleanValue()) {
            zzdlq zzdlqVar = this.zze;
            if (zzdlqVar.zzx() != 3) {
                zzcca zzY = zzdlqVar.zzY();
                if (zzY == null) {
                    return;
                }
                zzgui.zzr(zzY, new zzdlc(this, view), this.zzd);
                return;
            }
        }
        zzY(view, this.zze.zzZ());
    }

    public final void zzO(View view) {
        zzehf zzZ = this.zze.zzZ();
        if (!this.zzh.zzd() || zzZ == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzu().zzg(zzZ.zza(), view);
    }

    public final zzdln zzP() {
        return this.zzx;
    }

    public final synchronized void zzQ(com.google.android.gms.ads.internal.client.zzdt zzdtVar) {
        this.zzy.zza(zzdtVar);
    }

    public final void zzR(Bundle bundle) {
        final zzcgy zzT = this.zze.zzT();
        if (zzT == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Video webview is null");
            return;
        }
        try {
            final JSONObject jSONObject = new JSONObject();
            for (String str : bundle.keySet()) {
                jSONObject.put(str, bundle.get(str));
            }
            this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdli
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzgpe zzgpeVar = zzdll.zzc;
                    zzcgy.this.zzd("onVideoEvent", jSONObject);
                }
            });
        } catch (JSONException e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error reading event signals", e);
        }
    }

    final /* synthetic */ void zzT() {
        this.zzf.zzA();
        this.zze.zzae();
    }

    final /* synthetic */ void zzW(boolean z) {
        zzdnn zzdnnVar = this.zzo;
        if (zzdnnVar != null) {
            this.zzf.zzf(null, zzdnnVar.zzdJ(), this.zzo.zzj(), this.zzo.zzk(), z, zzah(), 0);
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Ad should be associated with an ad view before calling recordCustomClickGesture()");
        }
    }

    final /* synthetic */ void zzX(View view, boolean z, int i) {
        zzdnn zzdnnVar = this.zzo;
        if (zzdnnVar != null) {
            this.zzf.zzf(view, zzdnnVar.zzdJ(), this.zzo.zzj(), this.zzo.zzk(), z, zzah(), i);
        } else {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Ad should be associated with an ad view before calling performClickForCustomGesture()");
        }
    }

    final /* synthetic */ zzdlq zzZ() {
        return this.zze;
    }

    public final synchronized void zza(String str) {
        this.zzf.zzd(str);
    }

    final /* synthetic */ zzdnn zzaa() {
        return this.zzo;
    }

    final /* synthetic */ Map zzab() {
        return this.zzz;
    }

    public final synchronized void zzb() {
        if (this.zzq) {
            return;
        }
        this.zzf.zzn();
    }

    public final synchronized void zzc(Bundle bundle) {
        this.zzf.zze(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzcto
    public final synchronized void zzd() {
        this.zzp = true;
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdld
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzdll.this.zzT();
            }
        });
        super.zzd();
    }

    public final synchronized boolean zze(Bundle bundle) {
        if (this.zzq) {
            return true;
        }
        boolean zzz = this.zzf.zzz(bundle);
        this.zzq = zzz;
        return zzz;
    }

    public final synchronized void zzf(Bundle bundle) {
        this.zzf.zzk(bundle);
    }

    public final synchronized void zzg(final zzdnn zzdnnVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzbZ)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdle
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzdll.this.zzU(zzdnnVar);
                }
            });
        } else {
            zzU(zzdnnVar);
        }
    }

    public final synchronized void zzh(final zzdnn zzdnnVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzbZ)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdlf
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzdll.this.zzV(zzdnnVar);
                }
            });
        } else {
            zzV(zzdnnVar);
        }
    }

    public final synchronized void zzi(View view, View view2, Map map, Map map2, boolean z) {
        zzcgy zzT;
        this.zzg.zzb(this.zzo);
        this.zzf.zzc(view, view2, map, map2, z, zzah());
        if (this.zzs) {
            zzdlq zzdlqVar = this.zze;
            if (zzdlqVar.zzT() != null && (zzT = zzdlqVar.zzT()) != null) {
                zzT.zze("onSdkAdUserInteractionClick", new ArrayMap());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcto
    public final void zzj() {
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzdlj
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzdll.this.zzS();
            }
        };
        Executor executor = this.zzd;
        executor.execute(runnable);
        if (this.zze.zzx() != 7) {
            final zzdly zzdlyVar = this.zzf;
            Objects.requireNonNull(zzdlyVar);
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdlk
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzdly.this.zzy();
                }
            });
        }
        super.zzj();
    }

    public final synchronized void zzk(View view, MotionEvent motionEvent, View view2) {
        this.zzf.zzj(view, motionEvent, view2);
    }

    public final synchronized void zzu(View view, Map map, Map map2, boolean z) {
        if (this.zzq) {
            zzaf(view, map, map2);
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzcb)).booleanValue() && this.zzb.zzak) {
            Map map3 = this.zzz;
            Iterator it = map3.keySet().iterator();
            while (it.hasNext()) {
                if (!((Boolean) map3.get((String) it.next())).booleanValue()) {
                    break;
                }
            }
        }
        if (z) {
            zzae(view, map, map2);
            zzaf(view, map, map2);
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzeu)).booleanValue() && map != null) {
            Iterator it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                View view2 = (View) ((WeakReference) ((Map.Entry) it2.next()).getValue()).get();
                if (view2 != null && zzI(view2)) {
                    zzae(view, map, map2);
                    return;
                }
            }
        }
    }

    public final synchronized JSONObject zzv(View view, Map map, Map map2) {
        return this.zzf.zzl(view, map, map2, zzah());
    }

    public final synchronized JSONObject zzw(View view, Map map, Map map2) {
        return this.zzf.zzm(view, map, map2, zzah());
    }

    public final synchronized void zzx(View view) {
        this.zzf.zzo(view);
    }

    public final synchronized void zzy(zzbjz zzbjzVar) {
        this.zzf.zzp(zzbjzVar);
    }

    public final synchronized void zzz() {
        this.zzf.zzq();
    }

    final /* synthetic */ void zzS() {
        try {
            zzdlq zzdlqVar = this.zze;
            int zzx = zzdlqVar.zzx();
            if (zzx == 1) {
                zzbjj zza = this.zzi.zza();
                if (zza != null) {
                    zzai("Google", true);
                    zza.zze((zzbiz) this.zzj.zzb());
                    return;
                }
                return;
            }
            if (zzx == 2) {
                zzbjg zzb = this.zzi.zzb();
                if (zzb != null) {
                    zzai("Google", true);
                    zzb.zze((zzbix) this.zzk.zzb());
                    return;
                }
                return;
            }
            if (zzx == 3) {
                zzbjp zzf = this.zzi.zzf(zzdlqVar.zzS());
                if (zzf != null) {
                    if (zzdlqVar.zzT() != null) {
                        zzL("Google", true);
                    }
                    zzf.zze((zzbjc) this.zzn.zzb());
                    return;
                }
                return;
            }
            if (zzx == 6) {
                zzbjw zzc2 = this.zzi.zzc();
                if (zzc2 != null) {
                    zzai("Google", true);
                    zzc2.zze((zzbkc) this.zzl.zzb());
                    return;
                }
                return;
            }
            if (zzx != 7) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("Wrong native template id!");
            } else {
                zzbor zze = this.zzi.zze();
                if (zze != null) {
                    zze.zze((zzbol) this.zzm.zzb());
                }
            }
        } catch (RemoteException e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("RemoteException when notifyAdLoad is called", e);
        }
    }
}
