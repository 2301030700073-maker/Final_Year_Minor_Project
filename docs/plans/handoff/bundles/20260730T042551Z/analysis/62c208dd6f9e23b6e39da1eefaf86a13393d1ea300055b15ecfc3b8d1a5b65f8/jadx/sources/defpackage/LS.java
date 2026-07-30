package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzfr;

/* loaded from: classes3.dex */
public final class LS extends C3472or<String, zzb> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ IS f1951do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LS(IS is) {
        super(20);
        this.f1951do = is;
    }

    @Override // defpackage.C3472or
    public final zzb create(String str) {
        String str2 = str;
        Preconditions.checkNotEmpty(str2);
        IS is = this.f1951do;
        is.m2733super();
        Preconditions.checkNotEmpty(str2);
        if (!is.m954volatile(str2)) {
            return null;
        }
        F2 f2 = is.f1524try;
        if (!f2.containsKey(str2) || f2.getOrDefault(str2, null) == null) {
            is.m942implements(str2);
        } else {
            is.m952throws(str2, (zzfr.zzd) f2.getOrDefault(str2, null));
        }
        return is.f1516do.snapshot().get(str2);
    }
}
