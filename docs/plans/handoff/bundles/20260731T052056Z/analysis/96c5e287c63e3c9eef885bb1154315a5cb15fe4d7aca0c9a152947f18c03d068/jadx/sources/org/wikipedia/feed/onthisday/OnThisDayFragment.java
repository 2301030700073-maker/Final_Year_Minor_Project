package org.wikipedia.feed.onthisday;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.viewpager2.widget.ViewPager2;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.tabs.TabLayout;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.Cache;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.databinding.ViewMainDrawerBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.feed.news.NewsFragment$$ExternalSyntheticLambda0;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.settings.AppIconDialog;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.staticdata.TalkAliasData;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.staticdata.UserTalkAliasData;
import org.wikipedia.usercontrib.UserContribFilterActivity;
import org.wikipedia.usercontrib.UserContribFilterActivity.AddLanguageViewHolder;
import org.wikipedia.usercontrib.UserContribFilterItemView;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.AppTextView;
import org.wikipedia.views.CustomDatePicker;
import org.wikipedia.views.DefaultViewHolder;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.HeaderMarginItemDecoration;
import org.wikipedia.views.WikiErrorView;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\b"}, d2 = {"Lorg/wikipedia/feed/onthisday/OnThisDayFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "RecyclerAdapter", "EventsViewHolder", "FooterViewHolder", "AppIconAdapter", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OnThisDayFragment extends Fragment {
    public ViewMainDrawerBinding _binding;
    public final NewsFragment$$ExternalSyntheticLambda0 offsetChangedListener;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EventsViewHolder extends RecyclerView.ViewHolder {
        public final SVGAndroidRenderer otdEventLayout;
        public final /* synthetic */ OnThisDayFragment this$0;
        public final WikiSite wiki;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EventsViewHolder(OnThisDayFragment onThisDayFragment, OkHttpCall.AnonymousClass1 anonymousClass1, WikiSite wikiSite) {
            super((LinearLayout) anonymousClass1.val$callback);
            wikiSite.getClass();
            this.this$0 = onThisDayFragment;
            this.wiki = wikiSite;
            SVGAndroidRenderer sVGAndroidRenderer = (SVGAndroidRenderer) anonymousClass1.this$0;
            this.otdEventLayout = sVGAndroidRenderer;
            ((AppTextView) sVGAndroidRenderer.stateStack).setTextIsSelectable(true);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FooterViewHolder extends RecyclerView.ViewHolder {
    }

    public OnThisDayFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(10, new HomeFragment$special$$inlined$viewModels$default$2(9, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(OnThisDayViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 18), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 4), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 19));
        this.offsetChangedListener = new NewsFragment$$ExternalSyntheticLambda0(2, this);
    }

    public final OnThisDayViewModel getViewModel() {
        return (OnThisDayViewModel) this.viewModel$delegate.getValue();
    }

    public final void maybeHideDateIndicator() {
        ViewMainDrawerBinding viewMainDrawerBinding = this._binding;
        viewMainDrawerBinding.getClass();
        viewMainDrawerBinding.rootView.setVisibility((getViewModel().date.get(2) == Calendar.getInstance().get(2) && getViewModel().date.get(5) == Calendar.getInstance().get(5)) ? 8 : 0);
        ViewMainDrawerBinding viewMainDrawerBinding2 = this._binding;
        viewMainDrawerBinding2.getClass();
        ((TextView) viewMainDrawerBinding2.tempAccountName).setText(String.format(Locale.getDefault(), "%d", Arrays.copyOf(new Object[]{Integer.valueOf(Calendar.getInstance().get(5))}, 1)));
        ViewMainDrawerBinding viewMainDrawerBinding3 = this._binding;
        viewMainDrawerBinding3.getClass();
        UuidKt.setAutoSizeTextTypeUniformWithConfiguration((TextView) viewMainDrawerBinding3.tempAccountName, 4, 10, 2);
    }

    public final void onCalendarClicked() {
        CustomDatePicker customDatePicker = new CustomDatePicker();
        int i = getViewModel().date.get(2);
        int i2 = getViewModel().date.get(5);
        customDatePicker.selectedDay.set(2016, i, i2);
        customDatePicker.callbackDay.set(2016, i, i2);
        customDatePicker.callback = this;
        customDatePicker.show(getParentFragmentManager(), "datePicker");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        int i = 0;
        View inflate = layoutInflater.inflate(R.layout.fragment_on_this_day, viewGroup, false);
        int i2 = R.id.app_bar;
        AppBarLayout appBarLayout = (AppBarLayout) Room.findChildViewById(inflate, R.id.app_bar);
        if (appBarLayout != null) {
            i2 = R.id.collapsing_toolbar_layout;
            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) Room.findChildViewById(inflate, R.id.collapsing_toolbar_layout);
            if (collapsingToolbarLayout != null) {
                i2 = R.id.day;
                TextView textView = (TextView) Room.findChildViewById(inflate, R.id.day);
                if (textView != null) {
                    i2 = R.id.day_container;
                    LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.day_container);
                    if (linearLayout != null) {
                        i2 = R.id.day_info;
                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.day_info);
                        if (textView2 != null) {
                            i2 = R.id.drop_down;
                            if (((ImageView) Room.findChildViewById(inflate, R.id.drop_down)) != null) {
                                i2 = R.id.drop_down_toolbar;
                                ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.drop_down_toolbar);
                                if (imageView != null) {
                                    i2 = R.id.error_view;
                                    WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.error_view);
                                    if (wikiErrorView != null) {
                                        i2 = R.id.events_recycler;
                                        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.events_recycler);
                                        if (recyclerView != null) {
                                            i2 = R.id.header_frame_layout;
                                            LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.header_frame_layout);
                                            if (linearLayout2 != null) {
                                                i2 = R.id.indicator_date;
                                                TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.indicator_date);
                                                if (textView3 != null) {
                                                    i2 = R.id.indicator_layout;
                                                    FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate, R.id.indicator_layout);
                                                    if (frameLayout != null) {
                                                        i2 = R.id.on_this_day_title_view;
                                                        TextView textView4 = (TextView) Room.findChildViewById(inflate, R.id.on_this_day_title_view);
                                                        if (textView4 != null) {
                                                            i2 = R.id.progress_bar;
                                                            ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.progress_bar);
                                                            if (progressBar != null) {
                                                                i2 = R.id.toolbar;
                                                                MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                                                                if (materialToolbar != null) {
                                                                    i2 = R.id.toolbar_day;
                                                                    TextView textView5 = (TextView) Room.findChildViewById(inflate, R.id.toolbar_day);
                                                                    if (textView5 != null) {
                                                                        i2 = R.id.toolbar_day_container;
                                                                        LinearLayout linearLayout3 = (LinearLayout) Room.findChildViewById(inflate, R.id.toolbar_day_container);
                                                                        if (linearLayout3 != null) {
                                                                            this._binding = new ViewMainDrawerBinding((CoordinatorLayout) inflate, appBarLayout, collapsingToolbarLayout, textView, linearLayout, textView2, imageView, wikiErrorView, recyclerView, linearLayout2, textView3, frameLayout, textView4, progressBar, materialToolbar, textView5, linearLayout3);
                                                                            recyclerView.setLayoutManager(new LinearLayoutManager(1));
                                                                            ViewMainDrawerBinding viewMainDrawerBinding = this._binding;
                                                                            viewMainDrawerBinding.getClass();
                                                                            ((RecyclerView) viewMainDrawerBinding.mainDrawerTalkContainer).addItemDecoration(new HeaderMarginItemDecoration(0, Okio__OkioKt.roundedDpToPx(24.0f), 0, Okio__OkioKt.roundedDpToPx(RecyclerView.DECELERATION_RATE)));
                                                                            ViewMainDrawerBinding viewMainDrawerBinding2 = this._binding;
                                                                            viewMainDrawerBinding2.getClass();
                                                                            ((RecyclerView) viewMainDrawerBinding2.mainDrawerTalkContainer).setNestedScrollingEnabled(true);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding3 = this._binding;
                                                                            viewMainDrawerBinding3.getClass();
                                                                            ((RecyclerView) viewMainDrawerBinding3.mainDrawerTalkContainer).setClipToPadding(false);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding4 = this._binding;
                                                                            viewMainDrawerBinding4.getClass();
                                                                            ((WikiErrorView) viewMainDrawerBinding4.mainDrawerSettingsContainer).setBackClickListener(new OnThisDayFragment$$ExternalSyntheticLambda3(this, i));
                                                                            ViewMainDrawerBinding viewMainDrawerBinding5 = this._binding;
                                                                            viewMainDrawerBinding5.getClass();
                                                                            viewMainDrawerBinding5.mainDrawerAccountContainer.setOnClickListener(new OnThisDayFragment$$ExternalSyntheticLambda3(this, 1));
                                                                            ViewMainDrawerBinding viewMainDrawerBinding6 = this._binding;
                                                                            viewMainDrawerBinding6.getClass();
                                                                            viewMainDrawerBinding6.mainDrawerDonateContainer.setOnClickListener(new OnThisDayFragment$$ExternalSyntheticLambda3(this, 2));
                                                                            ViewMainDrawerBinding viewMainDrawerBinding7 = this._binding;
                                                                            viewMainDrawerBinding7.getClass();
                                                                            viewMainDrawerBinding7.rootView.setOnClickListener(new OnThisDayFragment$$ExternalSyntheticLambda3(this, 3));
                                                                            AppCompatActivity requireActivity = requireActivity();
                                                                            ViewMainDrawerBinding viewMainDrawerBinding8 = this._binding;
                                                                            viewMainDrawerBinding8.getClass();
                                                                            requireActivity.setSupportActionBar((MaterialToolbar) viewMainDrawerBinding8.mainDrawerYearInReviewContainer);
                                                                            ContextsKt supportActionBar = requireActivity.getSupportActionBar();
                                                                            if (supportActionBar != null) {
                                                                                supportActionBar.setDisplayHomeAsUpEnabled(true);
                                                                            }
                                                                            ContextsKt supportActionBar2 = requireActivity.getSupportActionBar();
                                                                            if (supportActionBar2 != null) {
                                                                                supportActionBar2.setTitle("");
                                                                            }
                                                                            ViewMainDrawerBinding viewMainDrawerBinding9 = this._binding;
                                                                            viewMainDrawerBinding9.getClass();
                                                                            CollapsingToolbarLayout collapsingToolbarLayout2 = (CollapsingToolbarLayout) viewMainDrawerBinding9.mainDrawerPlacesContainer;
                                                                            Context requireContext = requireContext();
                                                                            TypedValue typedValue = new TypedValue();
                                                                            if (!requireContext.getTheme().resolveAttribute(R.attr.primary_color, typedValue, true)) {
                                                                                typedValue = null;
                                                                            }
                                                                            if (typedValue == null) {
                                                                                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969882");
                                                                                return null;
                                                                            }
                                                                            collapsingToolbarLayout2.setCollapsedTitleTextColor(typedValue.data);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding10 = this._binding;
                                                                            viewMainDrawerBinding10.getClass();
                                                                            TextView textView6 = viewMainDrawerBinding10.mainDrawerAccountName;
                                                                            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                                                                            Date time = getViewModel().date.getTime();
                                                                            time.getClass();
                                                                            textView6.setText(DateUtil.getDateStringWithSkeletonPattern("MMMM d", time));
                                                                            maybeHideDateIndicator();
                                                                            ViewMainDrawerBinding viewMainDrawerBinding11 = this._binding;
                                                                            viewMainDrawerBinding11.getClass();
                                                                            ((AppBarLayout) viewMainDrawerBinding11.mainDrawerGamesHubContainer).addOnOffsetChangedListener(this.offsetChangedListener);
                                                                            long j = (requireActivity().getWindow().getSharedElementEnterTransition() == null || bundle != null) ? 0L : 500L;
                                                                            ViewMainDrawerBinding viewMainDrawerBinding12 = this._binding;
                                                                            viewMainDrawerBinding12.getClass();
                                                                            ((TextView) viewMainDrawerBinding12.mainDrawerTempAccountContainer).postDelayed(new MainFragment$$ExternalSyntheticLambda5(8, this), j);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding13 = this._binding;
                                                                            viewMainDrawerBinding13.getClass();
                                                                            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewMainDrawerBinding13.mainDrawerEditContainer;
                                                                            coordinatorLayout.getClass();
                                                                            return coordinatorLayout;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    public final void onDatePicked(Calendar calendar) {
        calendar.getClass();
        ViewMainDrawerBinding viewMainDrawerBinding = this._binding;
        viewMainDrawerBinding.getClass();
        ((RecyclerView) viewMainDrawerBinding.mainDrawerTalkContainer).setVisibility(8);
        getViewModel().date.set(2016, calendar.get(2), calendar.get(5), 0, 0);
        ViewMainDrawerBinding viewMainDrawerBinding2 = this._binding;
        viewMainDrawerBinding2.getClass();
        TextView textView = viewMainDrawerBinding2.mainDrawerAccountName;
        ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
        Date time = getViewModel().date.getTime();
        time.getClass();
        textView.setText(DateUtil.getDateStringWithSkeletonPattern("MMMM d", time));
        ViewMainDrawerBinding viewMainDrawerBinding3 = this._binding;
        viewMainDrawerBinding3.getClass();
        ((AppBarLayout) viewMainDrawerBinding3.mainDrawerGamesHubContainer).setExpanded(true);
        getViewModel().loadOnThisDay(calendar);
        maybeHideDateIndicator();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        ViewMainDrawerBinding viewMainDrawerBinding = this._binding;
        viewMainDrawerBinding.getClass();
        ((RecyclerView) viewMainDrawerBinding.mainDrawerTalkContainer).setAdapter(null);
        ViewMainDrawerBinding viewMainDrawerBinding2 = this._binding;
        viewMainDrawerBinding2.getClass();
        ((AppBarLayout) viewMainDrawerBinding2.mainDrawerGamesHubContainer).removeOnOffsetChangedListener(this.offsetChangedListener);
        this._binding = null;
        this.mCalled = true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new OnThisDayFragment$onViewCreated$1(this, null, 0), 3);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecyclerAdapter extends RecyclerView.Adapter implements UserContribFilterItemView.Callback {
        public final /* synthetic */ int $r8$classId = 0;
        public final Object events;
        public final /* synthetic */ Object this$0;
        public final Object wiki;

        public RecyclerAdapter(UserContribFilterActivity userContribFilterActivity, Context context) {
            this.this$0 = userContribFilterActivity;
            this.events = context;
            ArrayList arrayList = new ArrayList();
            this.wiki = arrayList;
            String string = userContribFilterActivity.getString(R.string.notifications_wiki_filter_header);
            string.getClass();
            arrayList.add(string);
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            Iterator it = ((ArrayList) ViewSizeResolver$CC.m785m()).iterator();
            while (it.hasNext()) {
                ((ArrayList) this.wiki).add(new UserContribFilterActivity.Item(userContribFilterActivity, 0, (String) it.next(), null));
            }
            ((ArrayList) this.wiki).add(new UserContribFilterActivity.Item((UserContribFilterActivity) this.this$0, 0, "commons", Integer.valueOf(R.drawable.ic_commons_logo)));
            ((ArrayList) this.wiki).add(new UserContribFilterActivity.Item((UserContribFilterActivity) this.this$0, 0, "wikidata", Integer.valueOf(R.drawable.ic_wikidata_logo)));
            ArrayList arrayList2 = (ArrayList) this.wiki;
            String string2 = ((UserContribFilterActivity) this.this$0).getString(R.string.notifications_filter_update_app_languages);
            string2.getClass();
            arrayList2.add(string2);
            ArrayList arrayList3 = (ArrayList) this.wiki;
            String string3 = ((UserContribFilterActivity) this.this$0).getString(R.string.user_contrib_filter_ns_header);
            string3.getClass();
            arrayList3.add(string3);
            ArrayList arrayList4 = (ArrayList) this.wiki;
            UserContribFilterActivity userContribFilterActivity2 = (UserContribFilterActivity) this.this$0;
            String string4 = userContribFilterActivity2.getString(R.string.user_contrib_filter_all);
            string4.getClass();
            arrayList4.add(new UserContribFilterActivity.Item(userContribFilterActivity2, 1, string4, null));
            ArrayList arrayList5 = (ArrayList) this.wiki;
            UserContribFilterActivity userContribFilterActivity3 = (UserContribFilterActivity) this.this$0;
            String string5 = userContribFilterActivity3.getString(R.string.namespace_article);
            string5.getClass();
            arrayList5.add(new UserContribFilterActivity.Item(userContribFilterActivity3, 1, string5, Integer.valueOf(R.drawable.ic_article_ltr_ooui)));
            ArrayList arrayList6 = (ArrayList) this.wiki;
            UserContribFilterActivity userContribFilterActivity4 = (UserContribFilterActivity) this.this$0;
            WikipediaApp wikipediaApp2 = WikipediaApp.instance;
            arrayList6.add(new UserContribFilterActivity.Item(userContribFilterActivity4, 1, TalkAliasData.valueFor(Jsoup.getInstance().getAppOrSystemLanguageCode()), Integer.valueOf(R.drawable.ic_notification_article_talk)));
            ((ArrayList) this.wiki).add(new UserContribFilterActivity.Item((UserContribFilterActivity) this.this$0, 1, UserAliasData.valueFor(Jsoup.getInstance().getAppOrSystemLanguageCode()), Integer.valueOf(R.drawable.ic_user_avatar)));
            ((ArrayList) this.wiki).add(new UserContribFilterActivity.Item((UserContribFilterActivity) this.this$0, 1, UserTalkAliasData.valueFor(Jsoup.getInstance().getAppOrSystemLanguageCode()), Integer.valueOf(R.drawable.ic_notification_user_talk)));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            switch (this.$r8$classId) {
                case 0:
                    return ((List) this.events).size() + 1;
                default:
                    return ((ArrayList) this.wiki).size();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemViewType(int i) {
            switch (this.$r8$classId) {
                case 0:
                    if (i < ((List) this.events).size()) {
                        break;
                    }
                    break;
                default:
                    ArrayList arrayList = (ArrayList) this.wiki;
                    if (!(arrayList.get(i) instanceof String) || !Intrinsics.areEqual(arrayList.get(i), ((UserContribFilterActivity) this.this$0).getString(R.string.notifications_filter_update_app_languages))) {
                        if (arrayList.get(i) instanceof String) {
                            break;
                        }
                    }
                    break;
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            switch (this.$r8$classId) {
                case 0:
                    if (viewHolder instanceof EventsViewHolder) {
                        EventsViewHolder eventsViewHolder = (EventsViewHolder) viewHolder;
                        OnThisDay.Event event = (OnThisDay.Event) ((List) this.events).get(i);
                        WikiSite wikiSite = eventsViewHolder.wiki;
                        OnThisDayFragment onThisDayFragment = eventsViewHolder.this$0;
                        event.getClass();
                        int i2 = event.year;
                        SVGAndroidRenderer sVGAndroidRenderer = eventsViewHolder.otdEventLayout;
                        AppTextView appTextView = (AppTextView) sVGAndroidRenderer.stateStack;
                        TabLayout tabLayout = (TabLayout) sVGAndroidRenderer.canvas;
                        String str = event.text;
                        appTextView.setText(str);
                        appTextView.setVisibility(str.length() == 0 ? 8 : 0);
                        TextView textView = (TextView) sVGAndroidRenderer.parentStack;
                        ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                        textView.setText(DateUtil.yearToStringWithEra(i2));
                        ((AppTextView) sVGAndroidRenderer.matrixStack).setText(DateUtil.getYearDifferenceString(i2, onThisDayFragment.requireContext(), wikiSite.languageCode));
                        List list = event.pages;
                        boolean isEmpty = list.isEmpty();
                        ViewPager2 viewPager2 = (ViewPager2) sVGAndroidRenderer.document;
                        if (!isEmpty) {
                            viewPager2.setAdapter(new AppIconDialog.AppIconAdapter(list, wikiSite));
                            viewPager2.setOffscreenPageLimit(2);
                            new Cache.RealCacheRequest(tabLayout, viewPager2, new _UtilJvmKt$$ExternalSyntheticLambda0()).attach();
                            viewPager2.setVisibility(0);
                            tabLayout.setVisibility(list.size() == 1 ? 8 : 0);
                            break;
                        } else {
                            viewPager2.setVisibility(8);
                            tabLayout.setVisibility(8);
                            break;
                        }
                    }
                    break;
                default:
                    DefaultViewHolder defaultViewHolder = (DefaultViewHolder) viewHolder;
                    ArrayList arrayList = (ArrayList) this.wiki;
                    if (!(defaultViewHolder instanceof UserContribFilterActivity.FilterHeaderViewHolder)) {
                        if (!(defaultViewHolder instanceof UserContribFilterActivity.AddLanguageViewHolder)) {
                            Object obj = arrayList.get(i);
                            obj.getClass();
                            View view = ((UserContribFilterActivity.ItemViewHolder) defaultViewHolder).itemView;
                            view.getClass();
                            ((UserContribFilterItemView) view).setContents((UserContribFilterActivity.Item) obj);
                            break;
                        } else {
                            UserContribFilterActivity.AddLanguageViewHolder addLanguageViewHolder = (UserContribFilterActivity.AddLanguageViewHolder) defaultViewHolder;
                            Object obj2 = arrayList.get(i);
                            obj2.getClass();
                            UserContribFilterItemView userContribFilterItemView = addLanguageViewHolder.filterItemView;
                            userContribFilterItemView.setCallback(addLanguageViewHolder);
                            userContribFilterItemView.setSingleLabel((String) obj2);
                            break;
                        }
                    } else {
                        Object obj3 = arrayList.get(i);
                        obj3.getClass();
                        ((UserContribFilterActivity.FilterHeaderViewHolder) defaultViewHolder).headerText.setText((String) obj3);
                        break;
                    }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i2) {
                case 0:
                    OnThisDayFragment onThisDayFragment = (OnThisDayFragment) obj;
                    if (i == 1) {
                        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_on_this_day_footer, viewGroup, false);
                        inflate.getClass();
                        FooterViewHolder footerViewHolder = new FooterViewHolder(inflate);
                        inflate.findViewById(R.id.back_to_future_text_view).setOnClickListener(new OnThisDayFragment$$ExternalSyntheticLambda3(onThisDayFragment, 4));
                        return footerViewHolder;
                    }
                    View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_events_layout, viewGroup, false);
                    LinearLayout linearLayout = (LinearLayout) inflate2;
                    View findChildViewById = Room.findChildViewById(inflate2, R.id.otdEventLayout);
                    if (findChildViewById != null) {
                        int i3 = R.id.on_this_day_page;
                        View findChildViewById2 = Room.findChildViewById(findChildViewById, R.id.on_this_day_page);
                        if (findChildViewById2 != null) {
                            int i4 = R.id.description;
                            if (((TextView) Room.findChildViewById(findChildViewById2, R.id.description)) != null) {
                                i4 = R.id.image;
                                if (((FaceAndColorDetectImageView) Room.findChildViewById(findChildViewById2, R.id.image)) != null) {
                                    i4 = R.id.image_container;
                                    if (((FrameLayout) Room.findChildViewById(findChildViewById2, R.id.image_container)) != null) {
                                        i4 = R.id.title;
                                        if (((TextView) Room.findChildViewById(findChildViewById2, R.id.title)) != null) {
                                            i3 = R.id.pages_indicator;
                                            TabLayout tabLayout = (TabLayout) Room.findChildViewById(findChildViewById, R.id.pages_indicator);
                                            if (tabLayout != null) {
                                                i3 = R.id.pages_pager;
                                                ViewPager2 viewPager2 = (ViewPager2) Room.findChildViewById(findChildViewById, R.id.pages_pager);
                                                if (viewPager2 != null) {
                                                    i3 = R.id.radio_image_view;
                                                    ImageView imageView = (ImageView) Room.findChildViewById(findChildViewById, R.id.radio_image_view);
                                                    if (imageView != null) {
                                                        i3 = R.id.text;
                                                        AppTextView appTextView = (AppTextView) Room.findChildViewById(findChildViewById, R.id.text);
                                                        if (appTextView != null) {
                                                            i3 = R.id.year;
                                                            TextView textView = (TextView) Room.findChildViewById(findChildViewById, R.id.year);
                                                            if (textView != null) {
                                                                i3 = R.id.year_layout;
                                                                if (((LinearLayout) Room.findChildViewById(findChildViewById, R.id.year_layout)) != null) {
                                                                    i3 = R.id.years_text;
                                                                    AppTextView appTextView2 = (AppTextView) Room.findChildViewById(findChildViewById, R.id.years_text);
                                                                    if (appTextView2 != null) {
                                                                        return new EventsViewHolder(onThisDayFragment, new OkHttpCall.AnonymousClass1(12, linearLayout, new SVGAndroidRenderer(tabLayout, viewPager2, imageView, appTextView, textView, appTextView2)), (WikiSite) this.wiki);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(findChildViewById2.getResources().getResourceName(i4)));
                        }
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(findChildViewById.getResources().getResourceName(i3)));
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(R.id.otdEventLayout)));
                    }
                    return null;
                default:
                    UserContribFilterActivity userContribFilterActivity = (UserContribFilterActivity) obj;
                    Context context = (Context) this.events;
                    if (i == 0) {
                        View inflate3 = userContribFilterActivity.getLayoutInflater().inflate(R.layout.view_notification_filter_header, viewGroup, false);
                        inflate3.getClass();
                        return new UserContribFilterActivity.FilterHeaderViewHolder(inflate3);
                    }
                    if (i == 2) {
                        return userContribFilterActivity.new AddLanguageViewHolder(new UserContribFilterItemView(context));
                    }
                    UserContribFilterItemView userContribFilterItemView = new UserContribFilterItemView(context);
                    userContribFilterItemView.setCallback(this);
                    return new UserContribFilterActivity.ItemViewHolder(userContribFilterItemView);
            }
        }

        @Override // org.wikipedia.usercontrib.UserContribFilterItemView.Callback
        public void onSelected(UserContribFilterActivity.Item item) {
            String str;
            if (item != null) {
                String str2 = item.filterCode;
                UserContribFilterActivity userContribFilterActivity = (UserContribFilterActivity) this.this$0;
                int i = item.type;
                if (i == 0) {
                    Prefs prefs = Prefs.INSTANCE;
                    str2.getClass();
                    PrefsIoUtil.setString(R.string.preference_key_user_contrib_filter_lang_code, str2);
                } else if (i == 1) {
                    Prefs prefs2 = Prefs.INSTANCE;
                    Set userContribFilterExcludedNs = Prefs.getUserContribFilterExcludedNs();
                    List list = UserContribFilterActivity.NAMESPACE_LIST;
                    int namespaceCode = userContribFilterActivity.getNamespaceCode(str2);
                    Object set = namespaceCode == -1 ? (userContribFilterExcludedNs.isEmpty() || userContribFilterExcludedNs.size() < UserContribFilterActivity.NAMESPACE_LIST.size()) ? CollectionsKt.toSet(UserContribFilterActivity.NAMESPACE_LIST) : EmptySet.INSTANCE : userContribFilterExcludedNs.contains(Integer.valueOf(namespaceCode)) ? UuidKt.minus(userContribFilterExcludedNs, Integer.valueOf(namespaceCode)) : UuidKt.plus(userContribFilterExcludedNs, Integer.valueOf(namespaceCode));
                    try {
                        JsonImpl jsonImpl = JsonUtil.json;
                        jsonImpl.getClass();
                        str = jsonImpl.encodeToString(new HashSetSerializer(IntSerializer.INSTANCE, 2), set);
                    } catch (Exception e) {
                        L.w(e);
                        str = null;
                    }
                    PrefsIoUtil.setString(R.string.preference_key_user_contrib_filter_excluded_ns, str);
                }
            }
            notifyItemRangeChanged(0, ((ArrayList) this.wiki).size());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
            switch (this.$r8$classId) {
                case 0:
                    if (viewHolder instanceof EventsViewHolder) {
                        EventsViewHolder eventsViewHolder = (EventsViewHolder) viewHolder;
                        ((ImageView) eventsViewHolder.otdEventLayout.state).startAnimation(AnimationUtils.loadAnimation(eventsViewHolder.this$0.getContext(), R.anim.pulse));
                        break;
                    }
                    break;
            }
        }

        public RecyclerAdapter(OnThisDayFragment onThisDayFragment, List list, WikiSite wikiSite) {
            list.getClass();
            wikiSite.getClass();
            this.this$0 = onThisDayFragment;
            this.events = list;
            this.wiki = wikiSite;
        }
    }
}
