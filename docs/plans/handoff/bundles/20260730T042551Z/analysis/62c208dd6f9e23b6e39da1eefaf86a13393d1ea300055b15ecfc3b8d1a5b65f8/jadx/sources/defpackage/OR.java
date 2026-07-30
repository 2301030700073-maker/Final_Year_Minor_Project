package defpackage;

import com.google.android.gms.ads.internal.client.zzbq;
import com.google.android.gms.ads.internal.client.zzfi;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;

/* loaded from: classes.dex */
public final class OR extends zzbq {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzfi f2644do;

    public /* synthetic */ OR(zzfi zzfiVar) {
        this.f2644do = zzfiVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbr
    public final String zze() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbr
    public final String zzf() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbr
    public final void zzg(zzm zzmVar) {
        zzh(zzmVar, 1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbr
    public final void zzh(zzm zzmVar, int i) {
        zzo.zzg("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzf.zza.post(new NR(this, 0));
    }

    @Override // com.google.android.gms.ads.internal.client.zzbr
    public final boolean zzi() {
        return false;
    }
}
