package com.google.android.gms.internal.wearable;

/* loaded from: classes3.dex */
final class zzdi {
    private static final zzdh zza;
    private static final zzdh zzb;

    static {
        zzdh zzdhVar;
        try {
            zzdhVar = (zzdh) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzdhVar = null;
        }
        zza = zzdhVar;
        zzb = new zzdh();
    }

    public static zzdh zza() {
        return zza;
    }

    public static zzdh zzb() {
        return zzb;
    }
}
