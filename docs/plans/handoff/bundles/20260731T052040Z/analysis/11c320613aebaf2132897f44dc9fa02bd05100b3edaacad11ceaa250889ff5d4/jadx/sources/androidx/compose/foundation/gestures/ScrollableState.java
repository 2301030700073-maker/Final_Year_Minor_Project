package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface ScrollableState {
    float dispatchRawDelta(float f);

    boolean getCanScrollBackward();

    boolean getCanScrollForward();

    boolean isScrollInProgress();

    Object scroll(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl);
}
