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
import java.util.List;

/* renamed from: wP, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3919wP implements zzgcd {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzau f16338do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ zzbtt f16339do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f16340do;

    public C3919wP(zzau zzauVar, zzbtt zzbttVar, boolean z) {
        this.f16339do = zzbttVar;
        this.f16340do = z;
        this.f16338do = zzauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        try {
            this.f16339do.zze("Internal error: " + th.getMessage());
        } catch (RemoteException e) {
            zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zzb(Object obj) {
        zzau zzauVar;
        List<Uri> list = (List) obj;
        try {
            ArrayList arrayList = zzau.f9969try;
            Iterator it = list.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                zzauVar = this.f16338do;
                if (hasNext) {
                    if (zzau.t((Uri) it.next(), zzauVar.f9988do, zzauVar.f9996if)) {
                        zzauVar.f9991do.getAndIncrement();
                        break;
                    }
                } else {
                    break;
                }
            }
            this.f16339do.zzf(list);
            if (zzauVar.f9999if || this.f16340do) {
                for (Uri uri : list) {
                    boolean t = zzau.t(uri, zzauVar.f9988do, zzauVar.f9996if);
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
