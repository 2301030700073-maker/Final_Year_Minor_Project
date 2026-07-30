package org.fdroid.download;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: HttpDownloader.kt */
/* loaded from: classes2.dex */
final class HttpDownloader$getBytes$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ HttpDownloader this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HttpDownloader$getBytes$1(HttpDownloader httpDownloader, Continuation continuation) {
        super(continuation);
        this.this$0 = httpDownloader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getBytes(false, null, this);
    }
}
