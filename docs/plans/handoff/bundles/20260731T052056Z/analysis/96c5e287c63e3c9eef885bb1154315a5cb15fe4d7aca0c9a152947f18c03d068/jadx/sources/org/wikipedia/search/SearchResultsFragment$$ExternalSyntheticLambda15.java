package org.wikipedia.search;

import android.location.Location;
import androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Unit;
import kotlin.jvm.functions.Function6;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchResultsFragment$$ExternalSyntheticLambda15 implements Function6 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SearchResultsFragment$$ExternalSyntheticLambda15(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function6
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        int i = this.$r8$classId;
        Object obj7 = this.f$0;
        switch (i) {
            case 0:
                SearchResultsFragment searchResultsFragment = (SearchResultsFragment) obj7;
                SearchResult searchResult = (SearchResult) obj;
                PageTitle pageTitle = (PageTitle) obj2;
                boolean booleanValue = ((Boolean) obj3).booleanValue();
                boolean booleanValue2 = ((Boolean) obj4).booleanValue();
                Location location = (Location) obj6;
                searchResult.getClass();
                pageTitle.getClass();
                SVGAndroidRenderer instrument = ContextKt.getInstrument(searchResultsFragment.requireActivity());
                if (instrument != null) {
                    String str = booleanValue2 ? "semantic_search_link" : "semantic_search_result";
                    DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda1 = TestKitchenAdapter.flushEventsRunnable;
                    SVGAndroidRenderer.submitInteraction$default(instrument, "search_result_click", null, null, str, TestKitchenAdapter.getPageData$default(pageTitle), searchResultsFragment.getViewModel().getHybridEventActionContext(searchResult), 86);
                }
                SearchFragment callback = searchResultsFragment.callback();
                if (callback != null) {
                    callback.navigateToTitle(pageTitle, booleanValue, location);
                }
                return Unit.INSTANCE;
            default:
                SelectionManager selectionManager = (SelectionManager) obj7;
                boolean booleanValue3 = ((Boolean) obj).booleanValue();
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj2;
                long m231convertToContainerCoordinatesR5De75A = selectionManager.m231convertToContainerCoordinatesR5De75A(layoutCoordinates, ((Offset) obj3).packedValue);
                long m231convertToContainerCoordinatesR5De75A2 = selectionManager.m231convertToContainerCoordinatesR5De75A(layoutCoordinates, ((Offset) obj4).packedValue);
                selectionManager.setInTouchMode(booleanValue3);
                return Boolean.valueOf(selectionManager.m232updateSelectionjyLRC_s$foundation(m231convertToContainerCoordinatesR5De75A, m231convertToContainerCoordinatesR5De75A2, ((Boolean) obj5).booleanValue(), (SelectionAdjustment$Companion$$ExternalSyntheticLambda0) obj6));
        }
    }
}
