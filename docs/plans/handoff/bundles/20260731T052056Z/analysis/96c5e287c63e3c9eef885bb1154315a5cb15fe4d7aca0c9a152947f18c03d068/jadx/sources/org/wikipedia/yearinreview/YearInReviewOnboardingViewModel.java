package org.wikipedia.yearinreview;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class YearInReviewOnboardingViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final ReadonlyStateFlow uiState;

    public YearInReviewOnboardingViewModel() {
        ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1 shareUtil$shareImage$$inlined$CoroutineExceptionHandler$1 = new ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(this);
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(UiState.Loading.INSTANCE);
        this._uiState = MutableStateFlow;
        this.uiState = new ReadonlyStateFlow(MutableStateFlow);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), shareUtil$shareImage$$inlined$CoroutineExceptionHandler$1, null, new SyntaxHighlighter.AnonymousClass2(21, this, (Continuation) null), 2);
    }
}
