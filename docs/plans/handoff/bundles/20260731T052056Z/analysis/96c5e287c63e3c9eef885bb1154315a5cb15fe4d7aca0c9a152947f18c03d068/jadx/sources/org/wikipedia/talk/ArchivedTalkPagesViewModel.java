package org.wikipedia.talk;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.FlowExtKt;
import androidx.paging.PageFetcher;
import androidx.paging.Pager$pageFetcher$2;
import androidx.paging.PagingConfig;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArchivedTalkPagesViewModel extends ViewModel {
    public final ReadonlySharedFlow archivedTalkPagesFlow;
    public final PageTitle pageTitle;

    public ArchivedTalkPagesViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        Object obj = savedStateHandle.get("title");
        obj.getClass();
        this.pageTitle = (PageTitle) obj;
        this.archivedTalkPagesFlow = FlowExtKt.cachedIn(new PageFetcher(new Pager$pageFetcher$2(0, new WikiGames$$ExternalSyntheticLambda0(28, this), null), new PagingConfig(10, 62)).flow, ViewModelKt.getViewModelScope(this));
    }
}
