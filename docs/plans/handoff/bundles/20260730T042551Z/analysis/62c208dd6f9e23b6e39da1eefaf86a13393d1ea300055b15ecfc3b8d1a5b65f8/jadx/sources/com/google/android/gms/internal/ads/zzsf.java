package com.google.android.gms.internal.ads;

import android.media.MediaCodec;

/* loaded from: classes.dex */
public class zzsf extends zzhf {
    public final String zza;
    public final int zzb;

    public zzsf(Throwable th, zzsg zzsgVar) {
        super("Decoder failed: ".concat(String.valueOf(zzsgVar == null ? null : zzsgVar.zza)), th);
        boolean z = th instanceof MediaCodec.CodecException;
        String diagnosticInfo = z ? ((MediaCodec.CodecException) th).getDiagnosticInfo() : null;
        this.zza = diagnosticInfo;
        this.zzb = zzei.zza >= 23 ? z ? ((MediaCodec.CodecException) th).getErrorCode() : 0 : zzei.zzm(diagnosticInfo);
    }
}
