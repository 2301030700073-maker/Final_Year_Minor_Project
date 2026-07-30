package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.client.zzfn;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbfz;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbgd;
import com.google.android.gms.internal.ads.zzbuh;

/* loaded from: classes.dex */
public final class NP extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f2372do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ FrameLayout f2373do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzba f2374do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ FrameLayout f2375if;

    public NP(zzba zzbaVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.f2373do = frameLayout;
        this.f2375if = frameLayout2;
        this.f2372do = context;
        this.f2374do = zzbaVar;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Object mo614do() {
        zzba.m5544do(this.f2372do, "native_ad_view_delegate");
        return new zzfn();
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for */
    public final Object mo615for() {
        Context context = this.f2372do;
        zzbcl.zza(context);
        boolean booleanValue = ((Boolean) zzbe.zzc().zza(zzbcl.zzkA)).booleanValue();
        FrameLayout frameLayout = this.f2375if;
        FrameLayout frameLayout2 = this.f2373do;
        zzba zzbaVar = this.f2374do;
        if (!booleanValue) {
            return zzbaVar.f9580do.zza(context, frameLayout2, frameLayout);
        }
        try {
            return zzbfz.zzdy(((zzbgd) zzs.zzb(context, "com.google.android.gms.ads.ChimeraNativeAdViewDelegateCreatorImpl", new zzq() { // from class: com.google.android.gms.ads.internal.client.zzaw
                @Override // com.google.android.gms.ads.internal.util.client.zzq
                public final Object zza(Object obj) {
                    return zzbgc.zzb((IBinder) obj);
                }
            })).zze(new BinderC3652rv(context), new BinderC3652rv(frameLayout2), new BinderC3652rv(frameLayout), 244410000));
        } catch (RemoteException | zzr | NullPointerException e) {
            zzbaVar.f9583do = zzbuh.zza(context);
            zzbaVar.f9583do.zzh(e, "ClientApiBroker.createNativeAdViewDelegate");
            return null;
        }
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if */
    public final Object mo616if(zzcp zzcpVar) {
        return zzcpVar.zzj(new BinderC3652rv(this.f2373do), new BinderC3652rv(this.f2375if));
    }
}
