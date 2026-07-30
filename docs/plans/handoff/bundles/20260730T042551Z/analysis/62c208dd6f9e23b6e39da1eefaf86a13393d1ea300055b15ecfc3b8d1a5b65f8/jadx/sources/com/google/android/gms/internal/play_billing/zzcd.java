package com.google.android.gms.internal.play_billing;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes3.dex */
final class zzcd extends zzce {
    private static final zzcd zzb = new zzcd();

    private zzcd() {
        super(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    @Override // com.google.android.gms.internal.play_billing.zzce
    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        return "-∞";
    }

    @Override // com.google.android.gms.internal.play_billing.zzce, java.lang.Comparable
    /* renamed from: zza */
    public final int compareTo(zzce zzceVar) {
        return zzceVar == this ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.play_billing.zzce
    public final void zzc(StringBuilder sb) {
        sb.append("(-∞");
    }

    @Override // com.google.android.gms.internal.play_billing.zzce
    public final void zzd(StringBuilder sb) {
        throw new AssertionError();
    }
}
