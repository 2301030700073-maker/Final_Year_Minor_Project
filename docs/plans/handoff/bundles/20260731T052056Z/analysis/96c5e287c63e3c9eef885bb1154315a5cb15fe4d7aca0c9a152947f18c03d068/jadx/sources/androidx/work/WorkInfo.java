package androidx.work;

import java.util.HashSet;
import java.util.UUID;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WorkInfo {
    public final Constraints constraints;
    public final int generation;
    public final UUID id;
    public final long initialDelayMillis;
    public final long nextScheduleTimeMillis;
    public final Data outputData;
    public final PeriodicityInfo periodicityInfo;
    public final Data progress;
    public final int runAttemptCount;
    public final State state;
    public final int stopReason;
    public final HashSet tags;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PeriodicityInfo {
        public final long flexIntervalMillis;
        public final long repeatIntervalMillis;

        public PeriodicityInfo(long j, long j2) {
            this.repeatIntervalMillis = j;
            this.flexIntervalMillis = j2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && PeriodicityInfo.class.equals(obj.getClass())) {
                PeriodicityInfo periodicityInfo = (PeriodicityInfo) obj;
                if (periodicityInfo.repeatIntervalMillis == this.repeatIntervalMillis && periodicityInfo.flexIntervalMillis == this.flexIntervalMillis) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            long j = this.repeatIntervalMillis;
            int i = ((int) (j ^ (j >>> 32))) * 31;
            long j2 = this.flexIntervalMillis;
            return i + ((int) ((j2 >>> 32) ^ j2));
        }

        public final String toString() {
            return "PeriodicityInfo{repeatIntervalMillis=" + this.repeatIntervalMillis + ", flexIntervalMillis=" + this.flexIntervalMillis + '}';
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class State {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
        public static final State BLOCKED;
        public static final State CANCELLED;
        public static final State ENQUEUED;
        public static final State FAILED;
        public static final State RUNNING;
        public static final State SUCCEEDED;

        static {
            State state = new State("ENQUEUED", 0);
            ENQUEUED = state;
            State state2 = new State("RUNNING", 1);
            RUNNING = state2;
            State state3 = new State("SUCCEEDED", 2);
            SUCCEEDED = state3;
            State state4 = new State("FAILED", 3);
            FAILED = state4;
            State state5 = new State("BLOCKED", 4);
            BLOCKED = state5;
            State state6 = new State("CANCELLED", 5);
            CANCELLED = state6;
            State[] stateArr = {state, state2, state3, state4, state5, state6};
            $VALUES = stateArr;
            $ENTRIES = new EnumEntriesList(stateArr);
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }

        public final boolean isFinished() {
            return this == SUCCEEDED || this == FAILED || this == CANCELLED;
        }
    }

    public WorkInfo(UUID uuid, State state, HashSet hashSet, Data data, Data data2, int i, int i2, Constraints constraints, long j, PeriodicityInfo periodicityInfo, long j2, int i3) {
        state.getClass();
        data.getClass();
        data2.getClass();
        this.id = uuid;
        this.state = state;
        this.tags = hashSet;
        this.outputData = data;
        this.progress = data2;
        this.runAttemptCount = i;
        this.generation = i2;
        this.constraints = constraints;
        this.initialDelayMillis = j;
        this.periodicityInfo = periodicityInfo;
        this.nextScheduleTimeMillis = j2;
        this.stopReason = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !WorkInfo.class.equals(obj.getClass())) {
            return false;
        }
        WorkInfo workInfo = (WorkInfo) obj;
        if (this.runAttemptCount == workInfo.runAttemptCount && this.generation == workInfo.generation && this.id.equals(workInfo.id) && this.state == workInfo.state && Intrinsics.areEqual(this.outputData, workInfo.outputData) && this.constraints.equals(workInfo.constraints) && this.initialDelayMillis == workInfo.initialDelayMillis && Intrinsics.areEqual(this.periodicityInfo, workInfo.periodicityInfo) && this.nextScheduleTimeMillis == workInfo.nextScheduleTimeMillis && this.stopReason == workInfo.stopReason && this.tags.equals(workInfo.tags)) {
            return Intrinsics.areEqual(this.progress, workInfo.progress);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.constraints.hashCode() + ((((((this.progress.hashCode() + ((this.tags.hashCode() + ((this.outputData.hashCode() + ((this.state.hashCode() + (this.id.hashCode() * 31)) * 31)) * 31)) * 31)) * 31) + this.runAttemptCount) * 31) + this.generation) * 31)) * 31;
        long j = this.initialDelayMillis;
        int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        PeriodicityInfo periodicityInfo = this.periodicityInfo;
        int hashCode2 = (i + (periodicityInfo != null ? periodicityInfo.hashCode() : 0)) * 31;
        long j2 = this.nextScheduleTimeMillis;
        return ((hashCode2 + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.stopReason;
    }

    public final String toString() {
        return "WorkInfo{id='" + this.id + "', state=" + this.state + ", outputData=" + this.outputData + ", tags=" + this.tags + ", progress=" + this.progress + ", runAttemptCount=" + this.runAttemptCount + ", generation=" + this.generation + ", constraints=" + this.constraints + ", initialDelayMillis=" + this.initialDelayMillis + ", periodicityInfo=" + this.periodicityInfo + ", nextScheduleTimeMillis=" + this.nextScheduleTimeMillis + "}, stopReason=" + this.stopReason;
    }
}
