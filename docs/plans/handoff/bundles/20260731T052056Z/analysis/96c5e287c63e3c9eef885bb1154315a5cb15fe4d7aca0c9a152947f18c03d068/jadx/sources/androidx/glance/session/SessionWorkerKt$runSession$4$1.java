package androidx.glance.session;

import android.content.Context;
import androidx.compose.runtime.Recomposer;
import androidx.glance.appwidget.AppWidgetSession;
import androidx.glance.appwidget.RemoteViewsRoot;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SessionWorkerKt$runSession$4$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ CoroutineScope $$this$launch;
    public final /* synthetic */ Context $context;
    public final /* synthetic */ Ref$LongRef $lastRecomposeCount;
    public final /* synthetic */ Recomposer $recomposer;
    public final /* synthetic */ RemoteViewsRoot $root;
    public final /* synthetic */ AppWidgetSession $session;
    public final /* synthetic */ TimerScopeKt$withTimer$2$1$blockScope$1 $this_runSession;
    public final /* synthetic */ TimeoutOptions $timeouts;
    public final /* synthetic */ StateFlowImpl $uiReady;
    public /* synthetic */ Object L$0;
    public int label;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Recomposer.State.values().length];
            try {
                iArr[Recomposer.State.Idle.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Recomposer.State.ShutDown.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SessionWorkerKt$runSession$4$1(AppWidgetSession appWidgetSession, Recomposer recomposer, Ref$LongRef ref$LongRef, StateFlowImpl stateFlowImpl, Context context, RemoteViewsRoot remoteViewsRoot, TimerScopeKt$withTimer$2$1$blockScope$1 timerScopeKt$withTimer$2$1$blockScope$1, TimeoutOptions timeoutOptions, CoroutineScope coroutineScope, Continuation continuation) {
        super(2, continuation);
        this.$session = appWidgetSession;
        this.$recomposer = recomposer;
        this.$lastRecomposeCount = ref$LongRef;
        this.$uiReady = stateFlowImpl;
        this.$context = context;
        this.$root = remoteViewsRoot;
        this.$this_runSession = timerScopeKt$withTimer$2$1$blockScope$1;
        this.$timeouts = timeoutOptions;
        this.$$this$launch = coroutineScope;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SessionWorkerKt$runSession$4$1 sessionWorkerKt$runSession$4$1 = new SessionWorkerKt$runSession$4$1(this.$session, this.$recomposer, this.$lastRecomposeCount, this.$uiReady, this.$context, this.$root, this.$this_runSession, this.$timeouts, this.$$this$launch, continuation);
        sessionWorkerKt$runSession$4$1.L$0 = obj;
        return sessionWorkerKt$runSession$4$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SessionWorkerKt$runSession$4$1) create((Recomposer.State) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0081, code lost:
    
        if (r3 == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0083, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0063, code lost:
    
        if (r12 == r0) goto L28;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r11.label
            r2 = 0
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            kotlin.jvm.internal.Ref$LongRef r4 = r11.$lastRecomposeCount
            androidx.compose.runtime.Recomposer r5 = r11.$recomposer
            kotlinx.coroutines.flow.StateFlowImpl r6 = r11.$uiReady
            r7 = 2
            r8 = 1
            if (r1 == 0) goto L23
            if (r1 == r8) goto L1f
            if (r1 != r7) goto L19
            kotlin.ResultKt.throwOnFailure(r12)
            goto L84
        L19:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r11)
            return r2
        L1f:
            kotlin.ResultKt.throwOnFailure(r12)
            goto L66
        L23:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.Object r12 = r11.L$0
            androidx.compose.runtime.Recomposer$State r12 = (androidx.compose.runtime.Recomposer.State) r12
            int[] r1 = androidx.glance.session.SessionWorkerKt$runSession$4$1.WhenMappings.$EnumSwitchMapping$0
            int r12 = r12.ordinal()
            r12 = r1[r12]
            if (r12 == r8) goto L3d
            if (r12 == r7) goto L37
            return r3
        L37:
            kotlinx.coroutines.CoroutineScope r11 = r11.$$this$launch
            kotlinx.coroutines.AwaitKt.cancel(r11, r2)
            return r3
        L3d:
            long r1 = r5.changeCount
            long r9 = r4.element
            int r12 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r12 > 0) goto L51
            java.lang.Object r12 = r6.getValue()
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 != 0) goto L8d
        L51:
            androidx.glance.appwidget.RemoteViewsRoot r12 = r11.$root
            androidx.glance.Emittable r12 = r12.copy()
            androidx.glance.EmittableWithChildren r12 = (androidx.glance.EmittableWithChildren) r12
            r11.label = r8
            androidx.glance.appwidget.AppWidgetSession r1 = r11.$session
            android.content.Context r2 = r11.$context
            java.lang.Object r12 = r1.processEmittableTree(r2, r12, r11)
            if (r12 != r0) goto L66
            goto L83
        L66:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            java.lang.Object r1 = r6.getValue()
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 != 0) goto L8d
            if (r12 == 0) goto L8d
            java.lang.Boolean r12 = java.lang.Boolean.TRUE
            r11.label = r7
            r6.emit(r12, r11)
            if (r3 != r0) goto L84
        L83:
            return r0
        L84:
            androidx.glance.session.TimeoutOptions r12 = r11.$timeouts
            long r0 = r12.initialTimeout
            androidx.glance.session.TimerScopeKt$withTimer$2$1$blockScope$1 r11 = r11.$this_runSession
            r11.m751startTimerLRDsOJo(r0)
        L8d:
            long r11 = r5.changeCount
            r4.element = r11
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.session.SessionWorkerKt$runSession$4$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
