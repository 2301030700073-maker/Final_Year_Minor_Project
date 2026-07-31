package org.wikipedia.donate;

import androidx.lifecycle.ViewModel;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DonateViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final ReadonlyStateFlow uiState;

    public DonateViewModel() {
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(new Resource.Loading());
        this._uiState = MutableStateFlow;
        this.uiState = new ReadonlyStateFlow(MutableStateFlow);
    }
}
