package net.thunderbird.app.common.feature;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.logging.file.AndroidFileLogSink;
import net.thunderbird.core.logging.file.FileLogSink;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LoggerLifecycleObserver$onStop$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ FileLogSink $it;
    public final /* synthetic */ int $r8$classId;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LoggerLifecycleObserver$onStop$1$1(FileLogSink fileLogSink, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$it = fileLogSink;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new LoggerLifecycleObserver$onStop$1$1(this.$it, continuation, 0);
            default:
                return new LoggerLifecycleObserver$onStop$1$1(this.$it, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((LoggerLifecycleObserver$onStop$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        FileLogSink fileLogSink = this.$it;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        Continuation continuation = null;
        int i2 = 1;
        switch (i) {
            case 0:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    DefaultScheduler defaultScheduler = Dispatchers.Default;
                    DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
                    LoggerLifecycleObserver$onStop$1$1 loggerLifecycleObserver$onStop$1$1 = new LoggerLifecycleObserver$onStop$1$1(fileLogSink, continuation, i2);
                    this.label = 1;
                    if (JobKt.withContext(defaultIoScheduler, loggerLifecycleObserver$onStop$1$1, this) == coroutineSingletons) {
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                break;
            default:
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    AndroidFileLogSink androidFileLogSink = (AndroidFileLogSink) fileLogSink;
                    if ((!androidFileLogSink.accumulatedLogs.isEmpty() ? androidFileLogSink.writeToLogFile(this) : unit) == coroutineSingletons) {
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                break;
        }
        return unit;
    }
}
