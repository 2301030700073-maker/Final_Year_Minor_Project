package defpackage;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzel;

/* loaded from: classes.dex */
public final class DR extends zzbd {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzel f616do;

    public DR(zzel zzelVar) {
        this.f616do = zzelVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbd, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        zzel zzelVar = this.f616do;
        zzelVar.f9635do.zzb(zzelVar.zzi());
        super.onAdFailedToLoad(loadAdError);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbd, com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        zzel zzelVar = this.f616do;
        zzelVar.f9635do.zzb(zzelVar.zzi());
        super.onAdLoaded();
    }
}
