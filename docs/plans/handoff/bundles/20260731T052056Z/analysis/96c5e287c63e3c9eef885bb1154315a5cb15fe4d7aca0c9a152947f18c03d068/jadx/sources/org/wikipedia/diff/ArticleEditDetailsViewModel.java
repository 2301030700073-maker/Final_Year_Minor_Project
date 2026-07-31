package org.wikipedia.diff;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.Constants;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.SingleLiveData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArticleEditDetailsViewModel extends ViewModel {
    public boolean canGoForward;
    public final MutableLiveData diffText;
    public final boolean fromRecentEdits;
    public boolean hasRollbackRights;
    public boolean isWatched;
    public int ns;
    public int pageId;
    public PageTitle pageTitle;
    public final MutableLiveData revisionDetails;
    public MwQueryPage.Revision revisionFrom;
    public long revisionFromId;
    public MwQueryPage.Revision revisionTo;
    public long revisionToId;
    public final SingleLiveData rollbackResponse;
    public final MutableLiveData rollbackRights;
    public final MutableLiveData singleRevisionText;
    public final SingleLiveData thankStatus;
    public final SingleLiveData undoEditResponse;
    public final SingleLiveData watchResponse;
    public final MutableLiveData watchedStatus;

    public ArticleEditDetailsViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        Constants.InvokeSource invokeSource = (Constants.InvokeSource) savedStateHandle.get("invokeSource");
        this.watchedStatus = new MutableLiveData();
        this.rollbackRights = new MutableLiveData();
        this.revisionDetails = new MutableLiveData();
        this.diffText = new MutableLiveData();
        this.singleRevisionText = new MutableLiveData();
        this.thankStatus = new SingleLiveData();
        this.watchResponse = new SingleLiveData();
        this.undoEditResponse = new SingleLiveData();
        this.rollbackResponse = new SingleLiveData();
        int i = 0;
        boolean z = invokeSource == Constants.InvokeSource.SUGGESTED_EDITS_RECENT_EDITS;
        this.fromRecentEdits = z;
        Object obj = savedStateHandle.get("articleTitle");
        obj.getClass();
        this.pageTitle = (PageTitle) obj;
        Integer num = (Integer) savedStateHandle.get("pageId");
        this.pageId = num != null ? num.intValue() : -1;
        Long l = (Long) savedStateHandle.get("revisionTo");
        this.revisionToId = l != null ? l.longValue() : -1L;
        Long l2 = (Long) savedStateHandle.get("revisionFrom");
        long longValue = l2 != null ? l2.longValue() : -1L;
        this.revisionFromId = longValue;
        Continuation continuation = null;
        if (z) {
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(this, 2), null, new ArticleEditDetailsViewModel$getNextRecentEdit$2(this, continuation, i), 2);
        } else {
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(this, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(this, this.revisionToId, longValue, (Continuation) null), 2);
        }
    }

    public final void getDiffText(long j, long j2) {
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(this, 1), null, new ArticleEditDetailsViewModel$getDiffText$2(this, j, j2, null), 2);
    }

    public final String getEditTags(String str) {
        ArrayList arrayList = new ArrayList();
        if (this.fromRecentEdits) {
            arrayList.add("app-suggestededit");
        }
        arrayList.add(str);
        return CollectionsKt.joinToString$default(arrayList, ",", null, null, null, 62);
    }
}
