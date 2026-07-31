package org.wikipedia.wiktionary;

import android.content.ComponentCallbacks;
import android.content.Context;
import androidx.fragment.app.Fragment;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.Okio__OkioKt;
import okio.Path;
import org.maplibre.android.maps.MapView;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.shareafact.ShareHandler;
import org.wikipedia.util.UriUtil;
import org.wikipedia.yearinreview.YearInReviewActivity;
import org.wikipedia.yearinreview.YearInReviewViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WiktionaryDialog$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ WiktionaryDialog$$ExternalSyntheticLambda2(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ComponentCallbacks activity;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                WiktionaryDialog wiktionaryDialog = (WiktionaryDialog) obj2;
                String str = (String) obj;
                List list = WiktionaryDialog.enabledLanguages;
                str.getClass();
                if (StringsKt__StringsJVMKt.startsWith(str, "/wiki/", false) || StringsKt__StringsJVMKt.startsWith(str, "./", false)) {
                    wiktionaryDialog.dismiss();
                    if (PageFragment.class.isInstance(wiktionaryDialog.getTargetFragment(true))) {
                        activity = wiktionaryDialog.getTargetFragment(true);
                    } else {
                        Fragment fragment = wiktionaryDialog.mParentFragment;
                        if (fragment != null) {
                            if (PageFragment.class.isInstance(fragment)) {
                                activity = wiktionaryDialog.mParentFragment;
                            } else if (PageFragment.class.isInstance(wiktionaryDialog.requireParentFragment().mParentFragment)) {
                                activity = wiktionaryDialog.requireParentFragment().mParentFragment;
                            }
                        }
                        activity = PageFragment.class.isInstance(wiktionaryDialog.getActivity()) ? wiktionaryDialog.getActivity() : null;
                    }
                    PageFragment pageFragment = (PageFragment) activity;
                    if (pageFragment != null) {
                        List split$default = StringsKt.split$default(StringsKt.substringAfterLast('/', str, str), new char[]{'#'});
                        String str2 = (String) ((!StringsKt__StringsJVMKt.endsWith((String) split$default.get(0), ":Glossary", false) || split$default.size() <= 1) ? split$default.get(0) : split$default.get(1));
                        str2.getClass();
                        ShareHandler shareHandler = pageFragment.shareHandler;
                        if (shareHandler == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("shareHandler");
                            throw null;
                        }
                        shareHandler.showWiktionaryDefinition(str2);
                    }
                }
                return unit;
            case 1:
                String str3 = (String) obj;
                int i2 = YearInReviewActivity.$r8$clinit;
                str3.getClass();
                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                EventPlatformClient.submit(new BreadCrumbLogEvent("year_in_review", "donate_click"));
                String concat = "appmenu_yir_".concat(str3);
                YearInReviewViewModel.currentCampaignId = concat;
                UriUtil.submit$default(230, null, "donate_start_click_yir", concat, str3, null);
                Okio__OkioKt.show(((YearInReviewActivity) obj2).getSupportFragmentManager(), Path.Companion.newInstance$default(6, YearInReviewViewModel.currentCampaignId, null));
                return unit;
            default:
                MapView mapView = (MapView) obj2;
                ((Context) obj).getClass();
                return mapView;
        }
    }
}
