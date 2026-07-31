package org.wikipedia.gallery;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.Constants;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.Resource;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GalleryItemViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final PageTitle imageTitle;
    public final MediaListItem mediaListItem;
    public MwQueryPage mediaPage;
    public final ReadonlyStateFlow uiState;

    public GalleryItemViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        Object obj = savedStateHandle.get("galleryItem");
        obj.getClass();
        MediaListItem mediaListItem = (MediaListItem) obj;
        String str = mediaListItem.title;
        this.mediaListItem = mediaListItem;
        PageTitle pageTitle = (PageTitle) savedStateHandle.get("title");
        pageTitle = pageTitle == null ? new PageTitle(str, Constants.commonsWikiSite, (String) null) : pageTitle;
        StringUtil stringUtil = StringUtil.INSTANCE;
        this.imageTitle = new PageTitle("File:".concat(StringUtil.removeNamespace(str)), pageTitle.wikiSite, (String) null);
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
        m786m.updateState(null, new Resource.Loading());
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this), null, new SyntaxHighlighter.AnonymousClass2(3, this, (Continuation) null), 2);
    }
}
