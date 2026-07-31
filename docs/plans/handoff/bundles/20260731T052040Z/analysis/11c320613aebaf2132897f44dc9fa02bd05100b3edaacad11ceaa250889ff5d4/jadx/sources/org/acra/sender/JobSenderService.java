package org.acra.sender;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.PersistableBundle;
import androidx.work.impl.Schedulers$$ExternalSyntheticLambda1;
import kotlin.io.CloseableKt;
import org.acra.config.CoreConfiguration;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JobSenderService extends JobService {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        jobParameters.getClass();
        PersistableBundle extras = jobParameters.getExtras();
        extras.getClass();
        CoreConfiguration coreConfiguration = (CoreConfiguration) CloseableKt.deserialize(extras.getString("acraConfig"));
        if (coreConfiguration == null) {
            return true;
        }
        new Thread(new Schedulers$$ExternalSyntheticLambda1(this, coreConfiguration, extras, jobParameters, 3)).start();
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        jobParameters.getClass();
        return true;
    }
}
