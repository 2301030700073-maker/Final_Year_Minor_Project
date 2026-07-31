package org.wikipedia.readinglist.db;

import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.dataclient.Service;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListDao$getAllLists$1 extends ContinuationImpl {
    public int I$0;
    public List L$1;
    public Iterator L$3;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ ReadingListDao_Impl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingListDao$getAllLists$1(ReadingListDao_Impl readingListDao_Impl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = readingListDao_Impl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return Service.CC.getAllLists$suspendImpl(this.this$0, this);
    }
}
