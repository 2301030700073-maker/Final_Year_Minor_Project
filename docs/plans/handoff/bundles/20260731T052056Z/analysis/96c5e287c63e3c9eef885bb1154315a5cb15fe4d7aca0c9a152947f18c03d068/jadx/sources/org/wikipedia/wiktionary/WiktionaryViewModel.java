package org.wikipedia.wiktionary;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.page.PageTitle;
import org.wikipedia.talk.TalkTopicViewModel$loadTopic$2;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WiktionaryViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final PageTitle pageTitle;
    public final String selectedText;
    public final ReadonlyStateFlow uiState;

    public WiktionaryViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1 shareUtil$shareImage$$inlined$CoroutineExceptionHandler$1 = new ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(this);
        Object obj = savedStateHandle.get("title");
        obj.getClass();
        this.pageTitle = (PageTitle) obj;
        this.selectedText = (String) savedStateHandle.get("text");
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), shareUtil$shareImage$$inlined$CoroutineExceptionHandler$1, null, new TalkTopicViewModel$loadTopic$2(this, null, 4), 2);
    }

    public final void definitionsNotFound() {
        Resource.Error error = new Resource.Error(new Throwable("No definitions found"));
        StateFlowImpl stateFlowImpl = this._uiState;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, error);
    }
}
