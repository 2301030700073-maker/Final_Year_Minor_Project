package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgmi extends zzgmb {
    private final Object zza;

    zzgmi(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgmi) {
            return this.zza.equals(((zzgmi) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        String obj = this.zza.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 13);
        sb.append("Optional.of(");
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgmb
    public final Object zza(Object obj) {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgmb
    public final zzgmb zzb(zzglu zzgluVar) {
        Object apply = zzgluVar.apply(this.zza);
        zzgmd.zzk(apply, "the Function passed to Optional.transform() must not return null.");
        return new zzgmi(apply);
    }
}
