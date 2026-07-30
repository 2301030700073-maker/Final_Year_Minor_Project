package defpackage;

import com.google.android.gms.ads.internal.util.client.zzx;

/* loaded from: classes.dex */
public final class FU extends zzx {

    /* renamed from: do, reason: not valid java name */
    public final double f1055do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f1056do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f1057do;

    /* renamed from: if, reason: not valid java name */
    public final int f1058if;

    public FU(int i, int i2, double d, boolean z) {
        this.f1056do = i;
        this.f1058if = i2;
        this.f1055do = d;
        this.f1057do = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzx) {
            zzx zzxVar = (zzx) obj;
            if (this.f1056do == zzxVar.zzc() && this.f1058if == zzxVar.zzb() && Double.doubleToLongBits(this.f1055do) == Double.doubleToLongBits(zzxVar.zza()) && this.f1057do == zzxVar.zzd()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        double d = this.f1055do;
        return ((((((this.f1056do ^ 1000003) * 1000003) ^ this.f1058if) * 1000003) ^ ((int) (Double.doubleToLongBits(d) ^ (Double.doubleToLongBits(d) >>> 32)))) * 1000003) ^ (true != this.f1057do ? 1237 : 1231);
    }

    public final String toString() {
        return "PingStrategy{maxAttempts=" + this.f1056do + ", initialBackoffMs=" + this.f1058if + ", backoffMultiplier=" + this.f1055do + ", bufferAfterMaxAttempts=" + this.f1057do + "}";
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzx
    public final double zza() {
        return this.f1055do;
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzx
    public final int zzb() {
        return this.f1058if;
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzx
    public final int zzc() {
        return this.f1056do;
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzx
    public final boolean zzd() {
        return this.f1057do;
    }
}
