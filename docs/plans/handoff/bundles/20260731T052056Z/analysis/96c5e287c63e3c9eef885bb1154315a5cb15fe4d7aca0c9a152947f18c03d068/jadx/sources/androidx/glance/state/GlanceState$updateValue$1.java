package androidx.glance.state;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.donate.DonateDialog$onCreateView$3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GlanceState$updateValue$1 extends ContinuationImpl {
    public DonateDialog$onCreateView$3.AnonymousClass1 L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ GlanceState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlanceState$updateValue$1(GlanceState glanceState, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = glanceState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.updateValue(null, null, null, null, this);
    }
}
