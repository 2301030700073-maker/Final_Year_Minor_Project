package org.wikipedia.readinglist;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$1;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.text.UStringsKt;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0006B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lorg/wikipedia/readinglist/ReadingListActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Lorg/wikipedia/readinglist/ReadingListFragment;", "Lorg/wikipedia/activity/BaseActivity$Callback;", "<init>", "()V", "org/jsoup/nodes/NodeUtils", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReadingListActivity extends SingleFragmentActivity implements BaseActivity.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ReadingListMode readingListMode = ReadingListMode.DEFAULT;
    public final FragmentManager$1 onBackPressedCallback = new FragmentManager$1(10, this);

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        ReadingListMode readingListMode = (ReadingListMode) getIntent().getSerializableExtra("readingListMode");
        if (readingListMode == null) {
            readingListMode = ReadingListMode.DEFAULT;
        }
        this.readingListMode = readingListMode;
        if (readingListMode == ReadingListMode.DEFAULT) {
            long longExtra = getIntent().getLongExtra("readingListId", 0L);
            ReadingListFragment readingListFragment = new ReadingListFragment();
            readingListFragment.setArguments(UStringsKt.bundleOf(new Pair("readingListId", Long.valueOf(longExtra))));
            return readingListFragment;
        }
        Constants.InvokeSource invokeSource = (Constants.InvokeSource) getIntent().getSerializableExtra("invokeSource");
        ReadingListMode readingListMode2 = this.readingListMode;
        readingListMode2.getClass();
        ReadingListFragment readingListFragment2 = new ReadingListFragment();
        readingListFragment2.setArguments(UStringsKt.bundleOf(new Pair("readingListMode", readingListMode2), new Pair("invokeSource", invokeSource)));
        return readingListFragment2;
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity, org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStatusBarColor(0);
        setTitle(getString(R.string.reading_list_activity_title, getIntent().getStringExtra("readingListTitle")));
        getOnBackPressedDispatcher().addCallback(this.onBackPressedCallback, this);
        this.callback = this;
    }

    @Override // org.wikipedia.activity.BaseActivity.Callback
    public final void onPermissionResult(BaseActivity baseActivity, boolean z) {
        if (z) {
            RecommendedReadingListSourceScreenKt.scheduleRecommendedReadingListNotification(this);
            Prefs prefs = Prefs.INSTANCE;
            Prefs.setRecommendedReadingListNotificationEnabled(true);
        } else {
            Prefs prefs2 = Prefs.INSTANCE;
            Prefs.setRecommendedReadingListNotificationEnabled(false);
        }
        ReadingListFragment readingListFragment = (ReadingListFragment) getFragment();
        readingListFragment.update(readingListFragment.readingList);
    }
}
