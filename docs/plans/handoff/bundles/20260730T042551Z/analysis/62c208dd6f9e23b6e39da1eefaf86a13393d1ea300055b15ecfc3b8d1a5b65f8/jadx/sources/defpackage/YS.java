package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzbf;
import com.google.android.gms.measurement.internal.zzo;
import com.google.android.gms.measurement.internal.zzon;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class YS extends AbstractBinderC0693aS {

    /* renamed from: break, reason: not valid java name */
    public String f4739break;

    /* renamed from: do, reason: not valid java name */
    public final ZU f4740do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Boolean f4741do;

    public YS(ZU zu) {
        Preconditions.checkNotNull(zu);
        this.f4740do = zu;
        this.f4739break = null;
    }

    @Override // defpackage.YR
    public final void c(zzae zzaeVar, zzo zzoVar) {
        Preconditions.checkNotNull(zzaeVar);
        Preconditions.checkNotNull(zzaeVar.f10305do);
        q(zzoVar);
        zzae zzaeVar2 = new zzae(zzaeVar);
        zzaeVar2.f10300break = zzoVar.f10320break;
        r(new RunnableC0694aT(this, zzaeVar2, zzoVar, 1));
    }

    @Override // defpackage.YR
    /* renamed from: case */
    public final void mo2916case(zzo zzoVar) {
        q(zzoVar);
        r(new WS(this, zzoVar));
    }

    @Override // defpackage.YR
    /* renamed from: catch */
    public final void mo2917catch(Bundle bundle, zzo zzoVar) {
        q(zzoVar);
        String str = zzoVar.f10320break;
        Preconditions.checkNotNull(str);
        r(new TR(this, bundle, str, 1));
    }

    @Override // defpackage.YR
    /* renamed from: class */
    public final String mo2918class(zzo zzoVar) {
        q(zzoVar);
        ZU zu = this.f4740do;
        try {
            return (String) zu.mo2253do().m1969throw(new JS(zu, zzoVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            C3156jS mo2249case = zu.mo2249case();
            mo2249case.f13717do.m7367do(C3156jS.m7106while(zzoVar.f10320break), "Failed to get app instance id. appId", e);
            return null;
        }
    }

    @Override // defpackage.YR
    public final void d(zzo zzoVar) {
        Preconditions.checkNotEmpty(zzoVar.f10320break);
        Preconditions.checkNotNull(zzoVar.f10337import);
        o(new RunnableC0813cT(this, zzoVar, 1));
    }

    @Override // defpackage.YR
    /* renamed from: default */
    public final List<zzon> mo2919default(String str, String str2, boolean z, zzo zzoVar) {
        q(zzoVar);
        String str3 = zzoVar.f10320break;
        Preconditions.checkNotNull(str3);
        ZU zu = this.f4740do;
        try {
            List<C3218kV> list = (List) zu.mo2253do().m1969throw(new CallableC2754fT(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C3218kV c3218kV : list) {
                if (z || !C3395nV.E(c3218kV.f14003for)) {
                    arrayList.add(new zzon(c3218kV));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            C3156jS mo2249case = zu.mo2249case();
            mo2249case.f13717do.m7367do(C3156jS.m7106while(str3), "Failed to query user properties. appId", e);
            return Collections.emptyList();
        }
    }

    @Override // defpackage.YR
    public final zzaj e(zzo zzoVar) {
        q(zzoVar);
        String str = zzoVar.f10320break;
        Preconditions.checkNotEmpty(str);
        ZU zu = this.f4740do;
        try {
            return (zzaj) zu.mo2253do().m1963native(new HS(this, zzoVar)).get(10000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            C3156jS mo2249case = zu.mo2249case();
            mo2249case.f13717do.m7367do(C3156jS.m7106while(str), "Failed to get consent. appId", e);
            return new zzaj(null);
        }
    }

    @Override // defpackage.YR
    /* renamed from: extends */
    public final byte[] mo2920extends(zzbf zzbfVar, String str) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbfVar);
        p(str, true);
        ZU zu = this.f4740do;
        C3156jS mo2249case = zu.mo2249case();
        TS ts = zu.f4833do;
        C2636dS c2636dS = ts.f3693do;
        String str2 = zzbfVar.f10313break;
        mo2249case.f13720goto.m7368for("Log and bundle. event", c2636dS.m6452for(str2));
        long nanoTime = zu.mo2257new().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) zu.mo2253do().m1963native(new CallableC2931iT(this, zzbfVar, str)).get();
            if (bArr == null) {
                zu.mo2249case().f13717do.m7368for("Log and bundle returned null. appId", C3156jS.m7106while(str));
                bArr = new byte[0];
            }
            zu.mo2249case().f13720goto.m7370new("Log and bundle processed. event, size, time_ms", ts.f3693do.m6452for(str2), Integer.valueOf(bArr.length), Long.valueOf((zu.mo2257new().nanoTime() / 1000000) - nanoTime));
            return bArr;
        } catch (InterruptedException | ExecutionException e) {
            C3156jS mo2249case2 = zu.mo2249case();
            mo2249case2.f13717do.m7370new("Failed to log and bundle. appId, event, error", C3156jS.m7106while(str), ts.f3693do.m6452for(str2), e);
            return null;
        }
    }

    @Override // defpackage.YR
    /* renamed from: final */
    public final void mo2921final(zzo zzoVar) {
        q(zzoVar);
        r(new RunnableC2695eT(0, this, zzoVar));
    }

    @Override // defpackage.YR
    /* renamed from: for */
    public final void mo2922for(zzo zzoVar) {
        Preconditions.checkNotEmpty(zzoVar.f10320break);
        p(zzoVar.f10320break, false);
        r(new RunnableC3807uV(this, zzoVar, 2));
    }

    @Override // defpackage.YR
    public final void j(zzon zzonVar, zzo zzoVar) {
        Preconditions.checkNotNull(zzonVar);
        q(zzoVar);
        r(new MQ(this, zzonVar, zzoVar));
    }

    @Override // defpackage.YR
    public final List m(Bundle bundle, zzo zzoVar) {
        q(zzoVar);
        String str = zzoVar.f10320break;
        Preconditions.checkNotNull(str);
        ZU zu = this.f4740do;
        try {
            return (List) zu.mo2253do().m1969throw(new CallableC3216kT(this, zzoVar, bundle)).get();
        } catch (InterruptedException | ExecutionException e) {
            C3156jS mo2249case = zu.mo2249case();
            mo2249case.f13717do.m7367do(C3156jS.m7106while(str), "Failed to get trigger URIs. appId", e);
            return Collections.emptyList();
        }
    }

    public final void n(zzbf zzbfVar, String str, String str2) {
        Preconditions.checkNotNull(zzbfVar);
        Preconditions.checkNotEmpty(str);
        p(str, true);
        r(new RunnableC3157jT(this, zzbfVar, str));
    }

    @Override // defpackage.YR
    /* renamed from: native */
    public final void mo2923native(long j, String str, String str2, String str3) {
        r(new RunnableC2637dT(this, str2, str3, str, j));
    }

    public final void o(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        ZU zu = this.f4740do;
        if (zu.mo2253do().m1966static()) {
            runnable.run();
        } else {
            zu.mo2253do().m1965return(runnable);
        }
    }

    public final void p(String str, boolean z) {
        boolean z2;
        boolean isEmpty = TextUtils.isEmpty(str);
        ZU zu = this.f4740do;
        if (isEmpty) {
            zu.mo2249case().f13717do.m7369if("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.f4741do == null) {
                    if (!"com.google.android.gms".equals(this.f4739break) && !UidVerifier.isGooglePlayServicesUid(zu.f4833do.f3688do, Binder.getCallingUid()) && !GoogleSignatureVerifier.getInstance(zu.f4833do.f3688do).isUidGoogleSigned(Binder.getCallingUid())) {
                        z2 = false;
                        this.f4741do = Boolean.valueOf(z2);
                    }
                    z2 = true;
                    this.f4741do = Boolean.valueOf(z2);
                }
                if (this.f4741do.booleanValue()) {
                    return;
                }
            } catch (SecurityException e) {
                zu.mo2249case().f13717do.m7368for("Measurement Service called with invalid calling package. appId", C3156jS.m7106while(str));
                throw e;
            }
        }
        if (this.f4739break == null && GooglePlayServicesUtilLight.uidHasPackageName(zu.f4833do.f3688do, Binder.getCallingUid(), str)) {
            this.f4739break = str;
        }
        if (str.equals(this.f4739break)) {
        } else {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
    }

    @Override // defpackage.YR
    /* renamed from: package */
    public final void mo2924package(zzo zzoVar) {
        q(zzoVar);
        r(new RunnableC0813cT(this, zzoVar, 0));
    }

    @Override // defpackage.YR
    /* renamed from: protected */
    public final void mo2925protected(zzo zzoVar) {
        Preconditions.checkNotEmpty(zzoVar.f10320break);
        Preconditions.checkNotNull(zzoVar.f10337import);
        o(new RunnableC0754bT(0, this, zzoVar));
    }

    @Override // defpackage.YR
    /* renamed from: public */
    public final List<zzae> mo2926public(String str, String str2, String str3) {
        p(str, true);
        ZU zu = this.f4740do;
        try {
            return (List) zu.mo2253do().m1969throw(new CallableC2813gT(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            zu.mo2249case().f13717do.m7368for("Failed to get conditional user properties as", e);
            return Collections.emptyList();
        }
    }

    public final void q(zzo zzoVar) {
        Preconditions.checkNotNull(zzoVar);
        Preconditions.checkNotEmpty(zzoVar.f10320break);
        p(zzoVar.f10320break, false);
        this.f4740do.o().h(zzoVar.f10322catch, zzoVar.f10347throw);
    }

    public final void r(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        ZU zu = this.f4740do;
        if (zu.mo2253do().m1966static()) {
            runnable.run();
        } else {
            zu.mo2253do().m1964public(runnable);
        }
    }

    public final void s(zzbf zzbfVar, zzo zzoVar) {
        ZU zu = this.f4740do;
        zu.p();
        zu.m3031import(zzbfVar, zzoVar);
    }

    @Override // defpackage.YR
    /* renamed from: static */
    public final void mo2927static(zzo zzoVar) {
        Preconditions.checkNotEmpty(zzoVar.f10320break);
        Preconditions.checkNotNull(zzoVar.f10337import);
        o(new QO(1, this, zzoVar));
    }

    @Override // defpackage.YR
    /* renamed from: throw */
    public final List<zzae> mo2928throw(String str, String str2, zzo zzoVar) {
        q(zzoVar);
        String str3 = zzoVar.f10320break;
        Preconditions.checkNotNull(str3);
        ZU zu = this.f4740do;
        try {
            return (List) zu.mo2253do().m1969throw(new CallableC2872hT(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            zu.mo2249case().f13717do.m7368for("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // defpackage.YR
    /* renamed from: throws */
    public final List<zzon> mo2929throws(String str, String str2, String str3, boolean z) {
        p(str, true);
        ZU zu = this.f4740do;
        try {
            List<C3218kV> list = (List) zu.mo2253do().m1969throw(new CallableC0816cW(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C3218kV c3218kV : list) {
                if (z || !C3395nV.E(c3218kV.f14003for)) {
                    arrayList.add(new zzon(c3218kV));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            C3156jS mo2249case = zu.mo2249case();
            mo2249case.f13717do.m7367do(C3156jS.m7106while(str), "Failed to get user properties as. appId", e);
            return Collections.emptyList();
        }
    }

    @Override // defpackage.YR
    /* renamed from: while */
    public final void mo2930while(zzbf zzbfVar, zzo zzoVar) {
        Preconditions.checkNotNull(zzbfVar);
        q(zzoVar);
        r(new VQ(this, zzbfVar, zzoVar));
    }
}
