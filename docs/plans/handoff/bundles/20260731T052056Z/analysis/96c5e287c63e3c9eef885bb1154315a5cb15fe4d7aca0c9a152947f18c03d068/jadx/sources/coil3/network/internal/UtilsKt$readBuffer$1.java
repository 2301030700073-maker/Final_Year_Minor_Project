package coil3.network.internal;

import androidx.compose.ui.unit.DpKt;
import coil3.network.SourceResponseBody;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import okio.Buffer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UtilsKt$readBuffer$1 extends ContinuationImpl {
    public SourceResponseBody L$0;
    public Buffer L$1;
    public int label;
    public /* synthetic */ Object result;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DpKt.readBuffer(null, this);
    }
}
