package defpackage;

import com.google.android.gms.ads.internal.util.client.zzw;

/* renamed from: oU, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3453oU extends zzw {

    /* renamed from: do, reason: not valid java name */
    public final int f14797do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f14798do;

    /* renamed from: if, reason: not valid java name */
    public final int f14799if;

    public C3453oU(int i, int i2, boolean z) {
        this.f14797do = i;
        this.f14799if = i2;
        this.f14798do = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzw) {
            zzw zzwVar = (zzw) obj;
            if (this.f14797do == zzwVar.zzb() && this.f14799if == zzwVar.zza() && this.f14798do == zzwVar.zzc()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (true != this.f14798do ? 1237 : 1231) ^ ((((this.f14797do ^ 1000003) * 1000003) ^ this.f14799if) * 1000003);
    }

    public final String toString() {
        return "OfflineAdConfig{impressionPrerequisite=" + this.f14797do + ", clickPrerequisite=" + this.f14799if + ", notificationFlowEnabled=" + this.f14798do + "}";
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzw
    public final int zza() {
        return this.f14799if;
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzw
    public final int zzb() {
        return this.f14797do;
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzw
    public final boolean zzc() {
        return this.f14798do;
    }
}
