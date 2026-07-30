package org.fdroid.download;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Date;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import mu.KLogger;
import mu.KotlinLogging;

/* compiled from: HttpDownloader.kt */
@Deprecated
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000bH\u0014J\u001e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0094@¢\u0006\u0002\u0010\u0016J\b\u0010\u0017\u001a\u00020\u0013H\u0017J\b\u0010\u0018\u001a\u00020\u0013H\u0002J\b\u0010\u0019\u001a\u00020\rH\u0014J\b\u0010\n\u001a\u00020\u000bH\u0017J\b\u0010\u001a\u001a\u00020\u0013H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000e¨\u0006\u001c"}, d2 = {"Lorg/fdroid/download/HttpDownloader;", "Lorg/fdroid/download/Downloader;", "httpManager", "Lorg/fdroid/download/HttpManager;", "request", "Lorg/fdroid/download/DownloadRequest;", "destFile", "Ljava/io/File;", "<init>", "(Lorg/fdroid/download/HttpManager;Lorg/fdroid/download/DownloadRequest;Ljava/io/File;)V", "hasChanged", "", "fileSize", "", "Ljava/lang/Long;", "getInputStream", "Ljava/io/InputStream;", "resumable", "getBytes", "", "receiver", "Lorg/fdroid/download/BytesReceiver;", "(ZLorg/fdroid/download/BytesReceiver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "download", "downloadToFile", "totalDownloadSize", "close", "Companion", "download_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class HttpDownloader extends Downloader {
    private static final Companion Companion = new Companion(null);
    private static final KLogger log = KotlinLogging.INSTANCE.logger(new Function0() { // from class: org.fdroid.download.HttpDownloader$$ExternalSyntheticLambda4
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Unit unit;
            unit = Unit.INSTANCE;
            return unit;
        }
    });
    private Long fileSize;
    private boolean hasChanged;
    private final HttpManager httpManager;
    private final DownloadRequest request;

    @Override // org.fdroid.download.Downloader
    public void close() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpDownloader(HttpManager httpManager, DownloadRequest request, File destFile) {
        super(request.getIndexFile(), destFile);
        Intrinsics.checkNotNullParameter(httpManager, "httpManager");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(destFile, "destFile");
        this.httpManager = httpManager;
        this.request = request;
        this.fileSize = request.getIndexFile().getSize();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HttpDownloader.kt */
    static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KLogger getLog() {
            return HttpDownloader.log;
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
            boolean r0 = r9 instanceof org.fdroid.download.HttpDownloader$getBytes$1
            if (r0 == 0) goto L13
            r0 = r9
            org.fdroid.download.HttpDownloader$getBytes$1 r0 = (org.fdroid.download.HttpDownloader$getBytes$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.fdroid.download.HttpDownloader$getBytes$1 r0 = new org.fdroid.download.HttpDownloader$getBytes$1
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
        throw new UnsupportedOperationException("Method not decompiled: org.fdroid.download.HttpDownloader.getBytes(boolean, org.fdroid.download.BytesReceiver, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // org.fdroid.download.Downloader
    @Deprecated
    public void download() throws IOException, InterruptedException {
        Object runBlocking$default;
        long j;
        runBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new HttpDownloader$download$headInfo$1(this, null), 1, null);
        HeadInfo headInfo = (HeadInfo) runBlocking$default;
        String cacheTag = getCacheTag();
        setCacheTag(headInfo.getETag());
        long contentLength = headInfo.getContentLength();
        if (contentLength == null && (contentLength = this.request.getIndexFile().getSize()) == null) {
            contentLength = -1L;
        }
        this.fileSize = contentLength;
        try {
            j = Date.parse(headInfo.getLastModified()) / 1000;
        } catch (Exception unused) {
            j = 0;
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%x-%x", Arrays.copyOf(new Object[]{Long.valueOf(j), headInfo.getContentLength()}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        if (!headInfo.getETagChanged() || Intrinsics.areEqual(format, cacheTag)) {
            log.debug(new Function0() { // from class: org.fdroid.download.HttpDownloader$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Object download$lambda$0;
                    download$lambda$0 = HttpDownloader.download$lambda$0(HttpDownloader.this);
                    return download$lambda$0;
                }
            });
            this.hasChanged = false;
        } else {
            this.hasChanged = true;
            downloadToFile();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object download$lambda$0(HttpDownloader httpDownloader) {
        return httpDownloader.request.getIndexFile().getName() + " cached, not downloading.";
    }

    private final void downloadToFile() {
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        long length = this.outputFile.length();
        Long l = this.fileSize;
        if (length > (l != null ? l.longValue() : -1L)) {
            if (!this.outputFile.delete()) {
                log.warn(new Function0() { // from class: org.fdroid.download.HttpDownloader$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Object downloadToFile$lambda$1;
                        downloadToFile$lambda$1 = HttpDownloader.downloadToFile$lambda$1();
                        return downloadToFile$lambda$1;
                    }
                });
            }
        } else {
            Long l2 = this.fileSize;
            if (l2 != null && length == l2.longValue() && this.outputFile.isFile()) {
                log.debug(new Function0() { // from class: org.fdroid.download.HttpDownloader$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Object downloadToFile$lambda$2;
                        downloadToFile$lambda$2 = HttpDownloader.downloadToFile$lambda$2(HttpDownloader.this);
                        return downloadToFile$lambda$2;
                    }
                });
                return;
            } else if (length > 0) {
                ref$BooleanRef.element = true;
            }
        }
        log.debug(new Function0() { // from class: org.fdroid.download.HttpDownloader$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Object downloadToFile$lambda$3;
                downloadToFile$lambda$3 = HttpDownloader.downloadToFile$lambda$3(HttpDownloader.this, ref$BooleanRef);
                return downloadToFile$lambda$3;
            }
        });
        BuildersKt__BuildersKt.runBlocking$default(null, new HttpDownloader$downloadToFile$4(this, ref$BooleanRef, null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object downloadToFile$lambda$1() {
        return "Warning: outputFile not deleted";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object downloadToFile$lambda$2(HttpDownloader httpDownloader) {
        return "Already have outputFile, not downloading: " + httpDownloader.outputFile.getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object downloadToFile$lambda$3(HttpDownloader httpDownloader, Ref$BooleanRef ref$BooleanRef) {
        return "Downloading " + httpDownloader.request.getIndexFile().getName() + " (is resumable: " + ref$BooleanRef.element + ")";
    }

    @Override // org.fdroid.download.Downloader
    protected long totalDownloadSize() {
        Long l = this.fileSize;
        if (l != null) {
            return l.longValue();
        }
        return -1L;
    }

    @Override // org.fdroid.download.Downloader
    @Deprecated
    /* renamed from: hasChanged, reason: from getter */
    public boolean getHasChanged() {
        return this.hasChanged;
    }
}
