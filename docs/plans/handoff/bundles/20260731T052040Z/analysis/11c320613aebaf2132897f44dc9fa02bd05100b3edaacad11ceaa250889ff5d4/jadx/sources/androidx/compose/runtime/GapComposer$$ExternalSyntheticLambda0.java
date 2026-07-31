package androidx.compose.runtime;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList;
import androidx.compose.runtime.composer.gapbuffer.changelist.ComposerChangeListWriter;
import androidx.navigation3.scene.SceneInfo;
import androidx.navigationevent.compose.NavigationEventState;
import androidx.work.ForegroundInfo;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.foreground.SystemForegroundService;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.WorkForegroundUpdater;
import coil3.decode.StaticImageDecoderKt;
import java.util.List;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.RangesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class GapComposer$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ GapComposer$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                GapComposer gapComposer = (GapComposer) this.f$0;
                ChangeList changeList = (ChangeList) this.f$1;
                SlotReader slotReader = (SlotReader) this.f$2;
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) this.f$3;
                ComposerChangeListWriter composerChangeListWriter = gapComposer.changeListWriter;
                ChangeList changeList2 = composerChangeListWriter.changeList;
                try {
                    composerChangeListWriter.changeList = changeList;
                    SlotReader slotReader2 = gapComposer.reader;
                    int[] iArr = gapComposer.nodeCountOverrides;
                    MutableIntObjectMap mutableIntObjectMap = gapComposer.providerUpdates;
                    gapComposer.nodeCountOverrides = null;
                    gapComposer.providerUpdates = null;
                    try {
                        gapComposer.reader = slotReader;
                        boolean z = composerChangeListWriter.implicitRootStart;
                        try {
                            composerChangeListWriter.implicitRootStart = false;
                            gapComposer.invokeMovableContentLambda(movableContentStateReference.content, movableContentStateReference.locals, movableContentStateReference.parameter, true);
                            composerChangeListWriter.changeList = changeList2;
                            return Unit.INSTANCE;
                        } finally {
                            composerChangeListWriter.implicitRootStart = z;
                        }
                    } finally {
                        gapComposer.reader = slotReader2;
                        gapComposer.nodeCountOverrides = iArr;
                        gapComposer.providerUpdates = mutableIntObjectMap;
                    }
                } catch (Throwable th) {
                    composerChangeListWriter.changeList = changeList2;
                    throw th;
                }
            case 1:
                NavigationEventState navigationEventState = (NavigationEventState) this.f$0;
                SceneInfo sceneInfo = (SceneInfo) this.f$1;
                List list = (List) this.f$2;
                List list2 = (List) this.f$3;
                navigationEventState.currentInfo$delegate.setValue(sceneInfo);
                navigationEventState.backInfo$delegate.setValue(list);
                navigationEventState.forwardInfo$delegate.setValue(list2);
                return Unit.INSTANCE;
            default:
                WorkForegroundUpdater workForegroundUpdater = (WorkForegroundUpdater) this.f$0;
                UUID uuid = (UUID) this.f$1;
                ForegroundInfo foregroundInfo = (ForegroundInfo) this.f$2;
                Context context = (Context) this.f$3;
                String uuid2 = uuid.toString();
                WorkSpec workSpec = workForegroundUpdater.mWorkSpecDao.getWorkSpec(uuid2);
                if (workSpec == null || workSpec.state.isFinished()) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                } else {
                    Processor processor = workForegroundUpdater.mForegroundProcessor;
                    synchronized (processor.mLock) {
                        try {
                            Logger$LogcatLogger.get().info(Processor.TAG, "Moving WorkSpec (" + uuid2 + ") to the foreground");
                            WorkerWrapper workerWrapper = (WorkerWrapper) processor.mEnqueuedWorkMap.remove(uuid2);
                            if (workerWrapper != null) {
                                if (processor.mForegroundLock == null) {
                                    PowerManager.WakeLock newWakeLock = WakeLocks.newWakeLock(processor.mAppContext);
                                    processor.mForegroundLock = newWakeLock;
                                    newWakeLock.acquire();
                                }
                                processor.mForegroundWorkMap.put(uuid2, workerWrapper);
                                StaticImageDecoderKt.startForegroundService(processor.mAppContext, SystemForegroundDispatcher.createStartForegroundIntent(processor.mAppContext, RangesKt.generationalId(workerWrapper.workSpec), foregroundInfo));
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    WorkGenerationalId generationalId = RangesKt.generationalId(workSpec);
                    String str = SystemForegroundDispatcher.TAG;
                    Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
                    intent.setAction("ACTION_NOTIFY");
                    intent.putExtra("KEY_NOTIFICATION_ID", foregroundInfo.mNotificationId);
                    intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", foregroundInfo.mForegroundServiceType);
                    intent.putExtra("KEY_NOTIFICATION", foregroundInfo.mNotification);
                    intent.putExtra("KEY_WORKSPEC_ID", generationalId.workSpecId);
                    intent.putExtra("KEY_GENERATION", generationalId.generation);
                    context.startService(intent);
                }
                return null;
        }
    }
}
