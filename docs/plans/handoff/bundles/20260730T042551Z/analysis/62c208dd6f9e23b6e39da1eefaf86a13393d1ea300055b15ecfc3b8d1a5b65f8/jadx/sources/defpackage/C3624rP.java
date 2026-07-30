package defpackage;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzau;
import com.google.android.gms.ads.nonagon.signalgeneration.zzbk;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbee;
import com.google.android.gms.internal.ads.zzbyr;
import com.google.android.gms.internal.ads.zzbyy;
import com.google.android.gms.internal.ads.zzfgw;
import com.google.android.gms.internal.ads.zzfhh;
import com.google.android.gms.internal.ads.zzgcd;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: rP, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3624rP implements zzgcd {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzau f15270do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbyr f15271do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbyy f15272do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzfgw f15273do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceFutureC3942wq f15274do;

    public C3624rP(zzau zzauVar, InterfaceFutureC3942wq interfaceFutureC3942wq, zzbyy zzbyyVar, zzbyr zzbyrVar, zzfgw zzfgwVar) {
        this.f15274do = interfaceFutureC3942wq;
        this.f15272do = zzbyyVar;
        this.f15271do = zzbyrVar;
        this.f15273do = zzfgwVar;
        this.f15270do = zzauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        String message = th.getMessage();
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzhC)).booleanValue()) {
            zzv.zzp().zzv(th, "SignalGeneratorImpl.generateSignals");
        } else {
            zzv.zzp().zzw(th, "SignalGeneratorImpl.generateSignals");
        }
        zzfhh w = zzau.w(this.f15274do, this.f15272do);
        if (((Boolean) zzbee.zze.zze()).booleanValue() && w != null) {
            zzfgw zzfgwVar = this.f15273do;
            zzfgwVar.zzh(th);
            zzfgwVar.zzg(false);
            w.zza(zzfgwVar);
            w.zzh();
        }
        zzbyr zzbyrVar = this.f15271do;
        if (zzbyrVar == null) {
            return;
        }
        try {
            if (!"Unknown format is no longer supported.".equals(message)) {
                message = "Internal error. " + message;
            }
            zzbyrVar.zzb(message);
        } catch (RemoteException e) {
            zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzbk zzbkVar = (zzbk) obj;
        zzfhh w = zzau.w(this.f15274do, this.f15272do);
        zzau zzauVar = this.f15270do;
        zzauVar.f9997if.set(true);
        boolean booleanValue = ((Boolean) zzbe.zzc().zza(zzbcl.zzhx)).booleanValue();
        zzbyr zzbyrVar = this.f15271do;
        zzfgw zzfgwVar = this.f15273do;
        if (!booleanValue) {
            if (zzbyrVar != null) {
                try {
                    zzbyrVar.zzb("QueryInfo generation has been disabled.");
                } catch (RemoteException e) {
                    zzo.zzg("QueryInfo generation has been disabled.".concat(e.toString()));
                }
            }
            if (!((Boolean) zzbee.zze.zze()).booleanValue() || w == null) {
                return;
            }
            zzfgwVar.zzc("QueryInfo generation has been disabled.");
            zzfgwVar.zzg(false);
            w.zza(zzfgwVar);
            w.zzh();
            return;
        }
        try {
            try {
                if (zzbkVar == null) {
                    if (zzbyrVar != null) {
                        zzbyrVar.zzc(null, null, null);
                    }
                    zzfgwVar.zzg(true);
                    if (!((Boolean) zzbee.zze.zze()).booleanValue() || w == null) {
                        return;
                    }
                    w.zza(zzfgwVar);
                    w.zzh();
                    return;
                }
                try {
                    if (TextUtils.isEmpty((!TextUtils.isEmpty(zzbkVar.zzc) ? new JSONObject(zzbkVar.zzc) : new JSONObject(zzbkVar.zzb)).optString("request_id", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED))) {
                        zzo.zzj("The request ID is empty in request JSON.");
                        if (zzbyrVar != null) {
                            zzbyrVar.zzb("Internal error: request ID is empty in request JSON.");
                        }
                        zzfgwVar.zzc("Request ID empty");
                        zzfgwVar.zzg(false);
                        if (!((Boolean) zzbee.zze.zze()).booleanValue() || w == null) {
                            return;
                        }
                        w.zza(zzfgwVar);
                        w.zzh();
                        return;
                    }
                    Bundle bundle = zzbkVar.zzf;
                    if (zzauVar.f10001new && bundle != null && bundle.getInt(zzauVar.f9971catch, -1) == -1) {
                        bundle.putInt(zzauVar.f9971catch, zzauVar.f9991do.get());
                    }
                    if (zzauVar.f9994for && bundle != null && TextUtils.isEmpty(bundle.getString(zzauVar.f9970break))) {
                        if (TextUtils.isEmpty(zzauVar.f9972class)) {
                            zzauVar.f9972class = zzv.zzq().zzc(zzauVar.f9974do, zzauVar.f9976do.afmaVersion);
                        }
                        bundle.putString(zzauVar.f9970break, zzauVar.f9972class);
                    }
                    if (zzbyrVar != null) {
                        if (TextUtils.isEmpty(zzbkVar.zzc)) {
                            zzbyrVar.zzc(zzbkVar.zza, zzbkVar.zzb, bundle);
                        } else {
                            zzbyrVar.zzc(zzbkVar.zza, zzbkVar.zzc, bundle);
                        }
                    }
                    zzfgwVar.zzg(true);
                    if (!((Boolean) zzbee.zze.zze()).booleanValue() || w == null) {
                        return;
                    }
                    w.zza(zzfgwVar);
                    w.zzh();
                } catch (JSONException e2) {
                    zzo.zzj("Failed to create JSON object from the request string.");
                    if (zzbyrVar != null) {
                        zzbyrVar.zzb("Internal error for request JSON: " + e2.toString());
                    }
                    zzfgwVar.zzh(e2);
                    zzfgwVar.zzg(false);
                    zzv.zzp().zzw(e2, "SignalGeneratorImpl.generateSignals.onSuccess");
                    if (!((Boolean) zzbee.zze.zze()).booleanValue() || w == null) {
                        return;
                    }
                    w.zza(zzfgwVar);
                    w.zzh();
                }
            } catch (RemoteException e3) {
                zzfgwVar.zzh(e3);
                zzfgwVar.zzg(false);
                zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e3);
                zzv.zzp().zzw(e3, "SignalGeneratorImpl.generateSignals.onSuccess");
                if (!((Boolean) zzbee.zze.zze()).booleanValue() || w == null) {
                    return;
                }
                w.zza(zzfgwVar);
                w.zzh();
            }
        } catch (Throwable th) {
            if (((Boolean) zzbee.zze.zze()).booleanValue() && w != null) {
                w.zza(zzfgwVar);
                w.zzh();
            }
            throw th;
        }
    }
}
