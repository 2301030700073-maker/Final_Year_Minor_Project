package org.wikipedia.categories.db;

import coil3.size.ViewSizeResolver$CC;
import java.util.Iterator;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CategoryDao$upsertAll$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public CategoryDao_Impl L$0;
    public Iterator L$3;
    public Category L$5;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ CategoryDao_Impl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CategoryDao$upsertAll$1(CategoryDao_Impl categoryDao_Impl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = categoryDao_Impl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ViewSizeResolver$CC.upsertAll$suspendImpl(this.this$0, null, this);
    }
}
