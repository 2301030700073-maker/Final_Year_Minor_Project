package org.wikipedia.feed.onthisday;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import java.util.Calendar;
import org.wikipedia.databinding.ViewMainDrawerBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnThisDayFragment$$ExternalSyntheticLambda3 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ OnThisDayFragment f$0;

    public /* synthetic */ OnThisDayFragment$$ExternalSyntheticLambda3(OnThisDayFragment onThisDayFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = onThisDayFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        OnThisDayFragment onThisDayFragment = this.f$0;
        switch (i) {
            case 0:
                onThisDayFragment.requireActivity().finish();
                break;
            case 1:
                onThisDayFragment.onCalendarClicked();
                break;
            case 2:
                onThisDayFragment.onCalendarClicked();
                break;
            case 3:
                Calendar calendar = Calendar.getInstance();
                calendar.getClass();
                onThisDayFragment.onDatePicked(calendar);
                break;
            default:
                ViewMainDrawerBinding viewMainDrawerBinding = onThisDayFragment._binding;
                viewMainDrawerBinding.getClass();
                ((AppBarLayout) viewMainDrawerBinding.mainDrawerGamesHubContainer).setExpanded(true);
                ViewMainDrawerBinding viewMainDrawerBinding2 = onThisDayFragment._binding;
                viewMainDrawerBinding2.getClass();
                ((RecyclerView) viewMainDrawerBinding2.mainDrawerTalkContainer).scrollToPosition(0);
                break;
        }
    }
}
