package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbyw;
import com.google.android.gms.internal.ads.zzbyx;

/* renamed from: bP, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0750bP extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f8391do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbpe f8392do;

    public C0750bP(Context context, zzbpe zzbpeVar) {
        this.f8391do = context;
        this.f8392do = zzbpeVar;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Object mo614do() {
        return null;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for */
    public final Object mo615for() {
        Context context = this.f8391do;
        try {
            return ((zzbyx) zzs.zzb(context, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", new zzq() { // from class: com.google.android.gms.ads.internal.client.zzag
                @Override // com.google.android.gms.ads.internal.util.client.zzq
                public final Object zza(Object obj) {
                    return zzbyw.zzb((IBinder) obj);
                }
            })).zze(new BinderC3652rv(context), this.f8392do, 244410000);
        } catch (RemoteException | zzr | NullPointerException unused) {
            return null;
        }
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if */
    public final Object mo616if(zzcp zzcpVar) {
        return zzcpVar.zzq(new BinderC3652rv(this.f8391do), this.f8392do, 244410000);
    }
}
