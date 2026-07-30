package org.fdroid.download;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: MirrorChooser.kt */
/* loaded from: classes2.dex */
final class MirrorChooserImpl$mirrorRequest$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ MirrorChooserImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MirrorChooserImpl$mirrorRequest$1(MirrorChooserImpl mirrorChooserImpl, Continuation continuation) {
        super(continuation);
        this.this$0 = mirrorChooserImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return MirrorChooserImpl.mirrorRequest$suspendImpl(this.this$0, null, null, this);
    }
}
