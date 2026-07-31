package org.wikipedia.feed.news;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.compose.ui.unit.DpKt;
import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.text.UStringsKt;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/feed/news/NewsActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Lorg/wikipedia/feed/news/NewsFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NewsActivity extends SingleFragmentActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        Intent intent = getIntent();
        intent.getClass();
        Parcelable parcelable = (Parcelable) DpKt.getParcelableExtra(intent, "item", NewsItem.class);
        parcelable.getClass();
        Intent intent2 = getIntent();
        intent2.getClass();
        Parcelable parcelable2 = (Parcelable) DpKt.getParcelableExtra(intent2, "wikiSite", WikiSite.class);
        parcelable2.getClass();
        NewsFragment newsFragment = new NewsFragment();
        newsFragment.setArguments(UStringsKt.bundleOf(new Pair("item", (NewsItem) parcelable), new Pair("wikiSite", (WikiSite) parcelable2)));
        return newsFragment;
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity, org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setStatusBarColor(0);
    }
}
