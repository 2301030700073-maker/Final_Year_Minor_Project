package org.wikipedia.games;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.RealImageLoader$execute$2;
import coil3.size.ViewSizeResolver$CC;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import org.wikipedia.WikipediaApp;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GamesHubViewModel extends ViewModel {
    public final StateFlowImpl _onThisDayGameUiState;
    public final ReadonlyStateFlow onThisDayGameUiState;
    public String selectedLanguage;

    public GamesHubViewModel() {
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(UiState.Loading.INSTANCE);
        this._onThisDayGameUiState = MutableStateFlow;
        this.onThisDayGameUiState = new ReadonlyStateFlow(MutableStateFlow);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Iterator it = ((ArrayList) ViewSizeResolver$CC.m785m()).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (WikiGames.WHICH_CAME_FIRST.isLangSupported(str)) {
                this.selectedLanguage = str;
                loadOnThisDayGamesPreviews(str);
                return;
            }
        }
        Gson$$ExternalSyntheticBUOutline0.m$3("Collection contains no element matching the predicate.");
        throw null;
    }

    public final void loadOnThisDayGamesPreviews(String str) {
        str.getClass();
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this), null, new RealImageLoader$execute$2(this, str, null, 15), 2);
    }
}
