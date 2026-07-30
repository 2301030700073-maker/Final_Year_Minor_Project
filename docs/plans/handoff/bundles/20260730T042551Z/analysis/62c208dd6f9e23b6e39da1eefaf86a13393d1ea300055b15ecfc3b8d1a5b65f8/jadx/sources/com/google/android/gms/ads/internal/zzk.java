package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.client.zzbc;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.internal.ads.zzare;
import com.google.android.gms.internal.ads.zzarg;
import com.google.android.gms.internal.ads.zzauo;
import com.google.android.gms.internal.ads.zzaus;
import com.google.android.gms.internal.ads.zzauv;
import com.google.android.gms.internal.ads.zzaux;
import com.google.android.gms.internal.ads.zzauz;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbzw;
import com.google.android.gms.internal.ads.zzfni;
import com.google.android.gms.internal.ads.zzfok;
import com.google.android.gms.internal.ads.zzfpe;
import com.google.android.gms.internal.ads.zzgch;
import defpackage.C0174Dp;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzk implements Runnable, zzauv {

    /* renamed from: do, reason: not valid java name */
    public Context f9861do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VersionInfoParcel f9862do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzfni f9863do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExecutorService f9866do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9868do;

    /* renamed from: for, reason: not valid java name */
    public int f9869for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final boolean f9870for;

    /* renamed from: if, reason: not valid java name */
    public final Context f9871if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final VersionInfoParcel f9872if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f9874if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f9875new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Vector f9864do = new Vector();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicReference f9867do = new AtomicReference();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final AtomicReference f9873if = new AtomicReference();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CountDownLatch f9865do = new CountDownLatch(1);

    public zzk(Context context, VersionInfoParcel versionInfoParcel) {
        this.f9861do = context;
        this.f9871if = context;
        this.f9862do = versionInfoParcel;
        this.f9872if = versionInfoParcel;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.f9866do = newCachedThreadPool;
        boolean booleanValue = ((Boolean) zzbe.zzc().zza(zzbcl.zzcy)).booleanValue();
        this.f9875new = booleanValue;
        this.f9863do = zzfni.zza(context, newCachedThreadPool, booleanValue);
        this.f9874if = ((Boolean) zzbe.zzc().zza(zzbcl.zzcv)).booleanValue();
        this.f9870for = ((Boolean) zzbe.zzc().zza(zzbcl.zzcz)).booleanValue();
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzcx)).booleanValue()) {
            this.f9869for = 2;
        } else {
            this.f9869for = 1;
        }
        if (!((Boolean) zzbe.zzc().zza(zzbcl.zzdA)).booleanValue()) {
            this.f9868do = m5583do();
        }
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzdu)).booleanValue()) {
            zzbzw.zza.execute(this);
            return;
        }
        zzbc.zzb();
        if (com.google.android.gms.ads.internal.util.client.zzf.zzu()) {
            zzbzw.zza.execute(this);
        } else {
            run();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static final zzaus m5582try(Context context, VersionInfoParcel versionInfoParcel, boolean z, boolean z2) {
        zzare zza = zzarg.zza();
        zza.zza(z);
        zza.zzb(versionInfoParcel.afmaVersion);
        zzarg zzargVar = (zzarg) zza.zzbr();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return zzaus.zza(context, zzargVar, z2);
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m5583do() {
        Context context = this.f9861do;
        C0174Dp c0174Dp = new C0174Dp(this, 1);
        return new zzfpe(this.f9861do, zzfok.zzb(context, this.f9863do), c0174Dp, ((Boolean) zzbe.zzc().zza(zzbcl.zzcw)).booleanValue()).zzd(1);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m5584for() {
        Vector vector = this.f9864do;
        zzauv m5585if = m5585if();
        if (vector.isEmpty() || m5585if == null) {
            return;
        }
        Iterator it = vector.iterator();
        while (it.hasNext()) {
            Object[] objArr = (Object[]) it.next();
            int length = objArr.length;
            if (length == 1) {
                m5585if.zzk((MotionEvent) objArr[0]);
            } else if (length == 3) {
                m5585if.zzl(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        vector.clear();
    }

    /* renamed from: if, reason: not valid java name */
    public final zzauv m5585if() {
        return ((!this.f9874if || this.f9868do) ? this.f9869for : 1) == 2 ? (zzauv) this.f9873if.get() : (zzauv) this.f9867do.get();
    }

    /* renamed from: new, reason: not valid java name */
    public final void m5586new(boolean z) {
        String str = this.f9862do.afmaVersion;
        Context context = this.f9861do;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        zzare zza = zzarg.zza();
        zza.zza(z);
        zza.zzb(str);
        this.f9867do.set(zzauz.zzu(context, new zzaux((zzarg) zza.zzbr())));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch = this.f9865do;
        try {
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzdA)).booleanValue()) {
                this.f9868do = m5583do();
            }
            final boolean z = !((Boolean) zzbe.zzc().zza(zzbcl.zzbf)).booleanValue() && this.f9862do.isClientJar;
            if (((!this.f9874if || this.f9868do) ? this.f9869for : 1) == 1) {
                m5586new(z);
                if (this.f9869for == 2) {
                    this.f9866do.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.zzi
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzk zzkVar = zzk.this;
                            boolean z2 = z;
                            zzkVar.getClass();
                            long currentTimeMillis = System.currentTimeMillis();
                            try {
                                zzk.m5582try(zzkVar.f9871if, zzkVar.f9872if, z2, zzkVar.f9875new).zzp();
                            } catch (NullPointerException e) {
                                zzkVar.f9863do.zzc(2027, System.currentTimeMillis() - currentTimeMillis, e);
                            }
                        }
                    });
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    zzaus m5582try = m5582try(this.f9861do, this.f9862do, z, this.f9875new);
                    this.f9873if.set(m5582try);
                    if (this.f9870for && !m5582try.zzr()) {
                        this.f9869for = 1;
                        m5586new(z);
                    }
                } catch (NullPointerException e) {
                    this.f9869for = 1;
                    m5586new(z);
                    this.f9863do.zzc(2031, System.currentTimeMillis() - currentTimeMillis, e);
                }
            }
        } finally {
            countDownLatch.countDown();
            this.f9861do = null;
            this.f9862do = null;
        }
    }

    public final String zzb(Context context, byte[] bArr) {
        zzauv m5585if;
        if (!zzj() || (m5585if = m5585if()) == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        m5584for();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return m5585if.zzf(context);
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zzd(Context context, String str, View view) {
        return zze(context, str, view, null);
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zze(Context context, String str, View view, Activity activity) {
        if (!zzj()) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        zzauv m5585if = m5585if();
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzkz)).booleanValue()) {
            zzv.zzq();
            zzs.zzK(view, 4, null);
        }
        if (m5585if == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        m5584for();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return m5585if.zze(context, str, view, activity);
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zzf(Context context) {
        return zzb(context, null);
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zzg(final Context context) {
        try {
            return (String) zzgch.zzj(new Callable() { // from class: com.google.android.gms.ads.internal.zzh
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzk.this.zzb(context, null);
                }
            }, this.f9866do).get(((Integer) zzbe.zzc().zza(zzbcl.zzcP)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException unused) {
            return Integer.toString(17);
        } catch (TimeoutException unused2) {
            return zzauo.zza(context, this.f9872if.afmaVersion, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final String zzh(Context context, View view, Activity activity) {
        if (!((Boolean) zzbe.zzc().zza(zzbcl.zzky)).booleanValue()) {
            zzauv m5585if = m5585if();
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzkz)).booleanValue()) {
                zzv.zzq();
                zzs.zzK(view, 2, null);
            }
            return m5585if != null ? m5585if.zzh(context, view, activity) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (!zzj()) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        zzauv m5585if2 = m5585if();
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzkz)).booleanValue()) {
            zzv.zzq();
            zzs.zzK(view, 2, null);
        }
        return m5585if2 != null ? m5585if2.zzh(context, view, activity) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public final boolean zzj() {
        try {
            this.f9865do.await();
            return true;
        } catch (InterruptedException e) {
            zzo.zzk("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final void zzk(MotionEvent motionEvent) {
        zzauv m5585if = m5585if();
        if (m5585if == null) {
            this.f9864do.add(new Object[]{motionEvent});
        } else {
            m5584for();
            m5585if.zzk(motionEvent);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final void zzl(int i, int i2, int i3) {
        zzauv m5585if = m5585if();
        if (m5585if == null) {
            this.f9864do.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
        } else {
            m5584for();
            m5585if.zzl(i, i2, i3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final void zzn(StackTraceElement[] stackTraceElementArr) {
        zzauv m5585if;
        zzauv m5585if2;
        if (((Boolean) zzbe.zzc().zza(zzbcl.zzcU)).booleanValue()) {
            if (this.f9865do.getCount() != 0 || (m5585if2 = m5585if()) == null) {
                return;
            }
            m5585if2.zzn(stackTraceElementArr);
            return;
        }
        if (!zzj() || (m5585if = m5585if()) == null) {
            return;
        }
        m5585if.zzn(stackTraceElementArr);
    }

    @Override // com.google.android.gms.internal.ads.zzauv
    public final void zzo(View view) {
        zzauv m5585if = m5585if();
        if (m5585if != null) {
            m5585if.zzo(view);
        }
    }

    public final int zzp() {
        return this.f9869for;
    }
}
