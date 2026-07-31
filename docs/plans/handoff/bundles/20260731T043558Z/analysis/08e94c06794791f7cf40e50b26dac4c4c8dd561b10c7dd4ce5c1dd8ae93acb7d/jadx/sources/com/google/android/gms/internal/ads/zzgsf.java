package com.google.android.gms.internal.ads;

import io.sentry.instrumentation.file.SentryFileOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgsf extends zzgsa {
    private final File zza;
    private final zzgpo zzb;

    public final String toString() {
        String obj = this.zza.toString();
        int length = obj.length();
        String valueOf = String.valueOf(this.zzb);
        StringBuilder sb = new StringBuilder(length + 19 + String.valueOf(valueOf).length() + 1);
        sb.append("Files.asByteSink(");
        sb.append(obj);
        sb.append(", ");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgsa
    public final /* bridge */ /* synthetic */ OutputStream zza() throws IOException {
        boolean contains = this.zzb.contains(zzgse.APPEND);
        File file = this.zza;
        return SentryFileOutputStream.Factory.create(new FileOutputStream(file, contains), file, contains);
    }

    /* synthetic */ zzgsf(File file, zzgse[] zzgseVarArr, byte[] bArr) {
        file.getClass();
        this.zza = file;
        this.zzb = zzgpo.zzp(zzgseVarArr);
    }
}
