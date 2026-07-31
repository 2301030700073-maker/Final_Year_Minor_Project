package com.skydoves.landscapist.coil3;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@DebugMetadata(c = "com.skydoves.landscapist.coil3.Coil3ImageSourceFileKt", f = "Coil3ImageSourceFile.kt", l = {149}, m = "getFromDiskCacheOrDownload", v = 2)
/* loaded from: classes.dex */
public final class Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;
    /* synthetic */ Object result;

    public Coil3ImageSourceFileKt$getFromDiskCacheOrDownload$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object fromDiskCacheOrDownload;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        fromDiskCacheOrDownload = Coil3ImageSourceFileKt.getFromDiskCacheOrDownload(null, null, null, this);
        return fromDiskCacheOrDownload;
    }
}
