package org.wikipedia.suggestededits;

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
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cache;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.databinding.ActivityWatchlistFiltersBinding;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.languages.WikipediaLanguagesActivity;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFilterItemView;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFilterTypes;
import org.wikipedia.views.DefaultViewHolder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\t"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "RecentEditsFilterItemViewHolder", "RecentEditsFilterHeaderViewHolder", "RecentEditsFilterItemViewAddLanguageViewHolder", "RecentEditsFilterAdapter", "Filter", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsRecentEditsFilterActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ActivityWatchlistFiltersBinding binding;
    public final ArrayList appLanguagesPreFilterList = new ArrayList();
    public final ActivityResultRegistry$register$2 languageChooserLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new SearchFragment$$ExternalSyntheticLambda1(8, this), new FragmentManager$FragmentIntentSenderContract(3));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Filter {
        public final String filterCode;
        public final boolean isCheckBox;

        public Filter(String str, boolean z) {
            str.getClass();
            this.filterCode = str;
            this.isCheckBox = z;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecentEditsFilterAdapter extends RecyclerView.Adapter implements SuggestedEditsRecentEditsFilterItemView.Callback {
        public final SuggestedEditsRecentEditsFilterActivity context;
        public final ArrayList filtersList;
        public final Set includedTypeCodes;

        public RecentEditsFilterAdapter(SuggestedEditsRecentEditsFilterActivity suggestedEditsRecentEditsFilterActivity, ArrayList arrayList) {
            this.context = suggestedEditsRecentEditsFilterActivity;
            this.filtersList = arrayList;
            Prefs prefs = Prefs.INSTANCE;
            this.includedTypeCodes = CollectionsKt.toMutableSet(Prefs.getRecentEditsIncludedTypeCodes());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return this.filtersList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemViewType(int i) {
            ArrayList arrayList = this.filtersList;
            if ((arrayList.get(i) instanceof String) && Intrinsics.areEqual(arrayList.get(i), SuggestedEditsRecentEditsFilterActivity.this.getString(R.string.notifications_filter_update_app_languages))) {
                return 2;
            }
            return arrayList.get(i) instanceof String ? 0 : 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            DefaultViewHolder defaultViewHolder = (DefaultViewHolder) viewHolder;
            boolean z = defaultViewHolder instanceof RecentEditsFilterHeaderViewHolder;
            ArrayList arrayList = this.filtersList;
            if (z) {
                Object obj = arrayList.get(i);
                obj.getClass();
                ((RecentEditsFilterHeaderViewHolder) defaultViewHolder).headerText.setText((String) obj);
                return;
            }
            if (defaultViewHolder instanceof RecentEditsFilterItemViewAddLanguageViewHolder) {
                RecentEditsFilterItemViewAddLanguageViewHolder recentEditsFilterItemViewAddLanguageViewHolder = (RecentEditsFilterItemViewAddLanguageViewHolder) defaultViewHolder;
                Object obj2 = arrayList.get(i);
                obj2.getClass();
                SuggestedEditsRecentEditsFilterItemView suggestedEditsRecentEditsFilterItemView = recentEditsFilterItemViewAddLanguageViewHolder.filterItemView;
                suggestedEditsRecentEditsFilterItemView.setCallback(recentEditsFilterItemViewAddLanguageViewHolder);
                suggestedEditsRecentEditsFilterItemView.setSingleLabel((String) obj2);
                return;
            }
            Object obj3 = arrayList.get(i);
            obj3.getClass();
            View view = ((RecentEditsFilterItemViewHolder) defaultViewHolder).itemView;
            view.getClass();
            ((SuggestedEditsRecentEditsFilterItemView) view).setContents((Filter) obj3);
        }

        @Override // org.wikipedia.suggestededits.SuggestedEditsRecentEditsFilterItemView.Callback
        public final void onCheckedChanged(Filter filter) {
            List list;
            List list2;
            List list3;
            Object obj;
            if (filter != null) {
                String str = filter.filterCode;
                Prefs prefs = Prefs.INSTANCE;
                Cookie.Companion.submitPatrollerActivityEvent("filters_state_change", "pt_filters", Cookie.Companion.getActionDataString$default(null, null, null, null, null, str, Prefs.getRecentEditsIncludedTypeCodes().toString(), null, null, 863));
                boolean z = filter.isCheckBox;
                Set set = this.includedTypeCodes;
                if (!z) {
                    SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
                    str.getClass();
                    list = SuggestedEditsRecentEditsFilterTypes.MINOR_EDITS_GROUP;
                    list2 = SuggestedEditsRecentEditsFilterTypes.BOT_EDITS_GROUP;
                    list3 = SuggestedEditsRecentEditsFilterTypes.LATEST_REVISIONS_GROUP;
                    Iterator it = Room.listOf((Object[]) new List[]{list, list2, list3}).iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it.next();
                        SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
                        if (((List) obj).contains(SuggestedEditsRecentEditsFilterTypes.Companion.find(str))) {
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
                        arrayList.add(((SuggestedEditsRecentEditsFilterTypes) it2.next()).getId());
                    }
                    set.removeAll(CollectionsKt.toSet(arrayList));
                    set.add(str);
                } else if (set.contains(str)) {
                    set.remove(str);
                } else {
                    set.add(str);
                }
                Prefs prefs2 = Prefs.INSTANCE;
                Prefs.setRecentEditsIncludedTypeCodes(set);
                notifyItemRangeChanged(0, this.filtersList.size());
                SuggestedEditsRecentEditsFilterActivity.this.invalidateOptionsMenu();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            SuggestedEditsRecentEditsFilterActivity suggestedEditsRecentEditsFilterActivity = SuggestedEditsRecentEditsFilterActivity.this;
            if (i == 0) {
                View inflate = suggestedEditsRecentEditsFilterActivity.getLayoutInflater().inflate(R.layout.view_recent_edits_filter_header, viewGroup, false);
                inflate.getClass();
                return new RecentEditsFilterHeaderViewHolder(inflate);
            }
            SuggestedEditsRecentEditsFilterActivity suggestedEditsRecentEditsFilterActivity2 = this.context;
            if (i == 2) {
                return suggestedEditsRecentEditsFilterActivity.new RecentEditsFilterItemViewAddLanguageViewHolder(new SuggestedEditsRecentEditsFilterItemView(suggestedEditsRecentEditsFilterActivity2));
            }
            SuggestedEditsRecentEditsFilterItemView suggestedEditsRecentEditsFilterItemView = new SuggestedEditsRecentEditsFilterItemView(suggestedEditsRecentEditsFilterActivity2);
            suggestedEditsRecentEditsFilterItemView.setCallback(this);
            return new RecentEditsFilterItemViewHolder(suggestedEditsRecentEditsFilterItemView);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecentEditsFilterHeaderViewHolder extends DefaultViewHolder {
        public final TextView headerText;

        public RecentEditsFilterHeaderViewHolder(View view) {
            super(view);
            View findViewById = view.findViewById(R.id.filter_header_title);
            findViewById.getClass();
            this.headerText = (TextView) findViewById;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecentEditsFilterItemViewAddLanguageViewHolder extends DefaultViewHolder implements SuggestedEditsRecentEditsFilterItemView.Callback {
        public final SuggestedEditsRecentEditsFilterItemView filterItemView;

        public RecentEditsFilterItemViewAddLanguageViewHolder(SuggestedEditsRecentEditsFilterItemView suggestedEditsRecentEditsFilterItemView) {
            super(suggestedEditsRecentEditsFilterItemView);
            this.filterItemView = suggestedEditsRecentEditsFilterItemView;
        }

        @Override // org.wikipedia.suggestededits.SuggestedEditsRecentEditsFilterItemView.Callback
        public final void onCheckedChanged(Filter filter) {
            SuggestedEditsRecentEditsFilterActivity suggestedEditsRecentEditsFilterActivity = SuggestedEditsRecentEditsFilterActivity.this;
            ArrayList arrayList = suggestedEditsRecentEditsFilterActivity.appLanguagesPreFilterList;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            arrayList.addAll(Jsoup.getInstance().getLanguageState().getAppLanguageCodes());
            ActivityResultRegistry$register$2 activityResultRegistry$register$2 = suggestedEditsRecentEditsFilterActivity.languageChooserLauncher;
            int i = WikipediaLanguagesActivity.$r8$clinit;
            activityResultRegistry$register$2.launch(Cache.Companion.newIntent(suggestedEditsRecentEditsFilterActivity, Constants.InvokeSource.SUGGESTED_EDITS_RECENT_EDITS), null);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecentEditsFilterItemViewHolder extends DefaultViewHolder {
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = getLayoutInflater().inflate(R.layout.activity_suggested_edits_recent_edits_filters, (ViewGroup) null, false);
        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.recentEditsFiltersRecyclerView);
        if (recyclerView == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(R.id.recentEditsFiltersRecyclerView)));
            return;
        }
        this.binding = new ActivityWatchlistFiltersBinding((FrameLayout) inflate, recyclerView);
        setResult(-1);
        setUpRecyclerView$2();
        ActivityWatchlistFiltersBinding activityWatchlistFiltersBinding = this.binding;
        if (activityWatchlistFiltersBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        setContentView(activityWatchlistFiltersBinding.rootView);
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String m = ViewSizeResolver$CC.m();
        Prefs prefs = Prefs.INSTANCE;
        EventPlatformClient.submit(new AppInteractionEvent("settings_impression", "pt_filters", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_recent_edits_filter, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // org.wikipedia.activity.BaseActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        Set set;
        menuItem.getClass();
        if (menuItem.getItemId() != R.id.menu_filter_reset) {
            return super.onOptionsItemSelected(menuItem);
        }
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String m = ViewSizeResolver$CC.m();
        Prefs prefs = Prefs.INSTANCE;
        EventPlatformClient.submit(new AppInteractionEvent("filters_reset", "pt_filters", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
        String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
        appOrSystemLanguageCode.getClass();
        PrefsIoUtil.setString(R.string.preference_key_recent_edits_wiki_code, appOrSystemLanguageCode);
        SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
        set = SuggestedEditsRecentEditsFilterTypes.DEFAULT_FILTER_TYPE_SET;
        Set set2 = set;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set2, 10));
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            arrayList.add(((SuggestedEditsRecentEditsFilterTypes) it.next()).getId());
        }
        Prefs.setRecentEditsIncludedTypeCodes(arrayList);
        setUpRecyclerView$2();
        invalidateOptionsMenu();
        return true;
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        Set set;
        menu.getClass();
        SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
        set = SuggestedEditsRecentEditsFilterTypes.DEFAULT_FILTER_TYPE_SET;
        Set set2 = set;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set2, 10));
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            arrayList.add(((SuggestedEditsRecentEditsFilterTypes) it.next()).getId());
        }
        Prefs prefs = Prefs.INSTANCE;
        menu.findItem(R.id.menu_filter_reset).setVisible((Prefs.getRecentEditsIncludedTypeCodes().containsAll(arrayList) && CollectionsKt.subtract(Prefs.getRecentEditsIncludedTypeCodes(), CollectionsKt.toSet(arrayList)).isEmpty()) ? false : true);
        return super.onPrepareOptionsMenu(menu);
    }

    public final void setUpRecyclerView$2() {
        List list;
        List list2;
        List list3;
        List list4;
        List list5;
        List list6;
        List list7;
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
        String string = getString(R.string.patroller_tasks_filters_user_status_header);
        string.getClass();
        arrayList.add(string);
        SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
        list = SuggestedEditsRecentEditsFilterTypes.USER_REGISTRATION_GROUP;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Filter(((SuggestedEditsRecentEditsFilterTypes) it.next()).getId(), true));
        }
        SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
        list2 = SuggestedEditsRecentEditsFilterTypes.USER_EXPERIENCE_GROUP;
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(new Filter(((SuggestedEditsRecentEditsFilterTypes) it2.next()).getId(), true));
        }
        String string2 = getString(R.string.patroller_tasks_filters_latest_revisions_header);
        string2.getClass();
        arrayList.add(string2);
        SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
        list3 = SuggestedEditsRecentEditsFilterTypes.LATEST_REVISIONS_GROUP;
        Iterator it3 = list3.iterator();
        while (it3.hasNext()) {
            arrayList.add(new Filter(((SuggestedEditsRecentEditsFilterTypes) it3.next()).getId(), false));
        }
        String string3 = getString(R.string.patroller_tasks_filters_automated_contributions_header);
        string3.getClass();
        arrayList.add(string3);
        SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
        list4 = SuggestedEditsRecentEditsFilterTypes.BOT_EDITS_GROUP;
        Iterator it4 = list4.iterator();
        while (it4.hasNext()) {
            arrayList.add(new Filter(((SuggestedEditsRecentEditsFilterTypes) it4.next()).getId(), false));
        }
        String string4 = getString(R.string.patroller_tasks_filters_contribution_quality_header);
        string4.getClass();
        arrayList.add(string4);
        SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
        list5 = SuggestedEditsRecentEditsFilterTypes.DAMAGING_GROUP;
        Iterator it5 = list5.iterator();
        while (it5.hasNext()) {
            arrayList.add(new Filter(((SuggestedEditsRecentEditsFilterTypes) it5.next()).getId(), true));
        }
        String string5 = getString(R.string.patroller_tasks_filters_user_intent_header);
        string5.getClass();
        arrayList.add(string5);
        SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
        list6 = SuggestedEditsRecentEditsFilterTypes.GOODFAITH_GROUP;
        Iterator it6 = list6.iterator();
        while (it6.hasNext()) {
            arrayList.add(new Filter(((SuggestedEditsRecentEditsFilterTypes) it6.next()).getId(), true));
        }
        String string6 = getString(R.string.patroller_tasks_filters_significance_header);
        string6.getClass();
        arrayList.add(string6);
        SuggestedEditsRecentEditsFilterTypes.Companion.getClass();
        list7 = SuggestedEditsRecentEditsFilterTypes.MINOR_EDITS_GROUP;
        Iterator it7 = list7.iterator();
        while (it7.hasNext()) {
            arrayList.add(new Filter(((SuggestedEditsRecentEditsFilterTypes) it7.next()).getId(), false));
        }
        recyclerView.setAdapter(new RecentEditsFilterAdapter(this, arrayList));
        ActivityWatchlistFiltersBinding activityWatchlistFiltersBinding3 = this.binding;
        if (activityWatchlistFiltersBinding3 != null) {
            activityWatchlistFiltersBinding3.watchlistFiltersRecyclerView.setItemAnimator(null);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }
}
