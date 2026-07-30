package com.google.android.gms.internal.wearable;

/* loaded from: classes3.dex */
final class zzcy {
    private static final zzcx zza;
    private static final zzcx zzb;

    static {
        zzcx zzcxVar;
        try {
            zzcxVar = (zzcx) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzcxVar = null;
        }
        zza = zzcxVar;
        zzb = new zzcx();
    }

    public static zzcx zza() {
        return zza;
    }

    public static zzcx zzb() {
        return zzb;
    }
}
