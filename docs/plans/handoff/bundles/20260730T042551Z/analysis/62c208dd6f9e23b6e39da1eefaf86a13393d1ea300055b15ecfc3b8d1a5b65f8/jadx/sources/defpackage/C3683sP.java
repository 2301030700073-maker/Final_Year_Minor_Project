package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.client.zzbs;
import com.google.android.gms.ads.internal.client.zzbu;
import com.google.android.gms.ads.internal.client.zzbv;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.client.zzfi;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbuh;

/* renamed from: sP, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3683sP extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f15447do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzba f15448do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbpe f15449do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f15450do;

    public C3683sP(zzba zzbaVar, Context context, String str, zzbpe zzbpeVar) {
        this.f15447do = context;
        this.f15450do = str;
        this.f15449do = zzbpeVar;
        this.f15448do = zzbaVar;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do */
    public final /* bridge */ /* synthetic */ Object mo614do() {
        zzba.m5544do(this.f15447do, "native_ad");
        return new zzfi();
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for */
    public final Object mo615for() {
        Context context = this.f15447do;
        zzbcl.zza(context);
        boolean booleanValue = ((Boolean) zzbe.zzc().zza(zzbcl.zzkA)).booleanValue();
        zzbpe zzbpeVar = this.f15449do;
        String str = this.f15450do;
        zzba zzbaVar = this.f15448do;
        if (!booleanValue) {
            return zzbaVar.f9577do.zza(context, str, zzbpeVar);
        }
        try {
            IBinder zze = ((zzbv) zzs.zzb(context, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl", new zzq() { // from class: com.google.android.gms.ads.internal.client.zzaq
                @Override // com.google.android.gms.ads.internal.util.client.zzq
                public final Object zza(Object obj) {
                    IBinder iBinder = (IBinder) obj;
                    if (iBinder == null) {
                        return null;
                    }
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
                    return queryLocalInterface instanceof zzbv ? (zzbv) queryLocalInterface : new zzbv(iBinder);
                }
            })).zze(new BinderC3652rv(context), str, zzbpeVar, 244410000);
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return queryLocalInterface instanceof zzbu ? (zzbu) queryLocalInterface : new zzbs(zze);
        } catch (RemoteException | zzr | NullPointerException e) {
            zzbaVar.f9583do = zzbuh.zza(context);
            zzbaVar.f9583do.zzh(e, "ClientApiBroker.createAdLoaderBuilder");
            return null;
        }
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if */
    public final Object mo616if(zzcp zzcpVar) {
        return zzcpVar.zzb(new BinderC3652rv(this.f15447do), this.f15450do, this.f15449do, 244410000);
    }
}
