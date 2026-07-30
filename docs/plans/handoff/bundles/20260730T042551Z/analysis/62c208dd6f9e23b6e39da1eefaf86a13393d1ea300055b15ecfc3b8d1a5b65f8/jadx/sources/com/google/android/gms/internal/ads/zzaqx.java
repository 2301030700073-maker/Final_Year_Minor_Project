package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzaqx extends zzhec {
    static {
        zzhej.zzb(zzaqx.class);
    }

    public zzaqx(zzhed zzhedVar, zzaqw zzaqwVar) {
        zze(zzhedVar, zzhedVar.zzc(), zzaqwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhec, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final String toString() {
        String obj = this.zzc.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 7);
        sb.append("model(");
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
