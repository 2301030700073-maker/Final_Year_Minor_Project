package androidx.work.impl;

import android.os.Build;
import androidx.work.Configuration;
import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.Logger$LogcatLogger;
import androidx.work.SystemClock;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import coil3.request.ImageRequests_androidKt$$ExternalSyntheticLambda0;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Schedulers {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("Schedulers");

    public static void markScheduled(WorkSpecDao_Impl workSpecDao_Impl, SystemClock systemClock, List list) {
        if (list.size() > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                workSpecDao_Impl.markWorkSpecScheduled(((WorkSpec) it.next()).id, currentTimeMillis);
            }
        }
    }

    public static void schedule(Configuration configuration, WorkDatabase workDatabase, List list) {
        List list2;
        if (list == null || list.size() == 0) {
            return;
        }
        WorkSpecDao_Impl workSpecDao = workDatabase.workSpecDao();
        workDatabase.beginTransaction();
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                list2 = (List) ExceptionsKt.performBlocking(workSpecDao.__db, true, false, new Data$$ExternalSyntheticLambda0(11));
                markScheduled(workSpecDao, configuration.clock, list2);
            } else {
                list2 = null;
            }
            List list3 = (List) ExceptionsKt.performBlocking(workSpecDao.__db, true, false, new ImageRequests_androidKt$$ExternalSyntheticLambda0(configuration.maxSchedulerLimit, 2));
            markScheduled(workSpecDao, configuration.clock, list3);
            if (list2 != null) {
                list3.addAll(list2);
            }
            List list4 = (List) ExceptionsKt.performBlocking(workSpecDao.__db, true, false, new Data$$ExternalSyntheticLambda0(14));
            workDatabase.setTransactionSuccessful();
            workDatabase.internalEndTransaction();
            if (list3.size() > 0) {
                WorkSpec[] workSpecArr = (WorkSpec[]) list3.toArray(new WorkSpec[list3.size()]);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    Scheduler scheduler = (Scheduler) it.next();
                    if (scheduler.hasLimitedSchedulingSlots()) {
                        scheduler.schedule(workSpecArr);
                    }
                }
            }
            if (list4.size() > 0) {
                WorkSpec[] workSpecArr2 = (WorkSpec[]) list4.toArray(new WorkSpec[list4.size()]);
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    Scheduler scheduler2 = (Scheduler) it2.next();
                    if (!scheduler2.hasLimitedSchedulingSlots()) {
                        scheduler2.schedule(workSpecArr2);
                    }
                }
            }
        } catch (Throwable th) {
            workDatabase.internalEndTransaction();
            throw th;
        }
    }
}
