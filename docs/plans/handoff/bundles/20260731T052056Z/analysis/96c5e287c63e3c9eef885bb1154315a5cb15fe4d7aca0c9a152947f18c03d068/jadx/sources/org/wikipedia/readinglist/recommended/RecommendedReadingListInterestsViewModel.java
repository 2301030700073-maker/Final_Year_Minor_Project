package org.wikipedia.readinglist.recommended;

import androidx.compose.ui.Modifier;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.json.JsonImpl;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.util.SingleLiveData;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecommendedReadingListInterestsViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final boolean fromSettings;
    public final SingleLiveData randomizeEvent;
    public final ReadonlyStateFlow uiState;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class UiState {
        public final boolean fromRandomize;
        public final boolean fromSettings;
        public final List items;
        public final List prevItems;
        public final Set prevSelectedItems;
        public final Set selectedItems;

        public UiState(boolean z, List list, Set set, boolean z2, List list2, Set set2) {
            list.getClass();
            set.getClass();
            list2.getClass();
            set2.getClass();
            this.fromSettings = z;
            this.items = list;
            this.selectedItems = set;
            this.fromRandomize = z2;
            this.prevItems = list2;
            this.prevSelectedItems = set2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v2, types: [java.util.List] */
        public static UiState copy$default(UiState uiState, ArrayList arrayList, LinkedHashSet linkedHashSet, int i) {
            boolean z = uiState.fromSettings;
            ArrayList arrayList2 = arrayList;
            if ((i & 2) != 0) {
                arrayList2 = uiState.items;
            }
            ArrayList arrayList3 = arrayList2;
            boolean z2 = uiState.fromRandomize;
            List list = uiState.prevItems;
            Set set = uiState.prevSelectedItems;
            uiState.getClass();
            arrayList3.getClass();
            list.getClass();
            set.getClass();
            return new UiState(z, arrayList3, linkedHashSet, z2, list, set);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UiState)) {
                return false;
            }
            UiState uiState = (UiState) obj;
            return this.fromSettings == uiState.fromSettings && Intrinsics.areEqual(this.items, uiState.items) && Intrinsics.areEqual(this.selectedItems, uiState.selectedItems) && this.fromRandomize == uiState.fromRandomize && Intrinsics.areEqual(this.prevItems, uiState.prevItems) && Intrinsics.areEqual(this.prevSelectedItems, uiState.prevSelectedItems);
        }

        public final int hashCode() {
            return this.prevSelectedItems.hashCode() + Modifier.CC.m((((this.selectedItems.hashCode() + Modifier.CC.m((this.fromSettings ? 1231 : 1237) * 31, 31, this.items)) * 31) + (this.fromRandomize ? 1231 : 1237)) * 31, 31, this.prevItems);
        }

        public final String toString() {
            return "UiState(fromSettings=" + this.fromSettings + ", items=" + this.items + ", selectedItems=" + this.selectedItems + ", fromRandomize=" + this.fromRandomize + ", prevItems=" + this.prevItems + ", prevSelectedItems=" + this.prevSelectedItems + ")";
        }
    }

    public RecommendedReadingListInterestsViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        this.fromSettings = Intrinsics.areEqual(savedStateHandle.get("fromSettings"), Boolean.TRUE);
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
        this.randomizeEvent = new SingleLiveData();
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this), null, new RecommendedReadingListInterestsViewModel$loadItems$2(this, null), 2);
    }

    public final void commitSelection() {
        Object value = this._uiState.getValue();
        String str = null;
        Resource.Success success = value instanceof Resource.Success ? (Resource.Success) value : null;
        if (success != null) {
            UiState uiState = (UiState) success.data;
            ArrayList mutableList = CollectionsKt.toMutableList((Collection) uiState.selectedItems);
            boolean z = this.fromSettings;
            if (z && mutableList.isEmpty()) {
                mutableList.add(CollectionsKt.first(uiState.items));
            }
            Prefs prefs = Prefs.INSTANCE;
            try {
                JsonImpl jsonImpl = JsonUtil.json;
                jsonImpl.getClass();
                str = jsonImpl.encodeToString(new HashSetSerializer(PageTitle.Companion.serializer(), 1), mutableList);
            } catch (Exception e) {
                L.w(e);
            }
            PrefsIoUtil.setString(R.string.preference_key_recommended_reading_list_interests, str);
            if (z) {
                WikiGamesEvent.submit$default("interest_select_click", "discover_settings", null, Integer.valueOf(mutableList.size()), null, null, null, null, 500);
            } else {
                WikiGamesEvent.submit$default(this.randomizeEvent.getValue() != null ? "random_submit_click" : "submit_click", "rrl_interests_select", null, Integer.valueOf(mutableList.size()), null, null, null, null, 500);
            }
        }
    }
}
