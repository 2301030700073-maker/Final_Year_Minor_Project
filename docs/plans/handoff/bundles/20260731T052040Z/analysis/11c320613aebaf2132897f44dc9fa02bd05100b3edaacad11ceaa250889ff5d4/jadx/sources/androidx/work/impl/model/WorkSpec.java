package androidx.work.impl.model;

import androidx.compose.ui.Modifier;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger$LogcatLogger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.OverwritingInputMerger;
import androidx.work.WorkInfo$State;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WorkSpec {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("WorkSpec");
    public final Boolean backOffOnSystemInterruptions;
    public final long backoffDelayDuration;
    public final BackoffPolicy backoffPolicy;
    public Constraints constraints;
    public boolean expedited;
    public long flexDuration;
    public final int generation;
    public final String id;
    public final long initialDelay;
    public Data input;
    public final String inputMergerClassName;
    public long intervalDuration;
    public long lastEnqueueTime;
    public final long minimumRetentionDuration;
    public long nextScheduleTimeOverride;
    public int nextScheduleTimeOverrideGeneration;
    public OutOfQuotaPolicy outOfQuotaPolicy;
    public final Data output;
    public final int periodCount;
    public final int runAttemptCount;
    public final long scheduleRequestedAt;
    public WorkInfo$State state;
    public final int stopReason;
    public String traceTag;
    public final String workerClassName;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class IdAndState {
        public String id;
        public WorkInfo$State state;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) obj;
            return Intrinsics.areEqual(this.id, idAndState.id) && this.state == idAndState.state;
        }

        public final int hashCode() {
            return this.state.hashCode() + (this.id.hashCode() * 31);
        }

        public final String toString() {
            return "IdAndState(id=" + this.id + ", state=" + this.state + ')';
        }
    }

    public /* synthetic */ WorkSpec(String str, WorkInfo$State workInfo$State, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, long j8, int i3, int i4, String str4, Boolean bool, int i5) {
        this(str, (i5 & 2) != 0 ? WorkInfo$State.ENQUEUED : workInfo$State, str2, (i5 & 8) != 0 ? OverwritingInputMerger.class.getName() : str3, (i5 & 16) != 0 ? Data.EMPTY : data, (i5 & 32) != 0 ? Data.EMPTY : data2, (i5 & 64) != 0 ? 0L : j, (i5 & 128) != 0 ? 0L : j2, (i5 & 256) != 0 ? 0L : j3, (i5 & 512) != 0 ? Constraints.NONE : constraints, (i5 & 1024) != 0 ? 0 : i, (i5 & 2048) != 0 ? BackoffPolicy.EXPONENTIAL : backoffPolicy, (i5 & 4096) != 0 ? 30000L : j4, (i5 & 8192) != 0 ? -1L : j5, (i5 & 16384) == 0 ? j6 : 0L, (32768 & i5) != 0 ? -1L : j7, (65536 & i5) != 0 ? false : z, (131072 & i5) != 0 ? OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST : outOfQuotaPolicy, (262144 & i5) != 0 ? 0 : i2, 0, (1048576 & i5) != 0 ? Long.MAX_VALUE : j8, (2097152 & i5) != 0 ? 0 : i3, (4194304 & i5) != 0 ? -256 : i4, (8388608 & i5) != 0 ? null : str4, (i5 & 16777216) != 0 ? Boolean.FALSE : bool);
    }

    public static WorkSpec copy$default(WorkSpec workSpec, String str, WorkInfo$State workInfo$State, String str2, Data data, int i, long j, int i2, int i3, long j2, int i4, int i5) {
        String str3 = (i5 & 1) != 0 ? workSpec.id : str;
        WorkInfo$State workInfo$State2 = (i5 & 2) != 0 ? workSpec.state : workInfo$State;
        String str4 = (i5 & 4) != 0 ? workSpec.workerClassName : str2;
        String str5 = workSpec.inputMergerClassName;
        Data data2 = (i5 & 16) != 0 ? workSpec.input : data;
        Data data3 = workSpec.output;
        long j3 = workSpec.initialDelay;
        long j4 = workSpec.intervalDuration;
        long j5 = workSpec.flexDuration;
        Constraints constraints = workSpec.constraints;
        int i6 = (i5 & 1024) != 0 ? workSpec.runAttemptCount : i;
        BackoffPolicy backoffPolicy = workSpec.backoffPolicy;
        long j6 = workSpec.backoffDelayDuration;
        long j7 = (i5 & 8192) != 0 ? workSpec.lastEnqueueTime : j;
        long j8 = workSpec.minimumRetentionDuration;
        long j9 = workSpec.scheduleRequestedAt;
        boolean z = workSpec.expedited;
        OutOfQuotaPolicy outOfQuotaPolicy = workSpec.outOfQuotaPolicy;
        int i7 = (i5 & 262144) != 0 ? workSpec.periodCount : i2;
        int i8 = (i5 & 524288) != 0 ? workSpec.generation : i3;
        long j10 = (i5 & ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) != 0 ? workSpec.nextScheduleTimeOverride : j2;
        int i9 = (i5 & 2097152) != 0 ? workSpec.nextScheduleTimeOverrideGeneration : i4;
        int i10 = workSpec.stopReason;
        String str6 = workSpec.traceTag;
        Boolean bool = workSpec.backOffOnSystemInterruptions;
        workSpec.getClass();
        str3.getClass();
        workInfo$State2.getClass();
        str4.getClass();
        str5.getClass();
        data2.getClass();
        data3.getClass();
        constraints.getClass();
        backoffPolicy.getClass();
        outOfQuotaPolicy.getClass();
        return new WorkSpec(str3, workInfo$State2, str4, str5, data2, data3, j3, j4, j5, constraints, i6, backoffPolicy, j6, j7, j8, j9, z, outOfQuotaPolicy, i7, i8, j10, i9, i10, str6, bool);
    }

    public final long calculateNextRunTime() {
        WorkInfo$State workInfo$State = this.state;
        WorkInfo$State workInfo$State2 = WorkInfo$State.ENQUEUED;
        int i = this.runAttemptCount;
        boolean z = workInfo$State == workInfo$State2 && i > 0;
        long j = this.lastEnqueueTime;
        boolean isPeriodic = isPeriodic();
        long j2 = this.flexDuration;
        long j3 = this.intervalDuration;
        long j4 = this.nextScheduleTimeOverride;
        BackoffPolicy backoffPolicy = this.backoffPolicy;
        backoffPolicy.getClass();
        int i2 = this.periodCount;
        if (j4 != Long.MAX_VALUE && isPeriodic) {
            if (i2 != 0) {
                long j5 = j + 900000;
                if (j4 < j5) {
                    return j5;
                }
            }
            return j4;
        }
        if (z) {
            BackoffPolicy backoffPolicy2 = BackoffPolicy.LINEAR;
            long j6 = this.backoffDelayDuration;
            long scalb = backoffPolicy == backoffPolicy2 ? j6 * i : (long) Math.scalb(j6, i - 1);
            if (scalb > 18000000) {
                scalb = 18000000;
            }
            return j + scalb;
        }
        long j7 = this.initialDelay;
        if (isPeriodic) {
            long j8 = i2 == 0 ? j + j7 : j + j3;
            return (j2 == j3 || i2 != 0) ? j8 : (j3 - j2) + j8;
        }
        if (j == -1) {
            return Long.MAX_VALUE;
        }
        return j + j7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkSpec)) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) obj;
        return Intrinsics.areEqual(this.id, workSpec.id) && this.state == workSpec.state && Intrinsics.areEqual(this.workerClassName, workSpec.workerClassName) && Intrinsics.areEqual(this.inputMergerClassName, workSpec.inputMergerClassName) && Intrinsics.areEqual(this.input, workSpec.input) && Intrinsics.areEqual(this.output, workSpec.output) && this.initialDelay == workSpec.initialDelay && this.intervalDuration == workSpec.intervalDuration && this.flexDuration == workSpec.flexDuration && Intrinsics.areEqual(this.constraints, workSpec.constraints) && this.runAttemptCount == workSpec.runAttemptCount && this.backoffPolicy == workSpec.backoffPolicy && this.backoffDelayDuration == workSpec.backoffDelayDuration && this.lastEnqueueTime == workSpec.lastEnqueueTime && this.minimumRetentionDuration == workSpec.minimumRetentionDuration && this.scheduleRequestedAt == workSpec.scheduleRequestedAt && this.expedited == workSpec.expedited && this.outOfQuotaPolicy == workSpec.outOfQuotaPolicy && this.periodCount == workSpec.periodCount && this.generation == workSpec.generation && this.nextScheduleTimeOverride == workSpec.nextScheduleTimeOverride && this.nextScheduleTimeOverrideGeneration == workSpec.nextScheduleTimeOverrideGeneration && this.stopReason == workSpec.stopReason && Intrinsics.areEqual(this.traceTag, workSpec.traceTag) && Intrinsics.areEqual(this.backOffOnSystemInterruptions, workSpec.backOffOnSystemInterruptions);
    }

    public final int hashCode() {
        int hashCode = (this.output.hashCode() + ((this.input.hashCode() + Modifier.CC.m(Modifier.CC.m((this.state.hashCode() + (this.id.hashCode() * 31)) * 31, 31, this.workerClassName), 31, this.inputMergerClassName)) * 31)) * 31;
        long j = this.initialDelay;
        int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.intervalDuration;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.flexDuration;
        int hashCode2 = (this.backoffPolicy.hashCode() + ((((this.constraints.hashCode() + ((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31)) * 31) + this.runAttemptCount) * 31)) * 31;
        long j4 = this.backoffDelayDuration;
        int i3 = (hashCode2 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        long j5 = this.lastEnqueueTime;
        int i4 = (i3 + ((int) (j5 ^ (j5 >>> 32)))) * 31;
        long j6 = this.minimumRetentionDuration;
        int i5 = (i4 + ((int) (j6 ^ (j6 >>> 32)))) * 31;
        long j7 = this.scheduleRequestedAt;
        int hashCode3 = (((((this.outOfQuotaPolicy.hashCode() + ((((i5 + ((int) (j7 ^ (j7 >>> 32)))) * 31) + (this.expedited ? 1231 : 1237)) * 31)) * 31) + this.periodCount) * 31) + this.generation) * 31;
        long j8 = this.nextScheduleTimeOverride;
        int i6 = (((((hashCode3 + ((int) ((j8 >>> 32) ^ j8))) * 31) + this.nextScheduleTimeOverrideGeneration) * 31) + this.stopReason) * 31;
        String str = this.traceTag;
        int hashCode4 = (i6 + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.backOffOnSystemInterruptions;
        return hashCode4 + (bool != null ? bool.hashCode() : 0);
    }

    public final boolean isPeriodic() {
        return this.intervalDuration != 0;
    }

    public final String toString() {
        return Modifier.CC.m(new StringBuilder("{WorkSpec: "), this.id, '}');
    }

    public WorkSpec(String str, WorkInfo$State workInfo$State, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, String str4, Boolean bool) {
        str.getClass();
        workInfo$State.getClass();
        str2.getClass();
        str3.getClass();
        data.getClass();
        data2.getClass();
        constraints.getClass();
        backoffPolicy.getClass();
        outOfQuotaPolicy.getClass();
        this.id = str;
        this.state = workInfo$State;
        this.workerClassName = str2;
        this.inputMergerClassName = str3;
        this.input = data;
        this.output = data2;
        this.initialDelay = j;
        this.intervalDuration = j2;
        this.flexDuration = j3;
        this.constraints = constraints;
        this.runAttemptCount = i;
        this.backoffPolicy = backoffPolicy;
        this.backoffDelayDuration = j4;
        this.lastEnqueueTime = j5;
        this.minimumRetentionDuration = j6;
        this.scheduleRequestedAt = j7;
        this.expedited = z;
        this.outOfQuotaPolicy = outOfQuotaPolicy;
        this.periodCount = i2;
        this.generation = i3;
        this.nextScheduleTimeOverride = j8;
        this.nextScheduleTimeOverrideGeneration = i4;
        this.stopReason = i5;
        this.traceTag = str4;
        this.backOffOnSystemInterruptions = bool;
    }
}
