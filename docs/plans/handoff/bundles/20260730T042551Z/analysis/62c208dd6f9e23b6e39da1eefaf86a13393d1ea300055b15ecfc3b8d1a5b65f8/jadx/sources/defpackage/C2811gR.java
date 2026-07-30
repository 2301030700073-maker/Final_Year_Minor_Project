package defpackage;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import com.android.billingclient.api.Cdo;
import com.android.billingclient.api.Cif;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.internal.play_billing.zzav;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzel;
import com.google.android.gms.internal.play_billing.zzeu;
import com.google.android.gms.internal.play_billing.zzew;
import com.google.android.gms.internal.play_billing.zzfb;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzkd;
import com.google.android.gms.internal.play_billing.zzv;
import com.joeykrim.rootcheck.gpiab.BillingDataSource;
import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;

/* renamed from: gR, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2811gR extends C3428o5 {

    /* renamed from: do, reason: not valid java name */
    public volatile zzav f13171do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile zzew f13172do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile ServiceConnectionC2752fR f13173do;

    /* renamed from: for, reason: not valid java name */
    public volatile int f13174for;

    /* renamed from: if, reason: not valid java name */
    public final Context f13175if;

    public C2811gR(O4 o4, Context context, Ay ay) {
        super(o4, context, ay);
        this.f13174for = 0;
        this.f13175if = context;
    }

    /* renamed from: abstract, reason: not valid java name */
    public final /* synthetic */ void m6733abstract(C0247Ha c0247Ha, InterfaceC0269Ia interfaceC0269Ia) {
        super.mo6739new(c0247Ha, interfaceC0269Ia);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0045  */
    @Override // defpackage.C3428o5
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.billingclient.api.Cdo mo6734case(android.app.Activity r9, defpackage.C3722t5 r10) {
        /*
            r8 = this;
            java.lang.String r0 = "BillingClientTesting"
            r1 = 2
            com.google.android.gms.internal.play_billing.zzeu r2 = r8.m6745volatile(r1)
            r3 = 0
            r4 = 28
            java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> L19 java.util.concurrent.TimeoutException -> L32
            r6 = 28500(0x6f54, double:1.4081E-319)
            java.lang.Object r2 = r2.get(r6, r5)     // Catch: java.lang.Exception -> L19 java.util.concurrent.TimeoutException -> L32
            java.lang.Integer r2 = (java.lang.Integer) r2     // Catch: java.lang.Exception -> L19 java.util.concurrent.TimeoutException -> L32
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> L19 java.util.concurrent.TimeoutException -> L32
            goto L40
        L19:
            r2 = move-exception
            boolean r5 = r2 instanceof java.lang.InterruptedException
            if (r5 == 0) goto L25
            java.lang.Thread r5 = java.lang.Thread.currentThread()
            r5.interrupt()
        L25:
            r5 = 107(0x6b, float:1.5E-43)
            com.android.billingclient.api.do r6 = com.android.billingclient.api.Cif.f9125return
            r8.m6738interface(r5, r4, r6)
            java.lang.String r4 = "An error occurred while retrieving billing override."
            com.google.android.gms.internal.play_billing.zze.zzm(r0, r4, r2)
            goto L3f
        L32:
            r2 = move-exception
            r5 = 114(0x72, float:1.6E-43)
            com.android.billingclient.api.do r6 = com.android.billingclient.api.Cif.f9125return
            r8.m6738interface(r5, r4, r6)
            java.lang.String r4 = "Asynchronous call to Billing Override Service timed out."
            com.google.android.gms.internal.play_billing.zze.zzm(r0, r4, r2)
        L3f:
            r2 = 0
        L40:
            if (r2 <= 0) goto L43
            r3 = 1
        L43:
            if (r3 == 0) goto L54
            java.lang.String r9 = "Billing override value was set by a license tester."
            com.android.billingclient.api.do r9 = com.android.billingclient.api.Cif.m5221do(r2, r9)
            r10 = 105(0x69, float:1.47E-43)
            r8.m6738interface(r10, r1, r9)
            r8.m7667finally(r9)
            goto L67
        L54:
            com.android.billingclient.api.do r9 = r8.m6744transient(r9, r10)     // Catch: java.lang.Exception -> L59
            goto L67
        L59:
            r9 = move-exception
            com.android.billingclient.api.do r10 = com.android.billingclient.api.Cif.f9112catch
            r2 = 115(0x73, float:1.61E-43)
            r8.m6738interface(r2, r1, r10)
            java.lang.String r1 = "An internal error occurred."
            com.google.android.gms.internal.play_billing.zze.zzm(r0, r1, r9)
            r9 = r10
        L67:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2811gR.mo6734case(android.app.Activity, t5):com.android.billingclient.api.do");
    }

    /* renamed from: continue, reason: not valid java name */
    public final /* synthetic */ void m6735continue(C4026yE c4026yE, InterfaceC4085zE interfaceC4085zE) {
        super.mo6737goto(c4026yE, interfaceC4085zE);
    }

    @Override // defpackage.C3428o5
    /* renamed from: for, reason: not valid java name */
    public final void mo6736for(C c, D d) {
        final BillingDataSource.Cif cif = (BillingDataSource.Cif) d;
        m6741protected(3, new Consumer() { // from class: TQ
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                cif.mo324if((Cdo) obj);
            }

            @Override // java.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        }, new VQ(this, c, cif));
    }

    @Override // defpackage.C3428o5
    /* renamed from: goto, reason: not valid java name */
    public final void mo6737goto(C4026yE c4026yE, final InterfaceC4085zE interfaceC4085zE) {
        m6741protected(8, new Consumer() { // from class: OQ
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                InterfaceC4085zE.this.mo5225new((Cdo) obj, null);
            }

            @Override // java.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        }, new RQ(this, c4026yE, interfaceC4085zE, 0));
    }

    /* renamed from: interface, reason: not valid java name */
    public final void m6738interface(int i, int i2, Cdo cdo) {
        zzjz m7101if = C3155jR.m7101if(i, i2, cdo);
        Objects.requireNonNull(m7101if, "ApiFailure should not be null");
        ((C3332mR) ((C3428o5) this).f14675do).m7450do(m7101if);
    }

    @Override // defpackage.C3428o5
    /* renamed from: new, reason: not valid java name */
    public final void mo6739new(final C0247Ha c0247Ha, InterfaceC0269Ia interfaceC0269Ia) {
        final com.joeykrim.rootcheck.gpiab.Cdo cdo = (com.joeykrim.rootcheck.gpiab.Cdo) interfaceC0269Ia;
        m6741protected(4, new Consumer() { // from class: JQ
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                String str = c0247Ha.f1359do;
                cdo.mo957case((Cdo) obj, str);
            }

            @Override // java.util.function.Consumer
            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        }, new MQ(this, c0247Ha, cdo));
    }

    /* renamed from: private, reason: not valid java name */
    public final /* synthetic */ void m6740private(C c, D d) {
        super.mo6736for(c, d);
    }

    /* renamed from: protected, reason: not valid java name */
    public final void m6741protected(int i, Consumer consumer, Runnable runnable) {
        zzew zzewVar;
        zzeu m6745volatile = m6745volatile(i);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        synchronized (this) {
            if (this.f13172do == null) {
                this.f13172do = zzfb.zzb(Executors.newSingleThreadScheduledExecutor());
            }
            zzewVar = this.f13172do;
        }
        zzel.zzc(zzel.zzb(m6745volatile, 28500L, timeUnit, zzewVar), new XQ(this, i, consumer, runnable), m7670package());
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final synchronized boolean m6742strictfp() {
        if (this.f13174for == 2 && this.f13171do != null) {
            if (this.f13173do != null) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.C3428o5
    /* renamed from: this, reason: not valid java name */
    public final void mo6743this(InterfaceC3487p5 interfaceC3487p5) {
        synchronized (this) {
            if (m6742strictfp()) {
                zze.zzk("BillingClientTesting", "Billing Override Service connection is valid. No need to re-initialize.");
                zzkd m7102new = C3155jR.m7102new(26);
                Objects.requireNonNull(m7102new, "ApiSuccess should not be null");
                ((C3332mR) ((C3428o5) this).f14675do).m7452if(m7102new);
            } else {
                int i = 1;
                if (this.f13174for == 1) {
                    zze.zzl("BillingClientTesting", "Client is already in the process of connecting to Billing Override Service.");
                } else if (this.f13174for == 3) {
                    zze.zzl("BillingClientTesting", "Billing Override Service Client was already closed and can't be reused. Please create another instance.");
                    m6738interface(38, 26, Cif.m5221do(-1, "Billing Override Service connection is disconnected."));
                } else {
                    this.f13174for = 1;
                    zze.zzk("BillingClientTesting", "Starting Billing Override Service setup.");
                    this.f13173do = new ServiceConnectionC2752fR(this);
                    Intent intent = new Intent("com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND");
                    intent.setPackage("com.google.android.apps.play.billingtestcompanion");
                    List<ResolveInfo> queryIntentServices = this.f13175if.getPackageManager().queryIntentServices(intent, 0);
                    if (queryIntentServices == null || queryIntentServices.isEmpty()) {
                        i = 41;
                    } else {
                        ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                        if (serviceInfo != null) {
                            String str = serviceInfo.packageName;
                            String str2 = serviceInfo.name;
                            if (!Objects.equals(str, "com.google.android.apps.play.billingtestcompanion") || str2 == null) {
                                zze.zzl("BillingClientTesting", "The device doesn't have valid Play Billing Lab.");
                            } else {
                                ComponentName componentName = new ComponentName(str, str2);
                                Intent intent2 = new Intent(intent);
                                intent2.setComponent(componentName);
                                if (this.f13175if.bindService(intent2, this.f13173do, 1)) {
                                    zze.zzk("BillingClientTesting", "Billing Override Service was bonded successfully.");
                                } else {
                                    zze.zzl("BillingClientTesting", "Connection to Billing Override Service is blocked.");
                                }
                            }
                            i = 39;
                        }
                    }
                    this.f13174for = 0;
                    zze.zzk("BillingClientTesting", "Billing Override Service unavailable on device.");
                    m6738interface(i, 26, Cif.m5221do(2, "Billing Override Service unavailable on device."));
                }
            }
        }
        super.mo6743this(interfaceC3487p5);
    }

    /* renamed from: transient, reason: not valid java name */
    public final /* synthetic */ Cdo m6744transient(Activity activity, C3722t5 c3722t5) {
        return super.mo6734case(activity, c3722t5);
    }

    /* renamed from: volatile, reason: not valid java name */
    public final zzeu m6745volatile(int i) {
        if (m6742strictfp()) {
            return zzv.zza(new NQ(this, i));
        }
        zze.zzl("BillingClientTesting", "Billing Override Service is not ready.");
        m6738interface(FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, 28, Cif.m5221do(-1, "Billing Override Service connection is disconnected."));
        return zzel.zza(0);
    }
}
