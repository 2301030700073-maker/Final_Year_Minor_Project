package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.client.zzdv;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbuh;

/* loaded from: classes.dex */
public final class VO extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f4118do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbpe f4119do;

    public VO(Context context, zzbpe zzbpeVar) {
        this.f4118do = context;
        this.f4119do = zzbpeVar;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Object mo614do() {
        zzba.m5544do(this.f4118do, "out_of_context_tester");
        return null;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for */
    public final Object mo615for() {
        Context context = this.f4118do;
        BinderC3652rv binderC3652rv = new BinderC3652rv(context);
        zzbcl.zza(context);
        if (!((Boolean) zzbe.zzc().zza(zzbcl.zzjm)).booleanValue()) {
            return null;
        }
        try {
            return ((zzdv) zzs.zzb(context, "com.google.android.gms.ads.DynamiteOutOfContextTesterCreatorImpl", new zzq() { // from class: com.google.android.gms.ads.internal.client.zzae
                @Override // com.google.android.gms.ads.internal.util.client.zzq
                public final Object zza(Object obj) {
                    IBinder iBinder = (IBinder) obj;
                    if (iBinder == null) {
                        return null;
                    }
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator");
                    return queryLocalInterface instanceof zzdv ? (zzdv) queryLocalInterface : new zzdv(iBinder);
                }
            })).zze(binderC3652rv, this.f4119do, 244410000);
        } catch (RemoteException | zzr | NullPointerException e) {
            zzbuh.zza(context).zzh(e, "ClientApiBroker.getOutOfContextTester");
            return null;
        }
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if */
    public final Object mo616if(zzcp zzcpVar) {
        Context context = this.f4118do;
        BinderC3652rv binderC3652rv = new BinderC3652rv(context);
        zzbcl.zza(context);
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzjm)).booleanValue()) {
            return zzcpVar.zzi(binderC3652rv, this.f4119do, 244410000);
        }
        return null;
    }
}
