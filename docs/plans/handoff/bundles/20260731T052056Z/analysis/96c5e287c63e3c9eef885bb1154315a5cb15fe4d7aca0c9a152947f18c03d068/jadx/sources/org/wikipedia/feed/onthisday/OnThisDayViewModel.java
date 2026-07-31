package org.wikipedia.feed.onthisday;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Calendar;
import java.util.TimeZone;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnThisDayViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final int age;
    public final Calendar date;
    public final LoginClient$login$$inlined$CoroutineExceptionHandler$1 handler;
    public final ReadonlyStateFlow uiState;
    public final WikiSite wikiSite;
    public final int year;

    public OnThisDayViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        this.handler = new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this);
        Object obj = savedStateHandle.get("wikiSite");
        obj.getClass();
        this.wikiSite = (WikiSite) obj;
        Integer num = (Integer) savedStateHandle.get("age");
        int intValue = num != null ? num.intValue() : 0;
        this.age = intValue;
        Integer num2 = (Integer) savedStateHandle.get("year");
        this.year = num2 != null ? num2.intValue() : 0;
        Object obj2 = savedStateHandle.get("invokeSource");
        obj2.getClass();
        ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
        Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
        calendar.add(5, -intValue);
        this.date = calendar;
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
    }

    public final void loadOnThisDay(Calendar calendar) {
        calendar.getClass();
        Resource.Loading loading = new Resource.Loading();
        StateFlowImpl stateFlowImpl = this._uiState;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, loading);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), this.handler, null, new PageActivity$onCreate$1$1$1(this, calendar, null, 11), 2);
    }
}
