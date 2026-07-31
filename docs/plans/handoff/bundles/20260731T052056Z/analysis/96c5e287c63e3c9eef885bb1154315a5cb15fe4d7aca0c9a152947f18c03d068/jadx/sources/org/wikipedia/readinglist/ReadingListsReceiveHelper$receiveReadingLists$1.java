package org.wikipedia.readinglist;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListsReceiveHelper$receiveReadingLists$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public int I$2;
    public int I$3;
    public WikiSite L$11;
    public Iterator L$13;
    public List L$18;
    public List L$19;
    public ArrayList L$20;
    public String L$4;
    public String L$5;
    public List L$6;
    public Iterator L$8;
    public boolean Z$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ ReadingListsReceiveHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingListsReceiveHelper$receiveReadingLists$1(ReadingListsReceiveHelper readingListsReceiveHelper, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = readingListsReceiveHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.receiveReadingLists(null, null, null, false, this);
    }
}
