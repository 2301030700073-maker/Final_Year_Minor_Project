package org.wikipedia.descriptions;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DescriptionEditViewModel$postDescriptionToArticle$1 extends ContinuationImpl {
    public String L$0;
    public String L$1;
    public String L$2;
    public String L$3;
    public String L$4;
    public String L$5;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ DescriptionEditViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DescriptionEditViewModel$postDescriptionToArticle$1(DescriptionEditViewModel descriptionEditViewModel, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = descriptionEditViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.postDescriptionToArticle(null, null, null, null, null, null, this);
    }
}
