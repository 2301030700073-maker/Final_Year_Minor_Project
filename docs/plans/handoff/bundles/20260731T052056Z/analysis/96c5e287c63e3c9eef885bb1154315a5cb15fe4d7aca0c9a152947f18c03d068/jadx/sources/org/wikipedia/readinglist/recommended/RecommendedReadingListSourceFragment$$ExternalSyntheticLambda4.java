package org.wikipedia.readinglist.recommended;

import android.os.Bundle;
import androidx.fragment.app.BackStackRecord;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.readinglist.ReadingListActivity;
import org.wikipedia.readinglist.ReadingListMode;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4 implements Function0 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ RecommendedReadingListSourceFragment f$1;

    public /* synthetic */ RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4(String str, RecommendedReadingListSourceFragment recommendedReadingListSourceFragment) {
        this.f$0 = str;
        this.f$1 = recommendedReadingListSourceFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        RecommendedReadingListSourceFragment recommendedReadingListSourceFragment = this.f$1;
        switch (i) {
            case 0:
                String str = this.f$0;
                WikiGamesEvent.submit$default("close_click", str, null, null, null, null, null, null, 508);
                if (recommendedReadingListSourceFragment.getViewModel().fromSettings) {
                    RecommendedReadingListSource recommendedReadingListSource = (RecommendedReadingListSource) recommendedReadingListSourceFragment.getViewModel().saveSourceSelection().second;
                    ArrayList arrayList = recommendedReadingListSourceFragment.getViewModel().availableSources;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(((RecommendedReadingListSource) it.next()).getEventString());
                    }
                    String obj = arrayList2.toString();
                    String eventString = recommendedReadingListSource.getEventString();
                    Prefs prefs = Prefs.INSTANCE;
                    WikiGamesEvent.submit$default("submit_click", str, obj, null, null, Prefs.getRecommendedReadingListSource().getEventString(), eventString, null, 408);
                    recommendedReadingListSourceFragment.requireActivity().setResult(-1);
                }
                recommendedReadingListSourceFragment.requireActivity().finish();
                break;
            default:
                Pair saveSourceSelection = recommendedReadingListSourceFragment.getViewModel().saveSourceSelection();
                boolean booleanValue = ((Boolean) saveSourceSelection.first).booleanValue();
                RecommendedReadingListSource recommendedReadingListSource2 = (RecommendedReadingListSource) saveSourceSelection.second;
                ArrayList arrayList3 = recommendedReadingListSourceFragment.getViewModel().availableSources;
                ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList3, 10));
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    arrayList4.add(((RecommendedReadingListSource) it2.next()).getEventString());
                }
                String obj2 = arrayList4.toString();
                String eventString2 = recommendedReadingListSource2.getEventString();
                Prefs prefs2 = Prefs.INSTANCE;
                WikiGamesEvent.submit$default("submit_click", this.f$0, obj2, null, null, Prefs.getRecommendedReadingListSource().getEventString(), eventString2, null, 408);
                if (!booleanValue) {
                    PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_enabled, true);
                    int i2 = ReadingListActivity.$r8$clinit;
                    recommendedReadingListSourceFragment.startActivity(NodeUtils.newIntent(recommendedReadingListSourceFragment.requireContext(), ReadingListMode.RECOMMENDED, null), null);
                    recommendedReadingListSourceFragment.requireActivity().finish();
                    break;
                } else {
                    BackStackRecord backStackRecord = new BackStackRecord(recommendedReadingListSourceFragment.requireActivity().getSupportFragmentManager());
                    RecommendedReadingListInterestsFragment recommendedReadingListInterestsFragment = new RecommendedReadingListInterestsFragment();
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("fromSettings", false);
                    recommendedReadingListInterestsFragment.setArguments(bundle);
                    backStackRecord.doAddOp(android.R.id.content, recommendedReadingListInterestsFragment, null, 1);
                    backStackRecord.addToBackStack();
                    backStackRecord.commit();
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ RecommendedReadingListSourceFragment$$ExternalSyntheticLambda4(RecommendedReadingListSourceFragment recommendedReadingListSourceFragment, String str) {
        this.f$1 = recommendedReadingListSourceFragment;
        this.f$0 = str;
    }
}
