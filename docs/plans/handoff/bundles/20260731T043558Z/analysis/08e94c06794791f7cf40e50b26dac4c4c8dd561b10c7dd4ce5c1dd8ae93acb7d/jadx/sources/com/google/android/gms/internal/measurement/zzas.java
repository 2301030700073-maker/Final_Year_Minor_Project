package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes4.dex */
public final class zzas implements Iterable, zzao {
    private final String zza;

    public zzas(String str) {
        if (str == null) {
            throw new IllegalArgumentException("StringValue cannot be null.");
        }
        this.zza = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzas) {
            return this.zza.equals(((zzas) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new zzar(this);
    }

    public final String toString() {
        String str = this.zza;
        StringBuilder sb = new StringBuilder(str.length() + 2);
        sb.append("\"");
        sb.append(str);
        sb.append("\"");
        return sb.toString();
    }

    final /* synthetic */ String zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String zzc() {
        return this.zza;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0418  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0571  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x05c7  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0611  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x064b  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x027e  */
    @Override // com.google.android.gms.internal.measurement.zzao
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.zzao zzcA(java.lang.String r21, com.google.android.gms.internal.measurement.zzg r22, java.util.List r23) {
        /*
            Method dump skipped, instructions count: 1792
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzas.zzcA(java.lang.String, com.google.android.gms.internal.measurement.zzg, java.util.List):com.google.android.gms.internal.measurement.zzao");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double zzd() {
        String str = this.zza;
        if (str.isEmpty()) {
            return Double.valueOf(0.0d);
        }
        try {
            return Double.valueOf(str);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean zze() {
        return Boolean.valueOf(!this.zza.isEmpty());
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator zzf() {
        return new zzaq(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao zzt() {
        return new zzas(this.zza);
    }
}
