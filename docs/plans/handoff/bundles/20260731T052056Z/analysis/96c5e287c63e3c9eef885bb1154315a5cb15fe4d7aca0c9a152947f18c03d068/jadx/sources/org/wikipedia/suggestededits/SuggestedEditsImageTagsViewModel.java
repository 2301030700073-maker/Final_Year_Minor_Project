package org.wikipedia.suggestededits;

import androidx.lifecycle.ViewModel;
import coil3.size.ViewSizeResolver$CC;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsImageTagsViewModel extends ViewModel {
    public final StateFlowImpl _actionState;
    public final StateFlowImpl _uiState;
    public final ReadonlyStateFlow actionState;
    public final ReadonlyStateFlow uiState;

    public SuggestedEditsImageTagsViewModel() {
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
        StateFlowImpl m786m2 = ViewSizeResolver$CC.m786m();
        this._actionState = m786m2;
        this.actionState = new ReadonlyStateFlow(m786m2);
    }
}
