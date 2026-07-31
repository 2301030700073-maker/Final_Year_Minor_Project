package org.wikipedia.page.edithistory;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.FlowExtKt;
import androidx.paging.PageFetcher;
import androidx.paging.Pager$pageFetcher$2;
import androidx.paging.PagingConfig;
import java.util.ArrayList;
import java.util.List;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.restbase.EditCount;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs$observeKeys$$inlined$filter$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditHistoryListViewModel extends ViewModel {
    public boolean actionModeActive;
    public String cachedContinueKey;
    public final ArrayList cachedRevisions;
    public boolean comparing;
    public String currentQuery;
    public final ReadonlySharedFlow editHistoryFlow;
    public final MutableLiveData editHistoryStatsData;
    public int pageId;
    public final PageTitle pageTitle;
    public MwQueryPage.Revision selectedRevisionFrom;
    public MwQueryPage.Revision selectedRevisionTo;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EditHistoryItem extends EditHistoryItemModel {
        public final MwQueryPage.Revision item;

        public EditHistoryItem(MwQueryPage.Revision revision) {
            revision.getClass();
            this.item = revision;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class EditHistoryItemModel {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EditHistorySeparator extends EditHistoryItemModel {
        public final String date;

        public EditHistorySeparator(String str) {
            this.date = str;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EditHistoryStats extends EditHistoryItemModel {
        public final EditCount allEdits;
        public final EditCount anonEdits;
        public final EditCount botEdits;
        public final List metrics;
        public final MwQueryPage.Revision revision;
        public final EditCount userEdits;

        public EditHistoryStats(MwQueryPage.Revision revision, List list, EditCount editCount, EditCount editCount2, EditCount editCount3, EditCount editCount4) {
            revision.getClass();
            list.getClass();
            editCount.getClass();
            editCount2.getClass();
            editCount3.getClass();
            editCount4.getClass();
            this.revision = revision;
            this.metrics = list;
            this.allEdits = editCount;
            this.userEdits = editCount2;
            this.anonEdits = editCount3;
            this.botEdits = editCount4;
        }
    }

    public EditHistoryListViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        this.editHistoryStatsData = new MutableLiveData();
        Object obj = savedStateHandle.get("title");
        obj.getClass();
        this.pageTitle = (PageTitle) obj;
        this.pageId = -1;
        this.currentQuery = "";
        this.cachedRevisions = new ArrayList();
        this.editHistoryFlow = FlowExtKt.cachedIn(new Prefs$observeKeys$$inlined$filter$1(8, new PageFetcher(new Pager$pageFetcher$2(0, new WikiGames$$ExternalSyntheticLambda0(17, this), null), new PagingConfig(50, 62)).flow, this), ViewModelKt.getViewModelScope(this));
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 21), null, new EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2(this, null), 2);
    }
}
