package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdy;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.A0;
import defpackage.C0;
import defpackage.C0315Kc;
import defpackage.C0513Td;
import defpackage.C0706ai;
import defpackage.C0774bq;
import defpackage.C0793c9;
import defpackage.InterfaceC2911i9;
import defpackage.InterfaceC3637rg;
import defpackage.MF;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;

@Keep
@KeepForSdk
/* loaded from: classes3.dex */
public class AnalyticsConnectorRegistrar implements ComponentRegistrar {
    public static A0 lambda$getComponents$0(InterfaceC2911i9 interfaceC2911i9) {
        C0706ai c0706ai = (C0706ai) interfaceC2911i9.mo2881for(C0706ai.class);
        Context context = (Context) interfaceC2911i9.mo2881for(Context.class);
        MF mf = (MF) interfaceC2911i9.mo2881for(MF.class);
        Preconditions.checkNotNull(c0706ai);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(mf);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (C0.f308do == null) {
            synchronized (C0.class) {
                if (C0.f308do == null) {
                    Bundle bundle = new Bundle(1);
                    c0706ai.m3147do();
                    if ("[DEFAULT]".equals(c0706ai.f4986do)) {
                        mf.mo1401do(new Executor() { // from class: CO
                            @Override // java.util.concurrent.Executor
                            public final void execute(Runnable runnable) {
                                runnable.run();
                            }
                        }, new InterfaceC3637rg() { // from class: bQ
                            @Override // defpackage.InterfaceC3637rg
                            /* renamed from: do, reason: not valid java name */
                            public final void mo4835do(C3284lg c3284lg) {
                                c3284lg.getClass();
                                throw null;
                            }
                        });
                        bundle.putBoolean("dataCollectionDefaultEnabled", c0706ai.m3148else());
                    }
                    C0.f308do = new C0(zzdy.zza(context, (String) null, (String) null, (String) null, bundle).zzb());
                }
            }
        }
        return C0.f308do;
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    @KeepForSdk
    @SuppressLint({"MissingPermission"})
    public List<C0793c9<?>> getComponents() {
        C0793c9.Cdo m4890if = C0793c9.m4890if(A0.class);
        m4890if.m4891do(C0513Td.m2276for(C0706ai.class));
        m4890if.m4891do(C0513Td.m2276for(Context.class));
        m4890if.m4891do(C0513Td.m2276for(MF.class));
        m4890if.f8508do = new C0315Kc();
        m4890if.m4892for(2);
        return Arrays.asList(m4890if.m4893if(), C0774bq.m4863do("fire-analytics", "22.1.2"));
    }
}
