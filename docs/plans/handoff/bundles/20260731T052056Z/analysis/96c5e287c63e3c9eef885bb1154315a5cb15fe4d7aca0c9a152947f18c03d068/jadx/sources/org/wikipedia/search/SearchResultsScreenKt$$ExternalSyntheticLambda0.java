package org.wikipedia.search;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.compose.components.TopAppBarState;
import org.wikipedia.settings.dev.playground.Option;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchResultsScreenKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ SearchResultsScreenKt$$ExternalSyntheticLambda0(MutableState mutableState, Function1 function1) {
        this.$r8$classId = 0;
        this.f$0 = mutableState;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$0;
        Function1 function1 = this.f$1;
        switch (i) {
            case 0:
                View view = (View) mutableState.getValue();
                if (view != null) {
                    Object systemService = view.getContext().getSystemService("input_method");
                    systemService.getClass();
                    ((InputMethodManager) systemService).hideSoftInputFromWindow(view.getWindowToken(), 0);
                    function1.invoke(view);
                    break;
                }
                break;
            case 1:
                function1.invoke("");
                mutableState.setValue(TopAppBarState.NORMAL);
                break;
            case 2:
                function1.invoke("");
                mutableState.setValue(TopAppBarState.SEARCH);
                break;
            case 3:
                WikiGamesEvent.submit$default("notifs_on_confirm", "discover_settings", null, null, null, null, null, null, 508);
                mutableState.setValue(Boolean.FALSE);
                function1.invoke(Boolean.TRUE);
                break;
            case 4:
                WikiGamesEvent.submit$default("notifs_off_confirm ", "discover_settings", null, null, null, null, null, null, 508);
                Boolean bool = Boolean.FALSE;
                mutableState.setValue(bool);
                function1.invoke(bool);
                break;
            case 5:
                WikiGamesEvent.submit$default("discover_on_confirm", "discover_settings", null, null, null, null, null, null, 508);
                mutableState.setValue(Boolean.FALSE);
                function1.invoke(Boolean.TRUE);
                break;
            case 6:
                WikiGamesEvent.submit$default("discover_off_confirm", "discover_settings", null, null, null, null, null, null, 508);
                Boolean bool2 = Boolean.FALSE;
                mutableState.setValue(bool2);
                function1.invoke(bool2);
                break;
            case 7:
                function1.invoke((String) mutableState.getValue());
                break;
            case 8:
                Option option = Option.DELETE;
                function1.invoke(option);
                mutableState.setValue(option);
                break;
            case 9:
                Option option2 = Option.ENTRY;
                function1.invoke(option2);
                mutableState.setValue(option2);
                break;
            case 10:
                Option option3 = Option.FILTER;
                function1.invoke(option3);
                mutableState.setValue(option3);
                break;
            default:
                function1.invoke((String) mutableState.getValue());
                break;
        }
        return unit;
    }

    public /* synthetic */ SearchResultsScreenKt$$ExternalSyntheticLambda0(Function1 function1, MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$1 = function1;
        this.f$0 = mutableState;
    }
}
