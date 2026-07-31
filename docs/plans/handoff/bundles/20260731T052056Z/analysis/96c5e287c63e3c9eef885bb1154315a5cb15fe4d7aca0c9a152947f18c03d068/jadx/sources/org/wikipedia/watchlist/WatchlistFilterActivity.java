package org.wikipedia.watchlist;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.Cache;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.databinding.ActivityWatchlistFiltersBinding;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.notifications.NotificationFilterActivity;
import org.wikipedia.notifications.NotificationFilterActivity.NotificationFilterAddLanguageViewHolder;
import org.wikipedia.notifications.NotificationFilterItemView;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.languages.WikipediaLanguagesActivity;
import org.wikipedia.util.log.L;
import org.wikipedia.views.DefaultViewHolder;
import org.wikipedia.watchlist.WatchlistFilterItemView;
import org.wikipedia.watchlist.WatchlistFilterTypes;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\t"}, d2 = {"Lorg/wikipedia/watchlist/WatchlistFilterActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "WatchlistFilterItemViewHolder", "WatchlistFilterHeaderViewHolder", "WatchlistFilterItemViewAddLanguageViewHolder", "WatchlistFilterAdapter", "Filter", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WatchlistFilterActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ActivityWatchlistFiltersBinding binding;
    public final ActivityResultRegistry$register$2 languageChooserLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new SearchFragment$$ExternalSyntheticLambda1(14, this), new FragmentManager$FragmentIntentSenderContract(3));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WatchlistFilterHeaderViewHolder extends DefaultViewHolder {
        public final TextView headerText;

        public WatchlistFilterHeaderViewHolder(View view) {
            super(view);
            View findViewById = view.findViewById(R.id.filter_header_title);
            findViewById.getClass();
            this.headerText = (TextView) findViewById;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WatchlistFilterItemViewAddLanguageViewHolder extends DefaultViewHolder implements WatchlistFilterItemView.Callback {
        public final WatchlistFilterItemView filterItemView;

        public WatchlistFilterItemViewAddLanguageViewHolder(WatchlistFilterItemView watchlistFilterItemView) {
            super(watchlistFilterItemView);
            this.filterItemView = watchlistFilterItemView;
        }

        @Override // org.wikipedia.watchlist.WatchlistFilterItemView.Callback
        public final void onCheckedChanged(Filter filter) {
            WatchlistFilterActivity watchlistFilterActivity = WatchlistFilterActivity.this;
            ActivityResultRegistry$register$2 activityResultRegistry$register$2 = watchlistFilterActivity.languageChooserLauncher;
            int i = WikipediaLanguagesActivity.$r8$clinit;
            activityResultRegistry$register$2.launch(Cache.Companion.newIntent(watchlistFilterActivity, Constants.InvokeSource.WATCHLIST_FILTER_ACTIVITY), null);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WatchlistFilterItemViewHolder extends DefaultViewHolder {
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = getLayoutInflater().inflate(R.layout.activity_watchlist_filters, (ViewGroup) null, false);
        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.watchlist_filters_recycler_view);
        if (recyclerView == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(R.id.watchlist_filters_recycler_view)));
            return;
        }
        this.binding = new ActivityWatchlistFiltersBinding((FrameLayout) inflate, recyclerView);
        setResult(-1);
        setUpRecyclerView$3();
        ActivityWatchlistFiltersBinding activityWatchlistFiltersBinding = this.binding;
        if (activityWatchlistFiltersBinding != null) {
            setContentView(activityWatchlistFiltersBinding.rootView);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_watchlist_filter, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // org.wikipedia.activity.BaseActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        Set set;
        menuItem.getClass();
        if (menuItem.getItemId() != R.id.menu_filter_reset) {
            return super.onOptionsItemSelected(menuItem);
        }
        Prefs prefs = Prefs.INSTANCE;
        Prefs.setWatchlistExcludedWikiCodes(EmptySet.INSTANCE);
        WatchlistFilterTypes.Companion.getClass();
        set = WatchlistFilterTypes.DEFAULT_FILTER_TYPE_SET;
        Set set2 = set;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set2, 10));
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            arrayList.add(((WatchlistFilterTypes) it.next()).getId());
        }
        Prefs.setWatchlistIncludedTypeCodes(arrayList);
        setUpRecyclerView$3();
        invalidateOptionsMenu();
        return true;
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        Set set;
        menu.getClass();
        WatchlistFilterTypes.Companion.getClass();
        set = WatchlistFilterTypes.DEFAULT_FILTER_TYPE_SET;
        Set set2 = set;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set2, 10));
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            arrayList.add(((WatchlistFilterTypes) it.next()).getId());
        }
        Prefs prefs = Prefs.INSTANCE;
        menu.findItem(R.id.menu_filter_reset).setVisible((Prefs.getWatchlistExcludedWikiCodes().isEmpty() && Prefs.getWatchlistIncludedTypeCodes().containsAll(arrayList) && CollectionsKt.subtract(Prefs.getWatchlistIncludedTypeCodes(), CollectionsKt.toSet(arrayList)).isEmpty()) ? false : true);
        return super.onPrepareOptionsMenu(menu);
    }

    public final void setUpRecyclerView$3() {
        List list;
        List list2;
        List list3;
        List list4;
        List list5;
        List list6;
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
        String string = getString(R.string.watchlist_filter_wiki_filter_header);
        string.getClass();
        arrayList.add(string);
        String string2 = getString(R.string.watchlist_filter_all_text);
        string2.getClass();
        arrayList.add(new Filter(this, 0, string2, true));
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Iterator it = ((ArrayList) ViewSizeResolver$CC.m785m()).iterator();
        while (it.hasNext()) {
            arrayList.add(new Filter(this, 0, (String) it.next(), true));
        }
        String string3 = getString(R.string.notifications_filter_update_app_languages);
        string3.getClass();
        arrayList.add(string3);
        String string4 = getString(R.string.watchlist_filter_latest_revisions_header);
        string4.getClass();
        arrayList.add(string4);
        WatchlistFilterTypes.Companion.getClass();
        list = WatchlistFilterTypes.LATEST_REVISIONS_GROUP;
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new Filter(this, ((WatchlistFilterTypes) it2.next()).getId()));
        }
        String string5 = getString(R.string.watchlist_filter_watchlist_activity_header);
        string5.getClass();
        arrayList.add(string5);
        WatchlistFilterTypes.Companion.getClass();
        list2 = WatchlistFilterTypes.UNSEEN_CHANGES_GROUP;
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList.add(new Filter(this, ((WatchlistFilterTypes) it3.next()).getId()));
        }
        String string6 = getString(R.string.watchlist_filter_automated_contributions_header);
        string6.getClass();
        arrayList.add(string6);
        WatchlistFilterTypes.Companion.getClass();
        list3 = WatchlistFilterTypes.BOT_EDITS_GROUP;
        Iterator it4 = list3.iterator();
        while (it4.hasNext()) {
            arrayList.add(new Filter(this, ((WatchlistFilterTypes) it4.next()).getId()));
        }
        String string7 = getString(R.string.watchlist_filter_significance_header);
        string7.getClass();
        arrayList.add(string7);
        WatchlistFilterTypes.Companion.getClass();
        list4 = WatchlistFilterTypes.MINOR_EDITS_GROUP;
        Iterator it5 = list4.iterator();
        while (it5.hasNext()) {
            arrayList.add(new Filter(this, ((WatchlistFilterTypes) it5.next()).getId()));
        }
        String string8 = getString(R.string.watchlist_filter_user_status_header);
        string8.getClass();
        arrayList.add(string8);
        WatchlistFilterTypes.Companion.getClass();
        list5 = WatchlistFilterTypes.USER_STATUS_GROUP;
        Iterator it6 = list5.iterator();
        while (it6.hasNext()) {
            arrayList.add(new Filter(this, ((WatchlistFilterTypes) it6.next()).getId()));
        }
        String string9 = getString(R.string.watchlist_filter_type_of_change_header);
        string9.getClass();
        arrayList.add(string9);
        WatchlistFilterTypes.Companion.getClass();
        list6 = WatchlistFilterTypes.TYPE_OF_CHANGES_GROUP;
        Iterator it7 = list6.iterator();
        while (it7.hasNext()) {
            arrayList.add(new Filter(this, 1, ((WatchlistFilterTypes) it7.next()).getId(), true));
        }
        recyclerView.setAdapter(new WatchlistFilterAdapter(this, this, arrayList));
        ActivityWatchlistFiltersBinding activityWatchlistFiltersBinding3 = this.binding;
        if (activityWatchlistFiltersBinding3 != null) {
            activityWatchlistFiltersBinding3.watchlistFiltersRecyclerView.setItemAnimator(null);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Filter {
        public final String filterCode;
        public final boolean isCheckBox;
        public final /* synthetic */ WatchlistFilterActivity this$0;
        public final int type;

        public Filter(WatchlistFilterActivity watchlistFilterActivity, int i, String str, boolean z) {
            str.getClass();
            this.this$0 = watchlistFilterActivity;
            this.type = i;
            this.filterCode = str;
            this.isCheckBox = z;
        }

        public /* synthetic */ Filter(WatchlistFilterActivity watchlistFilterActivity, String str) {
            this(watchlistFilterActivity, 1, str, false);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WatchlistFilterAdapter extends RecyclerView.Adapter implements NotificationFilterItemView.Callback, WatchlistFilterItemView.Callback {
        public final /* synthetic */ int $r8$classId = 1;
        public final BaseActivity context;
        public final Set excludedWikiCodes;
        public final ArrayList filtersList;
        public final Set includedTypeCodes;
        public final /* synthetic */ BaseActivity this$0;

        public WatchlistFilterAdapter(NotificationFilterActivity notificationFilterActivity, NotificationFilterActivity notificationFilterActivity2, ArrayList arrayList) {
            this.this$0 = notificationFilterActivity;
            this.context = notificationFilterActivity2;
            this.filtersList = arrayList;
            Prefs prefs = Prefs.INSTANCE;
            this.excludedWikiCodes = CollectionsKt.toMutableSet(Prefs.getNotificationExcludedWikiCodes());
            this.includedTypeCodes = CollectionsKt.toMutableSet(Prefs.getNotificationExcludedTypeCodes());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            int i = this.$r8$classId;
            ArrayList arrayList = this.filtersList;
            switch (i) {
            }
            return arrayList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemViewType(int i) {
            int i2 = this.$r8$classId;
            BaseActivity baseActivity = this.this$0;
            ArrayList arrayList = this.filtersList;
            switch (i2) {
                case 0:
                    if (!(arrayList.get(i) instanceof String) || !Intrinsics.areEqual(arrayList.get(i), ((WatchlistFilterActivity) baseActivity).getString(R.string.notifications_filter_update_app_languages))) {
                        if (arrayList.get(i) instanceof String) {
                            break;
                        }
                    } else {
                        break;
                    }
                    break;
                default:
                    if (!(arrayList.get(i) instanceof String) || !Intrinsics.areEqual(arrayList.get(i), ((NotificationFilterActivity) baseActivity).getString(R.string.notifications_filter_update_app_languages))) {
                        if (arrayList.get(i) instanceof String) {
                            break;
                        }
                    } else {
                        break;
                    }
                    break;
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int i2 = this.$r8$classId;
            ArrayList arrayList = this.filtersList;
            switch (i2) {
                case 0:
                    DefaultViewHolder defaultViewHolder = (DefaultViewHolder) viewHolder;
                    if (!(defaultViewHolder instanceof WatchlistFilterHeaderViewHolder)) {
                        if (!(defaultViewHolder instanceof WatchlistFilterItemViewAddLanguageViewHolder)) {
                            Object obj = arrayList.get(i);
                            obj.getClass();
                            View view = ((WatchlistFilterItemViewHolder) defaultViewHolder).itemView;
                            view.getClass();
                            ((WatchlistFilterItemView) view).setContents((Filter) obj);
                            break;
                        } else {
                            WatchlistFilterItemViewAddLanguageViewHolder watchlistFilterItemViewAddLanguageViewHolder = (WatchlistFilterItemViewAddLanguageViewHolder) defaultViewHolder;
                            Object obj2 = arrayList.get(i);
                            obj2.getClass();
                            WatchlistFilterItemView watchlistFilterItemView = watchlistFilterItemViewAddLanguageViewHolder.filterItemView;
                            watchlistFilterItemView.setCallback(watchlistFilterItemViewAddLanguageViewHolder);
                            watchlistFilterItemView.setSingleLabel((String) obj2);
                            break;
                        }
                    } else {
                        Object obj3 = arrayList.get(i);
                        obj3.getClass();
                        ((WatchlistFilterHeaderViewHolder) defaultViewHolder).headerText.setText((String) obj3);
                        break;
                    }
                default:
                    DefaultViewHolder defaultViewHolder2 = (DefaultViewHolder) viewHolder;
                    if (!(defaultViewHolder2 instanceof NotificationFilterActivity.NotificationFilterHeaderViewHolder)) {
                        if (!(defaultViewHolder2 instanceof NotificationFilterActivity.NotificationFilterAddLanguageViewHolder)) {
                            Object obj4 = arrayList.get(i);
                            obj4.getClass();
                            View view2 = ((NotificationFilterActivity.NotificationFilterItemViewHolder) defaultViewHolder2).itemView;
                            view2.getClass();
                            ((NotificationFilterItemView) view2).setContents((NotificationFilterActivity.Filter) obj4);
                            break;
                        } else {
                            NotificationFilterActivity.NotificationFilterAddLanguageViewHolder notificationFilterAddLanguageViewHolder = (NotificationFilterActivity.NotificationFilterAddLanguageViewHolder) defaultViewHolder2;
                            Object obj5 = arrayList.get(i);
                            obj5.getClass();
                            NotificationFilterItemView notificationFilterItemView = notificationFilterAddLanguageViewHolder.filterItemView;
                            notificationFilterItemView.setCallback(notificationFilterAddLanguageViewHolder);
                            notificationFilterItemView.setSingleLabel((String) obj5);
                            break;
                        }
                    } else {
                        Object obj6 = arrayList.get(i);
                        obj6.getClass();
                        ((NotificationFilterActivity.NotificationFilterHeaderViewHolder) defaultViewHolder2).headerText.setText((String) obj6);
                        break;
                    }
            }
        }

        @Override // org.wikipedia.watchlist.WatchlistFilterItemView.Callback
        public void onCheckedChanged(Filter filter) {
            List list;
            List list2;
            List list3;
            List list4;
            List list5;
            Object obj;
            WatchlistFilterActivity watchlistFilterActivity = (WatchlistFilterActivity) this.this$0;
            filter.getClass();
            String str = filter.filterCode;
            boolean areEqual = Intrinsics.areEqual(str, ((WatchlistFilterActivity) this.context).getString(R.string.watchlist_filter_all_text));
            int i = filter.type;
            Set set = this.includedTypeCodes;
            Set set2 = this.excludedWikiCodes;
            if (areEqual) {
                if (i == 0) {
                    if (set2.isEmpty()) {
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        set2.addAll(Jsoup.getInstance().getLanguageState().getAppLanguageCodes());
                    } else {
                        set2.clear();
                    }
                }
            } else if (i == 0) {
                if (set2.contains(str)) {
                    set2.remove(str);
                } else {
                    set2.add(str);
                }
            } else if (i == 1) {
                if (!filter.isCheckBox) {
                    WatchlistFilterTypes.Companion.getClass();
                    str.getClass();
                    list = WatchlistFilterTypes.MINOR_EDITS_GROUP;
                    list2 = WatchlistFilterTypes.BOT_EDITS_GROUP;
                    list3 = WatchlistFilterTypes.UNSEEN_CHANGES_GROUP;
                    list4 = WatchlistFilterTypes.LATEST_REVISIONS_GROUP;
                    list5 = WatchlistFilterTypes.USER_STATUS_GROUP;
                    Iterator it = Room.listOf((Object[]) new List[]{list, list2, list3, list4, list5}).iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it.next();
                        WatchlistFilterTypes.Companion.getClass();
                        if (((List) obj).contains(WatchlistFilterTypes.Companion.find(str))) {
                            break;
                        }
                    }
                    Iterable iterable = (List) obj;
                    if (iterable == null) {
                        iterable = EmptyList.INSTANCE;
                    }
                    ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable, 10));
                    Iterator it2 = iterable.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(((WatchlistFilterTypes) it2.next()).getId());
                    }
                    set.removeAll(CollectionsKt.toSet(arrayList));
                    set.add(str);
                } else if (set.contains(str)) {
                    set.remove(str);
                } else {
                    set.add(str);
                }
            }
            Prefs prefs = Prefs.INSTANCE;
            Prefs.setWatchlistExcludedWikiCodes(set2);
            Prefs.setWatchlistIncludedTypeCodes(set);
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            String readableScreenName = WikiGamesEvent.getReadableScreenName(watchlistFilterActivity, null);
            WikipediaApp wikipediaApp2 = WikipediaApp.instance;
            EventPlatformClient.submit(new BreadCrumbLogEvent(readableScreenName, "WatchlistFilterSelection.appWikis:" + ViewSizeResolver$CC.m785m() + ".excludedWikiCodes:" + set2 + ".includedTypeCodes:" + set));
            notifyItemRangeChanged(0, this.filtersList.size());
            watchlistFilterActivity.invalidateOptionsMenu();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            int i2 = this.$r8$classId;
            BaseActivity baseActivity = this.context;
            BaseActivity baseActivity2 = this.this$0;
            switch (i2) {
                case 0:
                    WatchlistFilterActivity watchlistFilterActivity = (WatchlistFilterActivity) baseActivity2;
                    WatchlistFilterActivity watchlistFilterActivity2 = (WatchlistFilterActivity) baseActivity;
                    if (i == 0) {
                        View inflate = watchlistFilterActivity.getLayoutInflater().inflate(R.layout.view_watchlist_filter_header, viewGroup, false);
                        inflate.getClass();
                        return new WatchlistFilterHeaderViewHolder(inflate);
                    }
                    if (i == 2) {
                        return watchlistFilterActivity.new WatchlistFilterItemViewAddLanguageViewHolder(new WatchlistFilterItemView(watchlistFilterActivity2));
                    }
                    WatchlistFilterItemView watchlistFilterItemView = new WatchlistFilterItemView(watchlistFilterActivity2);
                    watchlistFilterItemView.setCallback(this);
                    return new WatchlistFilterItemViewHolder(watchlistFilterItemView);
                default:
                    NotificationFilterActivity notificationFilterActivity = (NotificationFilterActivity) baseActivity2;
                    NotificationFilterActivity notificationFilterActivity2 = (NotificationFilterActivity) baseActivity;
                    if (i == 0) {
                        View inflate2 = notificationFilterActivity.getLayoutInflater().inflate(R.layout.view_notification_filter_header, viewGroup, false);
                        inflate2.getClass();
                        return new NotificationFilterActivity.NotificationFilterHeaderViewHolder(inflate2);
                    }
                    if (i == 2) {
                        return notificationFilterActivity.new NotificationFilterAddLanguageViewHolder(new NotificationFilterItemView(notificationFilterActivity2));
                    }
                    NotificationFilterItemView notificationFilterItemView = new NotificationFilterItemView(notificationFilterActivity2);
                    notificationFilterItemView.setCallback(this);
                    return new NotificationFilterActivity.NotificationFilterItemViewHolder(notificationFilterItemView);
            }
        }

        public WatchlistFilterAdapter(WatchlistFilterActivity watchlistFilterActivity, WatchlistFilterActivity watchlistFilterActivity2, ArrayList arrayList) {
            this.this$0 = watchlistFilterActivity;
            this.context = watchlistFilterActivity2;
            this.filtersList = arrayList;
            Prefs prefs = Prefs.INSTANCE;
            this.excludedWikiCodes = CollectionsKt.toMutableSet(Prefs.getWatchlistExcludedWikiCodes());
            this.includedTypeCodes = CollectionsKt.toMutableSet(Prefs.getWatchlistIncludedTypeCodes());
        }

        @Override // org.wikipedia.notifications.NotificationFilterItemView.Callback
        public void onCheckedChanged(NotificationFilterActivity.Filter filter) {
            String str;
            filter.getClass();
            String str2 = filter.filterCode;
            NotificationFilterActivity notificationFilterActivity = (NotificationFilterActivity) this.context;
            boolean areEqual = Intrinsics.areEqual(str2, notificationFilterActivity.getString(R.string.notifications_all_types_text));
            Set set = this.excludedWikiCodes;
            Set set2 = this.includedTypeCodes;
            if (areEqual) {
                if (set2.isEmpty()) {
                    int i = NotificationFilterActivity.$r8$clinit;
                    set2.addAll(HttpUrl.Companion.allTypesIdList());
                } else {
                    set2.clear();
                }
            } else if (Intrinsics.areEqual(str2, notificationFilterActivity.getString(R.string.notifications_all_wikis_text))) {
                if (set.isEmpty()) {
                    int i2 = NotificationFilterActivity.$r8$clinit;
                    set.addAll(HttpUrl.Companion.allWikisList());
                } else {
                    set.clear();
                }
            } else {
                int i3 = filter.type;
                if (i3 == 0) {
                    if (set.contains(str2)) {
                        set.remove(str2);
                    } else {
                        set.add(str2);
                    }
                } else if (i3 == 1) {
                    if (set2.contains(str2)) {
                        set2.remove(str2);
                    } else {
                        set2.add(str2);
                    }
                }
            }
            Prefs prefs = Prefs.INSTANCE;
            String str3 = null;
            try {
                JsonImpl jsonImpl = JsonUtil.json;
                jsonImpl.getClass();
                str = jsonImpl.encodeToString(new HashSetSerializer(StringSerializer.INSTANCE, 2), set);
            } catch (Exception e) {
                L.w(e);
                str = null;
            }
            PrefsIoUtil.setString(R.string.preference_key_excluded_wiki_codes_notification, str);
            Prefs prefs2 = Prefs.INSTANCE;
            try {
                JsonImpl jsonImpl2 = JsonUtil.json;
                jsonImpl2.getClass();
                str3 = jsonImpl2.encodeToString(new HashSetSerializer(StringSerializer.INSTANCE, 2), set2);
            } catch (Exception e2) {
                L.w(e2);
            }
            PrefsIoUtil.setString(R.string.preference_key_excluded_type_codes_notification, str3);
            notifyItemRangeChanged(0, this.filtersList.size());
        }
    }
}
