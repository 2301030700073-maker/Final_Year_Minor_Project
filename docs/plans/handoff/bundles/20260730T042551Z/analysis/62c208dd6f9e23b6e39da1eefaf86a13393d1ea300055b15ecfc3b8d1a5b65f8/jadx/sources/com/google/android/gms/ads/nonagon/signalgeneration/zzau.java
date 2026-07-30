package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.internal.ads.zzava;
import com.google.android.gms.internal.ads.zzavb;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbdq;
import com.google.android.gms.internal.ads.zzbee;
import com.google.android.gms.internal.ads.zzbeq;
import com.google.android.gms.internal.ads.zzbtt;
import com.google.android.gms.internal.ads.zzbuc;
import com.google.android.gms.internal.ads.zzbyr;
import com.google.android.gms.internal.ads.zzbyt;
import com.google.android.gms.internal.ads.zzbyy;
import com.google.android.gms.internal.ads.zzbzw;
import com.google.android.gms.internal.ads.zzcgx;
import com.google.android.gms.internal.ads.zzcva;
import com.google.android.gms.internal.ads.zzdbk;
import com.google.android.gms.internal.ads.zzdnl;
import com.google.android.gms.internal.ads.zzdre;
import com.google.android.gms.internal.ads.zzdsb;
import com.google.android.gms.internal.ads.zzfch;
import com.google.android.gms.internal.ads.zzfcn;
import com.google.android.gms.internal.ads.zzfdi;
import com.google.android.gms.internal.ads.zzfgv;
import com.google.android.gms.internal.ads.zzfgw;
import com.google.android.gms.internal.ads.zzfhh;
import com.google.android.gms.internal.ads.zzfhk;
import com.google.android.gms.internal.ads.zzfja;
import com.google.android.gms.internal.ads.zzfuc;
import com.google.android.gms.internal.ads.zzfve;
import com.google.android.gms.internal.ads.zzgbn;
import com.google.android.gms.internal.ads.zzgbo;
import com.google.android.gms.internal.ads.zzgby;
import com.google.android.gms.internal.ads.zzgch;
import com.google.android.gms.internal.ads.zzgcs;
import defpackage.BinderC3652rv;
import defpackage.C3576qd;
import defpackage.C3624rP;
import defpackage.C3692sc;
import defpackage.C3742tP;
import defpackage.C3869vc;
import defpackage.C3919wP;
import defpackage.Creturn;
import defpackage.InterfaceC0456Qm;
import defpackage.InterfaceFutureC3942wq;
import defpackage.V1;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzau extends zzbyt {
    public static final /* synthetic */ int zze = 0;

    /* renamed from: class, reason: not valid java name */
    public String f9972class;

    /* renamed from: do, reason: not valid java name */
    public Context f9974do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final VersionInfoParcel f9976do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzf f9977do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzo f9978do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzava f9979do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzbdq f9980do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzbuc f9981do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzcgx f9982do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzdsb f9983do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzfcn f9984do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzfdi f9985do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzfja f9986do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzgcs f9987do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f9988do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledExecutorService f9989do;

    /* renamed from: for, reason: not valid java name */
    public final ArrayList f9993for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList f9996if;

    /* renamed from: new, reason: not valid java name */
    public final ArrayList f10000new;

    /* renamed from: try, reason: not valid java name */
    public static final ArrayList f9969try = new ArrayList(Arrays.asList("/aclk", "/pcs/click", "/dbm/clk"));

    /* renamed from: case, reason: not valid java name */
    public static final ArrayList f9966case = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));

    /* renamed from: else, reason: not valid java name */
    public static final ArrayList f9967else = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion", "/dbm/ad"));

    /* renamed from: goto, reason: not valid java name */
    public static final ArrayList f9968goto = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Point f9975do = new Point();

    /* renamed from: if, reason: not valid java name */
    public Point f9995if = new Point();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicInteger f9991do = new AtomicInteger(0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f9990do = new AtomicBoolean(false);

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f9997if = new AtomicBoolean(false);

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final AtomicInteger f9998if = new AtomicInteger(0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f9992do = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzha)).booleanValue();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f9999if = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgZ)).booleanValue();

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final boolean f9994for = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhc)).booleanValue();

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final boolean f10001new = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhe)).booleanValue();

    /* renamed from: break, reason: not valid java name */
    public final String f9970break = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhd);

    /* renamed from: catch, reason: not valid java name */
    public final String f9971catch = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhf);

    /* renamed from: const, reason: not valid java name */
    public final String f9973const = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhg);

    public zzau(zzcgx zzcgxVar, Context context, zzava zzavaVar, zzfdi zzfdiVar, zzgcs zzgcsVar, ScheduledExecutorService scheduledExecutorService, zzdsb zzdsbVar, zzfja zzfjaVar, VersionInfoParcel versionInfoParcel, zzbdq zzbdqVar, zzfcn zzfcnVar, zzo zzoVar, zzf zzfVar) {
        ArrayList arrayList;
        this.f9982do = zzcgxVar;
        this.f9974do = context;
        this.f9979do = zzavaVar;
        this.f9984do = zzfcnVar;
        this.f9985do = zzfdiVar;
        this.f9987do = zzgcsVar;
        this.f9989do = scheduledExecutorService;
        this.f9983do = zzdsbVar;
        this.f9986do = zzfjaVar;
        this.f9976do = versionInfoParcel;
        this.f9980do = zzbdqVar;
        this.f9978do = zzoVar;
        this.f9977do = zzfVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhh)).booleanValue()) {
            this.f9988do = v((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhi));
            this.f9996if = v((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhj));
            this.f9993for = v((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhk));
            arrayList = v((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhl));
        } else {
            this.f9988do = f9969try;
            this.f9996if = f9966case;
            this.f9993for = f9967else;
            arrayList = f9968goto;
        }
        this.f10000new = arrayList;
    }

    public static boolean t(Uri uri, ArrayList arrayList, ArrayList arrayList2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host == null || path == null) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (path.contains((String) it.next())) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    if (host.endsWith((String) it2.next())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final Uri u(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl=");
        if (indexOf == -1) {
            indexOf = uri2.indexOf("?adurl=");
        }
        if (indexOf == -1) {
            return uri.buildUpon().appendQueryParameter(str, str2).build();
        }
        int i = indexOf + 1;
        StringBuilder sb = new StringBuilder(uri2.substring(0, i));
        Creturn.m7980goto(sb, str, "=", str2, "&");
        sb.append(uri2.substring(i));
        return Uri.parse(sb.toString());
    }

    public static final ArrayList v(String str) {
        String[] split = TextUtils.split(str, ",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : split) {
            if (!zzfve.zzd(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    public static /* bridge */ /* synthetic */ zzfhh w(InterfaceFutureC3942wq interfaceFutureC3942wq, zzbyy zzbyyVar) {
        if (!zzfhk.zza() || !((Boolean) zzbee.zze.zze()).booleanValue()) {
            return null;
        }
        try {
            zzfhh zza = ((zzac) zzgch.zzp(interfaceFutureC3942wq)).zza();
            zza.zzd(new ArrayList(Collections.singletonList(zzbyyVar.zzb)));
            com.google.android.gms.ads.internal.client.zzm zzmVar = zzbyyVar.zzd;
            zza.zzb(zzmVar == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : zzmVar.zzp);
            zza.zzf(zzbyyVar.zzd.zzm);
            return zza;
        } catch (ExecutionException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "SignalGeneratorImpl.getConfiguredCriticalUserJourney");
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final zzac n(Context context, String str, String str2, com.google.android.gms.ads.internal.client.zzs zzsVar, com.google.android.gms.ads.internal.client.zzm zzmVar, int i, String str3, Bundle bundle, zzbyy zzbyyVar) {
        com.google.android.gms.ads.internal.client.zzs zzsVar2;
        char c;
        zzfch zzfchVar = new zzfch();
        if ("REWARDED".equals(str2)) {
            zzfchVar.zzp().zza(2);
        } else if ("REWARDED_INTERSTITIAL".equals(str2)) {
            zzfchVar.zzp().zza(3);
        }
        zzab zzp = this.f9982do.zzp();
        zzcva zzcvaVar = new zzcva();
        zzcvaVar.zzf(context);
        zzfchVar.zzt(str == null ? "adUnitId" : str);
        zzfchVar.zzH(zzmVar == null ? new com.google.android.gms.ads.internal.client.zzn().zza() : zzmVar);
        if (zzsVar == null) {
            switch (str2.hashCode()) {
                case -1999289321:
                    if (str2.equals("NATIVE")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -428325382:
                    if (str2.equals("APP_OPEN_AD")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 543046670:
                    if (str2.equals("REWARDED")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 1854800829:
                    if (str2.equals("REWARDED_INTERSTITIAL")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 1951953708:
                    if (str2.equals("BANNER")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            zzsVar2 = c != 0 ? (c == 1 || c == 2) ? com.google.android.gms.ads.internal.client.zzs.zzd() : c != 3 ? c != 4 ? new com.google.android.gms.ads.internal.client.zzs() : com.google.android.gms.ads.internal.client.zzs.zzb() : com.google.android.gms.ads.internal.client.zzs.zzc() : new com.google.android.gms.ads.internal.client.zzs(context, AdSize.BANNER);
        } else {
            zzsVar2 = zzsVar;
        }
        zzfchVar.zzs(zzsVar2);
        zzfchVar.zzz(true);
        zzfchVar.zzA(bundle);
        zzcvaVar.zzk(zzfchVar.zzJ());
        zzcvaVar.zzi(i);
        zzp.zza(zzcvaVar.zzl());
        zzax zzaxVar = new zzax();
        zzaxVar.zzb(str2);
        zzaxVar.zzc(str3);
        zzaxVar.zzd(zzbyyVar);
        zzp.zzb(new zzaz(zzaxVar));
        new zzdbk();
        return zzp.zzc();
    }

    public final zzgby o(final String str) {
        final zzdnl[] zzdnlVarArr = new zzdnl[1];
        InterfaceFutureC3942wq zza = this.f9985do.zza();
        zzgbo zzgboVar = new zzgbo() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzaf
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                zzau zzauVar = zzau.this;
                zzdnl[] zzdnlVarArr2 = zzdnlVarArr;
                String str2 = str;
                zzdnl zzdnlVar = (zzdnl) obj;
                zzauVar.getClass();
                zzdnlVarArr2[0] = zzdnlVar;
                Context context = zzauVar.f9974do;
                zzbuc zzbucVar = zzauVar.f9981do;
                Map map = zzbucVar.zzb;
                JSONObject zzd = zzbv.zzd(context, map, map, zzbucVar.zza, null);
                JSONObject zzg = zzbv.zzg(zzauVar.f9974do, zzauVar.f9981do.zza);
                JSONObject zzf = zzbv.zzf(zzauVar.f9981do.zza);
                JSONObject zze2 = zzbv.zze(zzauVar.f9974do, zzauVar.f9981do.zza);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("asset_view_signal", zzd);
                jSONObject.put("ad_view_signal", zzg);
                jSONObject.put("scroll_view_signal", zzf);
                jSONObject.put("lock_screen_signal", zze2);
                if ("google.afma.nativeAds.getPublisherCustomRenderedClickSignals".equals(str2)) {
                    jSONObject.put("click_signal", zzbv.zzc(null, zzauVar.f9974do, zzauVar.f9995if, zzauVar.f9975do));
                }
                return zzdnlVar.zzg(str2, jSONObject);
            }
        };
        zzgcs zzgcsVar = this.f9987do;
        InterfaceFutureC3942wq zzn = zzgch.zzn(zza, zzgboVar, zzgcsVar);
        zzn.addListener(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzag
            @Override // java.lang.Runnable
            public final void run() {
                zzau zzauVar = zzau.this;
                zzdnl[] zzdnlVarArr2 = zzdnlVarArr;
                zzauVar.getClass();
                zzdnl zzdnlVar = zzdnlVarArr2[0];
                if (zzdnlVar != null) {
                    zzauVar.f9985do.zzb(zzgch.zzh(zzdnlVar));
                }
            }
        }, zzgcsVar);
        return (zzgby) zzgch.zze((zzgby) zzgch.zzm((zzgby) zzgch.zzo(zzgby.zzu(zzn), ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhy)).intValue(), TimeUnit.MILLISECONDS, this.f9989do), new zzfuc() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzam
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                ArrayList arrayList = zzau.f9969try;
                return ((JSONObject) obj).optString("nas");
            }
        }, zzgcsVar), Exception.class, new zzfuc() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzan
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                ArrayList arrayList = zzau.f9969try;
                com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, (Exception) obj);
                return null;
            }
        }, zzgcsVar);
    }

    public final void p() {
        if (((Boolean) zzbeq.zzc.zze()).booleanValue()) {
            this.f9978do.zzb();
        } else {
            zzgch.zzr(((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkV)).booleanValue() ? zzgch.zzk(new zzgbn() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzad
                @Override // com.google.android.gms.internal.ads.zzgbn
                public final InterfaceFutureC3942wq zza() {
                    zzau zzauVar = zzau.this;
                    return zzauVar.n(zzauVar.f9974do, null, AdFormat.BANNER.name(), null, null, 0, null, new Bundle(), null).zzb();
                }
            }, zzbzw.zza) : n(this.f9974do, null, AdFormat.BANNER.name(), null, null, 0, null, new Bundle(), null).zzb(), new C3576qd(this, 1), this.f9982do.zzC());
        }
    }

    public final void q() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzju)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjx)).booleanValue()) {
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjB)).booleanValue() && this.f9990do.getAndSet(true)) {
                return;
            }
            p();
        }
    }

    public final void r(List list, final InterfaceC0456Qm interfaceC0456Qm, zzbtt zzbttVar, boolean z) {
        ArrayList arrayList;
        ArrayList arrayList2;
        InterfaceFutureC3942wq interfaceFutureC3942wq;
        Map map;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhx)).booleanValue()) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The updating URL feature is not enabled.");
            try {
                zzbttVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                return;
            }
        }
        Iterator it = list.iterator();
        int i = 0;
        while (true) {
            boolean hasNext = it.hasNext();
            arrayList = this.f9996if;
            arrayList2 = this.f9988do;
            if (!hasNext) {
                break;
            } else if (t((Uri) it.next(), arrayList2, arrayList)) {
                i++;
            }
        }
        if (i > 1) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Multiple google urls found: ".concat(String.valueOf(list)));
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final Uri uri = (Uri) it2.next();
            if (t(uri, arrayList2, arrayList)) {
                Callable callable = new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzah
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        zzfcn zzfcnVar;
                        zzau zzauVar = zzau.this;
                        Uri uri2 = uri;
                        InterfaceC0456Qm interfaceC0456Qm2 = interfaceC0456Qm;
                        zzauVar.getClass();
                        try {
                            uri2 = (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlR)).booleanValue() || (zzfcnVar = zzauVar.f9984do) == null) ? zzauVar.f9979do.zza(uri2, zzauVar.f9974do, (View) BinderC3652rv.o(interfaceC0456Qm2), null) : zzfcnVar.zza(uri2, zzauVar.f9974do, (View) BinderC3652rv.o(interfaceC0456Qm2), null);
                        } catch (zzavb e2) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzk(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e2);
                        }
                        if (uri2.getQueryParameter("ms") != null) {
                            return uri2;
                        }
                        throw new Exception("Failed to append spam signals to click url.");
                    }
                };
                zzgcs zzgcsVar = this.f9987do;
                InterfaceFutureC3942wq zzb = zzgcsVar.zzb(callable);
                zzbuc zzbucVar = this.f9981do;
                if ((zzbucVar == null || (map = zzbucVar.zzb) == null || map.isEmpty()) ? false : true) {
                    interfaceFutureC3942wq = zzgch.zzn(zzb, new zzgbo() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzai
                        @Override // com.google.android.gms.internal.ads.zzgbo
                        public final InterfaceFutureC3942wq zza(Object obj) {
                            InterfaceFutureC3942wq zzm;
                            zzm = zzgch.zzm(r0.o("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new zzfuc(r0, (Uri) obj) { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzaj
                                public final /* synthetic */ Uri zza;

                                {
                                    this.zza = r2;
                                }

                                @Override // com.google.android.gms.internal.ads.zzfuc
                                public final Object apply(Object obj2) {
                                    Uri uri2 = this.zza;
                                    String str = (String) obj2;
                                    ArrayList arrayList4 = zzau.f9969try;
                                    return !TextUtils.isEmpty(str) ? zzau.u(uri2, "nas", str) : uri2;
                                }
                            }, zzau.this.f9987do);
                            return zzm;
                        }
                    }, zzgcsVar);
                } else {
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Asset view map is empty.");
                    interfaceFutureC3942wq = zzb;
                }
            } else {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Not a Google URL: ".concat(String.valueOf(uri)));
                interfaceFutureC3942wq = zzgch.zzh(uri);
            }
            arrayList3.add(interfaceFutureC3942wq);
        }
        zzgch.zzr(zzgch.zzd(arrayList3), new C3919wP(this, zzbttVar, z), this.f9982do.zzC());
    }

    public final void s(final List list, final InterfaceC0456Qm interfaceC0456Qm, zzbtt zzbttVar, boolean z) {
        Map map;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhx)).booleanValue()) {
            try {
                zzbttVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                return;
            }
        }
        Callable callable = new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzao
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzau zzauVar = zzau.this;
                List<Uri> list2 = list;
                InterfaceC0456Qm interfaceC0456Qm2 = interfaceC0456Qm;
                zzava zzavaVar = zzauVar.f9979do;
                String zzh = zzavaVar.zzc() != null ? zzavaVar.zzc().zzh(zzauVar.f9974do, (View) BinderC3652rv.o(interfaceC0456Qm2), null) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                if (TextUtils.isEmpty(zzh)) {
                    throw new Exception("Failed to get view signals.");
                }
                ArrayList arrayList = new ArrayList();
                for (Uri uri : list2) {
                    if (zzau.t(uri, zzauVar.f9993for, zzauVar.f10000new)) {
                        arrayList.add(zzau.u(uri, "ms", zzh));
                    } else {
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Not a Google URL: ".concat(String.valueOf(uri)));
                        arrayList.add(uri);
                    }
                }
                if (arrayList.isEmpty()) {
                    throw new Exception("Empty impression URLs result.");
                }
                return arrayList;
            }
        };
        zzgcs zzgcsVar = this.f9987do;
        InterfaceFutureC3942wq zzb = zzgcsVar.zzb(callable);
        zzbuc zzbucVar = this.f9981do;
        if ((zzbucVar == null || (map = zzbucVar.zzb) == null || map.isEmpty()) ? false : true) {
            zzb = zzgch.zzn(zzb, new zzgbo() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzap
                @Override // com.google.android.gms.internal.ads.zzgbo
                public final InterfaceFutureC3942wq zza(Object obj) {
                    final zzau zzauVar = zzau.this;
                    final ArrayList arrayList = (ArrayList) obj;
                    return zzgch.zzm(zzauVar.o("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new zzfuc() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzae
                        @Override // com.google.android.gms.internal.ads.zzfuc
                        public final Object apply(Object obj2) {
                            zzau zzauVar2 = zzau.this;
                            List<Uri> list2 = arrayList;
                            String str = (String) obj2;
                            zzauVar2.getClass();
                            ArrayList arrayList2 = new ArrayList();
                            for (Uri uri : list2) {
                                if (!zzau.t(uri, zzauVar2.f9993for, zzauVar2.f10000new) || TextUtils.isEmpty(str)) {
                                    arrayList2.add(uri);
                                } else {
                                    arrayList2.add(zzau.u(uri, "nas", str));
                                }
                            }
                            return arrayList2;
                        }
                    }, zzauVar.f9987do);
                }
            }, zzgcsVar);
        } else {
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Asset view map is empty.");
        }
        zzgch.zzr(zzb, new C3742tP(this, zzbttVar, z), this.f9982do.zzC());
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final InterfaceC0456Qm zze(InterfaceC0456Qm interfaceC0456Qm, InterfaceC0456Qm interfaceC0456Qm2, String str, InterfaceC0456Qm interfaceC0456Qm3) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjH)).booleanValue()) {
            return new BinderC3652rv(null);
        }
        Context context = (Context) BinderC3652rv.o(interfaceC0456Qm);
        C3869vc c3869vc = (C3869vc) BinderC3652rv.o(interfaceC0456Qm2);
        C3692sc c3692sc = (C3692sc) BinderC3652rv.o(interfaceC0456Qm3);
        zzbdq zzbdqVar = this.f9980do;
        zzbdqVar.zzg(context, c3869vc, str, c3692sc);
        if (((Boolean) zzbeq.zzc.zze()).booleanValue()) {
            this.f9978do.zzb();
        }
        if (((Boolean) zzbeq.zza.zze()).booleanValue()) {
            this.f9977do.zzb();
        }
        return new BinderC3652rv(zzbdqVar.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzf(InterfaceC0456Qm interfaceC0456Qm, final zzbyy zzbyyVar, zzbyr zzbyrVar) {
        InterfaceFutureC3942wq zzh;
        InterfaceFutureC3942wq zzb;
        InterfaceFutureC3942wq interfaceFutureC3942wq;
        final Bundle bundle = new Bundle();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzck)).booleanValue()) {
            bundle.putLong(zzdre.PUBLIC_API_CALL.zza(), zzbyyVar.zzd.zzz);
            V1.m2496class(bundle, zzdre.DYNAMITE_ENTER.zza());
        }
        Context context = (Context) BinderC3652rv.o(interfaceC0456Qm);
        this.f9974do = context;
        zzfgw zza = zzfgv.zza(context, 22);
        zza.zzi();
        final int i = (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhq)).booleanValue() && zzbyyVar.zzd.zzc.getBoolean("optimize_for_app_start", false) && Objects.equals(zzaa.zzc(zzbyyVar.zzd), "requester_type_8")) ? zzbyyVar.zze == 2 ? 2 : 1 : 0;
        if ("UNKNOWN".equals(zzbyyVar.zzb)) {
            List arrayList = new ArrayList();
            zzbcc zzbccVar = zzbcl.zzhp;
            if (!((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).isEmpty()) {
                arrayList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).split(","));
            }
            if (arrayList.contains(zzaa.zzc(zzbyyVar.zzd))) {
                interfaceFutureC3942wq = zzgch.zzg(new IllegalArgumentException("Unknown format is no longer supported."));
                zzb = zzgch.zzg(new IllegalArgumentException("Unknown format is no longer supported."));
                zzgch.zzr(zzb, new C3624rP(this, interfaceFutureC3942wq, zzbyyVar, zzbyrVar, zza), this.f9982do.zzC());
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkV)).booleanValue()) {
            zzgcs zzgcsVar = zzbzw.zza;
            zzh = zzgcsVar.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzak
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzau zzauVar = zzau.this;
                    zzbyy zzbyyVar2 = zzbyyVar;
                    return zzauVar.n(zzauVar.f9974do, zzbyyVar2.zza, zzbyyVar2.zzb, zzbyyVar2.zzc, zzbyyVar2.zzd, i, zzbyyVar2.zzf, bundle, zzbyyVar2);
                }
            });
            zzb = zzgch.zzn(zzh, new zzgbo() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzal
                @Override // com.google.android.gms.internal.ads.zzgbo
                public final InterfaceFutureC3942wq zza(Object obj) {
                    return ((zzac) obj).zzb();
                }
            }, zzgcsVar);
        } else {
            zzac n = n(this.f9974do, zzbyyVar.zza, zzbyyVar.zzb, zzbyyVar.zzc, zzbyyVar.zzd, i, zzbyyVar.zzf, bundle, zzbyyVar);
            zzh = zzgch.zzh(n);
            zzb = n.zzb();
        }
        interfaceFutureC3942wq = zzh;
        zzgch.zzr(zzb, new C3624rP(this, interfaceFutureC3942wq, zzbyyVar, zzbyrVar, zza), this.f9982do.zzC());
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzg(zzbuc zzbucVar) {
        this.f9981do = zzbucVar;
        this.f9985do.zzc(1);
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzh(List list, InterfaceC0456Qm interfaceC0456Qm, zzbtt zzbttVar) {
        r(list, interfaceC0456Qm, zzbttVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzi(List list, InterfaceC0456Qm interfaceC0456Qm, zzbtt zzbttVar) {
        s(list, interfaceC0456Qm, zzbttVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    @SuppressLint({"AddJavascriptInterface"})
    public final void zzj(InterfaceC0456Qm interfaceC0456Qm) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjt)).booleanValue()) {
            zzbcc zzbccVar = zzbcl.zzho;
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
                q();
            }
            WebView webView = (WebView) BinderC3652rv.o(interfaceC0456Qm);
            if (webView == null) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg("The webView cannot be null.");
                return;
            }
            zzgcs zzgcsVar = zzbzw.zzf;
            zzf zzfVar = this.f9977do;
            final zzj zzjVar = new zzj(webView, zzfVar, zzgcsVar);
            webView.addJavascriptInterface(new TaggingLibraryJsInterface(webView, this.f9979do, this.f9983do, this.f9986do, this.f9984do, this.f9978do, this.f9977do, zzjVar), "gmaSdk");
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjD)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzp().zzs();
            }
            if (((Boolean) zzbeq.zza.zze()).booleanValue()) {
                zzfVar.zzb();
                if (((Boolean) zzbeq.zzb.zze()).booleanValue()) {
                    zzbzw.zzd.scheduleWithFixedDelay(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzi
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzj.this.zzb();
                        }
                    }, 0L, ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjE)).intValue(), TimeUnit.MILLISECONDS);
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbccVar)).booleanValue()) {
                q();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzk(InterfaceC0456Qm interfaceC0456Qm) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhx)).booleanValue()) {
            MotionEvent motionEvent = (MotionEvent) BinderC3652rv.o(interfaceC0456Qm);
            zzbuc zzbucVar = this.f9981do;
            this.f9975do = zzbv.zza(motionEvent, zzbucVar == null ? null : zzbucVar.zza);
            if (motionEvent.getAction() == 0) {
                this.f9995if = this.f9975do;
            }
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            Point point = this.f9975do;
            obtain.setLocation(point.x, point.y);
            this.f9979do.zzd(obtain);
            obtain.recycle();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzl(List list, InterfaceC0456Qm interfaceC0456Qm, zzbtt zzbttVar) {
        r(list, interfaceC0456Qm, zzbttVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzm(List list, InterfaceC0456Qm interfaceC0456Qm, zzbtt zzbttVar) {
        s(list, interfaceC0456Qm, zzbttVar, false);
    }
}
