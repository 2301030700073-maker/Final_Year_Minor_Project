package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.internal.ads.zzaou;
import com.google.android.gms.internal.ads.zzapp;
import com.google.android.gms.internal.ads.zzaqt;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzcab;
import defpackage.AQ;
import defpackage.C3920wQ;
import defpackage.C3979xQ;
import defpackage.InterfaceFutureC3942wq;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbo {

    /* renamed from: do, reason: not valid java name */
    public static zzapp f9780do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Object f9781do = new Object();

    public zzbo(Context context) {
        zzapp zza;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (f9781do) {
            if (f9780do == null) {
                zzbcl.zza(context);
                if (!ClientLibraryUtils.isPackageSide()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzew)).booleanValue()) {
                        zza = zzaz.zzb(context);
                        f9780do = zza;
                    }
                }
                zza = zzaqt.zza(context, null);
                f9780do = zza;
            }
        }
    }

    public final InterfaceFutureC3942wq zza(String str) {
        zzcab zzcabVar = new zzcab();
        f9780do.zza(new zzbm(str, null, zzcabVar));
        return zzcabVar;
    }

    public final InterfaceFutureC3942wq zzb(int i, String str, Map map, byte[] bArr) {
        AQ aq = new AQ();
        C3920wQ c3920wQ = new C3920wQ(str, aq);
        byte[] bArr2 = null;
        com.google.android.gms.ads.internal.util.client.zzl zzlVar = new com.google.android.gms.ads.internal.util.client.zzl(null);
        C3979xQ c3979xQ = new C3979xQ(i, str, aq, c3920wQ, bArr, map, zzlVar);
        if (com.google.android.gms.ads.internal.util.client.zzl.zzk()) {
            try {
                Map zzl = c3979xQ.zzl();
                if (bArr != null) {
                    bArr2 = bArr;
                }
                zzlVar.zzd(str, "GET", zzl, bArr2);
            } catch (zzaou e) {
                zzo.zzj(e.getMessage());
            }
        }
        f9780do.zza(c3979xQ);
        return aq;
    }
}
