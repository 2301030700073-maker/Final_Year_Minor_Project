package net.thunderbird.core.logging.file;

import com.eygraber.uri.uris.StringUri;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidFileLogSink$export$1 extends ContinuationImpl {
    public AndroidFileLogSink L$0;
    public StringUri L$1;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ AndroidFileLogSink this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidFileLogSink$export$1(AndroidFileLogSink androidFileLogSink, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = androidFileLogSink;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AndroidFileLogSink.export$suspendImpl(this.this$0, null, this);
    }
}
