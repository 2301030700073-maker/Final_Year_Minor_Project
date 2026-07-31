package io.reactivex.rxjava3.internal.schedulers;

import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface SchedulerMultiWorkerSupport {
    void createWorkers(int i, ProcessFinisher processFinisher);
}
