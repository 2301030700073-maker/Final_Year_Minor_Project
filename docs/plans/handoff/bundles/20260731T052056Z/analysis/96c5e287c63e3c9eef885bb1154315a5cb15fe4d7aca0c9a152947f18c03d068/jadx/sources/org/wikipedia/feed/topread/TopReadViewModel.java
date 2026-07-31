package org.wikipedia.feed.topread;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TopReadViewModel extends ViewModel {
    public final TopReadCard card;

    public TopReadViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        Object obj = savedStateHandle.get("item");
        obj.getClass();
        this.card = (TopReadCard) obj;
    }
}
