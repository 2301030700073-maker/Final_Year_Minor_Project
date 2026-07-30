package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzejs implements zzelc {
    final /* synthetic */ zzejt zza;

    public zzejs(zzejt zzejtVar) {
        this.zza = zzejtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzi = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelc
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcom zzcomVar;
        zzcom zzcomVar2;
        zzcom zzcomVar3;
        zzcom zzcomVar4 = (zzcom) obj;
        synchronized (this.zza) {
            zzejt zzejtVar = this.zza;
            zzcomVar = zzejtVar.zzi;
            if (zzcomVar != null) {
                zzcomVar3 = zzejtVar.zzi;
                zzcomVar3.zzb();
            }
            this.zza.zzi = zzcomVar4;
            zzcomVar2 = this.zza.zzi;
            zzcomVar2.zzk();
        }
    }
}
