package androidx.work.impl.model;

import android.database.Cursor;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.RelationUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.Flow;

/* loaded from: classes.dex */
public final class WorkSpecDao_Impl implements WorkSpecDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter __insertionAdapterOfWorkSpec;
    private final SharedSQLiteStatement __preparedStmtOfDelete;
    private final SharedSQLiteStatement __preparedStmtOfIncrementGeneration;
    private final SharedSQLiteStatement __preparedStmtOfIncrementPeriodCount;
    private final SharedSQLiteStatement __preparedStmtOfIncrementWorkSpecRunAttemptCount;
    private final SharedSQLiteStatement __preparedStmtOfMarkWorkSpecScheduled;
    private final SharedSQLiteStatement __preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast;
    private final SharedSQLiteStatement __preparedStmtOfResetScheduledState;
    private final SharedSQLiteStatement __preparedStmtOfResetWorkSpecNextScheduleTimeOverride;
    private final SharedSQLiteStatement __preparedStmtOfResetWorkSpecRunAttemptCount;
    private final SharedSQLiteStatement __preparedStmtOfSetCancelledState;
    private final SharedSQLiteStatement __preparedStmtOfSetLastEnqueueTime;
    private final SharedSQLiteStatement __preparedStmtOfSetNextScheduleTimeOverride;
    private final SharedSQLiteStatement __preparedStmtOfSetOutput;
    private final SharedSQLiteStatement __preparedStmtOfSetState;
    private final SharedSQLiteStatement __preparedStmtOfSetStopReason;
    private final EntityDeletionOrUpdateAdapter __updateAdapterOfWorkSpec;

    public WorkSpecDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
        this.__insertionAdapterOfWorkSpec = new EntityInsertionAdapter(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, WorkSpec workSpec) {
                supportSQLiteStatement.bindString(1, workSpec.id);
                WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                supportSQLiteStatement.bindLong(2, WorkTypeConverters.stateToInt(workSpec.state));
                supportSQLiteStatement.bindString(3, workSpec.workerClassName);
                supportSQLiteStatement.bindString(4, workSpec.inputMergerClassName);
                supportSQLiteStatement.bindBlob(5, Data.toByteArrayInternalV1(workSpec.input));
                supportSQLiteStatement.bindBlob(6, Data.toByteArrayInternalV1(workSpec.output));
                supportSQLiteStatement.bindLong(7, workSpec.initialDelay);
                supportSQLiteStatement.bindLong(8, workSpec.intervalDuration);
                supportSQLiteStatement.bindLong(9, workSpec.flexDuration);
                supportSQLiteStatement.bindLong(10, workSpec.runAttemptCount);
                supportSQLiteStatement.bindLong(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
                supportSQLiteStatement.bindLong(12, workSpec.backoffDelayDuration);
                supportSQLiteStatement.bindLong(13, workSpec.lastEnqueueTime);
                supportSQLiteStatement.bindLong(14, workSpec.minimumRetentionDuration);
                supportSQLiteStatement.bindLong(15, workSpec.scheduleRequestedAt);
                supportSQLiteStatement.bindLong(16, workSpec.expedited ? 1L : 0L);
                supportSQLiteStatement.bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(workSpec.outOfQuotaPolicy));
                supportSQLiteStatement.bindLong(18, workSpec.getPeriodCount());
                supportSQLiteStatement.bindLong(19, workSpec.getGeneration());
                supportSQLiteStatement.bindLong(20, workSpec.getNextScheduleTimeOverride());
                supportSQLiteStatement.bindLong(21, workSpec.getNextScheduleTimeOverrideGeneration());
                supportSQLiteStatement.bindLong(22, workSpec.getStopReason());
                if (workSpec.getTraceTag() == null) {
                    supportSQLiteStatement.bindNull(23);
                } else {
                    supportSQLiteStatement.bindString(23, workSpec.getTraceTag());
                }
                Constraints constraints = workSpec.constraints;
                supportSQLiteStatement.bindLong(24, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                supportSQLiteStatement.bindBlob(25, WorkTypeConverters.fromNetworkRequest$work_runtime_release(constraints.getRequiredNetworkRequestCompat$work_runtime_release()));
                supportSQLiteStatement.bindLong(26, constraints.requiresCharging() ? 1L : 0L);
                supportSQLiteStatement.bindLong(27, constraints.requiresDeviceIdle() ? 1L : 0L);
                supportSQLiteStatement.bindLong(28, constraints.requiresBatteryNotLow() ? 1L : 0L);
                supportSQLiteStatement.bindLong(29, constraints.requiresStorageNotLow() ? 1L : 0L);
                supportSQLiteStatement.bindLong(30, constraints.getContentTriggerUpdateDelayMillis());
                supportSQLiteStatement.bindLong(31, constraints.getContentTriggerMaxDelayMillis());
                supportSQLiteStatement.bindBlob(32, WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers()));
            }
        };
        this.__updateAdapterOfWorkSpec = new EntityDeletionOrUpdateAdapter(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            protected String createQuery() {
                return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement supportSQLiteStatement, WorkSpec workSpec) {
                supportSQLiteStatement.bindString(1, workSpec.id);
                WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                supportSQLiteStatement.bindLong(2, WorkTypeConverters.stateToInt(workSpec.state));
                supportSQLiteStatement.bindString(3, workSpec.workerClassName);
                supportSQLiteStatement.bindString(4, workSpec.inputMergerClassName);
                supportSQLiteStatement.bindBlob(5, Data.toByteArrayInternalV1(workSpec.input));
                supportSQLiteStatement.bindBlob(6, Data.toByteArrayInternalV1(workSpec.output));
                supportSQLiteStatement.bindLong(7, workSpec.initialDelay);
                supportSQLiteStatement.bindLong(8, workSpec.intervalDuration);
                supportSQLiteStatement.bindLong(9, workSpec.flexDuration);
                supportSQLiteStatement.bindLong(10, workSpec.runAttemptCount);
                supportSQLiteStatement.bindLong(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
                supportSQLiteStatement.bindLong(12, workSpec.backoffDelayDuration);
                supportSQLiteStatement.bindLong(13, workSpec.lastEnqueueTime);
                supportSQLiteStatement.bindLong(14, workSpec.minimumRetentionDuration);
                supportSQLiteStatement.bindLong(15, workSpec.scheduleRequestedAt);
                supportSQLiteStatement.bindLong(16, workSpec.expedited ? 1L : 0L);
                supportSQLiteStatement.bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(workSpec.outOfQuotaPolicy));
                supportSQLiteStatement.bindLong(18, workSpec.getPeriodCount());
                supportSQLiteStatement.bindLong(19, workSpec.getGeneration());
                supportSQLiteStatement.bindLong(20, workSpec.getNextScheduleTimeOverride());
                supportSQLiteStatement.bindLong(21, workSpec.getNextScheduleTimeOverrideGeneration());
                supportSQLiteStatement.bindLong(22, workSpec.getStopReason());
                if (workSpec.getTraceTag() == null) {
                    supportSQLiteStatement.bindNull(23);
                } else {
                    supportSQLiteStatement.bindString(23, workSpec.getTraceTag());
                }
                Constraints constraints = workSpec.constraints;
                supportSQLiteStatement.bindLong(24, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                supportSQLiteStatement.bindBlob(25, WorkTypeConverters.fromNetworkRequest$work_runtime_release(constraints.getRequiredNetworkRequestCompat$work_runtime_release()));
                supportSQLiteStatement.bindLong(26, constraints.requiresCharging() ? 1L : 0L);
                supportSQLiteStatement.bindLong(27, constraints.requiresDeviceIdle() ? 1L : 0L);
                supportSQLiteStatement.bindLong(28, constraints.requiresBatteryNotLow() ? 1L : 0L);
                supportSQLiteStatement.bindLong(29, constraints.requiresStorageNotLow() ? 1L : 0L);
                supportSQLiteStatement.bindLong(30, constraints.getContentTriggerUpdateDelayMillis());
                supportSQLiteStatement.bindLong(31, constraints.getContentTriggerMaxDelayMillis());
                supportSQLiteStatement.bindBlob(32, WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers()));
                supportSQLiteStatement.bindString(33, workSpec.id);
            }
        };
        this.__preparedStmtOfDelete = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM workspec WHERE id=?";
            }
        };
        this.__preparedStmtOfSetState = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET state=? WHERE id=?";
            }
        };
        this.__preparedStmtOfSetCancelledState = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?";
            }
        };
        this.__preparedStmtOfIncrementPeriodCount = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.6
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET period_count=period_count+1 WHERE id=?";
            }
        };
        this.__preparedStmtOfSetOutput = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.7
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET output=? WHERE id=?";
            }
        };
        this.__preparedStmtOfSetLastEnqueueTime = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.8
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET last_enqueue_time=? WHERE id=?";
            }
        };
        this.__preparedStmtOfIncrementWorkSpecRunAttemptCount = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.9
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
            }
        };
        this.__preparedStmtOfResetWorkSpecRunAttemptCount = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.10
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
            }
        };
        this.__preparedStmtOfSetNextScheduleTimeOverride = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.11
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET next_schedule_time_override=? WHERE id=?";
            }
        };
        this.__preparedStmtOfResetWorkSpecNextScheduleTimeOverride = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.12
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)";
            }
        };
        this.__preparedStmtOfMarkWorkSpecScheduled = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.13
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
            }
        };
        this.__preparedStmtOfResetScheduledState = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.14
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
            }
        };
        this.__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.15
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
            }
        };
        this.__preparedStmtOfIncrementGeneration = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.16
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET generation=generation+1 WHERE id=?";
            }
        };
        this.__preparedStmtOfSetStopReason = new SharedSQLiteStatement(roomDatabase) { // from class: androidx.work.impl.model.WorkSpecDao_Impl.17
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE workspec SET stop_reason=? WHERE id=?";
            }
        };
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void insertWorkSpec(WorkSpec workSpec) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__insertionAdapterOfWorkSpec.insert(workSpec);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void updateWorkSpec(WorkSpec workSpec) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__updateAdapterOfWorkSpec.handle(workSpec);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void delete(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDelete.acquire();
        acquire.bindString(1, str);
        try {
            this.__db.beginTransaction();
            try {
                acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfDelete.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setState(WorkInfo.State state, String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetState.acquire();
        acquire.bindLong(1, WorkTypeConverters.stateToInt(state));
        acquire.bindString(2, str);
        try {
            this.__db.beginTransaction();
            try {
                int executeUpdateDelete = acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                return executeUpdateDelete;
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfSetState.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setCancelledState(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetCancelledState.acquire();
        acquire.bindString(1, str);
        try {
            this.__db.beginTransaction();
            try {
                int executeUpdateDelete = acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                return executeUpdateDelete;
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfSetCancelledState.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementPeriodCount(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfIncrementPeriodCount.acquire();
        acquire.bindString(1, str);
        try {
            this.__db.beginTransaction();
            try {
                acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfIncrementPeriodCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setOutput(String str, Data data) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetOutput.acquire();
        acquire.bindBlob(1, Data.toByteArrayInternalV1(data));
        acquire.bindString(2, str);
        try {
            this.__db.beginTransaction();
            try {
                acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfSetOutput.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setLastEnqueueTime(String str, long j) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetLastEnqueueTime.acquire();
        acquire.bindLong(1, j);
        acquire.bindString(2, str);
        try {
            this.__db.beginTransaction();
            try {
                acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfSetLastEnqueueTime.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int incrementWorkSpecRunAttemptCount(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.acquire();
        acquire.bindString(1, str);
        try {
            this.__db.beginTransaction();
            try {
                int executeUpdateDelete = acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                return executeUpdateDelete;
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfIncrementWorkSpecRunAttemptCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetWorkSpecRunAttemptCount(String str) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfResetWorkSpecRunAttemptCount.acquire();
        acquire.bindString(1, str);
        try {
            this.__db.beginTransaction();
            try {
                int executeUpdateDelete = acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                return executeUpdateDelete;
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfResetWorkSpecRunAttemptCount.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void resetWorkSpecNextScheduleTimeOverride(String str, int i) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfResetWorkSpecNextScheduleTimeOverride.acquire();
        acquire.bindString(1, str);
        acquire.bindLong(2, i);
        try {
            this.__db.beginTransaction();
            try {
                acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfResetWorkSpecNextScheduleTimeOverride.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int markWorkSpecScheduled(String str, long j) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfMarkWorkSpecScheduled.acquire();
        acquire.bindLong(1, j);
        acquire.bindString(2, str);
        try {
            this.__db.beginTransaction();
            try {
                int executeUpdateDelete = acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                return executeUpdateDelete;
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfMarkWorkSpecScheduled.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetScheduledState() {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfResetScheduledState.acquire();
        try {
            this.__db.beginTransaction();
            try {
                int executeUpdateDelete = acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                return executeUpdateDelete;
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfResetScheduledState.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setStopReason(String str, int i) {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfSetStopReason.acquire();
        acquire.bindLong(1, i);
        acquire.bindString(2, str);
        try {
            this.__db.beginTransaction();
            try {
                acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfSetStopReason.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec getWorkSpec(String str) {
        RoomSQLiteQuery roomSQLiteQuery;
        WorkSpec workSpec;
        int i;
        boolean z;
        String string;
        int i2;
        int i3;
        boolean z2;
        int i4;
        boolean z3;
        int i5;
        boolean z4;
        int i6;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE id=?", 1);
        acquire.bindString(1, str);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "trace_tag");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "required_network_request");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow31 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow32 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                if (query.moveToFirst()) {
                    String string2 = query.getString(columnIndexOrThrow);
                    WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                    String string3 = query.getString(columnIndexOrThrow3);
                    String string4 = query.getString(columnIndexOrThrow4);
                    Data fromByteArray = Data.fromByteArray(query.getBlob(columnIndexOrThrow5));
                    Data fromByteArray2 = Data.fromByteArray(query.getBlob(columnIndexOrThrow6));
                    long j = query.getLong(columnIndexOrThrow7);
                    long j2 = query.getLong(columnIndexOrThrow8);
                    long j3 = query.getLong(columnIndexOrThrow9);
                    int i7 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j4 = query.getLong(columnIndexOrThrow12);
                    long j5 = query.getLong(columnIndexOrThrow13);
                    long j6 = query.getLong(columnIndexOrThrow14);
                    long j7 = query.getLong(columnIndexOrThrow15);
                    if (query.getInt(columnIndexOrThrow16) != 0) {
                        i = columnIndexOrThrow17;
                        z = true;
                    } else {
                        i = columnIndexOrThrow17;
                        z = false;
                    }
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i));
                    int i8 = query.getInt(columnIndexOrThrow18);
                    int i9 = query.getInt(columnIndexOrThrow19);
                    long j8 = query.getLong(columnIndexOrThrow20);
                    int i10 = query.getInt(columnIndexOrThrow21);
                    int i11 = query.getInt(columnIndexOrThrow22);
                    if (query.isNull(columnIndexOrThrow23)) {
                        i2 = columnIndexOrThrow24;
                        string = null;
                    } else {
                        string = query.getString(columnIndexOrThrow23);
                        i2 = columnIndexOrThrow24;
                    }
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i2));
                    NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(query.getBlob(columnIndexOrThrow25));
                    if (query.getInt(columnIndexOrThrow26) != 0) {
                        i3 = columnIndexOrThrow27;
                        z2 = true;
                    } else {
                        i3 = columnIndexOrThrow27;
                        z2 = false;
                    }
                    if (query.getInt(i3) != 0) {
                        i4 = columnIndexOrThrow28;
                        z3 = true;
                    } else {
                        i4 = columnIndexOrThrow28;
                        z3 = false;
                    }
                    if (query.getInt(i4) != 0) {
                        i5 = columnIndexOrThrow29;
                        z4 = true;
                    } else {
                        i5 = columnIndexOrThrow29;
                        z4 = false;
                    }
                    if (query.getInt(i5) != 0) {
                        i6 = columnIndexOrThrow30;
                        z5 = true;
                    } else {
                        i6 = columnIndexOrThrow30;
                        z5 = false;
                    }
                    workSpec = new WorkSpec(string2, intToState, string3, string4, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, z5, query.getLong(i6), query.getLong(columnIndexOrThrow31), WorkTypeConverters.byteArrayToSetOfTriggers(query.getBlob(columnIndexOrThrow32))), i7, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i8, i9, j8, i10, i11, string);
                } else {
                    workSpec = null;
                }
                query.close();
                roomSQLiteQuery.release();
                return workSpec;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List getWorkSpecIdAndStatesForName(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        acquire.bindString(1, str);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(new WorkSpec.IdAndState(query.getString(0), WorkTypeConverters.intToState(query.getInt(1))));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkInfo.State getState(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT state FROM workspec WHERE id=?", 1);
        acquire.bindString(1, str);
        this.__db.assertNotSuspendingTransaction();
        WorkInfo.State state = null;
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                Integer valueOf = query.isNull(0) ? null : Integer.valueOf(query.getInt(0));
                if (valueOf != null) {
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    state = WorkTypeConverters.intToState(valueOf.intValue());
                }
            }
            return state;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public Flow getWorkStatusPojoFlowForName(String str) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        acquire.bindString(1, str);
        return CoroutinesRoom.createFlow(this.__db, true, new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, new Callable() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.24
            @Override // java.util.concurrent.Callable
            public List call() {
                WorkSpecDao_Impl.this.__db.beginTransaction();
                try {
                    Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, true, null);
                    try {
                        HashMap hashMap = new HashMap();
                        HashMap hashMap2 = new HashMap();
                        while (query.moveToNext()) {
                            String string = query.getString(0);
                            if (!hashMap.containsKey(string)) {
                                hashMap.put(string, new ArrayList());
                            }
                            String string2 = query.getString(0);
                            if (!hashMap2.containsKey(string2)) {
                                hashMap2.put(string2, new ArrayList());
                            }
                        }
                        query.moveToPosition(-1);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(hashMap);
                        WorkSpecDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(hashMap2);
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            String string3 = query.getString(0);
                            WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(1));
                            Data fromByteArray = Data.fromByteArray(query.getBlob(2));
                            int i = query.getInt(3);
                            int i2 = query.getInt(4);
                            arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, query.getLong(14), query.getLong(15), query.getLong(16), new Constraints(WorkTypeConverters.toNetworkRequest$work_runtime_release(query.getBlob(6)), WorkTypeConverters.intToNetworkType(query.getInt(5)), query.getInt(7) != 0, query.getInt(8) != 0, query.getInt(9) != 0, query.getInt(10) != 0, query.getLong(11), query.getLong(12), WorkTypeConverters.byteArrayToSetOfTriggers(query.getBlob(13))), i, WorkTypeConverters.intToBackoffPolicy(query.getInt(17)), query.getLong(18), query.getLong(19), query.getInt(20), i2, query.getLong(21), query.getInt(22), (ArrayList) hashMap.get(query.getString(0)), (ArrayList) hashMap2.get(query.getString(0))));
                        }
                        WorkSpecDao_Impl.this.__db.setTransactionSuccessful();
                        query.close();
                        return arrayList;
                    } catch (Throwable th) {
                        query.close();
                        throw th;
                    }
                } finally {
                    WorkSpecDao_Impl.this.__db.endTransaction();
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List getInputsFromPrerequisites(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        acquire.bindString(1, str);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(Data.fromByteArray(query.getBlob(0)));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List getUnfinishedWorkWithName(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        acquire.bindString(1, str);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public Flow hasUnfinishedWorkFlow() {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"workspec"}, new Callable() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.25
            @Override // java.util.concurrent.Callable
            public Boolean call() {
                Boolean bool;
                Cursor query = DBUtil.query(WorkSpecDao_Impl.this.__db, acquire, false, null);
                try {
                    if (query.moveToFirst()) {
                        bool = Boolean.valueOf(query.getInt(0) != 0);
                    } else {
                        bool = Boolean.FALSE;
                    }
                    query.close();
                    return bool;
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            }

            protected void finalize() {
                acquire.release();
            }
        });
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List getEligibleWorkForScheduling(int i) {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        int columnIndexOrThrow14;
        int i2;
        boolean z;
        String string;
        int i3;
        int i4;
        boolean z2;
        int i5;
        boolean z3;
        int i6;
        boolean z4;
        int i7;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))", 1);
        acquire.bindLong(1, i);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
            int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
            int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "trace_tag");
            int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
            int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "required_network_request");
            int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
            int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
            int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
            int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
            int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
            int columnIndexOrThrow31 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
            int columnIndexOrThrow32 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
            int i8 = columnIndexOrThrow14;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                String string2 = query.getString(columnIndexOrThrow);
                WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                String string3 = query.getString(columnIndexOrThrow3);
                String string4 = query.getString(columnIndexOrThrow4);
                Data fromByteArray = Data.fromByteArray(query.getBlob(columnIndexOrThrow5));
                Data fromByteArray2 = Data.fromByteArray(query.getBlob(columnIndexOrThrow6));
                long j = query.getLong(columnIndexOrThrow7);
                long j2 = query.getLong(columnIndexOrThrow8);
                long j3 = query.getLong(columnIndexOrThrow9);
                int i9 = query.getInt(columnIndexOrThrow10);
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                long j4 = query.getLong(columnIndexOrThrow12);
                long j5 = query.getLong(columnIndexOrThrow13);
                int i10 = i8;
                long j6 = query.getLong(i10);
                int i11 = columnIndexOrThrow;
                int i12 = columnIndexOrThrow15;
                long j7 = query.getLong(i12);
                columnIndexOrThrow15 = i12;
                int i13 = columnIndexOrThrow16;
                if (query.getInt(i13) != 0) {
                    columnIndexOrThrow16 = i13;
                    i2 = columnIndexOrThrow17;
                    z = true;
                } else {
                    columnIndexOrThrow16 = i13;
                    i2 = columnIndexOrThrow17;
                    z = false;
                }
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i2));
                columnIndexOrThrow17 = i2;
                int i14 = columnIndexOrThrow18;
                int i15 = query.getInt(i14);
                columnIndexOrThrow18 = i14;
                int i16 = columnIndexOrThrow19;
                int i17 = query.getInt(i16);
                columnIndexOrThrow19 = i16;
                int i18 = columnIndexOrThrow20;
                long j8 = query.getLong(i18);
                columnIndexOrThrow20 = i18;
                int i19 = columnIndexOrThrow21;
                int i20 = query.getInt(i19);
                columnIndexOrThrow21 = i19;
                int i21 = columnIndexOrThrow22;
                int i22 = query.getInt(i21);
                columnIndexOrThrow22 = i21;
                int i23 = columnIndexOrThrow23;
                if (query.isNull(i23)) {
                    columnIndexOrThrow23 = i23;
                    i3 = columnIndexOrThrow24;
                    string = null;
                } else {
                    string = query.getString(i23);
                    columnIndexOrThrow23 = i23;
                    i3 = columnIndexOrThrow24;
                }
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i3));
                columnIndexOrThrow24 = i3;
                int i24 = columnIndexOrThrow25;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(query.getBlob(i24));
                columnIndexOrThrow25 = i24;
                int i25 = columnIndexOrThrow26;
                if (query.getInt(i25) != 0) {
                    columnIndexOrThrow26 = i25;
                    i4 = columnIndexOrThrow27;
                    z2 = true;
                } else {
                    columnIndexOrThrow26 = i25;
                    i4 = columnIndexOrThrow27;
                    z2 = false;
                }
                if (query.getInt(i4) != 0) {
                    columnIndexOrThrow27 = i4;
                    i5 = columnIndexOrThrow28;
                    z3 = true;
                } else {
                    columnIndexOrThrow27 = i4;
                    i5 = columnIndexOrThrow28;
                    z3 = false;
                }
                if (query.getInt(i5) != 0) {
                    columnIndexOrThrow28 = i5;
                    i6 = columnIndexOrThrow29;
                    z4 = true;
                } else {
                    columnIndexOrThrow28 = i5;
                    i6 = columnIndexOrThrow29;
                    z4 = false;
                }
                if (query.getInt(i6) != 0) {
                    columnIndexOrThrow29 = i6;
                    i7 = columnIndexOrThrow30;
                    z5 = true;
                } else {
                    columnIndexOrThrow29 = i6;
                    i7 = columnIndexOrThrow30;
                    z5 = false;
                }
                long j9 = query.getLong(i7);
                columnIndexOrThrow30 = i7;
                int i26 = columnIndexOrThrow31;
                long j10 = query.getLong(i26);
                columnIndexOrThrow31 = i26;
                int i27 = columnIndexOrThrow32;
                columnIndexOrThrow32 = i27;
                arrayList.add(new WorkSpec(string2, intToState, string3, string4, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(query.getBlob(i27))), i9, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i15, i17, j8, i20, i22, string));
                columnIndexOrThrow = i11;
                i8 = i10;
            }
            query.close();
            roomSQLiteQuery.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List getEligibleWorkForSchedulingWithContentUris() {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        int columnIndexOrThrow14;
        int i;
        boolean z;
        String string;
        int i2;
        int i3;
        boolean z2;
        int i4;
        boolean z3;
        int i5;
        boolean z4;
        int i6;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
            int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
            int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "trace_tag");
            int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
            int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "required_network_request");
            int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
            int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
            int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
            int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
            int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
            int columnIndexOrThrow31 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
            int columnIndexOrThrow32 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
            int i7 = columnIndexOrThrow14;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                String string2 = query.getString(columnIndexOrThrow);
                WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                String string3 = query.getString(columnIndexOrThrow3);
                String string4 = query.getString(columnIndexOrThrow4);
                Data fromByteArray = Data.fromByteArray(query.getBlob(columnIndexOrThrow5));
                Data fromByteArray2 = Data.fromByteArray(query.getBlob(columnIndexOrThrow6));
                long j = query.getLong(columnIndexOrThrow7);
                long j2 = query.getLong(columnIndexOrThrow8);
                long j3 = query.getLong(columnIndexOrThrow9);
                int i8 = query.getInt(columnIndexOrThrow10);
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                long j4 = query.getLong(columnIndexOrThrow12);
                long j5 = query.getLong(columnIndexOrThrow13);
                int i9 = i7;
                long j6 = query.getLong(i9);
                int i10 = columnIndexOrThrow;
                int i11 = columnIndexOrThrow15;
                long j7 = query.getLong(i11);
                columnIndexOrThrow15 = i11;
                int i12 = columnIndexOrThrow16;
                if (query.getInt(i12) != 0) {
                    columnIndexOrThrow16 = i12;
                    i = columnIndexOrThrow17;
                    z = true;
                } else {
                    columnIndexOrThrow16 = i12;
                    i = columnIndexOrThrow17;
                    z = false;
                }
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i));
                columnIndexOrThrow17 = i;
                int i13 = columnIndexOrThrow18;
                int i14 = query.getInt(i13);
                columnIndexOrThrow18 = i13;
                int i15 = columnIndexOrThrow19;
                int i16 = query.getInt(i15);
                columnIndexOrThrow19 = i15;
                int i17 = columnIndexOrThrow20;
                long j8 = query.getLong(i17);
                columnIndexOrThrow20 = i17;
                int i18 = columnIndexOrThrow21;
                int i19 = query.getInt(i18);
                columnIndexOrThrow21 = i18;
                int i20 = columnIndexOrThrow22;
                int i21 = query.getInt(i20);
                columnIndexOrThrow22 = i20;
                int i22 = columnIndexOrThrow23;
                if (query.isNull(i22)) {
                    columnIndexOrThrow23 = i22;
                    i2 = columnIndexOrThrow24;
                    string = null;
                } else {
                    string = query.getString(i22);
                    columnIndexOrThrow23 = i22;
                    i2 = columnIndexOrThrow24;
                }
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i2));
                columnIndexOrThrow24 = i2;
                int i23 = columnIndexOrThrow25;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(query.getBlob(i23));
                columnIndexOrThrow25 = i23;
                int i24 = columnIndexOrThrow26;
                if (query.getInt(i24) != 0) {
                    columnIndexOrThrow26 = i24;
                    i3 = columnIndexOrThrow27;
                    z2 = true;
                } else {
                    columnIndexOrThrow26 = i24;
                    i3 = columnIndexOrThrow27;
                    z2 = false;
                }
                if (query.getInt(i3) != 0) {
                    columnIndexOrThrow27 = i3;
                    i4 = columnIndexOrThrow28;
                    z3 = true;
                } else {
                    columnIndexOrThrow27 = i3;
                    i4 = columnIndexOrThrow28;
                    z3 = false;
                }
                if (query.getInt(i4) != 0) {
                    columnIndexOrThrow28 = i4;
                    i5 = columnIndexOrThrow29;
                    z4 = true;
                } else {
                    columnIndexOrThrow28 = i4;
                    i5 = columnIndexOrThrow29;
                    z4 = false;
                }
                if (query.getInt(i5) != 0) {
                    columnIndexOrThrow29 = i5;
                    i6 = columnIndexOrThrow30;
                    z5 = true;
                } else {
                    columnIndexOrThrow29 = i5;
                    i6 = columnIndexOrThrow30;
                    z5 = false;
                }
                long j9 = query.getLong(i6);
                columnIndexOrThrow30 = i6;
                int i25 = columnIndexOrThrow31;
                long j10 = query.getLong(i25);
                columnIndexOrThrow31 = i25;
                int i26 = columnIndexOrThrow32;
                columnIndexOrThrow32 = i26;
                arrayList.add(new WorkSpec(string2, intToState, string3, string4, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(query.getBlob(i26))), i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i14, i16, j8, i19, i21, string));
                columnIndexOrThrow = i10;
                i7 = i9;
            }
            query.close();
            roomSQLiteQuery.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List getAllEligibleWorkSpecsForScheduling(int i) {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        int columnIndexOrThrow14;
        int i2;
        boolean z;
        String string;
        int i3;
        int i4;
        boolean z2;
        int i5;
        boolean z3;
        int i6;
        boolean z4;
        int i7;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?", 1);
        acquire.bindLong(1, i);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
            int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
            int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "trace_tag");
            int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
            int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "required_network_request");
            int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
            int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
            int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
            int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
            int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
            int columnIndexOrThrow31 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
            int columnIndexOrThrow32 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
            int i8 = columnIndexOrThrow14;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                String string2 = query.getString(columnIndexOrThrow);
                WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                String string3 = query.getString(columnIndexOrThrow3);
                String string4 = query.getString(columnIndexOrThrow4);
                Data fromByteArray = Data.fromByteArray(query.getBlob(columnIndexOrThrow5));
                Data fromByteArray2 = Data.fromByteArray(query.getBlob(columnIndexOrThrow6));
                long j = query.getLong(columnIndexOrThrow7);
                long j2 = query.getLong(columnIndexOrThrow8);
                long j3 = query.getLong(columnIndexOrThrow9);
                int i9 = query.getInt(columnIndexOrThrow10);
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                long j4 = query.getLong(columnIndexOrThrow12);
                long j5 = query.getLong(columnIndexOrThrow13);
                int i10 = i8;
                long j6 = query.getLong(i10);
                int i11 = columnIndexOrThrow;
                int i12 = columnIndexOrThrow15;
                long j7 = query.getLong(i12);
                columnIndexOrThrow15 = i12;
                int i13 = columnIndexOrThrow16;
                if (query.getInt(i13) != 0) {
                    columnIndexOrThrow16 = i13;
                    i2 = columnIndexOrThrow17;
                    z = true;
                } else {
                    columnIndexOrThrow16 = i13;
                    i2 = columnIndexOrThrow17;
                    z = false;
                }
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i2));
                columnIndexOrThrow17 = i2;
                int i14 = columnIndexOrThrow18;
                int i15 = query.getInt(i14);
                columnIndexOrThrow18 = i14;
                int i16 = columnIndexOrThrow19;
                int i17 = query.getInt(i16);
                columnIndexOrThrow19 = i16;
                int i18 = columnIndexOrThrow20;
                long j8 = query.getLong(i18);
                columnIndexOrThrow20 = i18;
                int i19 = columnIndexOrThrow21;
                int i20 = query.getInt(i19);
                columnIndexOrThrow21 = i19;
                int i21 = columnIndexOrThrow22;
                int i22 = query.getInt(i21);
                columnIndexOrThrow22 = i21;
                int i23 = columnIndexOrThrow23;
                if (query.isNull(i23)) {
                    columnIndexOrThrow23 = i23;
                    i3 = columnIndexOrThrow24;
                    string = null;
                } else {
                    string = query.getString(i23);
                    columnIndexOrThrow23 = i23;
                    i3 = columnIndexOrThrow24;
                }
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i3));
                columnIndexOrThrow24 = i3;
                int i24 = columnIndexOrThrow25;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(query.getBlob(i24));
                columnIndexOrThrow25 = i24;
                int i25 = columnIndexOrThrow26;
                if (query.getInt(i25) != 0) {
                    columnIndexOrThrow26 = i25;
                    i4 = columnIndexOrThrow27;
                    z2 = true;
                } else {
                    columnIndexOrThrow26 = i25;
                    i4 = columnIndexOrThrow27;
                    z2 = false;
                }
                if (query.getInt(i4) != 0) {
                    columnIndexOrThrow27 = i4;
                    i5 = columnIndexOrThrow28;
                    z3 = true;
                } else {
                    columnIndexOrThrow27 = i4;
                    i5 = columnIndexOrThrow28;
                    z3 = false;
                }
                if (query.getInt(i5) != 0) {
                    columnIndexOrThrow28 = i5;
                    i6 = columnIndexOrThrow29;
                    z4 = true;
                } else {
                    columnIndexOrThrow28 = i5;
                    i6 = columnIndexOrThrow29;
                    z4 = false;
                }
                if (query.getInt(i6) != 0) {
                    columnIndexOrThrow29 = i6;
                    i7 = columnIndexOrThrow30;
                    z5 = true;
                } else {
                    columnIndexOrThrow29 = i6;
                    i7 = columnIndexOrThrow30;
                    z5 = false;
                }
                long j9 = query.getLong(i7);
                columnIndexOrThrow30 = i7;
                int i26 = columnIndexOrThrow31;
                long j10 = query.getLong(i26);
                columnIndexOrThrow31 = i26;
                int i27 = columnIndexOrThrow32;
                columnIndexOrThrow32 = i27;
                arrayList.add(new WorkSpec(string2, intToState, string3, string4, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(query.getBlob(i27))), i9, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i15, i17, j8, i20, i22, string));
                columnIndexOrThrow = i11;
                i8 = i10;
            }
            query.close();
            roomSQLiteQuery.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List getScheduledWork() {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        int columnIndexOrThrow14;
        int i;
        boolean z;
        String string;
        int i2;
        int i3;
        boolean z2;
        int i4;
        boolean z3;
        int i5;
        boolean z4;
        int i6;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
            int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
            int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "trace_tag");
            int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
            int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "required_network_request");
            int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
            int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
            int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
            int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
            int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
            int columnIndexOrThrow31 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
            int columnIndexOrThrow32 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
            int i7 = columnIndexOrThrow14;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                String string2 = query.getString(columnIndexOrThrow);
                WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                String string3 = query.getString(columnIndexOrThrow3);
                String string4 = query.getString(columnIndexOrThrow4);
                Data fromByteArray = Data.fromByteArray(query.getBlob(columnIndexOrThrow5));
                Data fromByteArray2 = Data.fromByteArray(query.getBlob(columnIndexOrThrow6));
                long j = query.getLong(columnIndexOrThrow7);
                long j2 = query.getLong(columnIndexOrThrow8);
                long j3 = query.getLong(columnIndexOrThrow9);
                int i8 = query.getInt(columnIndexOrThrow10);
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                long j4 = query.getLong(columnIndexOrThrow12);
                long j5 = query.getLong(columnIndexOrThrow13);
                int i9 = i7;
                long j6 = query.getLong(i9);
                int i10 = columnIndexOrThrow;
                int i11 = columnIndexOrThrow15;
                long j7 = query.getLong(i11);
                columnIndexOrThrow15 = i11;
                int i12 = columnIndexOrThrow16;
                if (query.getInt(i12) != 0) {
                    columnIndexOrThrow16 = i12;
                    i = columnIndexOrThrow17;
                    z = true;
                } else {
                    columnIndexOrThrow16 = i12;
                    i = columnIndexOrThrow17;
                    z = false;
                }
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i));
                columnIndexOrThrow17 = i;
                int i13 = columnIndexOrThrow18;
                int i14 = query.getInt(i13);
                columnIndexOrThrow18 = i13;
                int i15 = columnIndexOrThrow19;
                int i16 = query.getInt(i15);
                columnIndexOrThrow19 = i15;
                int i17 = columnIndexOrThrow20;
                long j8 = query.getLong(i17);
                columnIndexOrThrow20 = i17;
                int i18 = columnIndexOrThrow21;
                int i19 = query.getInt(i18);
                columnIndexOrThrow21 = i18;
                int i20 = columnIndexOrThrow22;
                int i21 = query.getInt(i20);
                columnIndexOrThrow22 = i20;
                int i22 = columnIndexOrThrow23;
                if (query.isNull(i22)) {
                    columnIndexOrThrow23 = i22;
                    i2 = columnIndexOrThrow24;
                    string = null;
                } else {
                    string = query.getString(i22);
                    columnIndexOrThrow23 = i22;
                    i2 = columnIndexOrThrow24;
                }
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i2));
                columnIndexOrThrow24 = i2;
                int i23 = columnIndexOrThrow25;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(query.getBlob(i23));
                columnIndexOrThrow25 = i23;
                int i24 = columnIndexOrThrow26;
                if (query.getInt(i24) != 0) {
                    columnIndexOrThrow26 = i24;
                    i3 = columnIndexOrThrow27;
                    z2 = true;
                } else {
                    columnIndexOrThrow26 = i24;
                    i3 = columnIndexOrThrow27;
                    z2 = false;
                }
                if (query.getInt(i3) != 0) {
                    columnIndexOrThrow27 = i3;
                    i4 = columnIndexOrThrow28;
                    z3 = true;
                } else {
                    columnIndexOrThrow27 = i3;
                    i4 = columnIndexOrThrow28;
                    z3 = false;
                }
                if (query.getInt(i4) != 0) {
                    columnIndexOrThrow28 = i4;
                    i5 = columnIndexOrThrow29;
                    z4 = true;
                } else {
                    columnIndexOrThrow28 = i4;
                    i5 = columnIndexOrThrow29;
                    z4 = false;
                }
                if (query.getInt(i5) != 0) {
                    columnIndexOrThrow29 = i5;
                    i6 = columnIndexOrThrow30;
                    z5 = true;
                } else {
                    columnIndexOrThrow29 = i5;
                    i6 = columnIndexOrThrow30;
                    z5 = false;
                }
                long j9 = query.getLong(i6);
                columnIndexOrThrow30 = i6;
                int i25 = columnIndexOrThrow31;
                long j10 = query.getLong(i25);
                columnIndexOrThrow31 = i25;
                int i26 = columnIndexOrThrow32;
                columnIndexOrThrow32 = i26;
                arrayList.add(new WorkSpec(string2, intToState, string3, string4, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(query.getBlob(i26))), i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i14, i16, j8, i19, i21, string));
                columnIndexOrThrow = i10;
                i7 = i9;
            }
            query.close();
            roomSQLiteQuery.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List getRunningWork() {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        int columnIndexOrThrow14;
        int i;
        boolean z;
        String string;
        int i2;
        int i3;
        boolean z2;
        int i4;
        boolean z3;
        int i5;
        boolean z4;
        int i6;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=1", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
            int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
            int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "trace_tag");
            int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
            int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "required_network_request");
            int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
            int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
            int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
            int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
            int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
            int columnIndexOrThrow31 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
            int columnIndexOrThrow32 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
            int i7 = columnIndexOrThrow14;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                String string2 = query.getString(columnIndexOrThrow);
                WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                String string3 = query.getString(columnIndexOrThrow3);
                String string4 = query.getString(columnIndexOrThrow4);
                Data fromByteArray = Data.fromByteArray(query.getBlob(columnIndexOrThrow5));
                Data fromByteArray2 = Data.fromByteArray(query.getBlob(columnIndexOrThrow6));
                long j = query.getLong(columnIndexOrThrow7);
                long j2 = query.getLong(columnIndexOrThrow8);
                long j3 = query.getLong(columnIndexOrThrow9);
                int i8 = query.getInt(columnIndexOrThrow10);
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                long j4 = query.getLong(columnIndexOrThrow12);
                long j5 = query.getLong(columnIndexOrThrow13);
                int i9 = i7;
                long j6 = query.getLong(i9);
                int i10 = columnIndexOrThrow;
                int i11 = columnIndexOrThrow15;
                long j7 = query.getLong(i11);
                columnIndexOrThrow15 = i11;
                int i12 = columnIndexOrThrow16;
                if (query.getInt(i12) != 0) {
                    columnIndexOrThrow16 = i12;
                    i = columnIndexOrThrow17;
                    z = true;
                } else {
                    columnIndexOrThrow16 = i12;
                    i = columnIndexOrThrow17;
                    z = false;
                }
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i));
                columnIndexOrThrow17 = i;
                int i13 = columnIndexOrThrow18;
                int i14 = query.getInt(i13);
                columnIndexOrThrow18 = i13;
                int i15 = columnIndexOrThrow19;
                int i16 = query.getInt(i15);
                columnIndexOrThrow19 = i15;
                int i17 = columnIndexOrThrow20;
                long j8 = query.getLong(i17);
                columnIndexOrThrow20 = i17;
                int i18 = columnIndexOrThrow21;
                int i19 = query.getInt(i18);
                columnIndexOrThrow21 = i18;
                int i20 = columnIndexOrThrow22;
                int i21 = query.getInt(i20);
                columnIndexOrThrow22 = i20;
                int i22 = columnIndexOrThrow23;
                if (query.isNull(i22)) {
                    columnIndexOrThrow23 = i22;
                    i2 = columnIndexOrThrow24;
                    string = null;
                } else {
                    string = query.getString(i22);
                    columnIndexOrThrow23 = i22;
                    i2 = columnIndexOrThrow24;
                }
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i2));
                columnIndexOrThrow24 = i2;
                int i23 = columnIndexOrThrow25;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(query.getBlob(i23));
                columnIndexOrThrow25 = i23;
                int i24 = columnIndexOrThrow26;
                if (query.getInt(i24) != 0) {
                    columnIndexOrThrow26 = i24;
                    i3 = columnIndexOrThrow27;
                    z2 = true;
                } else {
                    columnIndexOrThrow26 = i24;
                    i3 = columnIndexOrThrow27;
                    z2 = false;
                }
                if (query.getInt(i3) != 0) {
                    columnIndexOrThrow27 = i3;
                    i4 = columnIndexOrThrow28;
                    z3 = true;
                } else {
                    columnIndexOrThrow27 = i3;
                    i4 = columnIndexOrThrow28;
                    z3 = false;
                }
                if (query.getInt(i4) != 0) {
                    columnIndexOrThrow28 = i4;
                    i5 = columnIndexOrThrow29;
                    z4 = true;
                } else {
                    columnIndexOrThrow28 = i4;
                    i5 = columnIndexOrThrow29;
                    z4 = false;
                }
                if (query.getInt(i5) != 0) {
                    columnIndexOrThrow29 = i5;
                    i6 = columnIndexOrThrow30;
                    z5 = true;
                } else {
                    columnIndexOrThrow29 = i5;
                    i6 = columnIndexOrThrow30;
                    z5 = false;
                }
                long j9 = query.getLong(i6);
                columnIndexOrThrow30 = i6;
                int i25 = columnIndexOrThrow31;
                long j10 = query.getLong(i25);
                columnIndexOrThrow31 = i25;
                int i26 = columnIndexOrThrow32;
                columnIndexOrThrow32 = i26;
                arrayList.add(new WorkSpec(string2, intToState, string3, string4, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(query.getBlob(i26))), i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i14, i16, j8, i19, i21, string));
                columnIndexOrThrow = i10;
                i7 = i9;
            }
            query.close();
            roomSQLiteQuery.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List getRecentlyCompletedWork(long j) {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        int columnIndexOrThrow14;
        int i;
        boolean z;
        String string;
        int i2;
        int i3;
        boolean z2;
        int i4;
        boolean z3;
        int i5;
        boolean z4;
        int i6;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC", 1);
        acquire.bindLong(1, j);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "output");
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
        } catch (Throwable th) {
            th = th;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
            int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
            int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "trace_tag");
            int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
            int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "required_network_request");
            int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
            int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
            int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
            int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
            int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
            int columnIndexOrThrow31 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
            int columnIndexOrThrow32 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
            int i7 = columnIndexOrThrow14;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                String string2 = query.getString(columnIndexOrThrow);
                WorkInfo.State intToState = WorkTypeConverters.intToState(query.getInt(columnIndexOrThrow2));
                String string3 = query.getString(columnIndexOrThrow3);
                String string4 = query.getString(columnIndexOrThrow4);
                Data fromByteArray = Data.fromByteArray(query.getBlob(columnIndexOrThrow5));
                Data fromByteArray2 = Data.fromByteArray(query.getBlob(columnIndexOrThrow6));
                long j2 = query.getLong(columnIndexOrThrow7);
                long j3 = query.getLong(columnIndexOrThrow8);
                long j4 = query.getLong(columnIndexOrThrow9);
                int i8 = query.getInt(columnIndexOrThrow10);
                BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                long j5 = query.getLong(columnIndexOrThrow12);
                long j6 = query.getLong(columnIndexOrThrow13);
                int i9 = i7;
                long j7 = query.getLong(i9);
                int i10 = columnIndexOrThrow;
                int i11 = columnIndexOrThrow15;
                long j8 = query.getLong(i11);
                columnIndexOrThrow15 = i11;
                int i12 = columnIndexOrThrow16;
                if (query.getInt(i12) != 0) {
                    columnIndexOrThrow16 = i12;
                    i = columnIndexOrThrow17;
                    z = true;
                } else {
                    columnIndexOrThrow16 = i12;
                    i = columnIndexOrThrow17;
                    z = false;
                }
                OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i));
                columnIndexOrThrow17 = i;
                int i13 = columnIndexOrThrow18;
                int i14 = query.getInt(i13);
                columnIndexOrThrow18 = i13;
                int i15 = columnIndexOrThrow19;
                int i16 = query.getInt(i15);
                columnIndexOrThrow19 = i15;
                int i17 = columnIndexOrThrow20;
                long j9 = query.getLong(i17);
                columnIndexOrThrow20 = i17;
                int i18 = columnIndexOrThrow21;
                int i19 = query.getInt(i18);
                columnIndexOrThrow21 = i18;
                int i20 = columnIndexOrThrow22;
                int i21 = query.getInt(i20);
                columnIndexOrThrow22 = i20;
                int i22 = columnIndexOrThrow23;
                if (query.isNull(i22)) {
                    columnIndexOrThrow23 = i22;
                    i2 = columnIndexOrThrow24;
                    string = null;
                } else {
                    string = query.getString(i22);
                    columnIndexOrThrow23 = i22;
                    i2 = columnIndexOrThrow24;
                }
                NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i2));
                columnIndexOrThrow24 = i2;
                int i23 = columnIndexOrThrow25;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(query.getBlob(i23));
                columnIndexOrThrow25 = i23;
                int i24 = columnIndexOrThrow26;
                if (query.getInt(i24) != 0) {
                    columnIndexOrThrow26 = i24;
                    i3 = columnIndexOrThrow27;
                    z2 = true;
                } else {
                    columnIndexOrThrow26 = i24;
                    i3 = columnIndexOrThrow27;
                    z2 = false;
                }
                if (query.getInt(i3) != 0) {
                    columnIndexOrThrow27 = i3;
                    i4 = columnIndexOrThrow28;
                    z3 = true;
                } else {
                    columnIndexOrThrow27 = i3;
                    i4 = columnIndexOrThrow28;
                    z3 = false;
                }
                if (query.getInt(i4) != 0) {
                    columnIndexOrThrow28 = i4;
                    i5 = columnIndexOrThrow29;
                    z4 = true;
                } else {
                    columnIndexOrThrow28 = i4;
                    i5 = columnIndexOrThrow29;
                    z4 = false;
                }
                if (query.getInt(i5) != 0) {
                    columnIndexOrThrow29 = i5;
                    i6 = columnIndexOrThrow30;
                    z5 = true;
                } else {
                    columnIndexOrThrow29 = i5;
                    i6 = columnIndexOrThrow30;
                    z5 = false;
                }
                long j10 = query.getLong(i6);
                columnIndexOrThrow30 = i6;
                int i25 = columnIndexOrThrow31;
                long j11 = query.getLong(i25);
                columnIndexOrThrow31 = i25;
                int i26 = columnIndexOrThrow32;
                columnIndexOrThrow32 = i26;
                arrayList.add(new WorkSpec(string2, intToState, string3, string4, fromByteArray, fromByteArray2, j2, j3, j4, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, z5, j10, j11, WorkTypeConverters.byteArrayToSetOfTriggers(query.getBlob(i26))), i8, intToBackoffPolicy, j5, j6, j7, j8, z, intToOutOfQuotaPolicy, i14, i16, j9, i19, i21, string));
                columnIndexOrThrow = i10;
                i7 = i9;
            }
            query.close();
            roomSQLiteQuery.release();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int countNonFinishedContentUriTriggerWorkers() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            return query.moveToFirst() ? query.getInt(0) : 0;
        } finally {
            query.close();
            acquire.release();
        }
    }

    public static List getRequiredConverters() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkTagAsjavaLangString(HashMap hashMap) {
        Set keySet = hashMap.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (hashMap.size() > 999) {
            RelationUtil.recursiveFetchHashMap(hashMap, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit lambda$__fetchRelationshipWorkTagAsjavaLangString$0;
                    lambda$__fetchRelationshipWorkTagAsjavaLangString$0 = WorkSpecDao_Impl.this.lambda$__fetchRelationshipWorkTagAsjavaLangString$0((HashMap) obj);
                    return lambda$__fetchRelationshipWorkTagAsjavaLangString$0;
                }
            });
            return;
        }
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        int size = keySet.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size);
        Iterator it = keySet.iterator();
        int i = 1;
        while (it.hasNext()) {
            acquire.bindString(i, (String) it.next());
            i++;
        }
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(query, "work_spec_id");
            if (columnIndex == -1) {
                return;
            }
            while (query.moveToNext()) {
                ArrayList arrayList = (ArrayList) hashMap.get(query.getString(columnIndex));
                if (arrayList != null) {
                    arrayList.add(query.getString(0));
                }
            }
        } finally {
            query.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$__fetchRelationshipWorkTagAsjavaLangString$0(HashMap hashMap) {
        __fetchRelationshipWorkTagAsjavaLangString(hashMap);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkProgressAsandroidxWorkData(HashMap hashMap) {
        Set keySet = hashMap.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (hashMap.size() > 999) {
            RelationUtil.recursiveFetchHashMap(hashMap, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit lambda$__fetchRelationshipWorkProgressAsandroidxWorkData$1;
                    lambda$__fetchRelationshipWorkProgressAsandroidxWorkData$1 = WorkSpecDao_Impl.this.lambda$__fetchRelationshipWorkProgressAsandroidxWorkData$1((HashMap) obj);
                    return lambda$__fetchRelationshipWorkProgressAsandroidxWorkData$1;
                }
            });
            return;
        }
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        int size = keySet.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size);
        Iterator it = keySet.iterator();
        int i = 1;
        while (it.hasNext()) {
            acquire.bindString(i, (String) it.next());
            i++;
        }
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(query, "work_spec_id");
            if (columnIndex == -1) {
                return;
            }
            while (query.moveToNext()) {
                ArrayList arrayList = (ArrayList) hashMap.get(query.getString(columnIndex));
                if (arrayList != null) {
                    arrayList.add(Data.fromByteArray(query.getBlob(0)));
                }
            }
        } finally {
            query.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$__fetchRelationshipWorkProgressAsandroidxWorkData$1(HashMap hashMap) {
        __fetchRelationshipWorkProgressAsandroidxWorkData(hashMap);
        return Unit.INSTANCE;
    }
}
