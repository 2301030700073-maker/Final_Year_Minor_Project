package org.wikipedia.notifications;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.databinding.ActivityWatchlistFiltersBinding;
import org.wikipedia.notifications.NotificationFilterItemView;
import org.wikipedia.settings.languages.WikipediaLanguagesActivity;
import org.wikipedia.views.DefaultViewHolder;
import org.wikipedia.watchlist.WatchlistFilterActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001:\u0006\u0004\u0005\u0006\u0007\b\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\n"}, d2 = {"Lorg/wikipedia/notifications/NotificationFilterActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "NotificationFilterItemViewHolder", "NotificationFilterHeaderViewHolder", "NotificationFilterAddLanguageViewHolder", "WatchlistFilterAdapter", "Filter", "Companion", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NotificationFilterActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ActivityWatchlistFiltersBinding binding;
    public final ActivityResultRegistry$register$2 languageChooserLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(23, this), new FragmentManager$FragmentIntentSenderContract(3));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Filter {
        public final String filterCode;
        public final Integer imageRes;
        public final /* synthetic */ NotificationFilterActivity this$0;
        public final int type;

        public Filter(NotificationFilterActivity notificationFilterActivity, int i, String str, Integer num) {
            str.getClass();
            this.this$0 = notificationFilterActivity;
            this.type = i;
            this.filterCode = str;
            this.imageRes = num;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NotificationFilterAddLanguageViewHolder extends DefaultViewHolder implements NotificationFilterItemView.Callback {
        public final NotificationFilterItemView filterItemView;

        public NotificationFilterAddLanguageViewHolder(NotificationFilterItemView notificationFilterItemView) {
            super(notificationFilterItemView);
            this.filterItemView = notificationFilterItemView;
        }

        @Override // org.wikipedia.notifications.NotificationFilterItemView.Callback
        public final void onCheckedChanged(Filter filter) {
            NotificationFilterActivity notificationFilterActivity = NotificationFilterActivity.this;
            ActivityResultRegistry$register$2 activityResultRegistry$register$2 = notificationFilterActivity.languageChooserLauncher;
            int i = WikipediaLanguagesActivity.$r8$clinit;
            activityResultRegistry$register$2.launch(Cache.Companion.newIntent(notificationFilterActivity, Constants.InvokeSource.NOTIFICATION), null);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NotificationFilterHeaderViewHolder extends DefaultViewHolder {
        public final TextView headerText;

        public NotificationFilterHeaderViewHolder(View view) {
            super(view);
            View findViewById = view.findViewById(R.id.filter_header_title);
            findViewById.getClass();
            this.headerText = (TextView) findViewById;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NotificationFilterItemViewHolder extends DefaultViewHolder {
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = getLayoutInflater().inflate(R.layout.activity_notifications_filters, (ViewGroup) null, false);
        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.notifications_filters_recycler_view);
        if (recyclerView == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(R.id.notifications_filters_recycler_view)));
            return;
        }
        this.binding = new ActivityWatchlistFiltersBinding((FrameLayout) inflate, recyclerView);
        setResult(-1);
        setUpRecyclerView();
        ActivityWatchlistFiltersBinding activityWatchlistFiltersBinding = this.binding;
        if (activityWatchlistFiltersBinding != null) {
            setContentView(activityWatchlistFiltersBinding.rootView);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    public final void setUpRecyclerView() {
        ActivityWatchlistFiltersBinding activityWatchlistFiltersBinding = this.binding;
        if (activityWatchlistFiltersBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        activityWatchlistFiltersBinding.watchlistFiltersRecyclerView.setLayoutManager(new LinearLayoutManager(1));
        ActivityWatchlistFiltersBinding activityWatchlistFiltersBinding2 = this.binding;
        if (activityWatchlistFiltersBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        RecyclerView recyclerView = activityWatchlistFiltersBinding2.watchlistFiltersRecyclerView;
        ArrayList arrayList = new ArrayList();
        String string = getString(R.string.notifications_wiki_filter_header);
        string.getClass();
        arrayList.add(string);
        String string2 = getString(R.string.notifications_all_wikis_text);
        string2.getClass();
        arrayList.add(new Filter(this, 0, string2, null));
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Iterator it = ((ArrayList) ViewSizeResolver$CC.m785m()).iterator();
        while (it.hasNext()) {
            arrayList.add(new Filter(this, 0, (String) it.next(), null));
        }
        arrayList.add(new Filter(this, 0, "commons", Integer.valueOf(R.drawable.ic_commons_logo)));
        arrayList.add(new Filter(this, 0, "wikidata", Integer.valueOf(R.drawable.ic_wikidata_logo)));
        String string3 = getString(R.string.notifications_filter_update_app_languages);
        string3.getClass();
        arrayList.add(string3);
        String string4 = getString(R.string.notifications_type_filter_header);
        string4.getClass();
        arrayList.add(string4);
        String string5 = getString(R.string.notifications_all_types_text);
        string5.getClass();
        arrayList.add(new Filter(this, 1, string5, null));
        NotificationCategory.Companion.getClass();
        for (NotificationCategory notificationCategory : NotificationCategory.FILTERS_GROUP) {
            arrayList.add(new Filter(this, 1, notificationCategory.getId(), Integer.valueOf(notificationCategory.getIconResId())));
        }
        recyclerView.setAdapter(new WatchlistFilterActivity.WatchlistFilterAdapter(this, this, arrayList));
        ActivityWatchlistFiltersBinding activityWatchlistFiltersBinding3 = this.binding;
        if (activityWatchlistFiltersBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        activityWatchlistFiltersBinding3.watchlistFiltersRecyclerView.setItemAnimator(null);
    }
}
