package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.zzbi;
import com.google.android.gms.ads.internal.client.zzbl;
import com.google.android.gms.ads.internal.client.zzbo;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzcc;
import com.google.android.gms.ads.internal.client.zzcm;
import com.google.android.gms.ads.internal.client.zzcq;
import com.google.android.gms.ads.internal.client.zzct;
import com.google.android.gms.ads.internal.client.zzdr;
import com.google.android.gms.ads.internal.client.zzdy;
import com.google.android.gms.ads.internal.client.zzeb;
import com.google.android.gms.ads.internal.client.zzef;
import com.google.android.gms.ads.internal.client.zzga;
import com.google.android.gms.ads.internal.client.zzs;
import com.google.android.gms.ads.internal.client.zzy;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzava;
import com.google.android.gms.internal.ads.zzbag;
import com.google.android.gms.internal.ads.zzbdg;
import com.google.android.gms.internal.ads.zzbdx;
import com.google.android.gms.internal.ads.zzbtn;
import com.google.android.gms.internal.ads.zzbtq;
import com.google.android.gms.internal.ads.zzbwc;
import com.google.android.gms.internal.ads.zzbzw;
import defpackage.BinderC3652rv;
import defpackage.C2639dV;
import defpackage.CallableC3866vV;
import defpackage.Cif;
import defpackage.HV;
import defpackage.InterfaceC0456Qm;
import defpackage.InterfaceFutureC3942wq;
import defpackage.KV;
import defpackage.ViewOnTouchListenerC3454oV;
import java.util.Iterator;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class zzu extends zzbx {

    /* renamed from: do, reason: not valid java name */
    public final KV f9876do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f9877do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AsyncTask f9878do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public WebView f9879do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzbl f9880do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzs f9881do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final VersionInfoParcel f9882do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzava f9883do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceFutureC3942wq f9884do = zzbzw.zza.zzb(new CallableC3866vV(this));

    public zzu(Context context, zzs zzsVar, String str, VersionInfoParcel versionInfoParcel) {
        this.f9877do = context;
        this.f9882do = versionInfoParcel;
        this.f9881do = zzsVar;
        this.f9879do = new WebView(context);
        this.f9876do = new KV(context, str);
        n(0);
        this.f9879do.setVerticalScrollBarEnabled(false);
        this.f9879do.getSettings().setJavaScriptEnabled(true);
        this.f9879do.setWebViewClient(new C2639dV(this));
        this.f9879do.setOnTouchListener(new ViewOnTouchListenerC3454oV(this));
    }

    public final void n(int i) {
        if (this.f9879do == null) {
            return;
        }
        this.f9879do.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzA() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzB() {
        Preconditions.checkMainThread("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzC(zzbi zzbiVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzD(zzbl zzblVar) {
        this.f9880do = zzblVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzE(zzcc zzccVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzF(zzs zzsVar) {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzG(zzcm zzcmVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzH(zzbag zzbagVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzI(zzy zzyVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzJ(zzct zzctVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzK(zzef zzefVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzL(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzM(zzbtn zzbtnVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzN(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzO(zzbdg zzbdgVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzP(zzdr zzdrVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzQ(zzbtq zzbtqVar, String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzR(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzS(zzbwc zzbwcVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzT(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzU(zzga zzgaVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzW(InterfaceC0456Qm interfaceC0456Qm) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzX() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final boolean zzY() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final boolean zzZ() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final boolean zzaa() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final boolean zzab(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        TreeMap treeMap;
        Preconditions.checkNotNull(this.f9879do, "This Search Ad has already been torn down");
        KV kv = this.f9876do;
        kv.getClass();
        kv.f1823if = zzmVar.zzj.zza;
        Bundle bundle = zzmVar.zzm;
        Bundle bundle2 = bundle != null ? bundle.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle2 != null) {
            String str = (String) zzbdx.zzc.zze();
            Iterator<String> it = bundle2.keySet().iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                treeMap = kv.f1821do;
                if (!hasNext) {
                    break;
                }
                String next = it.next();
                if (str.equals(next)) {
                    kv.f1822for = bundle2.getString(next);
                } else if (next.startsWith("csa_")) {
                    treeMap.put(next.substring(4), bundle2.getString(next));
                }
            }
            treeMap.put("SDKVersion", this.f9882do.afmaVersion);
            if (((Boolean) zzbdx.zza.zze()).booleanValue()) {
                Bundle zzb = zzad.zzb(kv.f1819do, (String) zzbdx.zzb.zze());
                for (String str2 : zzb.keySet()) {
                    treeMap.put(str2, zzb.get(str2).toString());
                }
            }
        }
        this.f9878do = new HV(this).execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzac(zzcq zzcqVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final Bundle zzd() {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final zzs zzg() {
        return this.f9881do;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final zzbl zzi() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final zzcm zzj() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final zzdy zzk() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final zzeb zzl() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final InterfaceC0456Qm zzn() {
        Preconditions.checkMainThread("getAdFrame must be called on the main UI thread.");
        return new BinderC3652rv(this.f9879do);
    }

    public final String zzq() {
        String str = this.f9876do.f1822for;
        if (true == TextUtils.isEmpty(str)) {
            str = "www.google.com";
        }
        return Cif.m6908case("https://", str, (String) zzbdx.zzd.zze());
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final String zzr() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final String zzs() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final String zzt() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzx() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.f9878do.cancel(true);
        this.f9884do.cancel(false);
        this.f9879do.destroy();
        this.f9879do = null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzy(com.google.android.gms.ads.internal.client.zzm zzmVar, zzbo zzboVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzby
    public final void zzz() {
        Preconditions.checkMainThread("pause must be called on the main UI thread.");
    }
}
