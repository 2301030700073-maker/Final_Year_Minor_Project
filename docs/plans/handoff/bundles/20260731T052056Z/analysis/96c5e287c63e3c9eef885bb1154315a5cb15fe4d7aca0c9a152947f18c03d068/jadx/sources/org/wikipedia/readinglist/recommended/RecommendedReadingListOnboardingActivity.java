package org.wikipedia.readinglist.recommended;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import org.wikipedia.activity.SingleFragmentActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/readinglist/recommended/RecommendedReadingListOnboardingActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "org/wikipedia/readinglist/recommended/RecommendedReadingListHelper", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RecommendedReadingListOnboardingActivity extends SingleFragmentActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        boolean booleanExtra = getIntent().getBooleanExtra("fromSettings", false);
        if (getIntent().getBooleanExtra("startFromSourceSelection", true)) {
            RecommendedReadingListSourceFragment recommendedReadingListSourceFragment = new RecommendedReadingListSourceFragment();
            Bundle bundle = new Bundle();
            bundle.putBoolean("fromSettings", booleanExtra);
            recommendedReadingListSourceFragment.setArguments(bundle);
            return recommendedReadingListSourceFragment;
        }
        RecommendedReadingListInterestsFragment recommendedReadingListInterestsFragment = new RecommendedReadingListInterestsFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean("fromSettings", booleanExtra);
        recommendedReadingListInterestsFragment.setArguments(bundle2);
        return recommendedReadingListInterestsFragment;
    }
}
