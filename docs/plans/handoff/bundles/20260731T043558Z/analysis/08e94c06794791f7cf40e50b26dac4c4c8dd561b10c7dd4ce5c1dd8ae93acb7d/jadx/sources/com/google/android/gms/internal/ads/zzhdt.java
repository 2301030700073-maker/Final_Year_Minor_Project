package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayDeque;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhdt extends zzhtn {
    public static final zzhtg zzb(zzhul zzhulVar) throws IOException {
        String str;
        int zzm = zzhulVar.zzm();
        zzhtg zze = zze(zzhulVar, zzm);
        if (zze == null) {
            return zzd(zzhulVar, zzm);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (zzhulVar.zzf()) {
                if (zze instanceof zzhti) {
                    str = zzhulVar.zzh();
                    if (!zzhdv.zza(str)) {
                        throw new IOException("illegal characters in string");
                    }
                } else {
                    str = null;
                }
                int zzm2 = zzhulVar.zzm();
                zzhtg zze2 = zze(zzhulVar, zzm2);
                zzhtg zzd = zze2 == null ? zzd(zzhulVar, zzm2) : zze2;
                if (zze instanceof zzhtf) {
                    ((zzhtf) zze).zza(zzd);
                } else {
                    zzhti zzhtiVar = (zzhti) zze;
                    if (zzhtiVar.zzc(str)) {
                        String.valueOf(str);
                        throw new IOException("duplicate key: ".concat(String.valueOf(str)));
                    }
                    zzhtiVar.zza(str, zzd);
                }
                if (zze2 != null) {
                    arrayDeque.addLast(zze);
                    if (arrayDeque.size() > 100) {
                        throw new IOException("too many recursions");
                    }
                    zze = zzd;
                } else {
                    continue;
                }
            } else {
                if (zze instanceof zzhtf) {
                    zzhulVar.zzc();
                } else {
                    zzhulVar.zze();
                }
                if (arrayDeque.isEmpty()) {
                    return zze;
                }
                zze = (zzhtg) arrayDeque.removeLast();
            }
        }
    }

    private static final zzhtg zzd(zzhul zzhulVar, int i) throws IOException {
        int i2 = i - 1;
        if (i2 == 5) {
            String zzi = zzhulVar.zzi();
            if (zzhdv.zza(zzi)) {
                return new zzhtk(zzi);
            }
            throw new IOException("illegal characters in string");
        }
        if (i2 == 6) {
            return new zzhtk(new zzhdu(zzhulVar.zzi()));
        }
        if (i2 == 7) {
            return new zzhtk(Boolean.valueOf(zzhulVar.zzj()));
        }
        if (i2 != 8) {
            throw new IllegalStateException("Unexpected token: ".concat(zzhum.zza(i)));
        }
        zzhulVar.zzk();
        return zzhth.zza;
    }

    @Nullable
    private static final zzhtg zze(zzhul zzhulVar, int i) throws IOException {
        int i2 = i - 1;
        if (i2 == 0) {
            zzhulVar.zzb();
            return new zzhtf();
        }
        if (i2 != 2) {
            return null;
        }
        zzhulVar.zzd();
        return new zzhti();
    }

    @Override // com.google.android.gms.internal.ads.zzhtn
    public final /* bridge */ /* synthetic */ void zza(zzhun zzhunVar, Object obj) throws IOException {
        throw null;
    }
}
