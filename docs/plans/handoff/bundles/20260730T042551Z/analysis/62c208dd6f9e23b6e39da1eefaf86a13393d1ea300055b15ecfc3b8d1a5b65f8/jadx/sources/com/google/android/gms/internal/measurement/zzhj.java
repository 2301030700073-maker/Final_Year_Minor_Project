package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.google.android.gms.internal.measurement.zzhg;
import defpackage.AbstractC2838gw;
import defpackage.C0315Kc;
import defpackage.Ccase;
import defpackage.Cpublic;
import defpackage.InterfaceC3406nk;
import defpackage.SF;
import defpackage.TF;
import defpackage.UF;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class zzhj<T> {
    private static final Object zza = new Object();
    private static volatile zzhu zzb = null;
    private static volatile boolean zzc = false;
    private static zzhy zzd;
    private static final AtomicInteger zze;
    private final zzhr zzf;
    private final String zzg;
    private Object zzh;
    private volatile int zzi;
    private volatile T zzj;
    private final boolean zzk;
    private volatile boolean zzl;

    static {
        new AtomicReference();
        zzd = new zzhy(new zzhx() { // from class: com.google.android.gms.internal.measurement.zzho
            @Override // com.google.android.gms.internal.measurement.zzhx
            public final boolean zza() {
                return zzhj.zzd();
            }
        });
        zze = new AtomicInteger();
    }

    private zzhj(zzhr zzhrVar, String str, T t, boolean z) {
        this.zzi = -1;
        String str2 = zzhrVar.zza;
        if (str2 == null && zzhrVar.zzb == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        if (str2 != null && zzhrVar.zzb != null) {
            throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
        }
        this.zzf = zzhrVar;
        this.zzg = str;
        this.zzh = t;
        this.zzk = z;
        this.zzl = false;
    }

    public static /* synthetic */ zzhj zza(zzhr zzhrVar, String str, Boolean bool, boolean z) {
        return new zzhq(zzhrVar, str, bool, true);
    }

    private final T zzb(zzhu zzhuVar) {
        Object zza2;
        zzhb zza3 = this.zzf.zzb != null ? zzhi.zza(zzhuVar.zza(), this.zzf.zzb) ? this.zzf.zzg ? zzgu.zza(zzhuVar.zza().getContentResolver(), zzhk.zza(zzhk.zza(zzhuVar.zza(), this.zzf.zzb.getLastPathSegment())), new Runnable() { // from class: com.google.android.gms.internal.measurement.zzhm
            @Override // java.lang.Runnable
            public final void run() {
                zzhj.zzc();
            }
        }) : zzgu.zza(zzhuVar.zza().getContentResolver(), this.zzf.zzb, new Runnable() { // from class: com.google.android.gms.internal.measurement.zzhm
            @Override // java.lang.Runnable
            public final void run() {
                zzhj.zzc();
            }
        }) : null : zzhw.zza(zzhuVar.zza(), this.zzf.zza, new Runnable() { // from class: com.google.android.gms.internal.measurement.zzhm
            @Override // java.lang.Runnable
            public final void run() {
                zzhj.zzc();
            }
        });
        if (zza3 == null || (zza2 = zza3.zza(zzb())) == null) {
            return null;
        }
        return zza(zza2);
    }

    public static void zzc() {
        zze.incrementAndGet();
    }

    public static /* synthetic */ boolean zzd() {
        return true;
    }

    private final T zze() {
        return (T) this.zzh;
    }

    public abstract T zza(Object obj);

    public static /* synthetic */ zzhj zza(zzhr zzhrVar, String str, Double d, boolean z) {
        return new zzhp(zzhrVar, str, d, true);
    }

    public static /* synthetic */ zzhj zza(zzhr zzhrVar, String str, Long l, boolean z) {
        return new zzhn(zzhrVar, str, l, true);
    }

    public static /* synthetic */ zzhj zza(zzhr zzhrVar, String str, String str2, boolean z) {
        return new zzhs(zzhrVar, str, str2, true);
    }

    public final T zza() {
        T zzb2;
        if (!this.zzk) {
            C0315Kc.m1164final(zzd.zza(this.zzg), "Attempt to access PhenotypeFlag not via codegen. All new PhenotypeFlags must be accessed through codegen APIs. If you believe you are seeing this error by mistake, you can add your flag to the exemption list located at //java/com/google/android/libraries/phenotype/client/lockdown/flags.textproto. Send the addition CL to ph-reviews@. See go/phenotype-android-codegen for information about generated code. See go/ph-lockdown for more information about this error.");
        }
        int i = zze.get();
        if (this.zzi < i) {
            synchronized (this) {
                if (this.zzi < i) {
                    zzhu zzhuVar = zzb;
                    AbstractC2838gw<zzhh> abstractC2838gw = Ccase.f8559do;
                    String str = null;
                    if (zzhuVar != null) {
                        abstractC2838gw = zzhuVar.zzb().get();
                        if (abstractC2838gw.mo243if()) {
                            zzhh mo242do = abstractC2838gw.mo242do();
                            zzhr zzhrVar = this.zzf;
                            str = mo242do.zza(zzhrVar.zzb, zzhrVar.zza, zzhrVar.zzd, this.zzg);
                        }
                    }
                    C0315Kc.m1164final(zzhuVar != null, "Must call PhenotypeFlagInitializer.maybeInit() first");
                    if (!this.zzf.zzf ? (zzb2 = zzb(zzhuVar)) == null && (zzb2 = zza(zzhuVar)) == null : (zzb2 = zza(zzhuVar)) == null && (zzb2 = zzb(zzhuVar)) == null) {
                        zzb2 = zze();
                    }
                    if (abstractC2838gw.mo243if()) {
                        zzb2 = str == null ? zze() : zza((Object) str);
                    }
                    this.zzj = zzb2;
                    this.zzi = i;
                }
            }
        }
        return this.zzj;
    }

    public final String zzb() {
        return zza(this.zzf.zzd);
    }

    public static void zzb(final Context context) {
        SF uf;
        if (zzb != null || context == null) {
            return;
        }
        Object obj = zza;
        synchronized (obj) {
            if (zzb == null) {
                synchronized (obj) {
                    zzhu zzhuVar = zzb;
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    if (zzhuVar == null || zzhuVar.zza() != context) {
                        if (zzhuVar != null) {
                            zzgu.zzc();
                            zzhw.zza();
                            zzhc.zza();
                        }
                        SF sf = new SF() { // from class: com.google.android.gms.internal.measurement.zzhl
                            @Override // defpackage.SF
                            public final Object get() {
                                AbstractC2838gw zza2;
                                zza2 = zzhg.zza.zza(context);
                                return zza2;
                            }
                        };
                        if (!(sf instanceof UF) && !(sf instanceof TF)) {
                            if (sf instanceof Serializable) {
                                uf = new TF(sf);
                            } else {
                                uf = new UF(sf);
                            }
                            sf = uf;
                        }
                        zzb = new zzgv(context, sf);
                        zze.incrementAndGet();
                    }
                }
            }
        }
    }

    private final T zza(zzhu zzhuVar) {
        InterfaceC3406nk<Context, Boolean> interfaceC3406nk;
        zzhr zzhrVar = this.zzf;
        if (!zzhrVar.zze && ((interfaceC3406nk = zzhrVar.zzh) == null || interfaceC3406nk.apply(zzhuVar.zza()).booleanValue())) {
            zzhc zza2 = zzhc.zza(zzhuVar.zza());
            zzhr zzhrVar2 = this.zzf;
            Object zza3 = zza2.zza(zzhrVar2.zze ? null : zza(zzhrVar2.zzc));
            if (zza3 != null) {
                return zza(zza3);
            }
        }
        return null;
    }

    private final String zza(String str) {
        return (str == null || !str.isEmpty()) ? Cpublic.m7816case(str, this.zzg) : this.zzg;
    }
}
