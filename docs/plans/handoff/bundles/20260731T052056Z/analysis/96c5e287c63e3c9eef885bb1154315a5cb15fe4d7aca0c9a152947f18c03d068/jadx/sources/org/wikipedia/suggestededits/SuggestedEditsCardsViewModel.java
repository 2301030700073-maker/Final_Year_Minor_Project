package org.wikipedia.suggestededits;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.WikipediaApp;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.talk.TalkReplyViewModel$loadTemplates$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsCardsViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final DescriptionEditActivity.Action action;
    public String langFromCode;
    public String langToCode;
    public final ReadonlyStateFlow uiState;

    public SuggestedEditsCardsViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.langFromCode = ViewSizeResolver$CC.m();
        ArrayList arrayList = (ArrayList) ViewSizeResolver$CC.m785m();
        this.langToCode = (String) (1 < arrayList.size() ? arrayList.get(1) : "");
        Object obj = savedStateHandle.get("intentAction");
        obj.getClass();
        this.action = (DescriptionEditActivity.Action) obj;
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this), null, new TalkReplyViewModel$loadTemplates$2(3, this, (Continuation) null), 2);
    }
}
