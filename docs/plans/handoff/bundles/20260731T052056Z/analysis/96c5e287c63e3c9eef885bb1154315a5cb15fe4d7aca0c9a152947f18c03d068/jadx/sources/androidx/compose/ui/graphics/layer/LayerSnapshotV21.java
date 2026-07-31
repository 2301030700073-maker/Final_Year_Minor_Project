package androidx.compose.ui.graphics.layer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayerSnapshotV21 implements LayerSnapshotImpl {
    public static final /* synthetic */ LayerSnapshotV21 $$INSTANCE = new LayerSnapshotV21(1);
    public static final LayerSnapshotV21 INSTANCE = new LayerSnapshotV21(0);
    public static final LayerSnapshotV21 INSTANCE$1 = new LayerSnapshotV21(2);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ LayerSnapshotV21(int i) {
        this.$r8$classId = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0041  */
    @Override // androidx.compose.ui.graphics.layer.LayerSnapshotImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object toBitmap(androidx.compose.ui.graphics.layer.GraphicsLayer r12, kotlin.coroutines.Continuation r13) {
        /*
            r11 = this;
            int r0 = r11.$r8$classId
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r3 = 32
            r4 = 0
            switch(r0) {
                case 0: goto Lb9;
                default: goto Ld;
            }
        Ld:
            boolean r0 = r13 instanceof androidx.compose.ui.graphics.layer.LayerSnapshotV22$toBitmap$1
            if (r0 == 0) goto L20
            r0 = r13
            androidx.compose.ui.graphics.layer.LayerSnapshotV22$toBitmap$1 r0 = (androidx.compose.ui.graphics.layer.LayerSnapshotV22$toBitmap$1) r0
            int r5 = r0.label
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            r7 = r5 & r6
            if (r7 == 0) goto L20
            int r5 = r5 - r6
            r0.label = r5
            goto L27
        L20:
            androidx.compose.ui.graphics.layer.LayerSnapshotV22$toBitmap$1 r0 = new androidx.compose.ui.graphics.layer.LayerSnapshotV22$toBitmap$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r13 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r13
            r0.<init>(r11, r13)
        L27:
            java.lang.Object r11 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r13 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r0.label
            r6 = 1
            if (r5 == 0) goto L41
            if (r5 != r6) goto L3b
            android.media.ImageReader r12 = r0.L$2
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L38
            goto La0
        L38:
            r11 = move-exception
            goto Lb3
        L3b:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r11)
            goto Laa
        L41:
            kotlin.ResultKt.throwOnFailure(r11)
            long r7 = r12.size
            android.os.Looper r11 = android.os.Looper.myLooper()
            if (r11 != 0) goto L50
            android.os.Looper r11 = android.os.Looper.getMainLooper()
        L50:
            long r9 = r7 >> r3
            int r3 = (int) r9
            long r1 = r1 & r7
            int r1 = (int) r1
            android.media.ImageReader r1 = android.media.ImageReader.newInstance(r3, r1, r6, r6)
            r0.L$2 = r1     // Catch: java.lang.Throwable -> Lab
            r0.label = r6     // Catch: java.lang.Throwable -> Lab
            kotlinx.coroutines.CancellableContinuationImpl r2 = new kotlinx.coroutines.CancellableContinuationImpl     // Catch: java.lang.Throwable -> Lab
            kotlin.coroutines.Continuation r0 = kotlin.ExceptionsKt.intercepted(r0)     // Catch: java.lang.Throwable -> Lab
            r2.<init>(r6, r0)     // Catch: java.lang.Throwable -> Lab
            r2.initCancellability()     // Catch: java.lang.Throwable -> Lab
            androidx.compose.ui.graphics.layer.LayerSnapshotV22$toBitmap$2$image$1$1 r0 = new androidx.compose.ui.graphics.layer.LayerSnapshotV22$toBitmap$2$image$1$1     // Catch: java.lang.Throwable -> Lab
            r0.<init>()     // Catch: java.lang.Throwable -> Lab
            android.os.Handler r11 = androidx.compose.ui.unit.DpKt.createAsync(r11)     // Catch: java.lang.Throwable -> Lab
            r1.setOnImageAvailableListener(r0, r11)     // Catch: java.lang.Throwable -> Lab
            android.view.Surface r11 = r1.getSurface()     // Catch: java.lang.Throwable -> Lab
            android.graphics.Canvas r0 = r11.lockHardwareCanvas()     // Catch: java.lang.Throwable -> Lab
            long r5 = androidx.compose.ui.graphics.Color.Black     // Catch: java.lang.Throwable -> Lae
            int r3 = androidx.compose.ui.graphics.ColorKt.m444toArgb8_81llA(r5)     // Catch: java.lang.Throwable -> Lae
            android.graphics.PorterDuff$Mode r5 = android.graphics.PorterDuff.Mode.CLEAR     // Catch: java.lang.Throwable -> Lae
            r0.drawColor(r3, r5)     // Catch: java.lang.Throwable -> Lae
            android.graphics.Canvas r3 = androidx.compose.ui.graphics.AndroidCanvas_androidKt.EmptyCanvas     // Catch: java.lang.Throwable -> Lae
            androidx.compose.ui.graphics.AndroidCanvas r3 = new androidx.compose.ui.graphics.AndroidCanvas     // Catch: java.lang.Throwable -> Lae
            r3.<init>()     // Catch: java.lang.Throwable -> Lae
            r3.internalCanvas = r0     // Catch: java.lang.Throwable -> Lae
            r12.draw$ui_graphics(r3, r4)     // Catch: java.lang.Throwable -> Lae
            r11.unlockCanvasAndPost(r0)     // Catch: java.lang.Throwable -> Lab
            java.lang.Object r11 = r2.getResult()     // Catch: java.lang.Throwable -> Lab
            if (r11 != r13) goto L9f
            r4 = r13
            goto Laa
        L9f:
            r12 = r1
        La0:
            android.media.Image r11 = (android.media.Image) r11     // Catch: java.lang.Throwable -> L38
            android.graphics.Bitmap r11 = kotlin.text.UStringsKt.toBitmap(r11)     // Catch: java.lang.Throwable -> L38
            kotlin.TuplesKt.closeFinally(r12, r4)
            r4 = r11
        Laa:
            return r4
        Lab:
            r11 = move-exception
            r12 = r1
            goto Lb3
        Lae:
            r12 = move-exception
            r11.unlockCanvasAndPost(r0)     // Catch: java.lang.Throwable -> Lab
            throw r12     // Catch: java.lang.Throwable -> Lab
        Lb3:
            throw r11     // Catch: java.lang.Throwable -> Lb4
        Lb4:
            r13 = move-exception
            kotlin.TuplesKt.closeFinally(r12, r11)
            throw r13
        Lb9:
            long r5 = r12.size
            long r7 = r5 >> r3
            int r11 = (int) r7
            long r1 = r1 & r5
            int r13 = (int) r1
            android.graphics.Bitmap$Config r0 = android.graphics.Bitmap.Config.ARGB_8888
            android.graphics.Bitmap r11 = android.graphics.Bitmap.createBitmap(r11, r13, r0)
            android.graphics.Canvas r13 = new android.graphics.Canvas
            r13.<init>(r11)
            android.graphics.Canvas r0 = androidx.compose.ui.graphics.AndroidCanvas_androidKt.EmptyCanvas
            androidx.compose.ui.graphics.AndroidCanvas r0 = new androidx.compose.ui.graphics.AndroidCanvas
            r0.<init>()
            r0.internalCanvas = r13
            r12.draw$ui_graphics(r0, r4)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.layer.LayerSnapshotV21.toBitmap(androidx.compose.ui.graphics.layer.GraphicsLayer, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
