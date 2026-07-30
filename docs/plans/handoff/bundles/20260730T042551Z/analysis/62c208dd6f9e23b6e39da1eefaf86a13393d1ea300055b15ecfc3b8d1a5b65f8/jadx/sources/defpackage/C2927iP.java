package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.util.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.internal.ads.zzbkl;
import com.google.android.gms.internal.ads.zzbkt;
import com.google.android.gms.internal.ads.zzbku;
import com.google.android.gms.internal.ads.zzbky;
import com.google.android.gms.internal.ads.zzbpe;

/* renamed from: iP, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2927iP extends AbstractC3154jQ {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f13500do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ OnH5AdsEventListener f13501do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbpe f13502do;

    public C2927iP(Context context, zzbpe zzbpeVar, OnH5AdsEventListener onH5AdsEventListener) {
        this.f13500do = context;
        this.f13502do = zzbpeVar;
        this.f13501do = onH5AdsEventListener;
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: do */
    public final /* synthetic */ Object mo614do() {
        return new zzbky();
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: for */
    public final Object mo615for() {
        Context context = this.f13500do;
        try {
            return ((zzbku) zzs.zzb(context, "com.google.android.gms.ads.DynamiteH5AdsManagerCreatorImpl", new zzq() { // from class: com.google.android.gms.ads.internal.client.zzak
                @Override // com.google.android.gms.ads.internal.util.client.zzq
                public final Object zza(Object obj) {
                    return zzbkt.zzb((IBinder) obj);
                }
            })).zze(new BinderC3652rv(context), this.f13502do, 244410000, new zzbkl(this.f13501do));
        } catch (RemoteException | zzr | NullPointerException unused) {
            return null;
        }
    }

    @Override // defpackage.AbstractC3154jQ
    /* renamed from: if */
    public final Object mo616if(zzcp zzcpVar) {
        return zzcpVar.zzl(new BinderC3652rv(this.f13500do), this.f13502do, 244410000, new zzbkl(this.f13501do));
    }
}
