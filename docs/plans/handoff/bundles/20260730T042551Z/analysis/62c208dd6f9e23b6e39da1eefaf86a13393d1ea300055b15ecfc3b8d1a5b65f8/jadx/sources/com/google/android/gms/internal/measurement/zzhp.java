package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
final class zzhp extends zzhj<Double> {
    public zzhp(zzhr zzhrVar, String str, Double d, boolean z) {
        super(zzhrVar, str, d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzhj
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final Double zza(Object obj) {
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if (obj instanceof String) {
            try {
                return Double.valueOf(Double.parseDouble((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        super.zzb();
        String.valueOf(obj);
        return null;
    }
}
