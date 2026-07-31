package org.wikipedia.feed.topread;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.compose.ui.unit.DpKt;
import androidx.fragment.app.Fragment;
import j$.time.LocalDate;
import j$.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.text.UStringsKt;
import org.wikipedia.R;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.util.DateUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/feed/topread/TopReadArticlesActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Lorg/wikipedia/feed/topread/TopReadFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TopReadArticlesActivity extends SingleFragmentActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        Intent intent = getIntent();
        intent.getClass();
        Parcelable parcelable = (Parcelable) DpKt.getParcelableExtra(intent, "item", TopReadCard.class);
        parcelable.getClass();
        TopReadFragment topReadFragment = new TopReadFragment();
        topReadFragment.setArguments(UStringsKt.bundleOf(new Pair("item", (TopReadCard) parcelable)));
        return topReadFragment;
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity, org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        Intent intent = getIntent();
        intent.getClass();
        TopReadCard topReadCard = (TopReadCard) ((Parcelable) DpKt.getParcelableExtra(intent, "item", TopReadCard.class));
        if (topReadCard != null) {
            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
            Object value = topReadCard.articles.localDate$delegate.getValue();
            value.getClass();
            str = DateUtil.getShortDateString((LocalDate) value);
        } else {
            str = null;
        }
        if (str == null) {
            str = "";
        }
        setTitle(getString(R.string.top_read_activity_title, str));
    }
}
