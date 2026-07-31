package org.wikipedia.commons;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImagePreviewViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final DescriptionEditActivity.Action action;
    public final PageSummaryForEdit pageSummaryForEdit;
    public final ReadonlyStateFlow uiState;

    public ImagePreviewViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        LoginClient$login$$inlined$CoroutineExceptionHandler$1 loginClient$login$$inlined$CoroutineExceptionHandler$1 = new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this);
        Object obj = savedStateHandle.get("summary");
        obj.getClass();
        this.pageSummaryForEdit = (PageSummaryForEdit) obj;
        this.action = (DescriptionEditActivity.Action) savedStateHandle.get("action");
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
        m786m.updateState(null, new Resource.Loading());
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), loginClient$login$$inlined$CoroutineExceptionHandler$1, null, new ImagePreviewViewModel$loadImageInfo$1(this, null), 2);
    }
}
