package org.wikipedia.settings.dev.playground;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CategoryDeveloperPlayGroundViewModel extends ViewModel {
    public final StateFlowImpl _categoryState;
    public final ReadonlyStateFlow categoryState;
    public final String[] categories = {"Animals", "Science", "Technology", "History", "Geography", "Art", "Music", "Literature", "Sports", "Food", "Politics", "Religion", "Education", "Health", "Environment", "Fruit", "Vegetables", "Philosophy"};
    public final String[] languages = {"en", "zh-cn"};

    public CategoryDeveloperPlayGroundViewModel() {
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(UiState.Loading.INSTANCE);
        this._categoryState = MutableStateFlow;
        this.categoryState = new ReadonlyStateFlow(MutableStateFlow);
        loadCategories();
    }

    public final void loadCategories() {
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 15), null, new SyntaxHighlighter.AnonymousClass2(14, this, (Continuation) null), 2);
    }
}
