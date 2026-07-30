package com.google.android.gms.internal.wearable;

/* loaded from: classes3.dex */
final class zzeg extends zzee {
    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* synthetic */ int zza(Object obj) {
        return ((zzef) obj).zza();
    }

    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* synthetic */ int zzb(Object obj) {
        return ((zzef) obj).zzb();
    }

    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* synthetic */ Object zzc(Object obj) {
        return ((zzbv) obj).zzc;
    }

    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* bridge */ /* synthetic */ Object zzd(Object obj, Object obj2) {
        zzef zzefVar = (zzef) obj2;
        return zzefVar.equals(zzef.zzc()) ? obj : zzef.zzd((zzef) obj, zzefVar);
    }

    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* synthetic */ Object zze() {
        return zzef.zze();
    }

    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* bridge */ /* synthetic */ void zzf(Object obj, int i, long j) {
        ((zzef) obj).zzh(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.wearable.zzee
    public final void zzg(Object obj) {
        ((zzbv) obj).zzc.zzf();
    }

    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* synthetic */ void zzh(Object obj, Object obj2) {
        ((zzbv) obj).zzc = (zzef) obj2;
    }

    @Override // com.google.android.gms.internal.wearable.zzee
    public final /* synthetic */ void zzi(Object obj, zzew zzewVar) {
        ((zzef) obj).zzi(zzewVar);
    }
}
