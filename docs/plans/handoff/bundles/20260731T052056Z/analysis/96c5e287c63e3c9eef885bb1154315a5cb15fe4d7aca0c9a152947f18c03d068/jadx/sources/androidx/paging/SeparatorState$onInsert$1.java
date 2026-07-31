package androidx.paging;

import androidx.paging.PageEvent;
import java.util.ArrayList;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SeparatorState$onInsert$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public int I$2;
    public PageEvent.Insert L$0;
    public ArrayList L$1;
    public ArrayList L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public Object L$6;
    public Object L$7;
    public ArrayList L$8;
    public boolean Z$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ SeparatorState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeparatorState$onInsert$1(SeparatorState separatorState, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = separatorState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.onInsert(null, this);
    }
}
