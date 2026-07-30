package org.fdroid.download;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: HttpDownloaderV2.kt */
/* loaded from: classes2.dex */
final class HttpDownloaderV2$getBytes$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ HttpDownloaderV2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HttpDownloaderV2$getBytes$1(HttpDownloaderV2 httpDownloaderV2, Continuation continuation) {
        super(continuation);
        this.this$0 = httpDownloaderV2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getBytes(false, null, this);
    }
}
