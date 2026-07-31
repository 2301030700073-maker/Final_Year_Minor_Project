package org.wikipedia.page;

import android.widget.ImageView;
import com.skydoves.balloon.Balloon;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.WikiArticleCardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageActivity$$ExternalSyntheticLambda12 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PageActivity f$0;

    public /* synthetic */ PageActivity$$ExternalSyntheticLambda12(PageActivity pageActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = pageActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                int i = PageActivity.$r8$clinit;
                ((WikiArticleCardView) this.f$0.getBinding().wikiArticleCardView).setVisibility(8);
                break;
            default:
                int i2 = PageActivity.$r8$clinit;
                PageActivity pageActivity = this.f$0;
                String string = pageActivity.getString(R.string.theme_chooser_menu_item_short_tooltip);
                string.getClass();
                Balloon tooltip$default = ShareUtil.getTooltip$default(pageActivity, string, false, -Okio__OkioKt.roundedDpToPx(7.0f), true, true, 0, 0, 896);
                tooltip$default.setOnBalloonDismissListener(new PageActivity$$ExternalSyntheticLambda8(pageActivity, 1));
                BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                ImageView imageView = (ImageView) pageActivity.getBinding().pageToolbarButtonShowOverflowMenu;
                companion.getClass();
                BreadCrumbLogEvent.Companion.logTooltipShown(pageActivity, imageView);
                tooltip$default.showAlignBottom((ImageView) pageActivity.getBinding().pageToolbarButtonShowOverflowMenu, 0);
                Balloon balloon = pageActivity.currentTooltip;
                if (balloon != null) {
                    balloon.dismiss();
                }
                pageActivity.currentTooltip = tooltip$default;
                pageActivity.isTooltipShowing = true;
                break;
        }
    }
}
