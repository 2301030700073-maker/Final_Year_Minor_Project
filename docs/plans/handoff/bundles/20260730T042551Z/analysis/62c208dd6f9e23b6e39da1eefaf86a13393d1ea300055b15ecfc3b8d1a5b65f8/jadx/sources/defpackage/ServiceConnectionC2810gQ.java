package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.android.billingclient.api.Cdo;
import com.android.billingclient.api.Cif;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.internal.play_billing.zzam;
import com.google.android.gms.internal.play_billing.zzan;
import com.google.android.gms.internal.play_billing.zze;
import com.google.android.gms.internal.play_billing.zzjx;
import com.google.android.gms.internal.play_billing.zzjz;
import com.google.android.gms.internal.play_billing.zzke;
import com.google.android.gms.internal.play_billing.zzki;
import com.google.android.gms.internal.play_billing.zzkl;
import com.google.android.gms.internal.play_billing.zzli;
import com.google.android.gms.internal.play_billing.zzlk;
import com.google.android.gms.internal.play_billing.zzlo;
import com.google.android.gms.internal.play_billing.zzlq;
import com.google.android.gms.internal.play_billing.zzlu;
import java.util.concurrent.Callable;

/* renamed from: gQ, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ServiceConnectionC2810gQ implements ServiceConnection {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3428o5 f13169do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3487p5 f13170do;

    public /* synthetic */ ServiceConnectionC2810gQ(C3428o5 c3428o5, InterfaceC3487p5 interfaceC3487p5) {
        this.f13169do = c3428o5;
        this.f13170do = interfaceC3487p5;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6732do(Cdo cdo) {
        synchronized (this.f13169do.f14672do) {
            if (this.f13169do.f14663do == 3) {
                return;
            }
            this.f13170do.mo5224goto(cdo);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        zze.zzl("BillingClient", "Billing service died.");
        try {
            if (C3428o5.m7660static(this.f13169do)) {
                InterfaceC3273lR interfaceC3273lR = this.f13169do.f14675do;
                zzjx zzc = zzjz.zzc();
                zzc.zzn(6);
                zzke zzc2 = zzki.zzc();
                zzc2.zzo(122);
                zzc.zza(zzc2);
                ((C3332mR) interfaceC3273lR).m7450do((zzjz) zzc.zzf());
            } else {
                InterfaceC3273lR interfaceC3273lR2 = this.f13169do.f14675do;
                zzkl zzB = zzkl.zzB();
                C3332mR c3332mR = (C3332mR) interfaceC3273lR2;
                c3332mR.getClass();
                try {
                    zzli zzc3 = zzlk.zzc();
                    zzc3.zzo(c3332mR.f14343do);
                    zzc3.zzn(zzB);
                    c3332mR.f14344do.m7568do((zzlk) zzc3.zzf());
                } catch (Throwable th) {
                    zze.zzm("BillingLogger", "Unable to log.", th);
                }
            }
        } catch (Throwable th2) {
            zze.zzm("BillingClient", "Unable to log.", th2);
        }
        synchronized (this.f13169do.f14672do) {
            if (this.f13169do.f14663do != 3 && this.f13169do.f14663do != 0) {
                this.f13169do.m7675throw(0);
                this.f13169do.m7678while();
                this.f13170do.mo5223for();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zze.zzk("BillingClient", "Billing service connected.");
        synchronized (this.f13169do.f14672do) {
            if (this.f13169do.f14663do == 3) {
                return;
            }
            this.f13169do.f14668do = zzam.zzu(iBinder);
            C3428o5 c3428o5 = this.f13169do;
            if (C3428o5.m7658break(new Callable() { // from class: PP
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Bundle bundle;
                    int i;
                    int i2;
                    String str;
                    boolean z;
                    zzan zzanVar;
                    int i3;
                    ServiceConnectionC2810gQ serviceConnectionC2810gQ = ServiceConnectionC2810gQ.this;
                    synchronized (serviceConnectionC2810gQ.f13169do.f14672do) {
                        if (serviceConnectionC2810gQ.f13169do.f14663do != 3) {
                            int i4 = serviceConnectionC2810gQ.f13169do.f14663do;
                            if (TextUtils.isEmpty(null)) {
                                bundle = null;
                            } else {
                                bundle = new Bundle();
                                bundle.putString("accountName", null);
                                C3428o5 c3428o52 = serviceConnectionC2810gQ.f13169do;
                                zze.zzc(bundle, c3428o52.f14673do, c3428o52.f14671do.longValue());
                            }
                            try {
                                synchronized (serviceConnectionC2810gQ.f13169do.f14672do) {
                                    zzanVar = serviceConnectionC2810gQ.f13169do.f14668do;
                                }
                            } catch (Exception e) {
                                boolean z2 = i4 != 1;
                                zze.zzm("BillingClient", "Exception while checking if billing is supported; try to reconnect", e);
                                i = e instanceof DeadObjectException ? FacebookMediationAdapter.ERROR_INVALID_SERVER_PARAMETERS : e instanceof RemoteException ? 100 : e instanceof SecurityException ? 102 : 42;
                                String m7099do = i == 42 ? C3155jR.m7099do(e) : null;
                                serviceConnectionC2810gQ.f13169do.m7675throw(0);
                                i2 = 6;
                                boolean z3 = z2;
                                str = m7099do;
                                z = z3;
                            }
                            if (zzanVar == null) {
                                serviceConnectionC2810gQ.f13169do.m7675throw(0);
                                C3428o5 c3428o53 = serviceConnectionC2810gQ.f13169do;
                                Cdo cdo = Cif.f9114const;
                                c3428o53.m7663default(119, 6, cdo);
                                serviceConnectionC2810gQ.m6732do(cdo);
                            } else {
                                String packageName = serviceConnectionC2810gQ.f13169do.f14666do.getPackageName();
                                int i5 = 23;
                                i2 = 3;
                                while (true) {
                                    if (i5 < 3) {
                                        i5 = 0;
                                        break;
                                    }
                                    i2 = bundle == null ? zzanVar.zzy(i5, packageName, "subs") : zzanVar.zzc(i5, packageName, "subs", bundle);
                                    if (i2 == 0) {
                                        zze.zzk("BillingClient", "highestLevelSupportedForSubs: " + i5);
                                        break;
                                    }
                                    i5--;
                                }
                                serviceConnectionC2810gQ.f13169do.getClass();
                                serviceConnectionC2810gQ.f13169do.f14676do = i5 >= 3;
                                if (i5 < 3) {
                                    zze.zzk("BillingClient", "In-app billing API does not support subscription on this device.");
                                    i3 = 23;
                                    i = 9;
                                } else {
                                    i3 = 23;
                                    i = 1;
                                }
                                while (true) {
                                    if (i3 < 3) {
                                        break;
                                    }
                                    i2 = bundle == null ? zzanVar.zzy(i3, packageName, "inapp") : zzanVar.zzc(i3, packageName, "inapp", bundle);
                                    if (i2 == 0) {
                                        serviceConnectionC2810gQ.f13169do.f14680if = i3;
                                        zze.zzk("BillingClient", "mHighestLevelSupportedForInApp: " + i3);
                                        break;
                                    }
                                    i3--;
                                }
                                C3428o5 c3428o54 = serviceConnectionC2810gQ.f13169do;
                                int i6 = c3428o54.f14680if;
                                c3428o54.f14660break = i6 >= 21;
                                c3428o54.f14683this = i6 >= 19;
                                c3428o54.f14679goto = i6 >= 17;
                                c3428o54.f14677else = i6 >= 16;
                                c3428o54.f14661case = i6 >= 15;
                                c3428o54.f14684try = i6 >= 14;
                                c3428o54.f14682new = i6 >= 10;
                                c3428o54.f14678for = i6 >= 9;
                                c3428o54.f14681if = i6 >= 6;
                                if (i6 < 3) {
                                    zze.zzl("BillingClient", "In-app billing API version 3 is not supported on this device.");
                                    i = 36;
                                }
                                if (i2 == 0) {
                                    synchronized (serviceConnectionC2810gQ.f13169do.f14672do) {
                                        if (serviceConnectionC2810gQ.f13169do.f14663do != 3) {
                                            z = i4 != 1;
                                            serviceConnectionC2810gQ.f13169do.m7675throw(2);
                                            JU ju = serviceConnectionC2810gQ.f13169do.f14664do != null ? serviceConnectionC2810gQ.f13169do.f14664do : null;
                                            if (ju != null) {
                                                ju.m1038do(serviceConnectionC2810gQ.f13169do.f14660break);
                                            }
                                        }
                                    }
                                } else {
                                    z = i4 != 1;
                                    serviceConnectionC2810gQ.f13169do.m7675throw(0);
                                }
                                str = null;
                                if (i2 == 0) {
                                    try {
                                        if (true != z) {
                                            C3428o5 c3428o55 = serviceConnectionC2810gQ.f13169do;
                                            c3428o55.getClass();
                                            try {
                                                c3428o55.m7673super(C3155jR.m7102new(6));
                                            } catch (Throwable th) {
                                                zze.zzm("BillingClient", "Unable to log.", th);
                                            }
                                        } else {
                                            InterfaceC3273lR interfaceC3273lR = serviceConnectionC2810gQ.f13169do.f14675do;
                                            zzlo zzc = zzlq.zzc();
                                            zzke zzc2 = zzki.zzc();
                                            zzc2.zzn(0);
                                            zzc.zza(zzc2);
                                            ((C3332mR) interfaceC3273lR).m7451for((zzlq) zzc.zzf());
                                        }
                                    } catch (Throwable th2) {
                                        zze.zzm("BillingClient", "Unable to log.", th2);
                                    }
                                    serviceConnectionC2810gQ.m6732do(Cif.f9113class);
                                } else {
                                    Cdo cdo2 = Cif.f9115do;
                                    try {
                                        if (true != z) {
                                            serviceConnectionC2810gQ.f13169do.m7665extends(i, 6, cdo2, str);
                                        } else {
                                            zzke zzc3 = zzki.zzc();
                                            zzc3.zzn(cdo2.f9106do);
                                            zzc3.zzm(cdo2.f9107do);
                                            zzc3.zzo(i);
                                            if (str != null) {
                                                zzc3.zza(str);
                                            }
                                            InterfaceC3273lR interfaceC3273lR2 = serviceConnectionC2810gQ.f13169do.f14675do;
                                            zzlo zzc4 = zzlq.zzc();
                                            zzc4.zzm((zzki) zzc3.zzf());
                                            ((C3332mR) interfaceC3273lR2).m7451for((zzlq) zzc4.zzf());
                                        }
                                    } catch (Throwable th3) {
                                        zze.zzm("BillingClient", "Unable to log.", th3);
                                    }
                                    serviceConnectionC2810gQ.m6732do(Cif.f9115do);
                                }
                            }
                        }
                    }
                    return null;
                }
            }, 30000L, new TP(this, 0), c3428o5.m7674switch(), c3428o5.m7662const()) == null) {
                C3428o5 c3428o52 = this.f13169do;
                Cdo m7661catch = c3428o52.m7661catch();
                c3428o52.m7663default(25, 6, m7661catch);
                m6732do(m7661catch);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zze.zzl("BillingClient", "Billing service disconnected.");
        try {
            if (C3428o5.m7660static(this.f13169do)) {
                InterfaceC3273lR interfaceC3273lR = this.f13169do.f14675do;
                zzjx zzc = zzjz.zzc();
                zzc.zzn(6);
                zzke zzc2 = zzki.zzc();
                zzc2.zzo(121);
                zzc.zza(zzc2);
                ((C3332mR) interfaceC3273lR).m7450do((zzjz) zzc.zzf());
            } else {
                InterfaceC3273lR interfaceC3273lR2 = this.f13169do.f14675do;
                zzlu zzB = zzlu.zzB();
                C3332mR c3332mR = (C3332mR) interfaceC3273lR2;
                c3332mR.getClass();
                if (zzB != null) {
                    try {
                        zzli zzc3 = zzlk.zzc();
                        zzc3.zzo(c3332mR.f14343do);
                        zzc3.zzq(zzB);
                        c3332mR.f14344do.m7568do((zzlk) zzc3.zzf());
                    } catch (Throwable th) {
                        zze.zzm("BillingLogger", "Unable to log.", th);
                    }
                }
            }
        } catch (Throwable th2) {
            zze.zzm("BillingClient", "Unable to log.", th2);
        }
        synchronized (this.f13169do.f14672do) {
            if (this.f13169do.f14663do == 3) {
                return;
            }
            this.f13169do.m7675throw(0);
            this.f13170do.mo5223for();
        }
    }
}
