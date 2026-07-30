package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzdk;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.util.zzay;

/* loaded from: classes.dex */
public final class CP extends zzdk {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f372do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzay f373do;

    public CP(zzay zzayVar, Context context) {
        this.f372do = context;
        this.f373do = zzayVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdl
    public final void zze(zze zzeVar) {
        if (zzeVar == null) {
            return;
        }
        String str = zzeVar.zzb;
        this.f373do.getClass();
        zzay.m5565do(this.f372do, str, true, true);
    }
}
