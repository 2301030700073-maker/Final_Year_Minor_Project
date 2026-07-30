package org.fdroid.download;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import mu.KLogger;
import mu.KotlinLogging;

/* compiled from: HttpDownloaderV2.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0014J\u001e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0094@¢\u0006\u0002\u0010\u0012J\b\u0010\u0013\u001a\u00020\u000fH\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0014J\b\u0010\u0016\u001a\u00020\rH\u0017J\b\u0010\u0017\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lorg/fdroid/download/HttpDownloaderV2;", "Lorg/fdroid/download/Downloader;", "httpManager", "Lorg/fdroid/download/HttpManager;", "request", "Lorg/fdroid/download/DownloadRequest;", "destFile", "Ljava/io/File;", "<init>", "(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/io/File;)V", "getInputStream", "Ljava/io/InputStream;", "resumable", "", "getBytes", "", "receiver", "Lorg/fdroid/download/BytesReceiver;", "(ZLorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "download", "totalDownloadSize", "", "hasChanged", "close", "Companion", "download_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class HttpDownloaderV2 extends Downloader {
    private static final Companion Companion = new Companion(null);
    private static final KLogger log = KotlinLogging.INSTANCE.logger(new Function0() { // from class: org.fdroid.download.HttpDownloaderV2$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Unit unit;
            unit = Unit.INSTANCE;
            return unit;
        }
    });
    private final HttpManager httpManager;
    private final DownloadRequest request;

    @Override // org.fdroid.download.Downloader
    public void close() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpDownloaderV2(HttpManager httpManager, DownloadRequest request, File destFile) {
        super(request.getIndexFile(), destFile);
        Intrinsics.checkNotNullParameter(httpManager, "httpManager");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(destFile, "destFile");
        this.httpManager = httpManager;
        this.request = request;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HttpDownloaderV2.kt */
    static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KLogger getLog() {
            return HttpDownloaderV2.log;
        }
    }

    @Override // org.fdroid.download.Downloader
    protected InputStream getInputStream(boolean resumable) {
        throw new NotImplementedError("Use getInputStreamSuspend instead.");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    @Override // org.fdroid.download.Downloader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.Object getBytes(boolean r7, org.fdroid.download.BytesReceiver r8, kotlin.coroutines.Continuation r9) throws java.io.IOException, org.fdroid.download.NoResumeException, org.fdroid.download.NotFoundException {
        /*
            r6 = this;
            boolean r0 = r9 instanceof org.fdroid.download.HttpDownloaderV2$getBytes$1
            if (r0 == 0) goto L13
            r0 = r9
            org.fdroid.download.HttpDownloaderV2$getBytes$1 r0 = (org.fdroid.download.HttpDownloaderV2$getBytes$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.fdroid.download.HttpDownloaderV2$getBytes$1 r0 = new org.fdroid.download.HttpDownloaderV2$getBytes$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: io.ktor.client.plugins.ResponseException -> L29
            goto L51
        L29:
            r7 = move-exception
            goto L54
        L2b:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L33:
            kotlin.ResultKt.throwOnFailure(r9)
            if (r7 == 0) goto L43
            java.io.File r7 = r6.outputFile
            long r4 = r7.length()
            java.lang.Long r7 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r4)
            goto L44
        L43:
            r7 = 0
        L44:
            org.fdroid.download.HttpManager r9 = r6.httpManager     // Catch: io.ktor.client.plugins.ResponseException -> L29
            org.fdroid.download.DownloadRequest r2 = r6.request     // Catch: io.ktor.client.plugins.ResponseException -> L29
            r0.label = r3     // Catch: io.ktor.client.plugins.ResponseException -> L29
            java.lang.Object r7 = r9.get(r2, r7, r8, r0)     // Catch: io.ktor.client.plugins.ResponseException -> L29
            if (r7 != r1) goto L51
            return r1
        L51:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L54:
            io.ktor.client.statement.HttpResponse r8 = r7.getResponse()
            io.ktor.http.HttpStatusCode r8 = r8.getStatus()
            io.ktor.http.HttpStatusCode$Companion r9 = io.ktor.http.HttpStatusCode.Companion
            io.ktor.http.HttpStatusCode r9 = r9.getNotFound()
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r9)
            if (r8 == 0) goto L6e
            org.fdroid.download.NotFoundException r8 = new org.fdroid.download.NotFoundException
            r8.<init>(r7)
            throw r8
        L6e:
            java.io.IOException r8 = new java.io.IOException
            r8.<init>(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fdroid.download.HttpDownloaderV2.getBytes(boolean, org.fdroid.download.BytesReceiver, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // org.fdroid.download.Downloader
    public void download() throws IOException, InterruptedException, NotFoundException {
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        long length = this.outputFile.length();
        Long size = this.request.getIndexFile().getSize();
        if (length > (size != null ? size.longValue() : -1L)) {
            if (!this.outputFile.delete()) {
                log.warn(new Function0() { // from class: org.fdroid.download.HttpDownloaderV2$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Object download$lambda$0;
                        download$lambda$0 = HttpDownloaderV2.download$lambda$0();
                        return download$lambda$0;
                    }
                });
            }
        } else {
            Long size2 = this.request.getIndexFile().getSize();
            if (size2 != null && length == size2.longValue() && this.outputFile.isFile()) {
                log.debug(new Function0() { // from class: org.fdroid.download.HttpDownloaderV2$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Object download$lambda$1;
                        download$lambda$1 = HttpDownloaderV2.download$lambda$1(HttpDownloaderV2.this);
                        return download$lambda$1;
                    }
                });
                return;
            } else if (length > 0) {
                ref$BooleanRef.element = true;
            }
        }
        log.debug(new Function0() { // from class: org.fdroid.download.HttpDownloaderV2$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Object download$lambda$2;
                download$lambda$2 = HttpDownloaderV2.download$lambda$2(HttpDownloaderV2.this, ref$BooleanRef);
                return download$lambda$2;
            }
        });
        BuildersKt__BuildersKt.runBlocking$default(null, new HttpDownloaderV2$download$4(this, ref$BooleanRef, null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object download$lambda$0() {
        return "Warning: outputFile not deleted";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object download$lambda$1(HttpDownloaderV2 httpDownloaderV2) {
        return "Already have outputFile, not downloading: " + httpDownloaderV2.outputFile.getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object download$lambda$2(HttpDownloaderV2 httpDownloaderV2, Ref$BooleanRef ref$BooleanRef) {
        return "Downloading " + httpDownloaderV2.request.getIndexFile().getName() + " (is resumable: " + ref$BooleanRef.element + ")";
    }

    @Override // org.fdroid.download.Downloader
    protected long totalDownloadSize() {
        Long size = this.request.getIndexFile().getSize();
        if (size != null) {
            return size.longValue();
        }
        return -1L;
    }

    @Override // org.fdroid.download.Downloader
    @Deprecated
    public boolean hasChanged() {
        throw new IllegalStateException("hasChanged() was called for V2 where it should not be needed.");
    }
}
