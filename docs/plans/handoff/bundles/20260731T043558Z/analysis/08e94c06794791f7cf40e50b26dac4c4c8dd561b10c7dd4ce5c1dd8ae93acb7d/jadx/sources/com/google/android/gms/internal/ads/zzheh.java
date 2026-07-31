package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzheh extends zzgwj {
    private final String zza;
    private final zzhlt zzb;

    /* synthetic */ zzheh(String str, zzhlt zzhltVar, byte[] bArr) {
        this.zza = str;
        this.zzb = zzhltVar;
    }

    public final String toString() {
        String str = this.zza;
        int ordinal = this.zzb.ordinal();
        return String.format("(typeUrl=%s, outputPrefixType=%s)", str, ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? ordinal != 4 ? "UNKNOWN" : "CRUNCHY" : "RAW" : "LEGACY" : "TINK");
    }

    @Override // com.google.android.gms.internal.ads.zzgwj
    public final boolean zza() {
        return this.zzb != zzhlt.RAW;
    }
}
