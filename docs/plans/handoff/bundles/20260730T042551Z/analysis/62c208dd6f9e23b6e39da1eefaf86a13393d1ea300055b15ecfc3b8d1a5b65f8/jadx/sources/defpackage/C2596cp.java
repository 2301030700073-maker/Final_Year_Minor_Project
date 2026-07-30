package defpackage;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import android.util.Log;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import defpackage.AbstractC3905wB;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.Adler32;

/* renamed from: cp, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2596cp implements SM {

    /* renamed from: do, reason: not valid java name */
    public final Context f12386do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3905wB f12387do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC4109zg f12388do;

    public C2596cp(Context context, InterfaceC4109zg interfaceC4109zg, AbstractC3905wB abstractC3905wB) {
        this.f12386do = context;
        this.f12388do = interfaceC4109zg;
        this.f12387do = abstractC3905wB;
    }

    @Override // defpackage.SM
    /* renamed from: do */
    public final void mo2151do(AbstractC3794uI abstractC3794uI, int i) {
        mo2152if(abstractC3794uI, i, false);
    }

    @Override // defpackage.SM
    /* renamed from: if */
    public final void mo2152if(AbstractC3794uI abstractC3794uI, int i, boolean z) {
        boolean z2;
        Context context = this.f12386do;
        ComponentName componentName = new ComponentName(context, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(context.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(abstractC3794uI.mo8381if().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(Gx.m775do(abstractC3794uI.mo8382new())).array());
        if (abstractC3794uI.mo8380for() != null) {
            adler32.update(abstractC3794uI.mo8380for());
        }
        int value = (int) adler32.getValue();
        if (!z) {
            Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                JobInfo next = it.next();
                int i2 = next.getExtras().getInt("attemptNumber");
                if (next.getId() == value) {
                    if (i2 >= i) {
                        z2 = true;
                    }
                }
            }
            z2 = false;
            if (z2) {
                C0636Yq.m2960do("JobInfoScheduler", abstractC3794uI, "Upload for context %s is already scheduled. Returning...");
                return;
            }
        }
        long mo6438finally = this.f12388do.mo6438finally(abstractC3794uI);
        JobInfo.Builder builder = new JobInfo.Builder(value, componentName);
        Ex mo8382new = abstractC3794uI.mo8382new();
        AbstractC3905wB abstractC3905wB = this.f12387do;
        builder.setMinimumLatency(abstractC3905wB.m8565if(mo8382new, mo6438finally, i));
        Set<AbstractC3905wB.Cif> mo7933if = abstractC3905wB.mo7851for().get(mo8382new).mo7933if();
        if (mo7933if.contains(AbstractC3905wB.Cif.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (mo7933if.contains(AbstractC3905wB.Cif.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (mo7933if.contains(AbstractC3905wB.Cif.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", abstractC3794uI.mo8381if());
        persistableBundle.putInt("priority", Gx.m775do(abstractC3794uI.mo8382new()));
        if (abstractC3794uI.mo8380for() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(abstractC3794uI.mo8380for(), 0));
        }
        builder.setExtras(persistableBundle);
        Object[] objArr = {abstractC3794uI, Integer.valueOf(value), Long.valueOf(abstractC3905wB.m8565if(abstractC3794uI.mo8382new(), mo6438finally, i)), Long.valueOf(mo6438finally), Integer.valueOf(i)};
        if (Log.isLoggable(C0636Yq.m2961if("JobInfoScheduler"), 3)) {
            String.format("Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", objArr);
        }
        jobScheduler.schedule(builder.build());
    }
}
