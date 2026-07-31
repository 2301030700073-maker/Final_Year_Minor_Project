package org.wikipedia.feed.news;

import android.graphics.Rect;
import android.util.TypedValue;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Date;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.databinding.FragmentArticleEditDetailsBinding;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.databinding.ViewMainDrawerBinding;
import org.wikipedia.diff.ArticleEditDetailsFragment;
import org.wikipedia.feed.onthisday.OnThisDayFragment;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.DeviceUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NewsFragment$$ExternalSyntheticLambda0 implements AppBarLayout.OnOffsetChangedListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Fragment f$0;

    public /* synthetic */ NewsFragment$$ExternalSyntheticLambda0(int i, Fragment fragment) {
        this.$r8$classId = i;
        this.f$0 = fragment;
    }

    @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener
    public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
        String str;
        int i2 = this.$r8$classId;
        Fragment fragment = this.f$0;
        switch (i2) {
            case 0:
                NewsFragment newsFragment = (NewsFragment) fragment;
                AppCompatActivity requireActivity = newsFragment.requireActivity();
                FragmentNewsBinding fragmentNewsBinding = newsFragment._binding;
                fragmentNewsBinding.getClass();
                DeviceUtil.updateStatusBarTheme(requireActivity, (MaterialToolbar) fragmentNewsBinding.toolbar, appBarLayout.getTotalScrollRange() + i > appBarLayout.getTotalScrollRange() / 2);
                NewsActivity newsActivity = (NewsActivity) newsFragment.requireActivity();
                TypedValue typedValue = new TypedValue();
                if (!newsActivity.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
                    typedValue = null;
                }
                if (typedValue == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
                    break;
                } else {
                    newsActivity.setNavigationBarColor(typedValue.data);
                    break;
                }
            case 1:
                ArticleEditDetailsFragment articleEditDetailsFragment = (ArticleEditDetailsFragment) fragment;
                Rect rect = new Rect();
                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding = articleEditDetailsFragment._binding;
                fragmentArticleEditDetailsBinding.getClass();
                CollapsingToolbarLayout collapsingToolbarLayout = fragmentArticleEditDetailsBinding.collapsingToolbarLayout;
                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding2 = articleEditDetailsFragment._binding;
                fragmentArticleEditDetailsBinding2.getClass();
                collapsingToolbarLayout.offsetDescendantRectToMyCoords(fragmentArticleEditDetailsBinding2.articleTitleDivider, rect);
                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding3 = articleEditDetailsFragment._binding;
                fragmentArticleEditDetailsBinding3.getClass();
                fragmentArticleEditDetailsBinding3.overlayRevisionDetailsView.setVisibility((-i) > rect.top ? 0 : 8);
                break;
            default:
                OnThisDayFragment onThisDayFragment = (OnThisDayFragment) fragment;
                ViewMainDrawerBinding viewMainDrawerBinding = onThisDayFragment._binding;
                viewMainDrawerBinding.getClass();
                viewMainDrawerBinding.mainDrawerContribsContainer.setAlpha(1.0f - Math.abs(i / appBarLayout.getTotalScrollRange()));
                if (i > (-appBarLayout.getTotalScrollRange())) {
                    ViewMainDrawerBinding viewMainDrawerBinding2 = onThisDayFragment._binding;
                    viewMainDrawerBinding2.getClass();
                    ((ImageView) viewMainDrawerBinding2.mainDrawerAccountAvatar).setVisibility(8);
                } else if (i <= (-appBarLayout.getTotalScrollRange())) {
                    ViewMainDrawerBinding viewMainDrawerBinding3 = onThisDayFragment._binding;
                    viewMainDrawerBinding3.getClass();
                    ((ImageView) viewMainDrawerBinding3.mainDrawerAccountAvatar).setVisibility(0);
                }
                if (i <= (-appBarLayout.getTotalScrollRange())) {
                    ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                    Date time = onThisDayFragment.getViewModel().date.getTime();
                    time.getClass();
                    str = DateUtil.getDateStringWithSkeletonPattern("MMMM d", time);
                } else {
                    str = "";
                }
                ViewMainDrawerBinding viewMainDrawerBinding4 = onThisDayFragment._binding;
                viewMainDrawerBinding4.getClass();
                if (!str.equals(((TextView) viewMainDrawerBinding4.yearInReviewRedDot).getText().toString())) {
                    appBarLayout.post(new Processor$$ExternalSyntheticLambda2(22, onThisDayFragment, str));
                    break;
                }
                break;
        }
    }
}
