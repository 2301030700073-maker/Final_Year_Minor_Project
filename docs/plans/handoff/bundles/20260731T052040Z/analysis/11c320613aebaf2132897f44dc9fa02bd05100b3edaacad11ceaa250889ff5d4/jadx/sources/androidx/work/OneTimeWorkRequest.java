package androidx.work;

import android.os.Build;
import androidx.work.impl.model.WorkSpec;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class OneTimeWorkRequest extends WorkRequest {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder {
        public final /* synthetic */ int $r8$classId;
        public UUID id;
        public final LinkedHashSet tags;
        public WorkSpec workSpec;

        public Builder(int i, Class cls) {
            this.$r8$classId = i;
            UUID randomUUID = UUID.randomUUID();
            randomUUID.getClass();
            this.id = randomUUID;
            String uuid = this.id.toString();
            uuid.getClass();
            this.workSpec = new WorkSpec(uuid, (WorkInfo$State) null, cls.getName(), (String) null, (Data) null, (Data) null, 0L, 0L, 0L, (Constraints) null, 0, (BackoffPolicy) null, 0L, 0L, 0L, 0L, false, (OutOfQuotaPolicy) null, 0, 0L, 0, 0, (String) null, (Boolean) null, 33554426);
            String[] strArr = {cls.getName()};
            LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(1));
            linkedHashSet.add(strArr[0]);
            this.tags = linkedHashSet;
        }

        public final WorkRequest build() {
            WorkRequest oneTimeWorkRequest;
            int i = this.$r8$classId;
            LinkedHashSet linkedHashSet = this.tags;
            switch (i) {
                case 0:
                    oneTimeWorkRequest = new OneTimeWorkRequest(this.id, this.workSpec, linkedHashSet);
                    break;
                default:
                    WorkSpec workSpec = this.workSpec;
                    if (!workSpec.expedited) {
                        oneTimeWorkRequest = new PeriodicWorkRequest(this.id, workSpec, linkedHashSet);
                        break;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("PeriodicWorkRequests cannot be expedited");
                        oneTimeWorkRequest = null;
                        break;
                    }
            }
            Constraints constraints = this.workSpec.constraints;
            boolean z = (Build.VERSION.SDK_INT >= 24 && constraints.hasContentUriTriggers()) || constraints.requiresBatteryNotLow || constraints.requiresCharging || constraints.requiresDeviceIdle;
            WorkSpec workSpec2 = this.workSpec;
            if (workSpec2.expedited) {
                if (z) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Expedited jobs only support network and storage constraints");
                    return null;
                }
                if (workSpec2.initialDelay > 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Expedited jobs cannot be delayed");
                    return null;
                }
            }
            String str = workSpec2.traceTag;
            if (str == null) {
                List split$default = StringsKt.split$default(workSpec2.workerClassName, new String[]{"."}, 6);
                String str2 = split$default.size() == 1 ? (String) split$default.get(0) : (String) CollectionsKt.last(split$default);
                if (str2.length() > 127) {
                    str2 = StringsKt.take(Token.SWITCH, str2);
                }
                workSpec2.traceTag = str2;
            } else if (str.length() > 127) {
                this.workSpec.traceTag = StringsKt.take(Token.SWITCH, str);
            }
            UUID randomUUID = UUID.randomUUID();
            randomUUID.getClass();
            this.id = randomUUID;
            String uuid = randomUUID.toString();
            uuid.getClass();
            WorkSpec workSpec3 = this.workSpec;
            workSpec3.getClass();
            this.workSpec = new WorkSpec(uuid, workSpec3.state, workSpec3.workerClassName, workSpec3.inputMergerClassName, new Data(workSpec3.input), new Data(workSpec3.output), workSpec3.initialDelay, workSpec3.intervalDuration, workSpec3.flexDuration, new Constraints(workSpec3.constraints), workSpec3.runAttemptCount, workSpec3.backoffPolicy, workSpec3.backoffDelayDuration, workSpec3.lastEnqueueTime, workSpec3.minimumRetentionDuration, workSpec3.scheduleRequestedAt, workSpec3.expedited, workSpec3.outOfQuotaPolicy, workSpec3.periodCount, workSpec3.nextScheduleTimeOverride, workSpec3.nextScheduleTimeOverrideGeneration, workSpec3.stopReason, workSpec3.traceTag, workSpec3.backOffOnSystemInterruptions, 524288);
            return oneTimeWorkRequest;
        }
    }
}
