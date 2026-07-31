package org.wikipedia.feed;

import j$.time.LocalDate;
import java.util.Collection;
import java.util.Iterator;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeViewModel$buildGameModule$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public int I$2;
    public LocalDate L$1;
    public Collection L$4;
    public Iterator L$6;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ HomeViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeViewModel$buildGameModule$1(HomeViewModel homeViewModel, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = homeViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.buildGameModule(null, this);
    }
}
