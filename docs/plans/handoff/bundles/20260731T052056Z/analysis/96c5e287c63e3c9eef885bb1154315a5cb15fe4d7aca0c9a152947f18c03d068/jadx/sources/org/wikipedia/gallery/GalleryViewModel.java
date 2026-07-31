package org.wikipedia.gallery;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GalleryViewModel extends ViewModel {
    public final StateFlowImpl _descriptionState;
    public final StateFlowImpl _uiState;
    public final ReadonlyStateFlow descriptionState;
    public String initialFilename;
    public final PageTitle pageTitle;
    public final Long revision;
    public final ReadonlyStateFlow uiState;
    public final WikiSite wikiSite;

    public GalleryViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        this.pageTitle = (PageTitle) savedStateHandle.get("title");
        Object obj = savedStateHandle.get("wikiSite");
        obj.getClass();
        this.wikiSite = (WikiSite) obj;
        this.revision = (Long) savedStateHandle.get("revision");
        this.initialFilename = (String) savedStateHandle.get("filename");
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
        StateFlowImpl m786m2 = ViewSizeResolver$CC.m786m();
        this._descriptionState = m786m2;
        this.descriptionState = new ReadonlyStateFlow(m786m2);
    }

    public final void fetchGalleryItems() {
        Resource.Loading loading = new Resource.Loading();
        StateFlowImpl stateFlowImpl = this._uiState;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, loading);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new GalleryViewModel$fetchGalleryItems$$inlined$CoroutineExceptionHandler$1(this, 0), null, new PageActivity$onCreate$1$1$1(15, this, null), 2);
    }
}
