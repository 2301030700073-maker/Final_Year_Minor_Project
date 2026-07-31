package androidx.compose.runtime.saveable;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface SaveableStateHolder {
    void SaveableStateProvider(Object obj, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i);

    void removeState(Object obj);
}
