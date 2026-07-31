package androidx.glance.session;

import android.content.Context;
import androidx.glance.appwidget.AppWidgetSession;
import androidx.paging.FlowExtKt$simpleScan$1;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SessionWorkerKt$runSession$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ Context $context$inlined;
    public final /* synthetic */ AppWidgetSession $session$inlined;
    public final /* synthetic */ TimerScopeKt$withTimer$2$1$blockScope$1 $this_runSession$inlined;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SessionWorkerKt$runSession$$inlined$CoroutineExceptionHandler$1(androidx.glance.session.TimerScopeKt$withTimer$2$1$blockScope$1 r2, androidx.glance.appwidget.AppWidgetSession r3, android.content.Context r4) {
        /*
            r1 = this;
            kotlinx.coroutines.Job$Key r0 = kotlinx.coroutines.Job.Key.$$INSTANCE$1
            r1.$this_runSession$inlined = r2
            r1.$session$inlined = r3
            r1.$context$inlined = r4
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.session.SessionWorkerKt$runSession$$inlined$CoroutineExceptionHandler$1.<init>(androidx.glance.session.TimerScopeKt$withTimer$2$1$blockScope$1, androidx.glance.appwidget.AppWidgetSession, android.content.Context):void");
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        AppWidgetSession appWidgetSession = this.$session$inlined;
        Context context = this.$context$inlined;
        TimerScopeKt$withTimer$2$1$blockScope$1 timerScopeKt$withTimer$2$1$blockScope$1 = this.$this_runSession$inlined;
        AwaitKt.launch$default(timerScopeKt$withTimer$2$1$blockScope$1, null, null, new FlowExtKt$simpleScan$1(appWidgetSession, context, th, timerScopeKt$withTimer$2$1$blockScope$1, null, 14, false), 3);
    }
}
