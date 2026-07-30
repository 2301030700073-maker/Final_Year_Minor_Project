package com.google.android.gms.internal.wearable;

/* loaded from: classes3.dex */
final class zzbm {
    private static final zzbk zza = new zzbl();
    private static final zzbk zzb;

    static {
        zzbk zzbkVar;
        try {
            zzbkVar = (zzbk) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzbkVar = null;
        }
        zzb = zzbkVar;
    }

    public static zzbk zza() {
        zzbk zzbkVar = zzb;
        if (zzbkVar != null) {
            return zzbkVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    public static zzbk zzb() {
        return zza;
    }
}
