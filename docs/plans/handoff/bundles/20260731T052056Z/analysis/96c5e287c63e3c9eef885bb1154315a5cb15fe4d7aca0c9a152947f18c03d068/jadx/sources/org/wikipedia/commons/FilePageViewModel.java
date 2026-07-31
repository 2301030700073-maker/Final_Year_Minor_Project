package org.wikipedia.commons;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.gallery.ImageInfo;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FilePageViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final boolean allowEdit;
    public final LoginClient$login$$inlined$CoroutineExceptionHandler$1 handler;
    public ImageInfo mediaInfo;
    public PageSummaryForEdit pageSummaryForEdit;
    public final PageTitle pageTitle;
    public final ReadonlyStateFlow uiState;

    public FilePageViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        this.handler = new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this);
        Boolean bool = (Boolean) savedStateHandle.get("allowEdit");
        this.allowEdit = bool != null ? bool.booleanValue() : true;
        Object obj = savedStateHandle.get("title");
        obj.getClass();
        this.pageTitle = (PageTitle) obj;
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
        loadImageInfo();
    }

    public final void loadImageInfo() {
        Resource.Loading loading = new Resource.Loading();
        StateFlowImpl stateFlowImpl = this._uiState;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, loading);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), this.handler, null, new FilePageViewModel$loadImageInfo$1(this, null), 2);
    }
}
