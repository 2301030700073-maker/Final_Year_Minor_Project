package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzbta;

/* renamed from: fP, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2750fP extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f12934do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbpe f12935do;

    public C2750fP(Context context, zzbpe zzbpeVar) {
        this.f12934do = context;
        this.f12935do = zzbpeVar;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Object mo614do() {
        return null;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for */
    public final Object mo615for() {
        Context context = this.f12934do;
        try {
            return ((zzbta) zzs.zzb(context, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl", new zzq() { // from class: com.google.android.gms.ads.internal.client.zzai
                @Override // com.google.android.gms.ads.internal.util.client.zzq
                public final Object zza(Object obj) {
                    return zzbsz.zzb((IBinder) obj);
                }
            })).zze(new BinderC3652rv(context), this.f12935do, 244410000);
        } catch (RemoteException | zzr | NullPointerException unused) {
            return null;
        }
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if */
    public final Object mo616if(zzcp zzcpVar) {
        return zzcpVar.zzm(new BinderC3652rv(this.f12934do), this.f12935do, 244410000);
    }
}
