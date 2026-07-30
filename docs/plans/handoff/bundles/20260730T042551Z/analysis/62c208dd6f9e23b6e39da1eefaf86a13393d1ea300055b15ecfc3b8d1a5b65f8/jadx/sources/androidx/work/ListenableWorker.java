package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.annotation.Keep;
import defpackage.AM;
import defpackage.AbstractC0807cN;
import defpackage.BM;
import defpackage.C3640rj;
import defpackage.HM;
import defpackage.IG;
import defpackage.InterfaceC3758tj;
import defpackage.InterfaceFutureC3942wq;
import defpackage.OM;
import defpackage.PM;
import defpackage.UC;
import defpackage.Wx;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class ListenableWorker {

    /* renamed from: do, reason: not valid java name */
    public final Context f8114do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WorkerParameters f8115do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile boolean f8116do;

    /* renamed from: for, reason: not valid java name */
    public boolean f8117for;

    /* renamed from: if, reason: not valid java name */
    public boolean f8118if;

    /* renamed from: androidx.work.ListenableWorker$do, reason: invalid class name */
    public static abstract class Cdo {

        /* renamed from: androidx.work.ListenableWorker$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0046do extends Cdo {

            /* renamed from: do, reason: not valid java name */
            public final androidx.work.Cif f8119do = androidx.work.Cif.f8144do;

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || C0046do.class != obj.getClass()) {
                    return false;
                }
                return this.f8119do.equals(((C0046do) obj).f8119do);
            }

            public final int hashCode() {
                return this.f8119do.hashCode() + (C0046do.class.getName().hashCode() * 31);
            }

            public final String toString() {
                return "Failure {mOutputData=" + this.f8119do + '}';
            }
        }

        /* renamed from: androidx.work.ListenableWorker$do$for, reason: invalid class name */
        public static final class Cfor extends Cdo {

            /* renamed from: do, reason: not valid java name */
            public final androidx.work.Cif f8120do;

            public Cfor() {
                this(androidx.work.Cif.f8144do);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || Cfor.class != obj.getClass()) {
                    return false;
                }
                return this.f8120do.equals(((Cfor) obj).f8120do);
            }

            public final int hashCode() {
                return this.f8120do.hashCode() + (Cfor.class.getName().hashCode() * 31);
            }

            public final String toString() {
                return "Success {mOutputData=" + this.f8120do + '}';
            }

            public Cfor(androidx.work.Cif cif) {
                this.f8120do = cif;
            }
        }

        /* renamed from: androidx.work.ListenableWorker$do$if, reason: invalid class name */
        public static final class Cif extends Cdo {
            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && Cif.class == obj.getClass();
            }

            public final int hashCode() {
                return Cif.class.getName().hashCode();
            }

            public final String toString() {
                return "Retry";
            }
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        }
        if (workerParameters == null) {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        this.f8114do = context;
        this.f8115do = workerParameters;
    }

    public final Context getApplicationContext() {
        return this.f8114do;
    }

    public Executor getBackgroundExecutor() {
        return this.f8115do.f8131do;
    }

    public InterfaceFutureC3942wq<C3640rj> getForegroundInfoAsync() {
        UC uc = new UC();
        uc.m2366this(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        return uc;
    }

    public final UUID getId() {
        return this.f8115do.f8130do;
    }

    public final Cif getInputData() {
        return this.f8115do.f8127do;
    }

    public final Network getNetwork() {
        return this.f8115do.f8126do.f8133do;
    }

    public final int getRunAttemptCount() {
        return this.f8115do.f8123do;
    }

    public final Set<String> getTags() {
        return this.f8115do.f8129do;
    }

    public IG getTaskExecutor() {
        return this.f8115do.f8124do;
    }

    public final List<String> getTriggeredContentAuthorities() {
        return this.f8115do.f8126do.f8134do;
    }

    public final List<Uri> getTriggeredContentUris() {
        return this.f8115do.f8126do.f8135if;
    }

    public AbstractC0807cN getWorkerFactory() {
        return this.f8115do.f8128do;
    }

    public boolean isRunInForeground() {
        return this.f8117for;
    }

    public final boolean isStopped() {
        return this.f8116do;
    }

    public final boolean isUsed() {
        return this.f8118if;
    }

    public void onStopped() {
    }

    public final InterfaceFutureC3942wq<Void> setForegroundAsync(C3640rj c3640rj) {
        this.f8117for = true;
        InterfaceC3758tj interfaceC3758tj = this.f8115do.f8132do;
        Context applicationContext = getApplicationContext();
        UUID id = getId();
        BM bm = (BM) interfaceC3758tj;
        bm.getClass();
        UC uc = new UC();
        ((HM) bm.f232do).m852do(new AM(bm, uc, id, c3640rj, applicationContext));
        return uc;
    }

    public InterfaceFutureC3942wq<Void> setProgressAsync(Cif cif) {
        Wx wx = this.f8115do.f8125do;
        getApplicationContext();
        UUID id = getId();
        PM pm = (PM) wx;
        pm.getClass();
        UC uc = new UC();
        ((HM) pm.f2775do).m852do(new OM(pm, id, cif, uc));
        return uc;
    }

    public void setRunInForeground(boolean z) {
        this.f8117for = z;
    }

    public final void setUsed() {
        this.f8118if = true;
    }

    public abstract InterfaceFutureC3942wq<Cdo> startWork();

    public final void stop() {
        this.f8116do = true;
        onStopped();
    }
}
