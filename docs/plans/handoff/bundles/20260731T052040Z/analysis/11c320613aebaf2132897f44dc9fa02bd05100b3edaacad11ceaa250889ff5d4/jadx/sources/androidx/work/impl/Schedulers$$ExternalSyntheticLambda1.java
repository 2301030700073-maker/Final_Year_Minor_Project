package androidx.work.impl;

import android.app.job.JobParameters;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.util.Log;
import androidx.work.Configuration;
import androidx.work.impl.model.WorkGenerationalId;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import java.util.Iterator;
import java.util.List;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.builder.ReportBuilder;
import org.acra.collector.Collector;
import org.acra.collector.CollectorException;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.acra.data.CrashReportDataFactory;
import org.acra.sender.JobSenderService;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Schedulers$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ Schedulers$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.f$3;
        Object obj2 = this.f$2;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                List list = (List) obj4;
                WorkGenerationalId workGenerationalId = (WorkGenerationalId) obj3;
                Configuration configuration = (Configuration) obj2;
                WorkDatabase workDatabase = (WorkDatabase) obj;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((Scheduler) it.next()).cancel(workGenerationalId.workSpecId);
                }
                Schedulers.schedule(configuration, workDatabase, list);
                break;
            case 1:
                ((MediaSourceEventListener.EventDispatcher) obj4).lambda$upstreamDiscarded$4((MediaSourceEventListener) obj3, (MediaSource.MediaPeriodId) obj2, (MediaLoadData) obj);
                break;
            case 2:
                Collector collector = (Collector) obj4;
                CrashReportDataFactory crashReportDataFactory = (CrashReportDataFactory) obj3;
                ReportBuilder reportBuilder = (ReportBuilder) obj2;
                CrashReportData crashReportData = (CrashReportData) obj;
                try {
                    ErrorReporter errorReporter = ACRA.errorReporter;
                    collector.collect(crashReportDataFactory.context, crashReportDataFactory.config, reportBuilder, crashReportData);
                    break;
                } catch (CollectorException e) {
                    ErrorReporter errorReporter2 = ACRA.errorReporter;
                    Log.w("ACRA", "", e);
                    return;
                } catch (Throwable th) {
                    ErrorReporter errorReporter3 = ACRA.errorReporter;
                    Log.w("ACRA", "Error in collector ".concat(collector.getClass().getSimpleName()), th);
                    return;
                }
            default:
                JobSenderService jobSenderService = (JobSenderService) obj4;
                int i2 = JobSenderService.$r8$clinit;
                new ProcessFinisher(jobSenderService, (CoreConfiguration) obj3).sendReports(false, new Bundle((PersistableBundle) obj2));
                jobSenderService.jobFinished((JobParameters) obj, false);
                break;
        }
    }
}
