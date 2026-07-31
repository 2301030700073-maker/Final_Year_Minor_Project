package org.wikipedia.usercontrib;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.databinding.ActivityWatchlistFiltersBinding;
import org.wikipedia.feed.onthisday.OnThisDayFragment;
import org.wikipedia.page.Namespace;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;
import org.wikipedia.settings.languages.WikipediaLanguagesActivity;
import org.wikipedia.staticdata.TalkAliasData;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.staticdata.UserTalkAliasData;
import org.wikipedia.usercontrib.UserContribFilterItemView;
import org.wikipedia.views.DefaultViewHolder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\t"}, d2 = {"Lorg/wikipedia/usercontrib/UserContribFilterActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "ItemViewHolder", "FilterHeaderViewHolder", "AddLanguageViewHolder", "RecyclerAdapter", "Item", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class UserContribFilterActivity extends BaseActivity {
    public static final List NAMESPACE_LIST = Room.listOf((Object[]) new Integer[]{Integer.valueOf(Namespace.MAIN.code()), Integer.valueOf(Namespace.TALK.code()), Integer.valueOf(Namespace.USER.code()), Integer.valueOf(Namespace.USER_TALK.code())});
    public ActivityWatchlistFiltersBinding binding;
    public final ActivityResultRegistry$register$2 langUpdateLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new SearchFragment$$ExternalSyntheticLambda1(12, this), new FragmentManager$FragmentIntentSenderContract(3));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AddLanguageViewHolder extends DefaultViewHolder implements UserContribFilterItemView.Callback {
        public final UserContribFilterItemView filterItemView;

        public AddLanguageViewHolder(UserContribFilterItemView userContribFilterItemView) {
            super(userContribFilterItemView);
            this.filterItemView = userContribFilterItemView;
        }

        @Override // org.wikipedia.usercontrib.UserContribFilterItemView.Callback
        public final void onSelected(Item item) {
            UserContribFilterActivity userContribFilterActivity = UserContribFilterActivity.this;
            ActivityResultRegistry$register$2 activityResultRegistry$register$2 = userContribFilterActivity.langUpdateLauncher;
            int i = WikipediaLanguagesActivity.$r8$clinit;
            activityResultRegistry$register$2.launch(Cache.Companion.newIntent(userContribFilterActivity, Constants.InvokeSource.USER_CONTRIB_ACTIVITY), null);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FilterHeaderViewHolder extends DefaultViewHolder {
        public final TextView headerText;

        public FilterHeaderViewHolder(View view) {
            super(view);
            View findViewById = view.findViewById(R.id.filter_header_title);
            findViewById.getClass();
            this.headerText = (TextView) findViewById;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Item {
        public final String filterCode;
        public final Integer imageRes;
        public final /* synthetic */ UserContribFilterActivity this$0;
        public final int type;

        public Item(UserContribFilterActivity userContribFilterActivity, int i, String str, Integer num) {
            str.getClass();
            this.this$0 = userContribFilterActivity;
            this.type = i;
            this.filterCode = str;
            this.imageRes = num;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ItemViewHolder extends DefaultViewHolder {
    }

    public final int getNamespaceCode(String str) {
        if (Intrinsics.areEqual(str, getString(R.string.namespace_article))) {
            return Namespace.MAIN.code();
        }
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        if (Intrinsics.areEqual(str, TalkAliasData.valueFor(Jsoup.getInstance().getAppOrSystemLanguageCode()))) {
            return Namespace.TALK.code();
        }
        if (Intrinsics.areEqual(str, UserAliasData.valueFor(Jsoup.getInstance().getAppOrSystemLanguageCode()))) {
            return Namespace.USER.code();
        }
        if (Intrinsics.areEqual(str, UserTalkAliasData.valueFor(Jsoup.getInstance().getAppOrSystemLanguageCode()))) {
            return Namespace.USER_TALK.code();
        }
        return -1;
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = getLayoutInflater().inflate(R.layout.activity_user_contrib_wiki_select, (ViewGroup) null, false);
        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.recycler_view);
        if (recyclerView == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(R.id.recycler_view)));
            return;
        }
        this.binding = new ActivityWatchlistFiltersBinding((FrameLayout) inflate, recyclerView);
        recyclerView.setLayoutManager(new LinearLayoutManager(1));
        ActivityWatchlistFiltersBinding activityWatchlistFiltersBinding = this.binding;
        if (activityWatchlistFiltersBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        activityWatchlistFiltersBinding.watchlistFiltersRecyclerView.setAdapter(new OnThisDayFragment.RecyclerAdapter(this, this));
        ActivityWatchlistFiltersBinding activityWatchlistFiltersBinding2 = this.binding;
        if (activityWatchlistFiltersBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        activityWatchlistFiltersBinding2.watchlistFiltersRecyclerView.setItemAnimator(null);
        ActivityWatchlistFiltersBinding activityWatchlistFiltersBinding3 = this.binding;
        if (activityWatchlistFiltersBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        setContentView(activityWatchlistFiltersBinding3.rootView);
        setResult(-1);
    }
}
