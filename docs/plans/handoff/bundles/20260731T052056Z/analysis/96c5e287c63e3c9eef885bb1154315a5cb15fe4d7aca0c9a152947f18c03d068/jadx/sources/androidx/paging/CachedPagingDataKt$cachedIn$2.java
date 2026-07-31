package androidx.paging;

import android.os.Bundle;
import androidx.glance.appwidget.AppWidgetSession;
import androidx.work.impl.constraints.ConstraintsState;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.FlowCollector;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CachedPagingDataKt$cachedIn$2 extends SuspendLambda implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public /* synthetic */ Object L$1;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CachedPagingDataKt$cachedIn$2(int i, Object obj, Continuation continuation) {
        super(3, continuation);
        this.$r8$classId = i;
        this.L$1 = obj;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        int i2 = 3;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                CachedPagingDataKt$cachedIn$2 cachedPagingDataKt$cachedIn$2 = new CachedPagingDataKt$cachedIn$2(i2, 0, (Continuation) obj3);
                cachedPagingDataKt$cachedIn$2.L$0 = (MulticastedPagingData) obj;
                cachedPagingDataKt$cachedIn$2.L$1 = (MulticastedPagingData) obj2;
                return cachedPagingDataKt$cachedIn$2.invokeSuspend(unit);
            case 1:
                int i3 = 1;
                CachedPagingDataKt$cachedIn$2 cachedPagingDataKt$cachedIn$22 = new CachedPagingDataKt$cachedIn$2(i3, (Bundle) this.L$1, (Continuation) obj3);
                cachedPagingDataKt$cachedIn$22.L$0 = (AppWidgetSession) obj2;
                return cachedPagingDataKt$cachedIn$22.invokeSuspend(unit);
            case 2:
                int i4 = 2;
                CachedPagingDataKt$cachedIn$2 cachedPagingDataKt$cachedIn$23 = new CachedPagingDataKt$cachedIn$2(i4, (String) this.L$1, (Continuation) obj3);
                cachedPagingDataKt$cachedIn$23.L$0 = (AppWidgetSession) obj2;
                return cachedPagingDataKt$cachedIn$23.invokeSuspend(unit);
            default:
                CachedPagingDataKt$cachedIn$2 cachedPagingDataKt$cachedIn$24 = new CachedPagingDataKt$cachedIn$2(i2, i2, (Continuation) obj3);
                cachedPagingDataKt$cachedIn$24.L$0 = (FlowCollector) obj;
                cachedPagingDataKt$cachedIn$24.L$1 = (Object[]) obj2;
                return cachedPagingDataKt$cachedIn$24.invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ConstraintsState constraintsState;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ConstraintsState constraintsState2 = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 != 0) {
                    if (i2 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    MulticastedPagingData multicastedPagingData = (MulticastedPagingData) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    return multicastedPagingData;
                }
                ResultKt.throwOnFailure(obj);
                MulticastedPagingData multicastedPagingData2 = (MulticastedPagingData) this.L$0;
                MulticastedPagingData multicastedPagingData3 = (MulticastedPagingData) this.L$1;
                this.L$0 = multicastedPagingData3;
                this.label = 1;
                ((StandaloneCoroutine) multicastedPagingData2.accumulated.body).cancel(null);
                return unit == coroutineSingletons ? coroutineSingletons : multicastedPagingData3;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                AppWidgetSession appWidgetSession = (AppWidgetSession) this.L$0;
                Bundle bundle = (Bundle) this.L$1;
                this.label = 1;
                appWidgetSession.getClass();
                Object sendEvent = appWidgetSession.sendEvent(new AppWidgetSession.UpdateAppWidgetOptions(bundle), this);
                if (sendEvent != coroutineSingletons2) {
                    sendEvent = unit;
                }
                return sendEvent == coroutineSingletons2 ? coroutineSingletons2 : unit;
            case 2:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                AppWidgetSession appWidgetSession2 = (AppWidgetSession) this.L$0;
                String str = (String) this.L$1;
                this.label = 1;
                appWidgetSession2.getClass();
                Object sendEvent2 = appWidgetSession2.sendEvent(new AppWidgetSession.RunLambda(str), this);
                if (sendEvent2 != coroutineSingletons3) {
                    sendEvent2 = unit;
                }
                return sendEvent2 == coroutineSingletons3 ? coroutineSingletons3 : unit;
            default:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i5 = this.label;
                if (i5 != 0) {
                    if (i5 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return unit;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                FlowCollector flowCollector = (FlowCollector) this.L$0;
                ConstraintsState[] constraintsStateArr = (ConstraintsState[]) ((Object[]) this.L$1);
                int length = constraintsStateArr.length;
                int i6 = 0;
                while (true) {
                    constraintsState = ConstraintsState.ConstraintsMet.INSTANCE;
                    if (i6 < length) {
                        ConstraintsState constraintsState3 = constraintsStateArr[i6];
                        if (Intrinsics.areEqual(constraintsState3, constraintsState)) {
                            i6++;
                        } else {
                            constraintsState2 = constraintsState3;
                        }
                    }
                }
                if (constraintsState2 != null) {
                    constraintsState = constraintsState2;
                }
                this.label = 1;
                return flowCollector.emit(constraintsState, this) == coroutineSingletons4 ? coroutineSingletons4 : unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CachedPagingDataKt$cachedIn$2(int i, int i2, Continuation continuation) {
        super(i, continuation);
        this.$r8$classId = i2;
    }
}
