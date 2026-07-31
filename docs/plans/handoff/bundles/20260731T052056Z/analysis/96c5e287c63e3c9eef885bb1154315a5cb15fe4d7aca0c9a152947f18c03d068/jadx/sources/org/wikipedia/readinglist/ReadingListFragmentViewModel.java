package org.wikipedia.readinglist;

import androidx.lifecycle.ViewModel;
import coil3.size.ViewSizeResolver$CC;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListFragmentViewModel extends ViewModel {
    public final SharedFlowImpl _deleteSelectedPagesFlow;
    public final StateFlowImpl _recommendedListFlow;
    public final SharedFlowImpl _saveReadingListFlow;
    public final SharedFlowImpl _updateListByIdFlow;
    public final SharedFlowImpl _updateListFlow;
    public final ReadonlySharedFlow deleteSelectedPagesFlow;
    public final ReadonlyStateFlow recommendedListFlow;
    public final ReadonlySharedFlow saveReadingListFlow;
    public final ReadonlySharedFlow updateListByIdFlow;
    public final ReadonlySharedFlow updateListFlow;
    public final ReadonlyStateFlow yirListFlow;

    public ReadingListFragmentViewModel() {
        SharedFlowImpl MutableSharedFlow$default = StateFlowKt.MutableSharedFlow$default(0, 7, null);
        this._updateListByIdFlow = MutableSharedFlow$default;
        this.updateListByIdFlow = new ReadonlySharedFlow(MutableSharedFlow$default);
        SharedFlowImpl MutableSharedFlow$default2 = StateFlowKt.MutableSharedFlow$default(0, 7, null);
        this._updateListFlow = MutableSharedFlow$default2;
        this.updateListFlow = new ReadonlySharedFlow(MutableSharedFlow$default2);
        SharedFlowImpl MutableSharedFlow$default3 = StateFlowKt.MutableSharedFlow$default(0, 7, null);
        this._saveReadingListFlow = MutableSharedFlow$default3;
        this.saveReadingListFlow = new ReadonlySharedFlow(MutableSharedFlow$default3);
        SharedFlowImpl MutableSharedFlow$default4 = StateFlowKt.MutableSharedFlow$default(0, 7, null);
        this._deleteSelectedPagesFlow = MutableSharedFlow$default4;
        this.deleteSelectedPagesFlow = new ReadonlySharedFlow(MutableSharedFlow$default4);
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._recommendedListFlow = m786m;
        this.recommendedListFlow = new ReadonlyStateFlow(m786m);
        this.yirListFlow = new ReadonlyStateFlow(ViewSizeResolver$CC.m786m());
    }
}
