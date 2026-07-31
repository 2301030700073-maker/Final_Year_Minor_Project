package androidx.compose.runtime.internal;

import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.collection.MutableVector;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
