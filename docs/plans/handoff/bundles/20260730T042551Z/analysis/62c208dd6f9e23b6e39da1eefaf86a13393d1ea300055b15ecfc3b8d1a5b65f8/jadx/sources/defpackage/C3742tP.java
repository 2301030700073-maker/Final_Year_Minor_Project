package defpackage;

import android.net.Uri;
import android.os.RemoteException;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.nonagon.signalgeneration.zzau;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbtt;
import com.google.android.gms.internal.ads.zzfja;
import com.google.android.gms.internal.ads.zzgcd;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: tP, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3742tP implements zzgcd {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzau f15702do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbtt f15703do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f15704do;

    public C3742tP(zzau zzauVar, zzbtt zzbttVar, boolean z) {
        this.f15703do = zzbttVar;
        this.f15704do = z;
        this.f15702do = zzauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        try {
            this.f15703do.zze("Internal error: " + th.getMessage());
        } catch (RemoteException e) {
            zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zzb(Object obj) {
        zzau zzauVar = this.f15702do;
        ArrayList arrayList = (ArrayList) obj;
        try {
            this.f15703do.zzf(arrayList);
            if (zzauVar.f9992do || this.f15704do) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Uri uri = (Uri) it.next();
                    boolean t = zzau.t(uri, zzauVar.f9993for, zzauVar.f10000new);
                    zzfja zzfjaVar = zzauVar.f9986do;
                    if (t) {
                        zzfjaVar.zzd(zzau.u(uri, zzauVar.f9973const, AppEventsConstants.EVENT_PARAM_VALUE_YES).toString(), null, null);
                    } else {
                        if (((Boolean) zzbe.zzc().zza(zzbcl.zzhm)).booleanValue()) {
                            zzfjaVar.zzd(uri.toString(), null, null);
                        }
                    }
                }
            }
        } catch (RemoteException e) {
            zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }
}
