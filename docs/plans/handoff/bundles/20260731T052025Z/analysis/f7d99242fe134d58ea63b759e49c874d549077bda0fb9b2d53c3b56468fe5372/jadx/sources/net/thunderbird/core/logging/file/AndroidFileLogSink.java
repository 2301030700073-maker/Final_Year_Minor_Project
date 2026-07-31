package net.thunderbird.core.logging.file;

import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import java.io.File;
import java.util.ArrayList;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.file.DefaultFileManager;
import net.thunderbird.core.logging.LogEvent;
import net.thunderbird.core.logging.LogLevel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidFileLogSink implements FileLogSink {
    public final ArrayList accumulatedLogs;
    public final ContextScope coroutineScope;
    public final DefaultFileManager fileManager;
    public final LogLevel level;
    public final File logFile;
    public final MutexImpl mutex;

    public AndroidFileLogSink(String str, DefaultFileManager defaultFileManager) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.level = LogLevel.DEBUG;
        this.fileManager = defaultFileManager;
        this.coroutineScope = JobKt.CoroutineScope(defaultIoScheduler.plus(JobKt.SupervisorJob$default()));
        File file = new File(str, "thunderbird-sync-debug".concat(".txt"));
        this.logFile = file;
        this.accumulatedLogs = new ArrayList();
        this.mutex = new MutexImpl();
        File file2 = new File(str);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        file.createNewFile();
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0069, code lost:
    
        if (r8 != r5) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006b, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0050, code lost:
    
        if (r6.writeToLogFile(r0) == r5) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object export$suspendImpl(net.thunderbird.core.logging.file.AndroidFileLogSink r6, com.eygraber.uri.uris.StringUri r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            boolean r0 = r8 instanceof net.thunderbird.core.logging.file.AndroidFileLogSink$export$1
            if (r0 == 0) goto L13
            r0 = r8
            net.thunderbird.core.logging.file.AndroidFileLogSink$export$1 r0 = (net.thunderbird.core.logging.file.AndroidFileLogSink$export$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.core.logging.file.AndroidFileLogSink$export$1 r0 = new net.thunderbird.core.logging.file.AndroidFileLogSink$export$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L3b
            if (r1 == r4) goto L33
            if (r1 != r3) goto L2d
            net.thunderbird.core.logging.file.AndroidFileLogSink r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L6c
        L2d:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r2
        L33:
            com.eygraber.uri.uris.StringUri r7 = r0.L$1
            net.thunderbird.core.logging.file.AndroidFileLogSink r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L53
        L3b:
            kotlin.ResultKt.throwOnFailure(r8)
            java.util.ArrayList r8 = r6.accumulatedLogs
            boolean r8 = r8.isEmpty()
            if (r8 != 0) goto L53
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r4
            java.lang.Object r8 = r6.writeToLogFile(r0)
            if (r8 != r5) goto L53
            goto L6b
        L53:
            java.io.File r8 = r6.logFile
            android.net.Uri r8 = android.net.Uri.fromFile(r8)
            com.eygraber.uri.uris.StringUri r8 = org.slf4j.helpers.Util.toKmpUri(r8)
            net.thunderbird.core.file.DefaultFileManager r1 = r6.fileManager
            r0.L$0 = r6
            r0.L$1 = r2
            r0.label = r3
            net.thunderbird.core.outcome.Outcome r8 = r1.copy(r8, r7)
            if (r8 != r5) goto L6c
        L6b:
            return r5
        L6c:
            net.thunderbird.core.outcome.Outcome r8 = (net.thunderbird.core.outcome.Outcome) r8
            boolean r7 = r8 instanceof net.thunderbird.core.outcome.Outcome.Failure
            if (r7 != 0) goto L9e
            java.io.FileOutputStream r7 = new java.io.FileOutputStream
            java.io.File r6 = r6.logFile
            r7.<init>(r6)
            int r6 = kotlinx.io.JvmCoreKt.$r8$clinit
            kotlinx.io.OutputStreamSink r6 = new kotlinx.io.OutputStreamSink
            r6.<init>(r7)
            kotlinx.io.Buffer r8 = new kotlinx.io.Buffer     // Catch: java.lang.Throwable -> L96
            r8.<init>()     // Catch: java.lang.Throwable -> L96
            r0 = 0
            r6.write(r8, r0)     // Catch: java.lang.Throwable -> L96
            r6.flush()     // Catch: java.lang.Throwable -> L96
            r6.close()
            r7.close()
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L96:
            r8 = move-exception
            r6.close()
            r7.close()
            throw r8
        L9e:
            net.thunderbird.core.outcome.Outcome$Failure r8 = (net.thunderbird.core.outcome.Outcome.Failure) r8
            java.lang.Object r6 = r8.error
            java.lang.String r7 = "Error copying log to destination: "
            androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0.m(r6, r7)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.logging.file.AndroidFileLogSink.export$suspendImpl(net.thunderbird.core.logging.file.AndroidFileLogSink, com.eygraber.uri.uris.StringUri, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // net.thunderbird.core.logging.LogSink
    public final /* bridge */ boolean canLog(LogLevel logLevel) {
        return Sink$CC.$default$canLog(this, logLevel);
    }

    @Override // net.thunderbird.core.logging.LogSink
    public final LogLevel getLevel() {
        return this.level;
    }

    @Override // net.thunderbird.core.logging.LogSink
    public final void log(LogEvent logEvent) {
        JobKt.launch$default(this.coroutineScope, null, null, new NavHostKt$NavHost$25$1(this, logEvent, (Continuation) null, 19), 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeToLogFile(kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r9 = this;
            java.util.ArrayList r0 = r9.accumulatedLogs
            boolean r1 = r10 instanceof net.thunderbird.core.logging.file.AndroidFileLogSink$writeToLogFile$1
            if (r1 == 0) goto L15
            r1 = r10
            net.thunderbird.core.logging.file.AndroidFileLogSink$writeToLogFile$1 r1 = (net.thunderbird.core.logging.file.AndroidFileLogSink$writeToLogFile$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            net.thunderbird.core.logging.file.AndroidFileLogSink$writeToLogFile$1 r1 = new net.thunderbird.core.logging.file.AndroidFileLogSink$writeToLogFile$1
            r1.<init>(r9, r10)
        L1a:
            java.lang.Object r10 = r1.result
            int r2 = r1.label
            r3 = 1
            r6 = 0
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L37
            kotlinx.coroutines.sync.MutexImpl r9 = r1.L$3
            kotlin.jvm.internal.Ref$ObjectRef r2 = r1.L$2
            kotlinx.io.OutputStreamSink r3 = r1.L$1
            java.io.FileOutputStream r1 = r1.L$0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L33
            r10 = r1
            r7 = r2
            r8 = r3
            goto L6a
        L33:
            r0 = move-exception
            r9 = r0
            goto Lb2
        L37:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r6
        L3d:
            kotlin.ResultKt.throwOnFailure(r10)
            java.io.FileOutputStream r10 = new java.io.FileOutputStream
            java.io.File r2 = r9.logFile
            r10.<init>(r2, r3)
            int r2 = kotlinx.io.JvmCoreKt.$r8$clinit
            kotlinx.io.OutputStreamSink r2 = new kotlinx.io.OutputStreamSink
            r2.<init>(r10)
            kotlin.jvm.internal.Ref$ObjectRef r4 = new kotlin.jvm.internal.Ref$ObjectRef
            r4.<init>()
            kotlinx.coroutines.sync.MutexImpl r9 = r9.mutex     // Catch: java.lang.Throwable -> Lae
            r1.L$0 = r10     // Catch: java.lang.Throwable -> Lae
            r1.L$1 = r2     // Catch: java.lang.Throwable -> Lae
            r1.L$2 = r4     // Catch: java.lang.Throwable -> Lae
            r1.L$3 = r9     // Catch: java.lang.Throwable -> Lae
            r1.label = r3     // Catch: java.lang.Throwable -> Lae
            java.lang.Object r1 = r9.lock(r1)     // Catch: java.lang.Throwable -> Lae
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 != r3) goto L68
            return r3
        L68:
            r8 = r2
            r7 = r4
        L6a:
            java.lang.String r1 = "\n"
            java.lang.String r3 = "\n"
            r4 = 0
            r5 = 58
            r2 = 0
            java.lang.String r1 = kotlin.collections.CollectionsKt.joinToString$default(r0, r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> La9
            r7.element = r1     // Catch: java.lang.Throwable -> La9
            r0.clear()     // Catch: java.lang.Throwable -> La9
            r9.unlock(r6)     // Catch: java.lang.Throwable -> La4
            kotlinx.io.Buffer r9 = new kotlinx.io.Buffer     // Catch: java.lang.Throwable -> La4
            r9.<init>()     // Catch: java.lang.Throwable -> La4
            java.lang.Object r0 = r7.element     // Catch: java.lang.Throwable -> La4
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> La4
            java.nio.charset.Charset r1 = kotlin.text.Charsets.UTF_8     // Catch: java.lang.Throwable -> La4
            byte[] r0 = r0.getBytes(r1)     // Catch: java.lang.Throwable -> La4
            r0.getClass()     // Catch: java.lang.Throwable -> La4
            kotlinx.io.Sink$CC.write$default(r9, r0)     // Catch: java.lang.Throwable -> La4
            long r0 = r9.sizeMut     // Catch: java.lang.Throwable -> La4
            r8.write(r9, r0)     // Catch: java.lang.Throwable -> La4
            r8.flush()     // Catch: java.lang.Throwable -> La4
            r8.close()
            r10.close()
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        La4:
            r0 = move-exception
            r9 = r0
            r1 = r10
            r3 = r8
            goto Lb2
        La9:
            r0 = move-exception
            r9.unlock(r6)     // Catch: java.lang.Throwable -> La4
            throw r0     // Catch: java.lang.Throwable -> La4
        Lae:
            r0 = move-exception
            r9 = r0
            r1 = r10
            r3 = r2
        Lb2:
            r3.close()
            r1.close()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.logging.file.AndroidFileLogSink.writeToLogFile(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
