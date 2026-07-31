package coil3.compose;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AsyncImagePreviewHandler$Companion$Default$1 {
    public static final AsyncImagePreviewHandler$Companion$Default$1 INSTANCE = new AsyncImagePreviewHandler$Companion$Default$1();

    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object handle(coil3.RealImageLoader r5, coil3.request.ImageRequest r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof coil3.compose.AsyncImagePreviewHandler$Companion$Default$1$handle$1
            if (r0 == 0) goto L13
            r0 = r7
            coil3.compose.AsyncImagePreviewHandler$Companion$Default$1$handle$1 r0 = (coil3.compose.AsyncImagePreviewHandler$Companion$Default$1$handle$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.compose.AsyncImagePreviewHandler$Companion$Default$1$handle$1 r0 = new coil3.compose.AsyncImagePreviewHandler$Companion$Default$1$handle$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r4 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L30
            if (r1 != r2) goto L2a
            coil3.request.ImageRequest r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r4)
            goto L3e
        L2a:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            return r3
        L30:
            kotlin.ResultKt.throwOnFailure(r4)
            r0.L$0 = r6
            r0.label = r2
            java.lang.Object r4 = r5.execute(r6, r0)
            if (r4 != r7) goto L3e
            return r7
        L3e:
            coil3.request.ImageResult r4 = (coil3.request.ImageResult) r4
            boolean r5 = r4 instanceof coil3.request.SuccessResult
            if (r5 == 0) goto L54
            coil3.compose.AsyncImagePainter$State$Success r5 = new coil3.compose.AsyncImagePainter$State$Success
            coil3.request.SuccessResult r4 = (coil3.request.SuccessResult) r4
            coil3.Image r7 = r4.image
            android.content.Context r6 = r6.context
            androidx.compose.ui.graphics.painter.Painter r6 = coil3.compose.AsyncImageKt.m777asPainter55t9rM(r7, r6)
            r5.<init>(r6, r4)
            return r5
        L54:
            boolean r5 = r4 instanceof coil3.request.ErrorResult
            if (r5 == 0) goto L6a
            coil3.compose.AsyncImagePainter$State$Error r5 = new coil3.compose.AsyncImagePainter$State$Error
            coil3.request.ErrorResult r4 = (coil3.request.ErrorResult) r4
            coil3.Image r7 = r4.image
            if (r7 == 0) goto L66
            android.content.Context r6 = r6.context
            androidx.compose.ui.graphics.painter.Painter r3 = coil3.compose.AsyncImageKt.m777asPainter55t9rM(r7, r6)
        L66:
            r5.<init>(r3, r4)
            return r5
        L6a:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.compose.AsyncImagePreviewHandler$Companion$Default$1.handle(coil3.RealImageLoader, coil3.request.ImageRequest, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
