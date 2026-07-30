package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.PushbackInputStream;

/* loaded from: classes.dex */
final class zzbbc extends PushbackInputStream {
    final /* synthetic */ zzbbd zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbbc(zzbbd zzbbdVar, InputStream inputStream, int i) {
        super(inputStream, 1);
        this.zza = zzbbdVar;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        zzbbf.zze(this.zza.zzc);
        super.close();
    }
}
