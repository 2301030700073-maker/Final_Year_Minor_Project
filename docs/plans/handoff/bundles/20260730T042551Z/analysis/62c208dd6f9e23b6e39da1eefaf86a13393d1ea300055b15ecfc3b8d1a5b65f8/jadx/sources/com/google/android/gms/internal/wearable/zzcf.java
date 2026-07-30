package com.google.android.gms.internal.wearable;

import java.io.IOException;

/* loaded from: classes3.dex */
public class zzcf extends IOException {
    private zzdc zza;

    public zzcf(IOException iOException) {
        super(iOException.getMessage(), iOException);
        this.zza = null;
    }

    public static zzce zza() {
        return new zzce("Protocol message tag had invalid wire type.");
    }

    public static zzcf zzb() {
        return new zzcf("Protocol message contained an invalid tag (zero).");
    }

    public static zzcf zzc() {
        return new zzcf("Protocol message had invalid UTF-8.");
    }

    public static zzcf zzd() {
        return new zzcf("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzcf zze() {
        return new zzcf("Failed to parse the message.");
    }

    public static zzcf zzg() {
        return new zzcf("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final zzcf zzf(zzdc zzdcVar) {
        this.zza = zzdcVar;
        return this;
    }

    public zzcf(String str) {
        super(str);
        this.zza = null;
    }
}
