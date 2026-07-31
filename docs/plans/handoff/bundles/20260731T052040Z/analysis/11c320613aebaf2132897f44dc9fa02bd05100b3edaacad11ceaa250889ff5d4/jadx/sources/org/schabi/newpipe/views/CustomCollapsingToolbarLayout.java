package org.schabi.newpipe.views;

import android.content.Context;
import android.util.AttributeSet;
import androidx.core.view.ViewCompat;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import java.util.WeakHashMap;
import org.schabi.newpipe.R;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class CustomCollapsingToolbarLayout extends CollapsingToolbarLayout {
    public static final /* synthetic */ int $r8$clinit = 0;

    public CustomCollapsingToolbarLayout(Context context) {
        super(context, null, R.attr.collapsingToolbarLayoutStyle);
        FeedViewModel$$ExternalSyntheticLambda0 feedViewModel$$ExternalSyntheticLambda0 = new FeedViewModel$$ExternalSyntheticLambda0(26);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(this, feedViewModel$$ExternalSyntheticLambda0);
    }

    public CustomCollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        FeedViewModel$$ExternalSyntheticLambda0 feedViewModel$$ExternalSyntheticLambda0 = new FeedViewModel$$ExternalSyntheticLambda0(26);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(this, feedViewModel$$ExternalSyntheticLambda0);
    }

    public CustomCollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.collapsingToolbarLayoutStyle);
        FeedViewModel$$ExternalSyntheticLambda0 feedViewModel$$ExternalSyntheticLambda0 = new FeedViewModel$$ExternalSyntheticLambda0(26);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(this, feedViewModel$$ExternalSyntheticLambda0);
    }
}
