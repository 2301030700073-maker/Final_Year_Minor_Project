package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfzb implements zzfzg {
    private final byte[] zza;

    public zzfzb(byte[] bArr) {
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzfzg
    public final /* synthetic */ void zza(Object obj, OutputStream outputStream) throws IOException {
        outputStream.write((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfzg
    public final /* bridge */ /* synthetic */ Object zzb(InputStream inputStream) {
        try {
            return zzgsd.zza(inputStream);
        } catch (IOException e) {
            throw new zzfzc("Cannot read bytes.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfzg
    public final /* synthetic */ Object zzc() {
        return this.zza;
    }
}
