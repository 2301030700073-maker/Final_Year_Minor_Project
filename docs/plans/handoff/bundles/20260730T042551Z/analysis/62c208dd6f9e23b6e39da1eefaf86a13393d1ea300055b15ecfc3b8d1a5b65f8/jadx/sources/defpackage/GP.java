package defpackage;

import com.google.android.gms.ads.nonagon.signalgeneration.zzbk;
import com.google.android.gms.internal.ads.zzdeh;
import com.google.android.gms.internal.ads.zzgcd;
import java.io.File;

/* loaded from: classes.dex */
public final class GP implements zzgcd, InterfaceC3597qy {

    /* renamed from: do, reason: not valid java name */
    public final Object f1184do;

    public /* synthetic */ GP(Object obj) {
        this.f1184do = obj;
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        InterfaceC3227ki interfaceC3227ki = ((C3993xi) this.f1184do).f16593do;
        C3645ro.m8018this(interfaceC3227ki);
        return interfaceC3227ki;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        ((zzdeh) this.f1184do).zzb(th.getMessage());
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* synthetic */ void zzb(Object obj) {
        ((zzdeh) this.f1184do).zza((zzbk) obj);
    }

    public GP(C0495Sh c0495Sh) {
        this.f1184do = new File(c0495Sh.f3538if, "com.crashlytics.settings.json");
    }
}
