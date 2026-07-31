package expo.modules.updates.statemachine;

import androidx.core.app.NotificationCompat;
import expo.modules.updates.events.IUpdatesEventManager;
import expo.modules.updates.logging.UpdatesLogger;
import expo.modules.updates.procedures.StateMachineProcedure;
import expo.modules.updates.procedures.StateMachineSerialExecutorQueue;
import expo.modules.updates.statemachine.UpdatesStateEvent;
import io.sentry.SentryEvent;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UpdatesStateMachine.kt */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\b\u0010\u0017\u001a\u00020\u000eH\u0002J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0006\u0010\u001d\u001a\u00020\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0013@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001f"}, d2 = {"Lexpo/modules/updates/statemachine/UpdatesStateMachine;", "", SentryEvent.JsonKeys.LOGGER, "Lexpo/modules/updates/logging/UpdatesLogger;", "eventManager", "Lexpo/modules/updates/events/IUpdatesEventManager;", "validUpdatesStateValues", "", "Lexpo/modules/updates/statemachine/UpdatesStateValue;", "<init>", "(Lexpo/modules/updates/logging/UpdatesLogger;Lexpo/modules/updates/events/IUpdatesEventManager;Ljava/util/Set;)V", "serialExecutorQueue", "Lexpo/modules/updates/procedures/StateMachineSerialExecutorQueue;", "queueExecution", "", "stateMachineProcedure", "Lexpo/modules/updates/procedures/StateMachineProcedure;", "state", "value", "Lexpo/modules/updates/statemachine/UpdatesStateContext;", "context", "getContext", "()Lexpo/modules/updates/statemachine/UpdatesStateContext;", "resetAndIncrementRestartCount", "processEvent", NotificationCompat.CATEGORY_EVENT, "Lexpo/modules/updates/statemachine/UpdatesStateEvent;", "transition", "", "sendContextToJS", "Companion", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class UpdatesStateMachine {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Map<UpdatesStateValue, Set<UpdatesStateEventType>> updatesStateAllowedEvents = MapsKt.mapOf(TuplesKt.to(UpdatesStateValue.Idle, SetsKt.setOf((Object[]) new UpdatesStateEventType[]{UpdatesStateEventType.StartStartup, UpdatesStateEventType.EndStartup, UpdatesStateEventType.Check, UpdatesStateEventType.Download, UpdatesStateEventType.Restart})), TuplesKt.to(UpdatesStateValue.Checking, SetsKt.setOf((Object[]) new UpdatesStateEventType[]{UpdatesStateEventType.CheckCompleteAvailable, UpdatesStateEventType.CheckCompleteUnavailable, UpdatesStateEventType.CheckError})), TuplesKt.to(UpdatesStateValue.Downloading, SetsKt.setOf((Object[]) new UpdatesStateEventType[]{UpdatesStateEventType.DownloadComplete, UpdatesStateEventType.DownloadError})), TuplesKt.to(UpdatesStateValue.Restarting, SetsKt.emptySet()));
    private static final Map<UpdatesStateEventType, UpdatesStateValue> updatesStateTransitions = MapsKt.mapOf(TuplesKt.to(UpdatesStateEventType.StartStartup, UpdatesStateValue.Idle), TuplesKt.to(UpdatesStateEventType.EndStartup, UpdatesStateValue.Idle), TuplesKt.to(UpdatesStateEventType.Check, UpdatesStateValue.Checking), TuplesKt.to(UpdatesStateEventType.CheckCompleteAvailable, UpdatesStateValue.Idle), TuplesKt.to(UpdatesStateEventType.CheckCompleteUnavailable, UpdatesStateValue.Idle), TuplesKt.to(UpdatesStateEventType.CheckError, UpdatesStateValue.Idle), TuplesKt.to(UpdatesStateEventType.Download, UpdatesStateValue.Downloading), TuplesKt.to(UpdatesStateEventType.DownloadComplete, UpdatesStateValue.Idle), TuplesKt.to(UpdatesStateEventType.DownloadError, UpdatesStateValue.Idle), TuplesKt.to(UpdatesStateEventType.Restart, UpdatesStateValue.Restarting));
    private UpdatesStateContext context;
    private final IUpdatesEventManager eventManager;
    private final UpdatesLogger logger;
    private final StateMachineSerialExecutorQueue serialExecutorQueue;
    private UpdatesStateValue state;
    private final Set<UpdatesStateValue> validUpdatesStateValues;

    /* JADX WARN: Multi-variable type inference failed */
    public UpdatesStateMachine(UpdatesLogger logger, IUpdatesEventManager eventManager, Set<? extends UpdatesStateValue> validUpdatesStateValues) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(eventManager, "eventManager");
        Intrinsics.checkNotNullParameter(validUpdatesStateValues, "validUpdatesStateValues");
        this.logger = logger;
        this.eventManager = eventManager;
        this.validUpdatesStateValues = validUpdatesStateValues;
        this.serialExecutorQueue = new StateMachineSerialExecutorQueue(logger, new StateMachineProcedure.StateMachineProcedureContext() { // from class: expo.modules.updates.statemachine.UpdatesStateMachine$serialExecutorQueue$1
            @Override // expo.modules.updates.procedures.StateMachineProcedure.StateMachineProcedureContext
            public void processStateEvent(UpdatesStateEvent event) {
                Intrinsics.checkNotNullParameter(event, "event");
                UpdatesStateMachine.this.processEvent(event);
            }

            @Override // expo.modules.updates.procedures.StateMachineProcedure.StateMachineProcedureContext
            @Deprecated(message = "Avoid needing to access current state to know how to transition to next state")
            public UpdatesStateValue getCurrentState() {
                UpdatesStateValue updatesStateValue;
                updatesStateValue = UpdatesStateMachine.this.state;
                return updatesStateValue;
            }

            @Override // expo.modules.updates.procedures.StateMachineProcedure.StateMachineProcedureContext
            public void resetStateAfterRestart() {
                UpdatesStateMachine.this.resetAndIncrementRestartCount();
            }
        }, null, 4, null);
        this.state = UpdatesStateValue.Idle;
        this.context = new UpdatesStateContext(false, false, false, false, false, false, 0, null, null, null, null, null, null, 8191, null);
    }

    public final void queueExecution(StateMachineProcedure stateMachineProcedure) {
        Intrinsics.checkNotNullParameter(stateMachineProcedure, "stateMachineProcedure");
        this.serialExecutorQueue.queueExecution(stateMachineProcedure);
    }

    public final UpdatesStateContext getContext() {
        return this.context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetAndIncrementRestartCount() {
        this.state = UpdatesStateValue.Idle;
        UpdatesStateContext resetCopyWithIncrementedRestartCountAndSequenceNumber = this.context.resetCopyWithIncrementedRestartCountAndSequenceNumber();
        this.context = resetCopyWithIncrementedRestartCountAndSequenceNumber;
        UpdatesLogger.info$default(this.logger, "Updates state change: reset, context = " + resetCopyWithIncrementedRestartCountAndSequenceNumber.getJson(), null, 2, null);
        sendContextToJS();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processEvent(UpdatesStateEvent event) {
        if (transition(event)) {
            this.context = INSTANCE.reduceContext(this.context, event);
            UpdatesLogger.info$default(this.logger, "Updates state change: " + event.getType() + ", context = " + this.context.getJson(), null, 2, null);
            sendContextToJS();
        }
    }

    private final boolean transition(UpdatesStateEvent event) {
        Set<UpdatesStateEventType> set = updatesStateAllowedEvents.get(this.state);
        if (set == null) {
            set = SetsKt.emptySet();
        }
        if (!set.contains(event.getType())) {
            return false;
        }
        UpdatesStateValue updatesStateValue = updatesStateTransitions.get(event.getType());
        if (updatesStateValue == null) {
            updatesStateValue = UpdatesStateValue.Idle;
        }
        if (!this.validUpdatesStateValues.contains(updatesStateValue)) {
            return false;
        }
        this.state = updatesStateValue;
        return true;
    }

    public final void sendContextToJS() {
        this.eventManager.sendStateMachineContextEvent(this.context);
    }

    /* compiled from: UpdatesStateMachine.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R#\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\n¨\u0006\u0012"}, d2 = {"Lexpo/modules/updates/statemachine/UpdatesStateMachine$Companion;", "", "<init>", "()V", "updatesStateAllowedEvents", "", "Lexpo/modules/updates/statemachine/UpdatesStateValue;", "", "Lexpo/modules/updates/statemachine/UpdatesStateEventType;", "getUpdatesStateAllowedEvents", "()Ljava/util/Map;", "updatesStateTransitions", "getUpdatesStateTransitions", "reduceContext", "Lexpo/modules/updates/statemachine/UpdatesStateContext;", "context", NotificationCompat.CATEGORY_EVENT, "Lexpo/modules/updates/statemachine/UpdatesStateEvent;", "expo-updates_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Map<UpdatesStateValue, Set<UpdatesStateEventType>> getUpdatesStateAllowedEvents() {
            return UpdatesStateMachine.updatesStateAllowedEvents;
        }

        public final Map<UpdatesStateEventType, UpdatesStateValue> getUpdatesStateTransitions() {
            return UpdatesStateMachine.updatesStateTransitions;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final UpdatesStateContext reduceContext(UpdatesStateContext context, UpdatesStateEvent event) {
            UpdatesStateContext copyAndIncrementSequenceNumber;
            UpdatesStateContext copyAndIncrementSequenceNumber2;
            UpdatesStateContext copyAndIncrementSequenceNumber3;
            UpdatesStateContext copyAndIncrementSequenceNumber4;
            UpdatesStateContext copyAndIncrementSequenceNumber5;
            UpdatesStateContext copyAndIncrementSequenceNumber6;
            UpdatesStateContext copyAndIncrementSequenceNumber7;
            UpdatesStateContext copyAndIncrementSequenceNumber8;
            UpdatesStateContext copyAndIncrementSequenceNumber9;
            UpdatesStateContext copyAndIncrementSequenceNumber10;
            UpdatesStateContext copyAndIncrementSequenceNumber11;
            UpdatesStateContext copyAndIncrementSequenceNumber12;
            UpdatesStateContext copyAndIncrementSequenceNumber13;
            if (event instanceof UpdatesStateEvent.StartStartup) {
                copyAndIncrementSequenceNumber13 = context.copyAndIncrementSequenceNumber((r28 & 1) != 0 ? context.isStartupProcedureRunning : true, (r28 & 2) != 0 ? context.isUpdateAvailable : false, (r28 & 4) != 0 ? context.isUpdatePending : false, (r28 & 8) != 0 ? context.isChecking : false, (r28 & 16) != 0 ? context.isDownloading : false, (r28 & 32) != 0 ? context.isRestarting : false, (r28 & 64) != 0 ? context.restartCount : 0, (r28 & 128) != 0 ? context.latestManifest : null, (r28 & 256) != 0 ? context.downloadedManifest : null, (r28 & 512) != 0 ? context.rollback : null, (r28 & 1024) != 0 ? context.checkError : null, (r28 & 2048) != 0 ? context.downloadError : null, (r28 & 4096) != 0 ? context.lastCheckForUpdateTime : null);
                return copyAndIncrementSequenceNumber13;
            }
            if (event instanceof UpdatesStateEvent.EndStartup) {
                copyAndIncrementSequenceNumber12 = context.copyAndIncrementSequenceNumber((r28 & 1) != 0 ? context.isStartupProcedureRunning : false, (r28 & 2) != 0 ? context.isUpdateAvailable : false, (r28 & 4) != 0 ? context.isUpdatePending : false, (r28 & 8) != 0 ? context.isChecking : false, (r28 & 16) != 0 ? context.isDownloading : false, (r28 & 32) != 0 ? context.isRestarting : false, (r28 & 64) != 0 ? context.restartCount : 0, (r28 & 128) != 0 ? context.latestManifest : null, (r28 & 256) != 0 ? context.downloadedManifest : null, (r28 & 512) != 0 ? context.rollback : null, (r28 & 1024) != 0 ? context.checkError : null, (r28 & 2048) != 0 ? context.downloadError : null, (r28 & 4096) != 0 ? context.lastCheckForUpdateTime : null);
                return copyAndIncrementSequenceNumber12;
            }
            if (event instanceof UpdatesStateEvent.Check) {
                copyAndIncrementSequenceNumber11 = context.copyAndIncrementSequenceNumber((r28 & 1) != 0 ? context.isStartupProcedureRunning : false, (r28 & 2) != 0 ? context.isUpdateAvailable : false, (r28 & 4) != 0 ? context.isUpdatePending : false, (r28 & 8) != 0 ? context.isChecking : true, (r28 & 16) != 0 ? context.isDownloading : false, (r28 & 32) != 0 ? context.isRestarting : false, (r28 & 64) != 0 ? context.restartCount : 0, (r28 & 128) != 0 ? context.latestManifest : null, (r28 & 256) != 0 ? context.downloadedManifest : null, (r28 & 512) != 0 ? context.rollback : null, (r28 & 1024) != 0 ? context.checkError : null, (r28 & 2048) != 0 ? context.downloadError : null, (r28 & 4096) != 0 ? context.lastCheckForUpdateTime : null);
                return copyAndIncrementSequenceNumber11;
            }
            if (event instanceof UpdatesStateEvent.CheckCompleteUnavailable) {
                copyAndIncrementSequenceNumber10 = context.copyAndIncrementSequenceNumber((r28 & 1) != 0 ? context.isStartupProcedureRunning : false, (r28 & 2) != 0 ? context.isUpdateAvailable : false, (r28 & 4) != 0 ? context.isUpdatePending : false, (r28 & 8) != 0 ? context.isChecking : false, (r28 & 16) != 0 ? context.isDownloading : false, (r28 & 32) != 0 ? context.isRestarting : false, (r28 & 64) != 0 ? context.restartCount : 0, (r28 & 128) != 0 ? context.latestManifest : null, (r28 & 256) != 0 ? context.downloadedManifest : null, (r28 & 512) != 0 ? context.rollback : null, (r28 & 1024) != 0 ? context.checkError : null, (r28 & 2048) != 0 ? context.downloadError : null, (r28 & 4096) != 0 ? context.lastCheckForUpdateTime : new Date());
                return copyAndIncrementSequenceNumber10;
            }
            if (event instanceof UpdatesStateEvent.CheckCompleteWithRollback) {
                copyAndIncrementSequenceNumber9 = context.copyAndIncrementSequenceNumber((r28 & 1) != 0 ? context.isStartupProcedureRunning : false, (r28 & 2) != 0 ? context.isUpdateAvailable : true, (r28 & 4) != 0 ? context.isUpdatePending : false, (r28 & 8) != 0 ? context.isChecking : false, (r28 & 16) != 0 ? context.isDownloading : false, (r28 & 32) != 0 ? context.isRestarting : false, (r28 & 64) != 0 ? context.restartCount : 0, (r28 & 128) != 0 ? context.latestManifest : null, (r28 & 256) != 0 ? context.downloadedManifest : null, (r28 & 512) != 0 ? context.rollback : new UpdatesStateContextRollback(((UpdatesStateEvent.CheckCompleteWithRollback) event).getCommitTime()), (r28 & 1024) != 0 ? context.checkError : null, (r28 & 2048) != 0 ? context.downloadError : null, (r28 & 4096) != 0 ? context.lastCheckForUpdateTime : new Date());
                return copyAndIncrementSequenceNumber9;
            }
            if (event instanceof UpdatesStateEvent.CheckCompleteWithUpdate) {
                copyAndIncrementSequenceNumber8 = context.copyAndIncrementSequenceNumber((r28 & 1) != 0 ? context.isStartupProcedureRunning : false, (r28 & 2) != 0 ? context.isUpdateAvailable : true, (r28 & 4) != 0 ? context.isUpdatePending : false, (r28 & 8) != 0 ? context.isChecking : false, (r28 & 16) != 0 ? context.isDownloading : false, (r28 & 32) != 0 ? context.isRestarting : false, (r28 & 64) != 0 ? context.restartCount : 0, (r28 & 128) != 0 ? context.latestManifest : ((UpdatesStateEvent.CheckCompleteWithUpdate) event).getManifest(), (r28 & 256) != 0 ? context.downloadedManifest : null, (r28 & 512) != 0 ? context.rollback : null, (r28 & 1024) != 0 ? context.checkError : null, (r28 & 2048) != 0 ? context.downloadError : null, (r28 & 4096) != 0 ? context.lastCheckForUpdateTime : new Date());
                return copyAndIncrementSequenceNumber8;
            }
            if (event instanceof UpdatesStateEvent.CheckError) {
                copyAndIncrementSequenceNumber7 = context.copyAndIncrementSequenceNumber((r28 & 1) != 0 ? context.isStartupProcedureRunning : false, (r28 & 2) != 0 ? context.isUpdateAvailable : false, (r28 & 4) != 0 ? context.isUpdatePending : false, (r28 & 8) != 0 ? context.isChecking : false, (r28 & 16) != 0 ? context.isDownloading : false, (r28 & 32) != 0 ? context.isRestarting : false, (r28 & 64) != 0 ? context.restartCount : 0, (r28 & 128) != 0 ? context.latestManifest : null, (r28 & 256) != 0 ? context.downloadedManifest : null, (r28 & 512) != 0 ? context.rollback : null, (r28 & 1024) != 0 ? context.checkError : ((UpdatesStateEvent.CheckError) event).getError(), (r28 & 2048) != 0 ? context.downloadError : null, (r28 & 4096) != 0 ? context.lastCheckForUpdateTime : new Date());
                return copyAndIncrementSequenceNumber7;
            }
            if (event instanceof UpdatesStateEvent.Download) {
                copyAndIncrementSequenceNumber6 = context.copyAndIncrementSequenceNumber((r28 & 1) != 0 ? context.isStartupProcedureRunning : false, (r28 & 2) != 0 ? context.isUpdateAvailable : false, (r28 & 4) != 0 ? context.isUpdatePending : false, (r28 & 8) != 0 ? context.isChecking : false, (r28 & 16) != 0 ? context.isDownloading : true, (r28 & 32) != 0 ? context.isRestarting : false, (r28 & 64) != 0 ? context.restartCount : 0, (r28 & 128) != 0 ? context.latestManifest : null, (r28 & 256) != 0 ? context.downloadedManifest : null, (r28 & 512) != 0 ? context.rollback : null, (r28 & 1024) != 0 ? context.checkError : null, (r28 & 2048) != 0 ? context.downloadError : null, (r28 & 4096) != 0 ? context.lastCheckForUpdateTime : null);
                return copyAndIncrementSequenceNumber6;
            }
            if (event instanceof UpdatesStateEvent.DownloadComplete) {
                copyAndIncrementSequenceNumber5 = context.copyAndIncrementSequenceNumber((r28 & 1) != 0 ? context.isStartupProcedureRunning : false, (r28 & 2) != 0 ? context.isUpdateAvailable : false, (r28 & 4) != 0 ? context.isUpdatePending : true, (r28 & 8) != 0 ? context.isChecking : false, (r28 & 16) != 0 ? context.isDownloading : false, (r28 & 32) != 0 ? context.isRestarting : false, (r28 & 64) != 0 ? context.restartCount : 0, (r28 & 128) != 0 ? context.latestManifest : null, (r28 & 256) != 0 ? context.downloadedManifest : null, (r28 & 512) != 0 ? context.rollback : null, (r28 & 1024) != 0 ? context.checkError : null, (r28 & 2048) != 0 ? context.downloadError : null, (r28 & 4096) != 0 ? context.lastCheckForUpdateTime : null);
                return copyAndIncrementSequenceNumber5;
            }
            if (event instanceof UpdatesStateEvent.DownloadCompleteWithRollback) {
                copyAndIncrementSequenceNumber4 = context.copyAndIncrementSequenceNumber((r28 & 1) != 0 ? context.isStartupProcedureRunning : false, (r28 & 2) != 0 ? context.isUpdateAvailable : false, (r28 & 4) != 0 ? context.isUpdatePending : true, (r28 & 8) != 0 ? context.isChecking : false, (r28 & 16) != 0 ? context.isDownloading : false, (r28 & 32) != 0 ? context.isRestarting : false, (r28 & 64) != 0 ? context.restartCount : 0, (r28 & 128) != 0 ? context.latestManifest : null, (r28 & 256) != 0 ? context.downloadedManifest : null, (r28 & 512) != 0 ? context.rollback : null, (r28 & 1024) != 0 ? context.checkError : null, (r28 & 2048) != 0 ? context.downloadError : null, (r28 & 4096) != 0 ? context.lastCheckForUpdateTime : null);
                return copyAndIncrementSequenceNumber4;
            }
            if (event instanceof UpdatesStateEvent.DownloadCompleteWithUpdate) {
                UpdatesStateEvent.DownloadCompleteWithUpdate downloadCompleteWithUpdate = (UpdatesStateEvent.DownloadCompleteWithUpdate) event;
                copyAndIncrementSequenceNumber3 = context.copyAndIncrementSequenceNumber((r28 & 1) != 0 ? context.isStartupProcedureRunning : false, (r28 & 2) != 0 ? context.isUpdateAvailable : true, (r28 & 4) != 0 ? context.isUpdatePending : true, (r28 & 8) != 0 ? context.isChecking : false, (r28 & 16) != 0 ? context.isDownloading : false, (r28 & 32) != 0 ? context.isRestarting : false, (r28 & 64) != 0 ? context.restartCount : 0, (r28 & 128) != 0 ? context.latestManifest : downloadCompleteWithUpdate.getManifest(), (r28 & 256) != 0 ? context.downloadedManifest : downloadCompleteWithUpdate.getManifest(), (r28 & 512) != 0 ? context.rollback : null, (r28 & 1024) != 0 ? context.checkError : null, (r28 & 2048) != 0 ? context.downloadError : null, (r28 & 4096) != 0 ? context.lastCheckForUpdateTime : null);
                return copyAndIncrementSequenceNumber3;
            }
            if (event instanceof UpdatesStateEvent.DownloadError) {
                copyAndIncrementSequenceNumber2 = context.copyAndIncrementSequenceNumber((r28 & 1) != 0 ? context.isStartupProcedureRunning : false, (r28 & 2) != 0 ? context.isUpdateAvailable : false, (r28 & 4) != 0 ? context.isUpdatePending : false, (r28 & 8) != 0 ? context.isChecking : false, (r28 & 16) != 0 ? context.isDownloading : false, (r28 & 32) != 0 ? context.isRestarting : false, (r28 & 64) != 0 ? context.restartCount : 0, (r28 & 128) != 0 ? context.latestManifest : null, (r28 & 256) != 0 ? context.downloadedManifest : null, (r28 & 512) != 0 ? context.rollback : null, (r28 & 1024) != 0 ? context.checkError : null, (r28 & 2048) != 0 ? context.downloadError : ((UpdatesStateEvent.DownloadError) event).getError(), (r28 & 4096) != 0 ? context.lastCheckForUpdateTime : null);
                return copyAndIncrementSequenceNumber2;
            }
            if (event instanceof UpdatesStateEvent.Restart) {
                copyAndIncrementSequenceNumber = context.copyAndIncrementSequenceNumber((r28 & 1) != 0 ? context.isStartupProcedureRunning : false, (r28 & 2) != 0 ? context.isUpdateAvailable : false, (r28 & 4) != 0 ? context.isUpdatePending : false, (r28 & 8) != 0 ? context.isChecking : false, (r28 & 16) != 0 ? context.isDownloading : false, (r28 & 32) != 0 ? context.isRestarting : true, (r28 & 64) != 0 ? context.restartCount : 0, (r28 & 128) != 0 ? context.latestManifest : null, (r28 & 256) != 0 ? context.downloadedManifest : null, (r28 & 512) != 0 ? context.rollback : null, (r28 & 1024) != 0 ? context.checkError : null, (r28 & 2048) != 0 ? context.downloadError : null, (r28 & 4096) != 0 ? context.lastCheckForUpdateTime : null);
                return copyAndIncrementSequenceNumber;
            }
            throw new NoWhenBranchMatchedException();
        }
    }
}
