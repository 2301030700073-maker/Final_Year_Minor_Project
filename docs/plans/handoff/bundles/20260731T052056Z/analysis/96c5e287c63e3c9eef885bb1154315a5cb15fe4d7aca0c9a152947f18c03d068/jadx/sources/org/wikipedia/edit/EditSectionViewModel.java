package org.wikipedia.edit;

import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.Constants;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditSectionViewModel extends ViewModel {
    public final StateFlowImpl _fetchSectionTextState;
    public final StateFlowImpl _postEditState;
    public final StateFlowImpl _waitForRevisionState;
    public StandaloneCoroutine clientJob;
    public long currentRevision;
    public final ArrayList editNotices;
    public boolean editingAllowed;
    public final ReadonlyStateFlow fetchSectionTextState;
    public final Constants.InvokeSource invokeSource;
    public PageTitle pageTitle;
    public final ReadonlyStateFlow postEditState;
    public final String sectionAnchor;
    public final int sectionID;
    public String sectionWikitext;
    public String sectionWikitextOriginal;
    public boolean tempAccountsEnabled;
    public final String textToHighlight;
    public final ReadonlyStateFlow waitForRevisionState;

    public EditSectionViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        Object obj = savedStateHandle.get("title");
        obj.getClass();
        this.pageTitle = (PageTitle) obj;
        Object obj2 = savedStateHandle.get("invokeSource");
        obj2.getClass();
        this.invokeSource = (Constants.InvokeSource) obj2;
        Integer num = (Integer) savedStateHandle.get("sectionId");
        this.sectionID = num != null ? num.intValue() : -1;
        this.sectionAnchor = (String) savedStateHandle.get("sectionAnchor");
        this.textToHighlight = (String) savedStateHandle.get("sectionHighlightText");
        this.tempAccountsEnabled = true;
        this.editNotices = new ArrayList();
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._fetchSectionTextState = m786m;
        this.fetchSectionTextState = new ReadonlyStateFlow(m786m);
        StateFlowImpl m786m2 = ViewSizeResolver$CC.m786m();
        this._postEditState = m786m2;
        this.postEditState = new ReadonlyStateFlow(m786m2);
        StateFlowImpl m786m3 = ViewSizeResolver$CC.m786m();
        this._waitForRevisionState = m786m3;
        this.waitForRevisionState = new ReadonlyStateFlow(m786m3);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new EditSectionViewModel$postEdit$$inlined$CoroutineExceptionHandler$1(this, 1), null, new ThumbNode$onAttach$1(29, this, null), 2);
    }
}
