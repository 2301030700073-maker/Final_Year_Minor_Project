package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
final class zzhq extends zzhj<Boolean> {
    public zzhq(zzhr zzhrVar, String str, Boolean bool, boolean z) {
        super(zzhrVar, str, bool);
    }

    @Override // com.google.android.gms.internal.measurement.zzhj
    public final /* synthetic */ Boolean zza(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (zzgi.zzc.matcher(str).matches()) {
                return Boolean.TRUE;
            }
            if (zzgi.zzd.matcher(str).matches()) {
                return Boolean.FALSE;
            }
        }
        super.zzb();
        String.valueOf(obj);
        return null;
    }
}
