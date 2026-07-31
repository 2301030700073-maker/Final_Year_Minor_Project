package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes4.dex */
public final class zzbg extends zzav {
    protected zzbg() {
        this.zza.add(zzbk.FOR_IN);
        this.zza.add(zzbk.FOR_IN_CONST);
        this.zza.add(zzbk.FOR_IN_LET);
        this.zza.add(zzbk.FOR_LET);
        this.zza.add(zzbk.FOR_OF);
        this.zza.add(zzbk.FOR_OF_CONST);
        this.zza.add(zzbk.FOR_OF_LET);
        this.zza.add(zzbk.WHILE);
    }

    private static zzao zzc(zzbe zzbeVar, zzao zzaoVar, zzao zzaoVar2) {
        return zze(zzbeVar, zzaoVar.zzf(), zzaoVar2);
    }

    private static zzao zzd(zzbe zzbeVar, zzao zzaoVar, zzao zzaoVar2) {
        if (zzaoVar instanceof Iterable) {
            return zze(zzbeVar, ((Iterable) zzaoVar).iterator(), zzaoVar2);
        }
        throw new IllegalArgumentException("Non-iterable type in for...of loop.");
    }

    private static zzao zze(zzbe zzbeVar, Iterator it, zzao zzaoVar) {
        if (it != null) {
            while (it.hasNext()) {
                zzao zzb = zzbeVar.zza((zzao) it.next()).zzb((zzae) zzaoVar);
                if (zzb instanceof zzag) {
                    zzag zzagVar = (zzag) zzb;
                    if ("break".equals(zzagVar.zzg())) {
                        return zzao.zzf;
                    }
                    if ("return".equals(zzagVar.zzg())) {
                        return zzagVar;
                    }
                }
            }
        }
        return zzao.zzf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x02b2, code lost:
    
        if ("return".equals(r1.zzg()) != false) goto L70;
     */
    @Override // com.google.android.gms.internal.measurement.zzav
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.zzao zza(java.lang.String r11, com.google.android.gms.internal.measurement.zzg r12, java.util.List r13) {
        /*
            Method dump skipped, instructions count: 770
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbg.zza(java.lang.String, com.google.android.gms.internal.measurement.zzg, java.util.List):com.google.android.gms.internal.measurement.zzao");
    }
}
