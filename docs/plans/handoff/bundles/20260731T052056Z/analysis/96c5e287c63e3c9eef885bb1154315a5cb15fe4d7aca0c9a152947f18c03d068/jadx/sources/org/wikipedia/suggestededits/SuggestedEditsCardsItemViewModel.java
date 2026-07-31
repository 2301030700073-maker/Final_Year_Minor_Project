package org.wikipedia.suggestededits;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.intercept.EngineInterceptor$intercept$2;
import coil3.size.ViewSizeResolver$CC;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsCardsItemViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final LoginClient$login$$inlined$CoroutineExceptionHandler$1 handler = new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this);
    public final ReadonlyStateFlow uiState;

    public SuggestedEditsCardsItemViewModel() {
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
    }

    public final void findNextSuggestedEditsItem(DescriptionEditActivity.Action action, String str, String str2) {
        action.getClass();
        str.getClass();
        str2.getClass();
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        Resource.Loading loading = new Resource.Loading();
        StateFlowImpl stateFlowImpl = this._uiState;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, loading);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), this.handler, null, new EngineInterceptor$intercept$2(action, str, str2, ref$ObjectRef, ref$ObjectRef2, this, null), 2);
    }
}
