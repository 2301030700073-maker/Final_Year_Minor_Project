package org.wikipedia.offline.db;

import java.util.Iterator;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.dataclient.Service;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OfflineObjectDao$deleteObjectsForPageId$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public int I$2;
    public long J$0;
    public OfflineObjectDao_Impl L$0;
    public Iterator L$3;
    public Iterator L$6;
    public OfflineObject L$8;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ OfflineObjectDao_Impl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineObjectDao$deleteObjectsForPageId$1(OfflineObjectDao_Impl offlineObjectDao_Impl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = offlineObjectDao_Impl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return Service.CC.deleteObjectsForPageId$suspendImpl(this.this$0, null, this);
    }
}
