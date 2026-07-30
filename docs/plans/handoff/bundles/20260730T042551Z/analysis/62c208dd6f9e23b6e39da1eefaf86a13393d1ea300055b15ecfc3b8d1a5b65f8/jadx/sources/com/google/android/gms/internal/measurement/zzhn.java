package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
final class zzhn extends zzhj<Long> {
    public zzhn(zzhr zzhrVar, String str, Long l, boolean z) {
        super(zzhrVar, str, l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.measurement.zzhj
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final Long zza(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        super.zzb();
        String.valueOf(obj);
        return null;
    }
}
