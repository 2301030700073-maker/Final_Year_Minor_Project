package defpackage;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.billingclient.api.Cdo;
import com.android.billingclient.api.Cif;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.play_billing.zzan;
import com.google.android.gms.internal.play_billing.zzco;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzev;
import com.google.android.gms.internal.play_billing.zzfb;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzkb;
import com.google.android.gms.internal.play_billing.zzkd;
import com.google.android.gms.internal.play_billing.zzks;
import com.google.android.gms.internal.play_billing.zzku;
import com.google.android.gms.internal.play_billing.zzlv;
import com.google.android.gms.internal.play_billing.zzlx;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* renamed from: o5, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C3428o5 extends FM {

    /* renamed from: break, reason: not valid java name */
    public boolean f14660break;

    /* renamed from: case, reason: not valid java name */
    public boolean f14661case;

    /* renamed from: catch, reason: not valid java name */
    public boolean f14662catch;

    /* renamed from: do, reason: not valid java name */
    public volatile int f14663do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile JU f14664do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public O4 f14665do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Context f14666do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Handler f14667do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile zzan f14668do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile zzev f14669do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile ServiceConnectionC2810gQ f14670do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Long f14671do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f14672do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f14673do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ExecutorService f14674do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC3273lR f14675do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14676do;

    /* renamed from: else, reason: not valid java name */
    public boolean f14677else;

    /* renamed from: for, reason: not valid java name */
    public boolean f14678for;

    /* renamed from: goto, reason: not valid java name */
    public boolean f14679goto;

    /* renamed from: if, reason: not valid java name */
    public int f14680if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f14681if;

    /* renamed from: new, reason: not valid java name */
    public boolean f14682new;

    /* renamed from: this, reason: not valid java name */
    public boolean f14683this;

    /* renamed from: try, reason: not valid java name */
    public boolean f14684try;

    public C3428o5(O4 o4, Context context, Ay ay) {
        String m7659class = m7659class();
        this.f14672do = new Object();
        this.f14663do = 0;
        this.f14667do = new Handler(Looper.getMainLooper());
        this.f14680if = 0;
        Long valueOf = Long.valueOf(new Random().nextLong());
        this.f14671do = valueOf;
        this.f14673do = m7659class;
        this.f14666do = context.getApplicationContext();
        zzks zzc = zzku.zzc();
        zzc.zzo(m7659class);
        zzc.zzn(this.f14666do.getPackageName());
        zzc.zzm(valueOf.longValue());
        this.f14675do = new C3332mR(this.f14666do, (zzku) zzc.zzf());
        if (ay == null) {
            zze.zzl("BillingClient", "Billing client should have a valid listener but the provided is null.");
        }
        this.f14664do = new JU(this.f14666do, ay, this.f14675do);
        this.f14665do = o4;
        this.f14662catch = false;
        this.f14666do.getPackageName();
    }

    /* renamed from: break, reason: not valid java name */
    public static Future m7658break(Callable callable, long j, Runnable runnable, Handler handler, ExecutorService executorService) {
        try {
            Future submit = executorService.submit(callable);
            handler.postDelayed(new YO(submit, runnable), (long) (j * 0.95d));
            return submit;
        } catch (Exception e) {
            zze.zzm("BillingClient", "Async task throws exception!", e);
            return null;
        }
    }

    @SuppressLint({"PrivateApi"})
    /* renamed from: class, reason: not valid java name */
    public static String m7659class() {
        try {
            return (String) Class.forName("com.android.billingclient.ktx.BuildConfig").getField("VERSION_NAME").get(null);
        } catch (Exception unused) {
            return "7.1.1";
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static /* bridge */ /* synthetic */ boolean m7660static(C3428o5 c3428o5) {
        boolean z;
        synchronized (c3428o5.f14672do) {
            z = true;
            if (c3428o5.f14663do != 1) {
                z = false;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:149:0x04a4 A[Catch: Exception -> 0x0571, CancellationException -> 0x0586, TimeoutException -> 0x0588, TRY_ENTER, TryCatch #6 {CancellationException -> 0x0586, TimeoutException -> 0x0588, Exception -> 0x0571, blocks: (B:149:0x04a4, B:151:0x04b0, B:153:0x04c5, B:161:0x0550, B:168:0x053d, B:179:0x0516, B:180:0x0557), top: B:147:0x04a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x04b0 A[Catch: Exception -> 0x0571, CancellationException -> 0x0586, TimeoutException -> 0x0588, TryCatch #6 {CancellationException -> 0x0586, TimeoutException -> 0x0588, Exception -> 0x0571, blocks: (B:149:0x04a4, B:151:0x04b0, B:153:0x04c5, B:161:0x0550, B:168:0x053d, B:179:0x0516, B:180:0x0557), top: B:147:0x04a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x052b  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0534 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0530  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f1  */
    /* renamed from: case */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.billingclient.api.Cdo mo6734case(android.app.Activity r32, final defpackage.C3722t5 r33) {
        /*
            Method dump skipped, instructions count: 1490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3428o5.mo6734case(android.app.Activity, t5):com.android.billingclient.api.do");
    }

    /* renamed from: catch, reason: not valid java name */
    public final Cdo m7661catch() {
        Cdo cdo;
        int[] iArr = {0, 3};
        synchronized (this.f14672do) {
            int i = 0;
            while (true) {
                if (i >= 2) {
                    cdo = Cif.f9112catch;
                    break;
                }
                if (this.f14663do == iArr[i]) {
                    cdo = Cif.f9114const;
                    break;
                }
                i++;
            }
        }
        return cdo;
    }

    /* renamed from: const, reason: not valid java name */
    public final synchronized ExecutorService m7662const() {
        if (this.f14674do == null) {
            this.f14674do = Executors.newFixedThreadPool(zze.zza, new ThreadFactoryC3978xP());
        }
        return this.f14674do;
    }

    /* renamed from: default, reason: not valid java name */
    public final void m7663default(int i, int i2, Cdo cdo) {
        try {
            m7666final(C3155jR.m7101if(i, i2, cdo));
        } catch (Throwable th) {
            zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m7664else(String str, InterfaceC4127zy interfaceC4127zy) {
        if (!m7677try()) {
            Cdo cdo = Cif.f9114const;
            m7663default(2, 9, cdo);
            interfaceC4127zy.mo5222do(cdo, zzco.zzl());
        } else {
            if (TextUtils.isEmpty(str)) {
                zze.zzl("BillingClient", "Please provide a valid product type.");
                Cdo cdo2 = Cif.f9119goto;
                m7663default(50, 9, cdo2);
                interfaceC4127zy.mo5222do(cdo2, zzco.zzl());
                return;
            }
            if (m7658break(new AP(this, str, interfaceC4127zy), 30000L, new QO(0, this, interfaceC4127zy), m7674switch(), m7662const()) == null) {
                Cdo m7661catch = m7661catch();
                m7663default(25, 9, m7661catch);
                interfaceC4127zy.mo5222do(m7661catch, zzco.zzl());
            }
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m7665extends(int i, int i2, Cdo cdo, String str) {
        try {
            m7666final(C3155jR.m7100for(i, i2, cdo, str));
        } catch (Throwable th) {
            zze.zzm("BillingClient", "Unable to log.", th);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public final void m7666final(zzjz zzjzVar) {
        try {
            InterfaceC3273lR interfaceC3273lR = this.f14675do;
            int i = this.f14680if;
            C3332mR c3332mR = (C3332mR) interfaceC3273lR;
            c3332mR.getClass();
            try {
                zzks zzksVar = (zzks) c3332mR.f14343do.zzn();
                zzksVar.zza(i);
                c3332mR.f14343do = (zzku) zzksVar.zzf();
                c3332mR.m7450do(zzjzVar);
            } catch (Throwable th) {
                zze.zzm("BillingLogger", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            zze.zzm("BillingClient", "Unable to log.", th2);
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public final void m7667finally(Cdo cdo) {
        if (Thread.interrupted()) {
            return;
        }
        this.f14667do.post(new RunnableC3807uV(0, this, cdo));
    }

    /* renamed from: for */
    public void mo6736for(final C c, final D d) {
        if (!m7677try()) {
            Cdo cdo = Cif.f9114const;
            m7663default(2, 3, cdo);
            d.mo324if(cdo);
            return;
        }
        if (TextUtils.isEmpty(c.f307do)) {
            zze.zzl("BillingClient", "Please provide a valid purchase token.");
            Cdo cdo2 = Cif.f9110break;
            m7663default(26, 3, cdo2);
            d.mo324if(cdo2);
            return;
        }
        if (!this.f14678for) {
            Cdo cdo3 = Cif.f9120if;
            m7663default(27, 3, cdo3);
            d.mo324if(cdo3);
        } else if (m7658break(new Callable() { // from class: PV
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzan zzanVar;
                C3428o5 c3428o5 = C3428o5.this;
                D d2 = d;
                C c2 = c;
                c3428o5.getClass();
                try {
                    synchronized (c3428o5.f14672do) {
                        zzanVar = c3428o5.f14668do;
                    }
                    if (zzanVar == null) {
                        c3428o5.m7671public(d2, Cif.f9114const, 119, null);
                    } else {
                        String packageName = c3428o5.f14666do.getPackageName();
                        String str = c2.f307do;
                        String str2 = c3428o5.f14673do;
                        long longValue = c3428o5.f14671do.longValue();
                        Bundle bundle = new Bundle();
                        zze.zzc(bundle, str2, longValue);
                        Bundle zzd = zzanVar.zzd(9, packageName, str, bundle);
                        d2.mo324if(Cif.m5221do(zze.zzb(zzd, "BillingClient"), zze.zzh(zzd, "BillingClient")));
                    }
                } catch (DeadObjectException e) {
                    c3428o5.m7671public(d2, Cif.f9114const, 28, e);
                } catch (Exception e2) {
                    c3428o5.m7671public(d2, Cif.f9112catch, 28, e2);
                }
                return null;
            }
        }, 30000L, new PO(1, this, d), m7674switch(), m7662const()) == null) {
            Cdo m7661catch = m7661catch();
            m7663default(25, 3, m7661catch);
            d.mo324if(m7661catch);
        }
    }

    /* renamed from: goto */
    public void mo6737goto(C4026yE c4026yE, InterfaceC4085zE interfaceC4085zE) {
        if (!m7677try()) {
            Cdo cdo = Cif.f9114const;
            m7663default(2, 8, cdo);
            interfaceC4085zE.mo5225new(cdo, null);
            return;
        }
        String str = c4026yE.f16721do;
        List list = c4026yE.f16722do;
        if (TextUtils.isEmpty(str)) {
            zze.zzl("BillingClient", "Please fix the input params. SKU type can't be empty.");
            Cdo cdo2 = Cif.f9116else;
            m7663default(49, 8, cdo2);
            interfaceC4085zE.mo5225new(cdo2, null);
            return;
        }
        if (list == null) {
            zze.zzl("BillingClient", "Please fix the input params. The list of SKUs can't be empty.");
            Cdo cdo3 = Cif.f9111case;
            m7663default(48, 8, cdo3);
            interfaceC4085zE.mo5225new(cdo3, null);
            return;
        }
        if (m7658break(new CallableC0816cW(this, str, list, interfaceC4085zE), 30000L, new PO(0, this, interfaceC4085zE), m7674switch(), m7662const()) == null) {
            Cdo m7661catch = m7661catch();
            m7663default(25, 8, m7661catch);
            interfaceC4085zE.mo5225new(m7661catch, null);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public final C3450oR m7668import(Cdo cdo, int i, String str, Exception exc) {
        m7665extends(i, 9, cdo, C3155jR.m7099do(exc));
        zze.zzm("BillingClient", str, exc);
        return new C3450oR(cdo, (ArrayList) null);
    }

    /* renamed from: native, reason: not valid java name */
    public final C3921wR m7669native(Cdo cdo, int i, String str, Exception exc) {
        zze.zzm("BillingClient", str, exc);
        m7665extends(i, 8, cdo, C3155jR.m7099do(exc));
        return new C3921wR(cdo.f9107do, cdo.f9106do, null);
    }

    /* renamed from: new */
    public void mo6739new(final C0247Ha c0247Ha, final InterfaceC0269Ia interfaceC0269Ia) {
        if (!m7677try()) {
            Cdo cdo = Cif.f9114const;
            m7663default(2, 4, cdo);
            interfaceC0269Ia.mo957case(cdo, c0247Ha.f1359do);
        } else if (m7658break(new Callable() { // from class: aP
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzan zzanVar;
                int zza;
                String str;
                C3428o5 c3428o5 = C3428o5.this;
                C0247Ha c0247Ha2 = c0247Ha;
                InterfaceC0269Ia interfaceC0269Ia2 = interfaceC0269Ia;
                c3428o5.getClass();
                String str2 = c0247Ha2.f1359do;
                try {
                    zze.zzk("BillingClient", "Consuming purchase with token: " + str2);
                    synchronized (c3428o5.f14672do) {
                        zzanVar = c3428o5.f14668do;
                    }
                    if (zzanVar == null) {
                        c3428o5.m7672return(interfaceC0269Ia2, str2, Cif.f9114const, 119, "Service has been reset to null.", null);
                        return null;
                    }
                    if (c3428o5.f14678for) {
                        String packageName = c3428o5.f14666do.getPackageName();
                        boolean z = c3428o5.f14678for;
                        String str3 = c3428o5.f14673do;
                        long longValue = c3428o5.f14671do.longValue();
                        Bundle bundle = new Bundle();
                        if (z) {
                            zze.zzc(bundle, str3, longValue);
                        }
                        Bundle zze = zzanVar.zze(9, packageName, str2, bundle);
                        zza = zze.getInt("RESPONSE_CODE");
                        str = zze.zzh(zze, "BillingClient");
                    } else {
                        zza = zzanVar.zza(3, c3428o5.f14666do.getPackageName(), str2);
                        str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    Cdo m5221do = Cif.m5221do(zza, str);
                    if (zza == 0) {
                        zze.zzk("BillingClient", "Successfully consumed purchase.");
                        interfaceC0269Ia2.mo957case(m5221do, str2);
                        return null;
                    }
                    c3428o5.m7672return(interfaceC0269Ia2, str2, m5221do, 23, "Error consuming purchase with token. Response code: " + zza, null);
                    return null;
                } catch (DeadObjectException e) {
                    c3428o5.m7672return(interfaceC0269Ia2, str2, Cif.f9114const, 29, "Error consuming purchase!", e);
                    return null;
                } catch (Exception e2) {
                    c3428o5.m7672return(interfaceC0269Ia2, str2, Cif.f9112catch, 29, "Error consuming purchase!", e2);
                    return null;
                }
            }
        }, 30000L, new Runnable() { // from class: dP
            @Override // java.lang.Runnable
            public final void run() {
                C3428o5 c3428o5 = C3428o5.this;
                c3428o5.getClass();
                Cdo cdo2 = Cif.f9117final;
                c3428o5.m7663default(24, 4, cdo2);
                interfaceC0269Ia.mo957case(cdo2, c0247Ha.f1359do);
            }
        }, m7674switch(), m7662const()) == null) {
            Cdo m7661catch = m7661catch();
            m7663default(25, 4, m7661catch);
            interfaceC0269Ia.mo957case(m7661catch, c0247Ha.f1359do);
        }
    }

    /* renamed from: package, reason: not valid java name */
    public final synchronized zzev m7670package() {
        if (this.f14669do == null) {
            this.f14669do = zzfb.zza(m7662const());
        }
        return this.f14669do;
    }

    /* renamed from: public, reason: not valid java name */
    public final void m7671public(D d, Cdo cdo, int i, Exception exc) {
        zze.zzm("BillingClient", "Error in acknowledge purchase!", exc);
        m7665extends(i, 3, cdo, C3155jR.m7099do(exc));
        d.mo324if(cdo);
    }

    /* renamed from: return, reason: not valid java name */
    public final void m7672return(InterfaceC0269Ia interfaceC0269Ia, String str, Cdo cdo, int i, String str2, Exception exc) {
        zze.zzm("BillingClient", str2, exc);
        m7665extends(i, 4, cdo, C3155jR.m7099do(exc));
        interfaceC0269Ia.mo957case(cdo, str);
    }

    /* renamed from: super, reason: not valid java name */
    public final void m7673super(zzkd zzkdVar) {
        try {
            InterfaceC3273lR interfaceC3273lR = this.f14675do;
            int i = this.f14680if;
            C3332mR c3332mR = (C3332mR) interfaceC3273lR;
            c3332mR.getClass();
            try {
                zzks zzksVar = (zzks) c3332mR.f14343do.zzn();
                zzksVar.zza(i);
                c3332mR.f14343do = (zzku) zzksVar.zzf();
                c3332mR.m7452if(zzkdVar);
            } catch (Throwable th) {
                zze.zzm("BillingLogger", "Unable to log.", th);
            }
        } catch (Throwable th2) {
            zze.zzm("BillingClient", "Unable to log.", th2);
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public final Handler m7674switch() {
        return Looper.myLooper() == null ? this.f14667do : new Handler(Looper.myLooper());
    }

    /* renamed from: this */
    public void mo6743this(InterfaceC3487p5 interfaceC3487p5) {
        int i;
        Cdo cdo;
        synchronized (this.f14672do) {
            if (m7677try()) {
                cdo = m7676throws();
            } else if (this.f14663do == 1) {
                zze.zzl("BillingClient", "Client is already in the process of connecting to billing service.");
                cdo = Cif.f9129try;
                m7663default(37, 6, cdo);
            } else if (this.f14663do == 3) {
                zze.zzl("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
                cdo = Cif.f9114const;
                m7663default(38, 6, cdo);
            } else {
                m7675throw(1);
                m7678while();
                zze.zzk("BillingClient", "Starting in-app billing setup.");
                this.f14670do = new ServiceConnectionC2810gQ(this, interfaceC3487p5);
                Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                intent.setPackage("com.android.vending");
                List<ResolveInfo> queryIntentServices = this.f14666do.getPackageManager().queryIntentServices(intent, 0);
                if (queryIntentServices == null || queryIntentServices.isEmpty()) {
                    i = 41;
                } else {
                    ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                    if (serviceInfo != null) {
                        String str = serviceInfo.packageName;
                        String str2 = serviceInfo.name;
                        if (!Objects.equals(str, "com.android.vending") || str2 == null) {
                            zze.zzl("BillingClient", "The device doesn't have valid Play Store.");
                        } else {
                            ComponentName componentName = new ComponentName(str, str2);
                            Intent intent2 = new Intent(intent);
                            intent2.setComponent(componentName);
                            intent2.putExtra("playBillingLibraryVersion", this.f14673do);
                            synchronized (this.f14672do) {
                                if (this.f14663do == 2) {
                                    cdo = m7676throws();
                                } else if (this.f14663do != 1) {
                                    zze.zzl("BillingClient", "Client state no longer CONNECTING, returning service disconnected.");
                                    cdo = Cif.f9114const;
                                    m7663default(117, 6, cdo);
                                } else {
                                    ServiceConnectionC2810gQ serviceConnectionC2810gQ = this.f14670do;
                                    if (this.f14666do.bindService(intent2, serviceConnectionC2810gQ, 1)) {
                                        zze.zzk("BillingClient", "Service was bonded successfully.");
                                        cdo = null;
                                    } else {
                                        zze.zzl("BillingClient", "Connection to Billing service is blocked.");
                                        i = 39;
                                    }
                                }
                            }
                        }
                    } else {
                        zze.zzl("BillingClient", "The device doesn't have valid Play Store.");
                    }
                    i = 40;
                }
                m7675throw(0);
                zze.zzk("BillingClient", "Billing service unavailable on device.");
                cdo = Cif.f9118for;
                m7663default(i, 6, cdo);
            }
        }
        if (cdo != null) {
            interfaceC3487p5.mo5224goto(cdo);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public final void m7675throw(int i) {
        synchronized (this.f14672do) {
            if (this.f14663do == 3) {
                return;
            }
            int i2 = this.f14663do;
            zze.zzk("BillingClient", "Setting clientState from " + (i2 != 0 ? i2 != 1 ? i2 != 2 ? "CLOSED" : "CONNECTED" : "CONNECTING" : "DISCONNECTED") + " to " + (i != 0 ? i != 1 ? i != 2 ? "CLOSED" : "CONNECTED" : "CONNECTING" : "DISCONNECTED"));
            this.f14663do = i;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public final Cdo m7676throws() {
        zze.zzk("BillingClient", "Service connection is valid. No need to re-initialize.");
        zzkb zzc = zzkd.zzc();
        zzc.zzn(6);
        zzlv zzc2 = zzlx.zzc();
        zzc2.zza(true);
        zzc.zzm(zzc2);
        m7673super((zzkd) zzc.zzf());
        return Cif.f9113class;
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m7677try() {
        boolean z;
        synchronized (this.f14672do) {
            z = false;
            if (this.f14663do == 2 && this.f14668do != null && this.f14670do != null) {
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: while, reason: not valid java name */
    public final void m7678while() {
        synchronized (this.f14672do) {
            if (this.f14670do != null) {
                try {
                    this.f14666do.unbindService(this.f14670do);
                } catch (Throwable th) {
                    try {
                        zze.zzm("BillingClient", "There was an exception while unbinding service!", th);
                        this.f14668do = null;
                        this.f14670do = null;
                    } finally {
                        this.f14668do = null;
                        this.f14670do = null;
                    }
                }
            }
        }
    }
}
