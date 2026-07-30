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
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import defpackage.BinderC3652rv;
import defpackage.F2;
import defpackage.InterfaceC0456Qm;
import defpackage.InterfaceFutureC3942wq;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdia extends zzcqz {
    public static final /* synthetic */ int zzc = 0;
    private final Executor zzd;
    private final zzdif zze;
    private final zzdin zzf;
    private final zzdjf zzg;
    private final zzdik zzh;
    private final zzdiq zzi;
    private final zzhel zzj;
    private final zzhel zzk;
    private final zzhel zzl;
    private final zzhel zzm;
    private final zzhel zzn;
    private zzdkd zzo;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private final zzbye zzs;
    private final zzava zzt;
    private final VersionInfoParcel zzu;
    private final Context zzv;
    private final zzdic zzw;
    private final zzekq zzx;
    private final Map zzy;
    private final List zzz;

    static {
        zzfxn.zzs("3010", "3008", "1005", "1009", "2011", "2007");
    }

    public zzdia(zzcqy zzcqyVar, Executor executor, zzdif zzdifVar, zzdin zzdinVar, zzdjf zzdjfVar, zzdik zzdikVar, zzdiq zzdiqVar, zzhel zzhelVar, zzhel zzhelVar2, zzhel zzhelVar3, zzhel zzhelVar4, zzhel zzhelVar5, zzbye zzbyeVar, zzava zzavaVar, VersionInfoParcel versionInfoParcel, Context context, zzdic zzdicVar, zzekq zzekqVar, zzaym zzaymVar) {
        super(zzcqyVar);
        this.zzd = executor;
        this.zze = zzdifVar;
        this.zzf = zzdinVar;
        this.zzg = zzdjfVar;
        this.zzh = zzdikVar;
        this.zzi = zzdiqVar;
        this.zzj = zzhelVar;
        this.zzk = zzhelVar2;
        this.zzl = zzhelVar3;
        this.zzm = zzhelVar4;
        this.zzn = zzhelVar5;
        this.zzs = zzbyeVar;
        this.zzt = zzavaVar;
        this.zzu = versionInfoParcel;
        this.zzv = context;
        this.zzw = zzdicVar;
        this.zzx = zzekqVar;
        this.zzy = new HashMap();
        this.zzz = new ArrayList();
    }

    public static boolean zzY(View view) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkw)).booleanValue()) {
            return view.isShown() && view.getGlobalVisibleRect(new Rect(), new Point());
        }
        com.google.android.gms.ads.internal.zzv.zzq();
        long zzx = com.google.android.gms.ads.internal.util.zzs.zzx(view);
        if (view.isShown() && view.getGlobalVisibleRect(new Rect(), new Point())) {
            if (zzx >= ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkx)).intValue()) {
                return true;
            }
        }
        return false;
    }

    private final synchronized ImageView.ScaleType zzaa() {
        zzdkd zzdkdVar = this.zzo;
        if (zzdkdVar == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling getMediaviewScaleType()");
            return null;
        }
        InterfaceC0456Qm zzj = zzdkdVar.zzj();
        if (zzj != null) {
            return (ImageView.ScaleType) BinderC3652rv.o(zzj);
        }
        return zzdjf.zza;
    }

    private final void zzab(String str, boolean z) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfl)).booleanValue()) {
            zzf("Google", true);
            return;
        }
        InterfaceFutureC3942wq zzw = this.zze.zzw();
        if (zzw == null) {
            return;
        }
        zzgch.zzr(zzw, new zzdhy(this, "Google", true), this.zzd);
    }

    private final synchronized void zzac(View view, Map map, Map map2) {
        this.zzg.zzd(this.zzo);
        this.zzf.zzr(view, map, map2, zzaa());
        this.zzq = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzad(View view, zzecr zzecrVar) {
        zzcex zzr = this.zze.zzr();
        if (!this.zzh.zzd() || zzecrVar == null || zzr == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzB().zzj(zzecrVar.zza(), view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzae, reason: merged with bridge method [inline-methods] */
    public final synchronized void zzz(zzdkd zzdkdVar) {
        Iterator<String> keys;
        View view;
        zzauv zzc2;
        if (!this.zzp) {
            this.zzo = zzdkdVar;
            this.zzg.zze(zzdkdVar);
            this.zzf.zzz(zzdkdVar.zzf(), zzdkdVar.zzm(), zzdkdVar.zzn(), zzdkdVar, zzdkdVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcK)).booleanValue() && (zzc2 = this.zzt.zzc()) != null) {
                zzc2.zzo(zzdkdVar.zzf());
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbS)).booleanValue()) {
                zzfbo zzfboVar = this.zzb;
                if (zzfboVar.zzak && (keys = zzfboVar.zzaj.keys()) != null) {
                    while (keys.hasNext()) {
                        String next = keys.next();
                        zzdkd zzdkdVar2 = this.zzo;
                        WeakReference weakReference = zzdkdVar2 == null ? null : (WeakReference) zzdkdVar2.zzl().get(next);
                        this.zzy.put(next, Boolean.FALSE);
                        if (weakReference != null && (view = (View) weakReference.get()) != null) {
                            zzayl zzaylVar = new zzayl(this.zzv, view);
                            this.zzz.add(zzaylVar);
                            zzaylVar.zzc(new zzdhx(this, next));
                        }
                    }
                }
            }
            if (zzdkdVar.zzi() != null) {
                zzdkdVar.zzi().zzc(this.zzs);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzaf, reason: merged with bridge method [inline-methods] */
    public final void zzA(zzdkd zzdkdVar) {
        this.zzf.zzA(zzdkdVar.zzf(), zzdkdVar.zzl());
        if (zzdkdVar.zzh() != null) {
            zzdkdVar.zzh().setClickable(false);
            zzdkdVar.zzh().removeAllViews();
        }
        if (zzdkdVar.zzi() != null) {
            zzdkdVar.zzi().zze(this.zzs);
        }
        this.zzo = null;
    }

    public static /* synthetic */ void zzl(zzdia zzdiaVar) {
        try {
            zzdif zzdifVar = zzdiaVar.zze;
            int zzc2 = zzdifVar.zzc();
            if (zzc2 == 1) {
                zzbgx zzb = zzdiaVar.zzi.zzb();
                if (zzb != null) {
                    zzdiaVar.zzab("Google", true);
                    zzb.zze((zzbgn) zzdiaVar.zzj.zzb());
                    return;
                }
                return;
            }
            if (zzc2 == 2) {
                zzbgu zza = zzdiaVar.zzi.zza();
                if (zza != null) {
                    zzdiaVar.zzab("Google", true);
                    zza.zze((zzbgl) zzdiaVar.zzk.zzb());
                    return;
                }
                return;
            }
            if (zzc2 == 3) {
                zzbhd zzd = zzdiaVar.zzi.zzd(zzdifVar.zzA());
                if (zzd != null) {
                    if (zzdiaVar.zze.zzs() != null) {
                        zzdiaVar.zzf("Google", true);
                    }
                    zzd.zze((zzbgq) zzdiaVar.zzn.zzb());
                    return;
                }
                return;
            }
            if (zzc2 == 6) {
                zzbhk zzf = zzdiaVar.zzi.zzf();
                if (zzf != null) {
                    zzdiaVar.zzab("Google", true);
                    zzf.zze((zzbht) zzdiaVar.zzl.zzb());
                    return;
                }
                return;
            }
            if (zzc2 != 7) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Wrong native template id!");
                return;
            }
            zzbmi zzg = zzdiaVar.zzi.zzg();
            if (zzg != null) {
                zzg.zzg((zzbmc) zzdiaVar.zzm.zzb());
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("RemoteException when notifyAdLoad is called", e);
        }
    }

    public final synchronized void zzB(View view, Map map, Map map2, boolean z) {
        if (!this.zzq) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbS)).booleanValue() && this.zzb.zzak) {
                Iterator it = this.zzy.keySet().iterator();
                while (it.hasNext()) {
                    if (!((Boolean) this.zzy.get((String) it.next())).booleanValue()) {
                        break;
                    }
                }
            }
            if (z) {
                zzac(view, map, map2);
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdX)).booleanValue() && map != null) {
                Iterator it2 = map.entrySet().iterator();
                while (it2.hasNext()) {
                    View view2 = (View) ((WeakReference) ((Map.Entry) it2.next()).getValue()).get();
                    if (view2 != null && zzY(view2)) {
                        zzac(view, map, map2);
                        return;
                    }
                }
            }
        }
    }

    public final synchronized void zzC(com.google.android.gms.ads.internal.client.zzdh zzdhVar) {
        this.zzf.zzk(zzdhVar);
    }

    public final synchronized void zzD(View view, View view2, Map map, Map map2, boolean z) {
        zzcex zzs;
        this.zzg.zzc(this.zzo);
        this.zzf.zzl(view, view2, map, map2, z, zzaa());
        if (this.zzr) {
            zzdif zzdifVar = this.zze;
            if (zzdifVar.zzs() != null && (zzs = zzdifVar.zzs()) != null) {
                zzs.zzd("onSdkAdUserInteractionClick", new F2());
            }
        }
    }

    public final synchronized void zzE(final View view, final int i) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzls)).booleanValue()) {
            zzdkd zzdkdVar = this.zzo;
            if (zzdkdVar == null) {
                com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling performClickForCustomGesture()");
            } else {
                final boolean z = zzdkdVar instanceof zzdiz;
                this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdhu
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdia.this.zzx(view, z, i);
                    }
                });
            }
        }
    }

    public final synchronized void zzF(String str) {
        this.zzf.zzm(str);
    }

    public final synchronized void zzG(Bundle bundle) {
        this.zzf.zzn(bundle);
    }

    public final synchronized void zzH() {
        zzdkd zzdkdVar = this.zzo;
        if (zzdkdVar == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling recordCustomClickGesture()");
        } else {
            final boolean z = zzdkdVar instanceof zzdiz;
            this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdhw
                @Override // java.lang.Runnable
                public final void run() {
                    zzdia.this.zzy(z);
                }
            });
        }
    }

    public final void zzI(Bundle bundle) {
        final zzcex zzs = this.zze.zzs();
        if (zzs == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Video webview is null");
            return;
        }
        try {
            final JSONObject jSONObject = new JSONObject();
            for (String str : bundle.keySet()) {
                jSONObject.put(str, bundle.get(str));
            }
            this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdht
                @Override // java.lang.Runnable
                public final void run() {
                    int i = zzdia.zzc;
                    zzcex.this.zze("onVideoEvent", jSONObject);
                }
            });
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error reading event signals", e);
        }
    }

    public final synchronized void zzJ() {
        if (this.zzq) {
            return;
        }
        this.zzf.zzs();
    }

    public final void zzK(View view) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfl)).booleanValue()) {
            zzdif zzdifVar = this.zze;
            if (zzdifVar.zzc() != 3) {
                zzcab zzp = zzdifVar.zzp();
                if (zzp == null) {
                    return;
                }
                zzgch.zzr(zzp, new zzdhz(this, view), this.zzd);
                return;
            }
        }
        zzad(view, this.zze.zzu());
    }

    public final synchronized void zzL(View view, MotionEvent motionEvent, View view2) {
        this.zzf.zzt(view, motionEvent, view2);
    }

    public final synchronized void zzM(Bundle bundle) {
        this.zzf.zzu(bundle);
    }

    public final synchronized void zzN(View view) {
        this.zzf.zzv(view);
    }

    public final synchronized void zzO() {
        this.zzf.zzw();
    }

    public final synchronized void zzP(com.google.android.gms.ads.internal.client.zzdd zzddVar) {
        this.zzf.zzx(zzddVar);
    }

    public final synchronized void zzQ(com.google.android.gms.ads.internal.client.zzdr zzdrVar) {
        this.zzx.zza(zzdrVar);
    }

    public final synchronized void zzR(zzbhq zzbhqVar) {
        this.zzf.zzy(zzbhqVar);
    }

    public final synchronized void zzS(final zzdkd zzdkdVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbQ)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdhp
                @Override // java.lang.Runnable
                public final void run() {
                    zzdia.this.zzz(zzdkdVar);
                }
            });
        } else {
            zzz(zzdkdVar);
        }
    }

    public final synchronized void zzT(final zzdkd zzdkdVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbQ)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdhq
                @Override // java.lang.Runnable
                public final void run() {
                    zzdia.this.zzA(zzdkdVar);
                }
            });
        } else {
            zzA(zzdkdVar);
        }
    }

    public final boolean zzU() {
        return this.zzh.zze();
    }

    public final synchronized boolean zzV() {
        return this.zzf.zzB();
    }

    public final synchronized boolean zzW() {
        return this.zzf.zzC();
    }

    public final boolean zzX() {
        return this.zzh.zzd();
    }

    public final synchronized boolean zzZ(Bundle bundle) {
        if (this.zzq) {
            return true;
        }
        boolean zzD = this.zzf.zzD(bundle);
        this.zzq = zzD;
        return zzD;
    }

    public final synchronized int zza() {
        return this.zzf.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcqz
    public final synchronized void zzb() {
        this.zzp = true;
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdhv
            @Override // java.lang.Runnable
            public final void run() {
                zzdia.this.zzw();
            }
        });
        super.zzb();
    }

    public final zzdic zzc() {
        return this.zzw;
    }

    public final zzecr zzf(String str, boolean z) {
        String str2;
        zzeco zzecoVar;
        zzecn zzecnVar;
        if (this.zzh.zzd() && !TextUtils.isEmpty(str)) {
            zzdif zzdifVar = this.zze;
            zzcex zzr = zzdifVar.zzr();
            zzcex zzs = zzdifVar.zzs();
            if (zzr == null && zzs == null) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid display and video webview are null. Skipping initialization.");
                return null;
            }
            boolean z2 = false;
            boolean z3 = zzr != null;
            boolean z4 = zzs != null;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfj)).booleanValue()) {
                this.zzh.zza();
                int zzc2 = this.zzh.zza().zzc();
                int i = zzc2 - 1;
                if (i != 0) {
                    if (i != 1) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Unknown omid media type: " + (zzc2 != 1 ? zzc2 != 2 ? "UNKNOWN" : "DISPLAY" : "VIDEO") + ". Not initializing Omid.");
                        return null;
                    }
                    if (zzr == null) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid media type was display but there was no display webview.");
                        return null;
                    }
                    z2 = true;
                    z4 = false;
                } else {
                    if (zzs == null) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Omid media type was video but there was no video webview.");
                        return null;
                    }
                    z4 = true;
                }
            } else {
                z2 = z3;
            }
            if (z2) {
                str2 = null;
            } else {
                str2 = "javascript";
                zzr = zzs;
            }
            if (zzr != null) {
                if (!com.google.android.gms.ads.internal.zzv.zzB().zzl(this.zzv)) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to initialize omid in InternalNativeAd");
                    return null;
                }
                VersionInfoParcel versionInfoParcel = this.zzu;
                String str3 = versionInfoParcel.buddyApkVersion + "." + versionInfoParcel.clientJarVersion;
                if (z4) {
                    zzecnVar = zzecn.VIDEO;
                    zzecoVar = zzeco.DEFINED_BY_JAVASCRIPT;
                } else {
                    zzdif zzdifVar2 = this.zze;
                    zzecn zzecnVar2 = zzecn.NATIVE_DISPLAY;
                    zzecoVar = zzdifVar2.zzc() == 3 ? zzeco.UNSPECIFIED : zzeco.ONE_PIXEL;
                    zzecnVar = zzecnVar2;
                }
                zzecr zzb = com.google.android.gms.ads.internal.zzv.zzB().zzb(str3, zzr.zzG(), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "javascript", str2, str, zzecoVar, zzecnVar, this.zzb.zzal);
                if (zzb == null) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to create omid session in InternalNativeAd");
                    return null;
                }
                this.zze.zzW(zzb);
                zzr.zzat(zzb);
                if (z4) {
                    zzfkp zza = zzb.zza();
                    if (zzs != null) {
                        com.google.android.gms.ads.internal.zzv.zzB().zzj(zza, zzs.zzF());
                    }
                    this.zzr = true;
                }
                if (z) {
                    com.google.android.gms.ads.internal.zzv.zzB().zzk(zzb.zza());
                    zzr.zzd("onSdkLoaded", new F2());
                }
                return zzb;
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Webview is null in InternalNativeAd");
        }
        return null;
    }

    public final String zzg() {
        return this.zzh.zzb();
    }

    public final synchronized JSONObject zzi(View view, Map map, Map map2) {
        return this.zzf.zze(view, map, map2, zzaa());
    }

    public final synchronized JSONObject zzj(View view, Map map, Map map2) {
        return this.zzf.zzf(view, map, map2, zzaa());
    }

    @Override // com.google.android.gms.internal.ads.zzcqz
    public final void zzk() {
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdhr
            @Override // java.lang.Runnable
            public final void run() {
                zzdia.zzl(zzdia.this);
            }
        });
        if (this.zze.zzc() != 7) {
            Executor executor = this.zzd;
            final zzdin zzdinVar = this.zzf;
            Objects.requireNonNull(zzdinVar);
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdhs
                @Override // java.lang.Runnable
                public final void run() {
                    zzdin.this.zzq();
                }
            });
        }
        super.zzk();
    }

    public final void zzu(View view) {
        zzecr zzu = this.zze.zzu();
        if (!this.zzh.zzd() || zzu == null || view == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzv.zzB().zzg(zzu.zza(), view);
    }

    public final synchronized void zzv() {
        this.zzf.zzi();
    }

    public final /* synthetic */ void zzw() {
        this.zzf.zzj();
        this.zze.zzI();
    }

    public final /* synthetic */ void zzx(View view, boolean z, int i) {
        zzdkd zzdkdVar = this.zzo;
        if (zzdkdVar == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling performClickForCustomGesture()");
        } else {
            this.zzf.zzp(view, zzdkdVar.zzf(), this.zzo.zzl(), this.zzo.zzm(), z, zzaa(), i);
        }
    }

    public final /* synthetic */ void zzy(boolean z) {
        zzdkd zzdkdVar = this.zzo;
        if (zzdkdVar == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zze("Ad should be associated with an ad view before calling recordCustomClickGesture()");
        } else {
            this.zzf.zzp(null, zzdkdVar.zzf(), this.zzo.zzl(), this.zzo.zzm(), z, zzaa(), 0);
        }
    }
}
