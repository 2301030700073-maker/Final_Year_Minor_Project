package androidx.glance.appwidget;

import android.content.Context;
import androidx.glance.session.SessionManagerImpl$scope$1;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProducerCoroutine;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GlanceAppWidget$update$4 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Context $context;
    public final /* synthetic */ AppWidgetId $glanceId;
    public final /* synthetic */ int $r8$classId = 0;
    public /* synthetic */ Object L$0;
    public int label;
    public final /* synthetic */ ReadingChallengeWidget this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlanceAppWidget$update$4(Context context, AppWidgetId appWidgetId, ReadingChallengeWidget readingChallengeWidget, Continuation continuation) {
        super(2, continuation);
        this.$context = context;
        this.$glanceId = appWidgetId;
        this.this$0 = readingChallengeWidget;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        AppWidgetId appWidgetId = this.$glanceId;
        Context context = this.$context;
        ReadingChallengeWidget readingChallengeWidget = this.this$0;
        switch (i) {
            case 0:
                GlanceAppWidget$update$4 glanceAppWidget$update$4 = new GlanceAppWidget$update$4(context, appWidgetId, readingChallengeWidget, continuation);
                glanceAppWidget$update$4.L$0 = obj;
                return glanceAppWidget$update$4;
            default:
                GlanceAppWidget$update$4 glanceAppWidget$update$42 = new GlanceAppWidget$update$4(readingChallengeWidget, context, appWidgetId, continuation);
                glanceAppWidget$update$42.L$0 = obj;
                return glanceAppWidget$update$42;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((GlanceAppWidget$update$4) create((SessionManagerImpl$scope$1) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((GlanceAppWidget$update$4) create((ProducerCoroutine) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x007e, code lost:
    
        if (r12 == r6) goto L34;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            int r0 = r11.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r3 = 1
            r4 = 0
            switch(r0) {
                case 0: goto L45;
                default: goto Lb;
            }
        Lb:
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r11.label
            if (r5 == 0) goto L1c
            if (r5 != r3) goto L17
            kotlin.ResultKt.throwOnFailure(r12)
            goto L44
        L17:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r2)
            r1 = r4
            goto L44
        L1c:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.Object r12 = r11.L$0
            kotlinx.coroutines.channels.ProducerCoroutine r12 = (kotlinx.coroutines.channels.ProducerCoroutine) r12
            java.util.concurrent.atomic.AtomicReference r2 = new java.util.concurrent.atomic.AtomicReference
            r8 = 0
            r2.<init>(r8)
            androidx.glance.appwidget.AppWidgetUtilsKt$runGlance$1$receiver$1 r10 = new androidx.glance.appwidget.AppWidgetUtilsKt$runGlance$1$receiver$1
            r10.<init>(r2, r12)
            androidx.paging.SingleRunner$runInIsolation$2 r4 = new androidx.paging.SingleRunner$runInIsolation$2
            androidx.glance.appwidget.AppWidgetId r7 = r11.$glanceId
            r9 = 19
            org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget r5 = r11.this$0
            android.content.Context r6 = r11.$context
            r4.<init>(r5, r6, r7, r8, r9)
            r11.label = r3
            java.lang.Object r11 = kotlinx.coroutines.AwaitKt.withContext(r10, r4, r11)
            if (r11 != r0) goto L44
            r1 = r0
        L44:
            return r1
        L45:
            androidx.glance.appwidget.AppWidgetId r0 = r11.$glanceId
            int r5 = r0.appWidgetId
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r7 = r11.label
            android.content.Context r8 = r11.$context
            r9 = 3
            r10 = 2
            if (r7 == 0) goto L6a
            if (r7 == r3) goto L62
            if (r7 == r10) goto L59
            if (r7 != r9) goto L5d
        L59:
            kotlin.ResultKt.throwOnFailure(r12)
            goto Lbd
        L5d:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r2)
            r1 = r4
            goto Lbd
        L62:
            java.lang.Object r2 = r11.L$0
            androidx.glance.session.SessionManagerImpl$scope$1 r2 = (androidx.glance.session.SessionManagerImpl$scope$1) r2
            kotlin.ResultKt.throwOnFailure(r12)
            goto L81
        L6a:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.Object r12 = r11.L$0
            r2 = r12
            androidx.glance.session.SessionManagerImpl$scope$1 r2 = (androidx.glance.session.SessionManagerImpl$scope$1) r2
            java.lang.String r12 = kotlin.UnsignedKt.createUniqueRemoteUiName(r5)
            r11.L$0 = r2
            r11.label = r3
            java.lang.Object r12 = r2.isSessionRunning(r8, r12, r11)
            if (r12 != r6) goto L81
            goto Lbc
        L81:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 != 0) goto L9d
            androidx.glance.appwidget.AppWidgetSession r12 = new androidx.glance.appwidget.AppWidgetSession
            org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget r3 = r11.this$0
            r5 = 248(0xf8, float:3.48E-43)
            r12.<init>(r3, r0, r4, r5)
            r11.L$0 = r4
            r11.label = r10
            java.lang.Object r11 = r2.startSession(r8, r12, r11)
            if (r11 != r6) goto Lbd
            goto Lbc
        L9d:
            java.lang.String r12 = kotlin.UnsignedKt.createUniqueRemoteUiName(r5)
            java.util.LinkedHashMap r0 = r2.sessions
            java.lang.Object r12 = r0.get(r12)
            androidx.glance.appwidget.AppWidgetSession r12 = (androidx.glance.appwidget.AppWidgetSession) r12
            r12.getClass()
            r11.L$0 = r4
            r11.label = r9
            androidx.glance.appwidget.AppWidgetSession$UpdateGlanceState r0 = androidx.glance.appwidget.AppWidgetSession.UpdateGlanceState.INSTANCE
            java.lang.Object r11 = r12.sendEvent(r0, r11)
            if (r11 != r6) goto Lb9
            goto Lba
        Lb9:
            r11 = r1
        Lba:
            if (r11 != r6) goto Lbd
        Lbc:
            r1 = r6
        Lbd:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.GlanceAppWidget$update$4.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlanceAppWidget$update$4(ReadingChallengeWidget readingChallengeWidget, Context context, AppWidgetId appWidgetId, Continuation continuation) {
        super(2, continuation);
        this.this$0 = readingChallengeWidget;
        this.$context = context;
        this.$glanceId = appWidgetId;
    }
}
