package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbzw;
import com.google.android.gms.internal.ads.zzcex;
import com.google.android.gms.internal.ads.zzfsc;
import com.google.android.gms.internal.ads.zzfsd;
import com.google.android.gms.internal.ads.zzfse;
import com.google.android.gms.internal.ads.zzfsf;
import com.google.android.gms.internal.ads.zzfsy;
import com.google.android.gms.internal.ads.zzftc;
import com.google.android.gms.internal.ads.zzftd;
import com.google.android.gms.internal.ads.zzftq;
import defpackage.C0806cM;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzz {

    /* renamed from: do, reason: not valid java name */
    public C0806cM f9724do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzcex f9725do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9728do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f9727do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzfse f9726do = null;

    /* renamed from: if, reason: not valid java name */
    public String f9729if = null;

    /* renamed from: do, reason: not valid java name */
    public final void m5550do(String str, String str2) {
        com.google.android.gms.ads.internal.util.zze.zza(str);
        if (this.f9725do != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("message", str);
            hashMap.put(NativeProtocol.WEB_DIALOG_ACTION, str2);
            zzbzw.zzf.execute(new zzx(this, "onError", hashMap));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final zzftd m5551if() {
        zzftc zzc = zzftd.zzc();
        if (!((Boolean) zzbe.zzc().zza(zzbcl.zzlq)).booleanValue() || TextUtils.isEmpty(this.f9729if)) {
            String str = this.f9727do;
            if (str != null) {
                zzc.zzb(str);
            } else {
                m5550do("Missing session token and/or appId", "onLMDupdate");
            }
        } else {
            zzc.zza(this.f9729if);
        }
        return zzc.zzc();
    }

    public final synchronized void zza(zzcex zzcexVar, Context context) {
        this.f9725do = zzcexVar;
        if (!zzk(context)) {
            m5550do("Unable to bind", "on_play_store_bind");
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(NativeProtocol.WEB_DIALOG_ACTION, "fetch_completed");
        zzbzw.zzf.execute(new zzx(this, "on_play_store_bind", hashMap));
    }

    public final void zzb() {
        zzfse zzfseVar;
        if (!this.f9728do || (zzfseVar = this.f9726do) == null) {
            com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
        } else {
            zzfseVar.zza(m5551if(), this.f9724do);
            zzbzw.zzf.execute(new zzx(this, "onLMDOverlayCollapse", new HashMap()));
        }
    }

    public final void zzc() {
        zzfse zzfseVar;
        if (!this.f9728do || (zzfseVar = this.f9726do) == null) {
            com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
            return;
        }
        zzfsc zzc = zzfsd.zzc();
        if (!((Boolean) zzbe.zzc().zza(zzbcl.zzlq)).booleanValue() || TextUtils.isEmpty(this.f9729if)) {
            String str = this.f9727do;
            if (str != null) {
                zzc.zzb(str);
            } else {
                m5550do("Missing session token and/or appId", "onLMDupdate");
            }
        } else {
            zzc.zza(this.f9729if);
        }
        zzfseVar.zzb(zzc.zzc(), this.f9724do);
    }

    public final void zzg() {
        zzfse zzfseVar;
        if (!this.f9728do || (zzfseVar = this.f9726do) == null) {
            com.google.android.gms.ads.internal.util.zze.zza("LastMileDelivery not connected");
        } else {
            zzfseVar.zzc(m5551if(), this.f9724do);
            zzbzw.zzf.execute(new zzx(this, "onLMDOverlayExpand", new HashMap()));
        }
    }

    public final void zzj(zzcex zzcexVar, zzfsy zzfsyVar) {
        if (zzcexVar == null) {
            m5550do("adWebview missing", "onLMDShow");
            return;
        }
        this.f9725do = zzcexVar;
        if (!this.f9728do && !zzk(zzcexVar.getContext())) {
            m5550do("LMDOverlay not bound", "on_play_store_bind");
            return;
        }
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzlq)).booleanValue()) {
            this.f9729if = zzfsyVar.zzh();
        }
        if (this.f9724do == null) {
            this.f9724do = new C0806cM(this, 2);
        }
        zzfse zzfseVar = this.f9726do;
        if (zzfseVar != null) {
            zzfseVar.zzd(zzfsyVar, this.f9724do);
        }
    }

    public final synchronized boolean zzk(Context context) {
        if (!zzftq.zza(context)) {
            return false;
        }
        try {
            this.f9726do = zzfsf.zza(context);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.util.zze.zza("Error connecting LMD Overlay service");
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "LastMileDeliveryOverlay.bindLastMileDeliveryService");
        }
        if (this.f9726do == null) {
            this.f9728do = false;
            return false;
        }
        if (this.f9724do == null) {
            this.f9724do = new C0806cM(this, 2);
        }
        this.f9728do = true;
        return true;
    }
}
