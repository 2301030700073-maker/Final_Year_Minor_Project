package net.thunderbird.feature.changelog.internal;

import android.content.SharedPreferences;
import androidx.camera.camera2.pipe.core.WakeLock$release$2;
import de.cketti.changelog.ChangeLog;
import kotlin.ResultKt;
import kotlin.SynchronizedLazyImpl;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChangeLogManager$changeLogFlow$2$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ ChangeLogManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ChangeLogManager$changeLogFlow$2$1(ChangeLogManager changeLogManager, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = changeLogManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        ChangeLogManager changeLogManager = this.this$0;
        switch (i) {
            case 0:
                return new ChangeLogManager$changeLogFlow$2$1(changeLogManager, continuation, 0);
            default:
                return new ChangeLogManager$changeLogFlow$2$1(changeLogManager, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((ChangeLogManager$changeLogFlow$2$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((ChangeLogManager$changeLogFlow$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ChangeLogManager changeLogManager = this.this$0;
        Continuation continuation = null;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    CoroutineDispatcher coroutineDispatcher = changeLogManager.backgroundDispatcher;
                    WakeLock$release$2 wakeLock$release$2 = new WakeLock$release$2(changeLogManager, continuation, 16);
                    this.label = 1;
                    if (JobKt.withContext(coroutineDispatcher, wakeLock$release$2, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            default:
                SynchronizedLazyImpl synchronizedLazyImpl = changeLogManager.changeLog$delegate;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Object value = synchronizedLazyImpl.getValue();
                    value.getClass();
                    ChangeLog changeLog = (ChangeLog) value;
                    changeLog.lastVersionCode = changeLog.currentVersionCode;
                    SharedPreferences.Editor edit = changeLog.preferences.edit();
                    edit.putInt("ckChangeLog_last_version_code", changeLog.currentVersionCode);
                    edit.apply();
                    SharedFlowImpl sharedFlowImpl = changeLogManager.mutableChangeLogFlow;
                    Object value2 = synchronizedLazyImpl.getValue();
                    value2.getClass();
                    this.label = 1;
                    if (sharedFlowImpl.emit((ChangeLog) value2, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
        }
        return coroutineSingletons;
    }
}
