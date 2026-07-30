package androidx.core.app;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import java.util.ArrayList;
import java.util.HashMap;

@Deprecated
/* loaded from: classes.dex */
public abstract class JobIntentService extends Service {

    /* renamed from: do, reason: not valid java name */
    public static final HashMap<ComponentName, Ccase> f6486do = new HashMap<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase f6487do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f6488do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ctry f6489do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Cfor> f6490do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6491do = false;

    /* renamed from: androidx.core.app.JobIntentService$case, reason: invalid class name */
    public static abstract class Ccase {
        public Ccase(ComponentName componentName) {
        }

        /* renamed from: do, reason: not valid java name */
        public void mo3707do() {
        }

        /* renamed from: for, reason: not valid java name */
        public void mo3708for() {
        }

        /* renamed from: if, reason: not valid java name */
        public void mo3709if() {
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$do, reason: invalid class name */
    public final class Cdo extends AsyncTask<Void, Void, Void> {
        public Cdo() {
        }

        @Override // android.os.AsyncTask
        public final Void doInBackground(Void[] voidArr) {
            Cfor remove;
            while (true) {
                JobIntentService jobIntentService = JobIntentService.this;
                Ctry ctry = jobIntentService.f6489do;
                if (ctry != null) {
                    remove = ctry.m3711do();
                } else {
                    synchronized (jobIntentService.f6490do) {
                        remove = jobIntentService.f6490do.size() > 0 ? jobIntentService.f6490do.remove(0) : null;
                    }
                }
                if (remove == null) {
                    return null;
                }
                JobIntentService jobIntentService2 = JobIntentService.this;
                remove.getIntent();
                jobIntentService2.m3706if();
                remove.mo3710do();
            }
        }

        @Override // android.os.AsyncTask
        public final void onCancelled(Void r1) {
            JobIntentService.this.m3705for();
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Void r1) {
            JobIntentService.this.m3705for();
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$for, reason: invalid class name */
    public final class Cfor implements Cnew {

        /* renamed from: do, reason: not valid java name */
        public final int f6493do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Intent f6494do;

        public Cfor(Intent intent, int i) {
            this.f6494do = intent;
            this.f6493do = i;
        }

        @Override // androidx.core.app.JobIntentService.Cnew
        /* renamed from: do, reason: not valid java name */
        public final void mo3710do() {
            JobIntentService.this.stopSelf(this.f6493do);
        }

        @Override // androidx.core.app.JobIntentService.Cnew
        public final Intent getIntent() {
            return this.f6494do;
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$if, reason: invalid class name */
    public static final class Cif extends Ccase {

        /* renamed from: do, reason: not valid java name */
        public final PowerManager.WakeLock f6496do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f6497do;

        /* renamed from: if, reason: not valid java name */
        public final PowerManager.WakeLock f6498if;

        public Cif(Context context, ComponentName componentName) {
            super(componentName);
            context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f6496do = newWakeLock;
            newWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f6498if = newWakeLock2;
            newWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.Ccase
        /* renamed from: do */
        public final void mo3707do() {
            synchronized (this) {
                if (this.f6497do) {
                    this.f6497do = false;
                    this.f6498if.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.Ccase
        /* renamed from: for */
        public final void mo3708for() {
            synchronized (this) {
            }
        }

        @Override // androidx.core.app.JobIntentService.Ccase
        /* renamed from: if */
        public final void mo3709if() {
            synchronized (this) {
                if (!this.f6497do) {
                    this.f6497do = true;
                    this.f6498if.acquire(600000L);
                    this.f6496do.release();
                }
            }
        }
    }

    /* renamed from: androidx.core.app.JobIntentService$new, reason: invalid class name */
    public interface Cnew {
        /* renamed from: do */
        void mo3710do();

        Intent getIntent();
    }

    /* renamed from: androidx.core.app.JobIntentService$try, reason: invalid class name */
    public static final class Ctry extends JobServiceEngine {

        /* renamed from: do, reason: not valid java name */
        public JobParameters f6499do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final JobIntentService f6500do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Object f6501do;

        /* renamed from: androidx.core.app.JobIntentService$try$do, reason: invalid class name */
        public final class Cdo implements Cnew {

            /* renamed from: do, reason: not valid java name */
            public final JobWorkItem f6502do;

            public Cdo(JobWorkItem jobWorkItem) {
                this.f6502do = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.Cnew
            /* renamed from: do */
            public final void mo3710do() {
                synchronized (Ctry.this.f6501do) {
                    JobParameters jobParameters = Ctry.this.f6499do;
                    if (jobParameters != null) {
                        jobParameters.completeWork(this.f6502do);
                    }
                }
            }

            @Override // androidx.core.app.JobIntentService.Cnew
            public final Intent getIntent() {
                Intent intent;
                intent = this.f6502do.getIntent();
                return intent;
            }
        }

        public Ctry(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f6501do = new Object();
            this.f6500do = jobIntentService;
        }

        /* renamed from: do, reason: not valid java name */
        public final Cdo m3711do() {
            JobWorkItem dequeueWork;
            Intent intent;
            synchronized (this.f6501do) {
                JobParameters jobParameters = this.f6499do;
                if (jobParameters == null) {
                    return null;
                }
                dequeueWork = jobParameters.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                intent = dequeueWork.getIntent();
                intent.setExtrasClassLoader(this.f6500do.getClassLoader());
                return new Cdo(dequeueWork);
            }
        }

        @Override // android.app.job.JobServiceEngine
        public final boolean onStartJob(JobParameters jobParameters) {
            this.f6499do = jobParameters;
            this.f6500do.m3704do(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public final boolean onStopJob(JobParameters jobParameters) {
            Cdo cdo = this.f6500do.f6488do;
            if (cdo != null) {
                cdo.cancel(false);
            }
            synchronized (this.f6501do) {
                this.f6499do = null;
            }
            return true;
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f6490do = null;
        } else {
            this.f6490do = new ArrayList<>();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m3704do(boolean z) {
        if (this.f6488do == null) {
            this.f6488do = new Cdo();
            Ccase ccase = this.f6487do;
            if (ccase != null && z) {
                ccase.mo3709if();
            }
            this.f6488do.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m3705for() {
        ArrayList<Cfor> arrayList = this.f6490do;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f6488do = null;
                ArrayList<Cfor> arrayList2 = this.f6490do;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    m3704do(false);
                } else if (!this.f6491do) {
                    this.f6487do.mo3707do();
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public abstract void m3706if();

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        Ctry ctry = this.f6489do;
        if (ctry != null) {
            return ctry.getBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.f6489do = new Ctry(this);
            this.f6487do = null;
            return;
        }
        this.f6489do = null;
        ComponentName componentName = new ComponentName(this, getClass());
        HashMap<ComponentName, Ccase> hashMap = f6486do;
        Ccase ccase = hashMap.get(componentName);
        if (ccase == null) {
            if (i >= 26) {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            ccase = new Cif(this, componentName);
            hashMap.put(componentName, ccase);
        }
        this.f6487do = ccase;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        ArrayList<Cfor> arrayList = this.f6490do;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f6491do = true;
                this.f6487do.mo3707do();
            }
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        if (this.f6490do == null) {
            return 2;
        }
        this.f6487do.mo3708for();
        synchronized (this.f6490do) {
            ArrayList<Cfor> arrayList = this.f6490do;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new Cfor(intent, i2));
            m3704do(true);
        }
        return 3;
    }
}
