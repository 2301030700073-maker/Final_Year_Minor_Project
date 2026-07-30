package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import defpackage.C3808ua;
import defpackage.C3817uj;
import defpackage.InterfaceC3749ta;

/* loaded from: classes.dex */
public final class zzj implements InterfaceC3749ta {
    private final zzam zza;
    private final zzu zzb;
    private final zzbk zzc;
    private final Object zzd = new Object();
    private final Object zze = new Object();
    private boolean zzf = false;
    private boolean zzg = false;
    private C3808ua zzh = new C3808ua(new C3808ua.Cdo());

    public zzj(zzam zzamVar, zzu zzuVar, zzbk zzbkVar) {
        this.zza = zzamVar;
        this.zzb = zzuVar;
        this.zzc = zzbkVar;
    }

    @Override // defpackage.InterfaceC3749ta
    public final boolean canRequestAds() {
        if (!this.zza.zzk()) {
            int zza = !zzc() ? 0 : this.zza.zza();
            if (zza != 1 && zza != 3) {
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.InterfaceC3749ta
    public final int getConsentStatus() {
        if (zzc()) {
            return this.zza.zza();
        }
        return 0;
    }

    public final InterfaceC3749ta.Cfor getPrivacyOptionsRequirementStatus() {
        return !zzc() ? InterfaceC3749ta.Cfor.UNKNOWN : this.zza.zzb();
    }

    @Override // defpackage.InterfaceC3749ta
    public final boolean isConsentFormAvailable() {
        return this.zzc.zzf();
    }

    @Override // defpackage.InterfaceC3749ta
    public final void requestConsentInfoUpdate(Activity activity, C3808ua c3808ua, InterfaceC3749ta.Cif cif, InterfaceC3749ta.Cdo cdo) {
        synchronized (this.zzd) {
            this.zzf = true;
        }
        this.zzh = c3808ua;
        this.zzb.zzc(activity, c3808ua, cif, cdo);
    }

    public final void reset() {
        this.zzc.zzd(null);
        this.zza.zze();
        synchronized (this.zzd) {
            this.zzf = false;
        }
    }

    public final void zza(Activity activity) {
        if (!zzc() || zzd()) {
            zzc();
            zzd();
        } else {
            zzb(true);
            this.zzb.zzc(activity, this.zzh, new InterfaceC3749ta.Cif() { // from class: com.google.android.gms.internal.consent_sdk.zzh
                @Override // defpackage.InterfaceC3749ta.Cif
                public final void onConsentInfoUpdateSuccess() {
                    zzj.this.zzb(false);
                }
            }, new InterfaceC3749ta.Cdo() { // from class: com.google.android.gms.internal.consent_sdk.zzi
                @Override // defpackage.InterfaceC3749ta.Cdo
                public final void onConsentInfoUpdateFailure(C3817uj c3817uj) {
                    zzj.this.zzb(false);
                }
            });
        }
    }

    public final void zzb(boolean z) {
        synchronized (this.zze) {
            this.zzg = z;
        }
    }

    public final boolean zzc() {
        boolean z;
        synchronized (this.zzd) {
            z = this.zzf;
        }
        return z;
    }

    public final boolean zzd() {
        boolean z;
        synchronized (this.zze) {
            z = this.zzg;
        }
        return z;
    }
}
