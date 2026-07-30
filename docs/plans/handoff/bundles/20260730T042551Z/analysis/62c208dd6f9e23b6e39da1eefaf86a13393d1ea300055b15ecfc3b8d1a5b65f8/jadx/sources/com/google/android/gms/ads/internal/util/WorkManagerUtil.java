package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.work.Cdo;
import androidx.work.Cif;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.offline.buffering.OfflineNotificationPoster;
import com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender;
import com.google.android.gms.ads.internal.offline.buffering.zza;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.annotation.KeepForSdk;
import defpackage.BinderC3652rv;
import defpackage.C0225Ga;
import defpackage.C0720aw;
import defpackage.EnumC0201Eu;
import defpackage.GM;
import defpackage.HM;
import defpackage.InterfaceC0456Qm;
import defpackage.O6;
import defpackage.RM;
import defpackage.TM;
import java.util.Collections;
import java.util.HashMap;

@KeepForSdk
/* loaded from: classes.dex */
public class WorkManagerUtil extends zzbq {
    @UsedByReflection("This class must be instantiated reflectively so that the default class loader can be used.")
    public WorkManagerUtil() {
    }

    @Override // com.google.android.gms.ads.internal.util.zzbr
    public final void zze(InterfaceC0456Qm interfaceC0456Qm) {
        Context context = (Context) BinderC3652rv.o(interfaceC0456Qm);
        try {
            GM.m729case(context.getApplicationContext(), new Cdo(new Cdo.C0047do()));
        } catch (IllegalStateException unused) {
        }
        try {
            GM m731try = GM.m731try(context);
            m731try.getClass();
            ((HM) m731try.f1173do).m852do(new O6(m731try));
            C0225Ga.Cdo cdo = new C0225Ga.Cdo();
            cdo.f1203do = EnumC0201Eu.CONNECTED;
            C0225Ga c0225Ga = new C0225Ga(cdo);
            C0720aw.Cdo cdo2 = new C0720aw.Cdo(OfflinePingSender.class);
            ((RM.Cdo) cdo2).f3167do.f3653do = c0225Ga;
            ((RM.Cdo) cdo2).f3168do.add("offline_ping_sender_work");
            m731try.m734for(Collections.singletonList(cdo2.m2036do()));
        } catch (IllegalStateException e) {
            zzo.zzk("Failed to instantiate WorkManager.", e);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzbr
    public final boolean zzf(InterfaceC0456Qm interfaceC0456Qm, String str, String str2) {
        return zzg(interfaceC0456Qm, new zza(str, str2, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
    }

    @Override // com.google.android.gms.ads.internal.util.zzbr
    public final boolean zzg(InterfaceC0456Qm interfaceC0456Qm, zza zzaVar) {
        Context context = (Context) BinderC3652rv.o(interfaceC0456Qm);
        try {
            GM.m729case(context.getApplicationContext(), new Cdo(new Cdo.C0047do()));
        } catch (IllegalStateException unused) {
        }
        C0225Ga.Cdo cdo = new C0225Ga.Cdo();
        cdo.f1203do = EnumC0201Eu.CONNECTED;
        C0225Ga c0225Ga = new C0225Ga(cdo);
        HashMap hashMap = new HashMap();
        hashMap.put("uri", zzaVar.zza);
        hashMap.put("gws_query_id", zzaVar.zzb);
        hashMap.put("image_url", zzaVar.zzc);
        Cif cif = new Cif(hashMap);
        Cif.m4722for(cif);
        C0720aw.Cdo cdo2 = new C0720aw.Cdo(OfflineNotificationPoster.class);
        TM tm = ((RM.Cdo) cdo2).f3167do;
        tm.f3653do = c0225Ga;
        tm.f3654do = cif;
        ((RM.Cdo) cdo2).f3168do.add("offline_notification_work");
        C0720aw m2036do = cdo2.m2036do();
        try {
            GM m731try = GM.m731try(context);
            m731try.getClass();
            m731try.m734for(Collections.singletonList(m2036do));
            return true;
        } catch (IllegalStateException e) {
            zzo.zzk("Failed to instantiate WorkManager.", e);
            return false;
        }
    }
}
