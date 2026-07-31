package androidx.compose.runtime.internal;

import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.collection.MutableVector;
import java.util.Set;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PausedCompositionRemembers implements RememberObserver {
    public final Set abandoning;
    public final MutableVector pausedRemembers = new MutableVector(new GapRememberObserverHolder[16]);

    public PausedCompositionRemembers(Set set) {
        this.abandoning = set;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onRemembered() {
        MutableVector mutableVector = this.pausedRemembers;
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            RememberObserver rememberObserver = ((GapRememberObserverHolder) objArr[i2]).wrapped;
            this.abandoning.remove(rememberObserver);
            rememberObserver.onRemembered();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onAbandoned() {
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onForgotten() {
    }
}
