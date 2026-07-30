package com.google.android.gms.internal.ads;

import com.facebook.internal.NativeProtocol;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzdsh {
    private final String zze;
    private final zzdsb zzf;
    private final List zzb = new ArrayList();
    private boolean zzc = false;
    private boolean zzd = false;
    private final com.google.android.gms.ads.internal.util.zzg zza = com.google.android.gms.ads.internal.zzv.zzp().zzi();

    public zzdsh(String str, zzdsb zzdsbVar) {
        this.zze = str;
        this.zzf = zzdsbVar;
    }

    private final Map zzg() {
        Map zza = this.zzf.zza();
        zza.put("tms", Long.toString(com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime(), 10));
        zza.put("tid", this.zza.zzN() ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : this.zze);
        return zza;
    }

    public final synchronized void zza(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzch)).booleanValue()) {
            Map zzg = zzg();
            zzg.put(NativeProtocol.WEB_DIALOG_ACTION, "aaia");
            zzg.put("aair", "MalformedJson");
            this.zzb.add(zzg);
        }
    }

    public final synchronized void zzb(String str, String str2) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzch)).booleanValue()) {
            Map zzg = zzg();
            zzg.put(NativeProtocol.WEB_DIALOG_ACTION, "adapter_init_finished");
            zzg.put("ancn", str);
            zzg.put("rqe", str2);
            this.zzb.add(zzg);
        }
    }

    public final synchronized void zzc(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzch)).booleanValue()) {
            Map zzg = zzg();
            zzg.put(NativeProtocol.WEB_DIALOG_ACTION, "adapter_init_started");
            zzg.put("ancn", str);
            this.zzb.add(zzg);
        }
    }

    public final synchronized void zzd(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzch)).booleanValue()) {
            Map zzg = zzg();
            zzg.put(NativeProtocol.WEB_DIALOG_ACTION, "adapter_init_finished");
            zzg.put("ancn", str);
            this.zzb.add(zzg);
        }
    }

    public final synchronized void zze() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzch)).booleanValue() && !this.zzd) {
            Map zzg = zzg();
            zzg.put(NativeProtocol.WEB_DIALOG_ACTION, "init_finished");
            this.zzb.add(zzg);
            Iterator it = this.zzb.iterator();
            while (it.hasNext()) {
                this.zzf.zzg((Map) it.next());
            }
            this.zzd = true;
        }
    }

    public final synchronized void zzf() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzch)).booleanValue() && !this.zzc) {
            Map zzg = zzg();
            zzg.put(NativeProtocol.WEB_DIALOG_ACTION, "init_started");
            this.zzb.add(zzg);
            this.zzc = true;
        }
    }
}
