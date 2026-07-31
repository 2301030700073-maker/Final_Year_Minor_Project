package org.wikipedia.search;

import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$IntRef;
import okio.ByteString;
import org.wikipedia.Constants;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StandardSearchRepository$search$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public int I$2;
    public String L$0;
    public String L$1;
    public String L$10;
    public Iterator L$12;
    public String L$14;
    public Ref$IntRef L$15;
    public Constants.InvokeSource L$2;
    public List L$4;
    public WikiSite L$5;
    public List L$6;
    public Integer L$8;
    public String L$9;
    public boolean Z$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ ByteString.Companion this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StandardSearchRepository$search$1(ByteString.Companion companion, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.search(null, null, null, null, 0, false, null, this);
    }
}
