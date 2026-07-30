package androidx.compose.ui.scrollcapture;

import androidx.compose.runtime.collection.MutableVector;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* compiled from: ScrollCapture.android.kt */
/* loaded from: classes.dex */
/* synthetic */ class ScrollCapture$onScrollCaptureSearch$1 extends AdaptedFunctionReference implements Function1 {
    ScrollCapture$onScrollCaptureSearch$1(Object obj) {
        super(1, obj, MutableVector.class, "add", "add(Ljava/lang/Object;)Z", 8);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((ScrollCaptureCandidate) obj);
        return Unit.INSTANCE;
    }

    public final void invoke(ScrollCaptureCandidate scrollCaptureCandidate) {
        ((MutableVector) this.receiver).add(scrollCaptureCandidate);
    }
}
