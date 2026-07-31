package org.wikipedia.widgets.readingchallenge;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.os.Bundle;
import androidx.glance.appwidget.GlanceAppWidgetReceiver$onDeleted$1;
import androidx.glance.appwidget.GlanceAppWidgetReceiver$onReceive$1$1;
import androidx.paging.FlowExtKt$simpleScan$1;
import androidx.paging.PageFetcher$flow$1;
import androidx.room.TransactionExecutor;
import androidx.work.OperationKt;
import androidx.work.SystemClock;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkManagerImpl$$ExternalSyntheticLambda0;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.wikipedia.R;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000B\u0007¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0003"}, d2 = {"Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReadingChallengeWidgetReceiver extends AppWidgetProvider {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final DefaultScheduler coroutineContext = Dispatchers.Default;

    @Override // android.appwidget.AppWidgetProvider
    public final void onAppWidgetOptionsChanged(Context context, AppWidgetManager appWidgetManager, int i, Bundle bundle) {
        RegexKt.goAsync(this, this.coroutineContext, new GlanceAppWidgetReceiver$onReceive$1$1(this, context, i, bundle, (Continuation) null, 1));
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onDeleted(Context context, int[] iArr) {
        RegexKt.goAsync(this, this.coroutineContext, new GlanceAppWidgetReceiver$onDeleted$1(this, context, iArr, null));
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onDisabled(Context context) {
        context.getClass();
        super.onDisabled(context);
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, false);
        WorkManagerImpl instance$1 = WorkManagerImpl.getInstance$1(context);
        SystemClock systemClock = instance$1.mConfiguration.tracer;
        String concat = "CancelWorkByName_".concat("ReadingChallengeWidgetWorker");
        TransactionExecutor transactionExecutor = instance$1.mWorkTaskExecutor.mBackgroundExecutor;
        transactionExecutor.getClass();
        OperationKt.launchOperation(systemClock, concat, transactionExecutor, new WorkManagerImpl$$ExternalSyntheticLambda0(instance$1, 1));
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onEnabled(Context context) {
        context.getClass();
        super.onEnabled(context);
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, true);
        StreakProgressBarKt.scheduleNextWidgetUpdate(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0080 A[Catch: all -> 0x00a7, CancellationException -> 0x00b0, TryCatch #2 {CancellationException -> 0x00b0, all -> 0x00a7, blocks: (B:3:0x0002, B:5:0x0008, B:11:0x001f, B:14:0x0028, B:16:0x0030, B:18:0x0039, B:21:0x0048, B:22:0x004f, B:23:0x0050, B:24:0x0057, B:25:0x0058, B:28:0x00a3, B:30:0x006e, B:32:0x0080, B:34:0x008b, B:35:0x0097, B:37:0x0093, B:38:0x009b, B:39:0x00a2, B:40:0x0063), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009b A[Catch: all -> 0x00a7, CancellationException -> 0x00b0, TryCatch #2 {CancellationException -> 0x00b0, all -> 0x00a7, blocks: (B:3:0x0002, B:5:0x0008, B:11:0x001f, B:14:0x0028, B:16:0x0030, B:18:0x0039, B:21:0x0048, B:22:0x004f, B:23:0x0050, B:24:0x0057, B:25:0x0058, B:28:0x00a3, B:30:0x006e, B:32:0x0080, B:34:0x008b, B:35:0x0097, B:37:0x0093, B:38:0x009b, B:39:0x00a2, B:40:0x0063), top: B:2:0x0002 }] */
    @Override // android.appwidget.AppWidgetProvider, android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onReceive(android.content.Context r9, android.content.Intent r10) {
        /*
            r8 = this;
            java.lang.String r0 = "appWidgetIds"
            java.lang.String r1 = r10.getAction()     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            if (r1 == 0) goto L1b
            int r2 = r1.hashCode()     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            r3 = -19011148(0xfffffffffedde9b4, float:-1.4748642E38)
            if (r2 == r3) goto L63
            r3 = 649033583(0x26af776f, float:1.2175437E-15)
            if (r2 == r3) goto L58
            r0 = 1989767543(0x76997177, float:1.5560991E33)
            if (r2 == r0) goto L1f
        L1b:
            r2 = r8
            r3 = r9
            goto La3
        L1f:
            java.lang.String r0 = "ACTION_TRIGGER_LAMBDA"
            boolean r0 = r1.equals(r0)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            if (r0 != 0) goto L28
            goto L1b
        L28:
            java.lang.String r0 = "EXTRA_ACTION_KEY"
            java.lang.String r5 = r10.getStringExtra(r0)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            if (r5 == 0) goto L50
            java.lang.String r0 = "EXTRA_APPWIDGET_ID"
            r1 = -1
            int r4 = r10.getIntExtra(r0, r1)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            if (r4 == r1) goto L48
            kotlinx.coroutines.scheduling.DefaultScheduler r10 = r8.coroutineContext     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            androidx.glance.appwidget.GlanceAppWidgetReceiver$onReceive$1$1 r1 = new androidx.glance.appwidget.GlanceAppWidgetReceiver$onReceive$1$1     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            r6 = 0
            r7 = 0
            r2 = r8
            r3 = r9
            r1.<init>(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            kotlin.text.RegexKt.goAsync(r2, r10, r1)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            return
        L48:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            java.lang.String r9 = "Intent is missing AppWidgetId extra"
            r8.<init>(r9)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            throw r8     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
        L50:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            java.lang.String r9 = "Intent is missing ActionKey extra"
            r8.<init>(r9)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            throw r8     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
        L58:
            r2 = r8
            r3 = r9
            java.lang.String r8 = "androidx.glance.appwidget.action.DEBUG_UPDATE"
            boolean r8 = r1.equals(r8)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            if (r8 != 0) goto L6e
            goto La3
        L63:
            r2 = r8
            r3 = r9
            java.lang.String r8 = "android.intent.action.LOCALE_CHANGED"
            boolean r8 = r1.equals(r8)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            if (r8 != 0) goto L6e
            goto La3
        L6e:
            android.appwidget.AppWidgetManager r8 = android.appwidget.AppWidgetManager.getInstance(r3)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            java.lang.String r9 = r3.getPackageName()     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            java.lang.Class r1 = r2.getClass()     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            java.lang.String r1 = r1.getCanonicalName()     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            if (r1 == 0) goto L9b
            android.content.ComponentName r4 = new android.content.ComponentName     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            r4.<init>(r9, r1)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            boolean r9 = r10.hasExtra(r0)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            if (r9 == 0) goto L93
            int[] r9 = r10.getIntArrayExtra(r0)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            r9.getClass()     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            goto L97
        L93:
            int[] r9 = r8.getAppWidgetIds(r4)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
        L97:
            r2.onUpdate(r3, r8, r9)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            return
        L9b:
            java.lang.String r8 = "no canonical name"
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            r9.<init>(r8)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            throw r9     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
        La3:
            super.onReceive(r3, r10)     // Catch: java.lang.Throwable -> La7 java.util.concurrent.CancellationException -> Lb0
            return
        La7:
            r0 = move-exception
            r8 = r0
            java.lang.String r9 = "GlanceAppWidget"
            java.lang.String r10 = "Error in Glance App Widget"
            android.util.Log.e(r9, r10, r8)
        Lb0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetReceiver.onReceive(android.content.Context, android.content.Intent):void");
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        RegexKt.goAsync(this, this.coroutineContext, new FlowExtKt$simpleScan$1(this, context, iArr, (Continuation) null, 11));
    }

    public final void updateManager(CoroutineScope coroutineScope, Context context) {
        AwaitKt.launch$default(coroutineScope, null, null, new PageFetcher$flow$1(context, this, null, 2), 3);
    }
}
