package androidx.work.impl.utils;

import androidx.work.Configuration;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class EnqueueRunnable {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("EnqueueRunnable");

    public static void enqueue(WorkContinuationImpl workContinuationImpl) {
        boolean z;
        WorkManagerImpl workManagerImpl = workContinuationImpl.mWorkManagerImpl;
        HashSet hashSet = new HashSet();
        hashSet.addAll(workContinuationImpl.mIds);
        HashSet prerequisitesFor = WorkContinuationImpl.prerequisitesFor(workContinuationImpl);
        Iterator it = hashSet.iterator();
        while (true) {
            if (!it.hasNext()) {
                hashSet.removeAll(workContinuationImpl.mIds);
                z = false;
                break;
            } else if (prerequisitesFor.contains((String) it.next())) {
                z = true;
                break;
            }
        }
        if (z) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m$3(workContinuationImpl, ")", "WorkContinuation has cycles (");
            return;
        }
        WorkDatabase workDatabase = workManagerImpl.mWorkDatabase;
        Configuration configuration = workManagerImpl.mConfiguration;
        workDatabase.beginTransaction();
        try {
            EnqueueUtilsKt.checkContentUriTriggerWorkerLimits(workDatabase, configuration, workContinuationImpl);
            boolean processContinuation = processContinuation(workContinuationImpl);
            workDatabase.setTransactionSuccessful();
            if (processContinuation) {
                Schedulers.schedule(configuration, workManagerImpl.mWorkDatabase, workManagerImpl.mSchedulers);
            }
        } finally {
            workDatabase.endTransaction();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01b2  */
    /* JADX WARN: Type inference failed for: r15v8, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean processContinuation(androidx.work.impl.WorkContinuationImpl r25) {
        /*
            Method dump skipped, instructions count: 624
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.EnqueueRunnable.processContinuation(androidx.work.impl.WorkContinuationImpl):boolean");
    }
}
