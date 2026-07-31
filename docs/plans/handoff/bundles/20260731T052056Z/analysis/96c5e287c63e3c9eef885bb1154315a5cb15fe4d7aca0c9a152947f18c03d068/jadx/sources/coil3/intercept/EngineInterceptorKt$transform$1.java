package coil3.intercept;

import coil3.EventListener$Companion$NONE$1;
import coil3.intercept.EngineInterceptor;
import coil3.request.ImageRequest;
import coil3.request.Options;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EngineInterceptorKt$transform$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public EngineInterceptor.ExecuteResult L$0;
    public ImageRequest L$1;
    public Options L$2;
    public EventListener$Companion$NONE$1 L$3;
    public List L$4;
    public int label;
    public /* synthetic */ Object result;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return UStringsKt.transform(null, null, null, null, this);
    }
}
