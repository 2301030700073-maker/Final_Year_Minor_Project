package androidx.work.impl;

import android.content.Context;
import androidx.room.Room;
import androidx.work.Configuration;
import androidx.work.Logger$LogcatLogger;
import androidx.work.Operation$State;
import androidx.work.impl.background.greedy.GreedyScheduler;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.utils.PackageManagerHelper;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import coil3.svg.internal.AndroidSvg;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkManagerImplExtKt$WorkManagerImpl$1 extends FunctionReferenceImpl implements Function6 {
    public static final WorkManagerImplExtKt$WorkManagerImpl$1 INSTANCE = new WorkManagerImplExtKt$WorkManagerImpl$1(6, Operation$State.class, "createSchedulers", "createSchedulers(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;)Ljava/util/List;", 1);

    @Override // kotlin.jvm.functions.Function6
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        Context context = (Context) obj;
        Configuration configuration = (Configuration) obj2;
        WorkManagerTaskExecutor workManagerTaskExecutor = (WorkManagerTaskExecutor) obj3;
        Processor processor = (Processor) obj6;
        context.getClass();
        configuration.getClass();
        processor.getClass();
        String str = Schedulers.TAG;
        SystemJobScheduler systemJobScheduler = new SystemJobScheduler(context, (WorkDatabase) obj4, configuration);
        PackageManagerHelper.setComponentEnabled(context, SystemJobService.class, true);
        Logger$LogcatLogger.get().debug(Schedulers.TAG, "Created SystemJobScheduler and enabled SystemJobService");
        return Room.listOf((Object[]) new Scheduler[]{systemJobScheduler, new GreedyScheduler(context, configuration, (Trackers) obj5, processor, new AndroidSvg(processor, workManagerTaskExecutor), workManagerTaskExecutor)});
    }
}
