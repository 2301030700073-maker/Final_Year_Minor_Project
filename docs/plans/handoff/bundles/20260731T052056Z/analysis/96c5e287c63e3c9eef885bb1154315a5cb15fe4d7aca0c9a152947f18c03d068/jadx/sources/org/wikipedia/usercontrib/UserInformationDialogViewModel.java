package org.wikipedia.usercontrib;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.talk.TalkReplyViewModel$loadTemplates$2;
import org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UserInformationDialogViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final ReadonlyStateFlow uiState;
    public final String userName;

    public UserInformationDialogViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        Object obj = savedStateHandle.get("username");
        obj.getClass();
        this.userName = (String) obj;
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(this), null, new TalkReplyViewModel$loadTemplates$2(10, this, (Continuation) null), 2);
    }
}
