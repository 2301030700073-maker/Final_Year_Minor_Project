package defpackage;

import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.client.zzfo;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbgf;
import com.google.android.gms.internal.ads.zzbgi;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbuh;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class QP extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ View f2936do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzba f2937do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ HashMap f2938do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ HashMap f2939if;

    public QP(zzba zzbaVar, View view, HashMap hashMap, HashMap hashMap2) {
        this.f2936do = view;
        this.f2938do = hashMap;
        this.f2939if = hashMap2;
        this.f2937do = zzbaVar;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Object mo614do() {
        zzba.m5544do(this.f2936do.getContext(), "native_ad_view_holder_delegate");
        return new zzfo();
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for */
    public final Object mo615for() {
        View view = this.f2936do;
        zzbcl.zza(view.getContext());
        boolean booleanValue = ((Boolean) zzbe.zzc().zza(zzbcl.zzkA)).booleanValue();
        HashMap hashMap = this.f2939if;
        HashMap hashMap2 = this.f2938do;
        zzba zzbaVar = this.f2937do;
        if (!booleanValue) {
            return zzbaVar.f9581do.zza(view, hashMap2, hashMap);
        }
        try {
            return zzbgf.zze(((zzbgj) zzs.zzb(view.getContext(), "com.google.android.gms.ads.ChimeraNativeAdViewHolderDelegateCreatorImpl", new zzq() { // from class: com.google.android.gms.ads.internal.client.zzay
                @Override // com.google.android.gms.ads.internal.util.client.zzq
                public final Object zza(Object obj) {
                    return zzbgi.zzb((IBinder) obj);
                }
            })).zze(new BinderC3652rv(view), new BinderC3652rv(hashMap2), new BinderC3652rv(hashMap)));
        } catch (RemoteException | zzr | NullPointerException e) {
            zzbaVar.f9583do = zzbuh.zza(view.getContext());
            zzbaVar.f9583do.zzh(e, "ClientApiBroker.createNativeAdViewHolderDelegate");
            return null;
        }
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if */
    public final Object mo616if(zzcp zzcpVar) {
        return zzcpVar.zzk(new BinderC3652rv(this.f2936do), new BinderC3652rv(this.f2938do), new BinderC3652rv(this.f2939if));
    }
}
