package org.wikipedia.widgets.readingchallenge;

import android.content.Context;
import android.os.Build;
import androidx.glance.appwidget.AppWidgetId;
import androidx.glance.appwidget.GlanceAppWidget$update$4;
import androidx.glance.appwidget.Tracing;
import androidx.glance.appwidget.TracingApi29Impl;
import androidx.glance.session.SessionManagerImpl;
import androidx.glance.session.SessionManagerKt;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingChallengeWidget {
    public final SessionManagerImpl sessionManager = SessionManagerKt.GlanceSessionManager;

    public static Object update$glance_appwidget_release$default(ReadingChallengeWidget readingChallengeWidget, Context context, int i, ContinuationImpl continuationImpl) {
        AtomicBoolean atomicBoolean = Tracing.enabled;
        if (Build.VERSION.SDK_INT >= 29 && Tracing.enabled.get()) {
            TracingApi29Impl.INSTANCE.beginAsyncSection("GlanceAppWidget::update", 0);
        }
        Object runWithLock = readingChallengeWidget.sessionManager.runWithLock(new GlanceAppWidget$update$4(context, new AppWidgetId(i), readingChallengeWidget, (Continuation) null), continuationImpl);
        return runWithLock == CoroutineSingletons.COROUTINE_SUSPENDED ? runWithLock : Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0075, code lost:
    
        if (r8.sessionManager.runWithLock(r2, r0) == r1) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00fb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00fa A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object deleted$glance_appwidget_release(android.content.Context r9, int r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget.deleted$glance_appwidget_release(android.content.Context, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.coroutines.intrinsics.CoroutineSingletons provideGlance(android.content.Context r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget$provideGlance$1
            if (r0 == 0) goto L13
            r0 = r6
            org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget$provideGlance$1 r0 = (org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget$provideGlance$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget$provideGlance$1 r0 = new org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget$provideGlance$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r4 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 == r3) goto L2a
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            return r2
        L2a:
            kotlin.ResultKt.throwOnFailure(r4)
            goto L4d
        L2e:
            kotlin.ResultKt.throwOnFailure(r4)
            org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository r4 = new org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository
            r4.<init>(r5)
            org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda2 r5 = new org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda2
            r1 = 7
            r5.<init>(r1, r4)
            androidx.compose.runtime.internal.ComposableLambdaImpl r4 = new androidx.compose.runtime.internal.ComposableLambdaImpl
            r1 = -683935539(0xffffffffd73bf8cd, float:-2.0667727E14)
            r4.<init>(r5, r3, r1)
            r0.label = r3
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = androidx.room.Room.provideContent(r4, r0)
            if (r4 != r6) goto L4d
            return r6
        L4d:
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$1()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget.provideGlance(android.content.Context, kotlin.coroutines.jvm.internal.ContinuationImpl):kotlin.coroutines.intrinsics.CoroutineSingletons");
    }
}
