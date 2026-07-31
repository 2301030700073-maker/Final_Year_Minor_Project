package org.wikipedia.offline.db;

import java.io.Serializable;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.wikipedia.dataclient.Service;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OfflineObjectDao$addObject$1 extends ContinuationImpl {
    public int I$0;
    public OfflineObjectDao_Impl L$0;
    public String L$1;
    public String L$2;
    public String L$3;
    public String L$4;
    public Ref$ObjectRef L$5;
    public Serializable L$6;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ OfflineObjectDao_Impl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineObjectDao$addObject$1(OfflineObjectDao_Impl offlineObjectDao_Impl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = offlineObjectDao_Impl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return Service.CC.addObject$suspendImpl(this.this$0, null, null, null, null, this);
    }
}
