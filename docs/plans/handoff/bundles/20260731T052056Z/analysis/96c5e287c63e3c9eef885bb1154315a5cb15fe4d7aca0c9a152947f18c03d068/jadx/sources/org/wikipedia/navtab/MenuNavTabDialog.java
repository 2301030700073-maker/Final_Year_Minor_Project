package org.wikipedia.navtab;

import android.content.ComponentCallbacks;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import okhttp3.Cache;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.Okio__OkioKt;
import okio.Path;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.databinding.ViewMainDrawerBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.games.GamesHubActivity;
import org.wikipedia.games.WikiGames;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.login.LoginClient;
import org.wikipedia.main.MainFragment;
import org.wikipedia.navtab.MenuNavTabDialog;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.places.PlacesActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.SettingsActivity;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.staticdata.UserTalkAliasData;
import org.wikipedia.suggestededits.SuggestedEditsTasksActivity;
import org.wikipedia.talk.TalkTopicsActivity;
import org.wikipedia.usercontrib.UserContribListActivity;
import org.wikipedia.util.UriUtil;
import org.wikipedia.watchlist.WatchlistActivity;
import org.wikipedia.yearinreview.YearInReviewOnboardingActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/navtab/MenuNavTabDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "Callback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MenuNavTabDialog extends ExtendedBottomSheetDialogFragment {
    public ViewMainDrawerBinding _binding;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    public MenuNavTabDialog() {
        super(false);
    }

    public final Callback callback() {
        ComponentCallbacks activity;
        if (Callback.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (Callback.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (Callback.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = Callback.class.isInstance(getActivity()) ? getActivity() : null;
        }
        return (Callback) activity;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.view_main_drawer, viewGroup, false);
        int i = R.id.main_drawer_account_avatar;
        ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.main_drawer_account_avatar);
        if (imageView != null) {
            i = R.id.main_drawer_account_container;
            LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.main_drawer_account_container);
            if (linearLayout != null) {
                i = R.id.main_drawer_account_name;
                TextView textView = (TextView) Room.findChildViewById(inflate, R.id.main_drawer_account_name);
                if (textView != null) {
                    i = R.id.main_drawer_contribs_container;
                    LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.main_drawer_contribs_container);
                    if (linearLayout2 != null) {
                        i = R.id.main_drawer_donate_container;
                        LinearLayout linearLayout3 = (LinearLayout) Room.findChildViewById(inflate, R.id.main_drawer_donate_container);
                        if (linearLayout3 != null) {
                            i = R.id.main_drawer_edit_container;
                            LinearLayout linearLayout4 = (LinearLayout) Room.findChildViewById(inflate, R.id.main_drawer_edit_container);
                            if (linearLayout4 != null) {
                                i = R.id.main_drawer_games_hub_container;
                                LinearLayout linearLayout5 = (LinearLayout) Room.findChildViewById(inflate, R.id.main_drawer_games_hub_container);
                                if (linearLayout5 != null) {
                                    i = R.id.main_drawer_login_button;
                                    TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.main_drawer_login_button);
                                    if (textView2 != null) {
                                        i = R.id.main_drawer_places_container;
                                        LinearLayout linearLayout6 = (LinearLayout) Room.findChildViewById(inflate, R.id.main_drawer_places_container);
                                        if (linearLayout6 != null) {
                                            i = R.id.main_drawer_settings_container;
                                            LinearLayout linearLayout7 = (LinearLayout) Room.findChildViewById(inflate, R.id.main_drawer_settings_container);
                                            if (linearLayout7 != null) {
                                                i = R.id.main_drawer_talk_container;
                                                LinearLayout linearLayout8 = (LinearLayout) Room.findChildViewById(inflate, R.id.main_drawer_talk_container);
                                                if (linearLayout8 != null) {
                                                    i = R.id.main_drawer_temp_account_container;
                                                    LinearLayout linearLayout9 = (LinearLayout) Room.findChildViewById(inflate, R.id.main_drawer_temp_account_container);
                                                    if (linearLayout9 != null) {
                                                        i = R.id.main_drawer_watchlist_container;
                                                        LinearLayout linearLayout10 = (LinearLayout) Room.findChildViewById(inflate, R.id.main_drawer_watchlist_container);
                                                        if (linearLayout10 != null) {
                                                            i = R.id.main_drawer_year_in_review_container;
                                                            LinearLayout linearLayout11 = (LinearLayout) Room.findChildViewById(inflate, R.id.main_drawer_year_in_review_container);
                                                            if (linearLayout11 != null) {
                                                                i = R.id.temp_account_name;
                                                                TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.temp_account_name);
                                                                if (textView3 != null) {
                                                                    i = R.id.yearInReviewRedDot;
                                                                    View findChildViewById = Room.findChildViewById(inflate, R.id.yearInReviewRedDot);
                                                                    if (findChildViewById != null) {
                                                                        this._binding = new ViewMainDrawerBinding((FrameLayout) inflate, imageView, linearLayout, textView, linearLayout2, linearLayout3, linearLayout4, linearLayout5, textView2, linearLayout6, linearLayout7, linearLayout8, linearLayout9, linearLayout10, linearLayout11, textView3, findChildViewById);
                                                                        if (LoginClient.isAccessible() && Prefs.isYearInReviewEnabled()) {
                                                                            UriUtil.submit$default(238, null, "impression", null, Headers.Companion.isLoggedIn() ? "li_profile" : "lo_profile", null);
                                                                        }
                                                                        ViewMainDrawerBinding viewMainDrawerBinding = this._binding;
                                                                        viewMainDrawerBinding.getClass();
                                                                        final int i2 = 8;
                                                                        ((LinearLayout) viewMainDrawerBinding.mainDrawerYearInReviewContainer).setVisibility((LoginClient.isAccessible() && Prefs.isYearInReviewEnabled()) ? 0 : 8);
                                                                        ViewMainDrawerBinding viewMainDrawerBinding2 = this._binding;
                                                                        viewMainDrawerBinding2.getClass();
                                                                        viewMainDrawerBinding2.mainDrawerAccountContainer.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.navtab.MenuNavTabDialog$$ExternalSyntheticLambda0
                                                                            public final /* synthetic */ MenuNavTabDialog f$0;

                                                                            {
                                                                                this.f$0 = this;
                                                                            }

                                                                            @Override // android.view.View.OnClickListener
                                                                            public final void onClick(View view) {
                                                                                int i3 = r2;
                                                                                MenuNavTabDialog menuNavTabDialog = this.f$0;
                                                                                switch (i3) {
                                                                                    case 0:
                                                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding3 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding3.getClass();
                                                                                        LinearLayout linearLayout12 = viewMainDrawerBinding3.mainDrawerAccountContainer;
                                                                                        companion.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity, linearLayout12);
                                                                                        if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                                            MenuNavTabDialog.Callback callback = menuNavTabDialog.callback();
                                                                                            if (callback != null) {
                                                                                                MainFragment mainFragment = (MainFragment) callback;
                                                                                                int i4 = LoginActivity.$r8$clinit;
                                                                                                mainFragment.startActivityForResult(Path.Companion.newIntent(mainFragment.requireContext(), "navigation", true), 53, null);
                                                                                            }
                                                                                        } else {
                                                                                            MenuNavTabDialog.Callback callback2 = menuNavTabDialog.callback();
                                                                                            if (callback2 != null) {
                                                                                                MainFragment mainFragment2 = (MainFragment) callback2;
                                                                                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                                PageTitle pageTitle = new PageTitle(UserAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode()), Jsoup.getInstance().getWikiSite(), Headers.Companion.getUserName(), null, null, null, null, null);
                                                                                                HistoryEntry historyEntry = new HistoryEntry(8, pageTitle);
                                                                                                int i5 = PageActivity.$r8$clinit;
                                                                                                mainFragment2.startActivity(LoginClient.newIntentForNewTab(mainFragment2.requireContext(), historyEntry, pageTitle), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 1:
                                                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity2 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding4 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding4.getClass();
                                                                                        LinearLayout linearLayout13 = (LinearLayout) viewMainDrawerBinding4.mainDrawerTalkContainer;
                                                                                        companion2.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity2, linearLayout13);
                                                                                        MenuNavTabDialog.Callback callback3 = menuNavTabDialog.callback();
                                                                                        if (callback3 != null) {
                                                                                            MainFragment mainFragment3 = (MainFragment) callback3;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i6 = TalkTopicsActivity.$r8$clinit;
                                                                                                AppCompatActivity requireActivity3 = mainFragment3.requireActivity();
                                                                                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                                String valueFor = UserTalkAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode());
                                                                                                String userName = Headers.Companion.getUserName();
                                                                                                WikiSite.Companion companion3 = WikiSite.Companion;
                                                                                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                                                                                companion3.getClass();
                                                                                                mainFragment3.startActivity(Headers.Companion.newIntent(requireActivity3, new PageTitle(valueFor, WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode), userName, null, null, null, null, null), Constants.InvokeSource.NAV_MENU), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 2:
                                                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity4 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding5 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding5.getClass();
                                                                                        LinearLayout linearLayout14 = (LinearLayout) viewMainDrawerBinding5.mainDrawerWatchlistContainer;
                                                                                        companion4.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity4, linearLayout14);
                                                                                        MenuNavTabDialog.Callback callback4 = menuNavTabDialog.callback();
                                                                                        if (callback4 != null) {
                                                                                            MainFragment mainFragment4 = (MainFragment) callback4;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i7 = WatchlistActivity.$r8$clinit;
                                                                                                mainFragment4.startActivity(new Intent(mainFragment4.requireActivity(), (Class<?>) WatchlistActivity.class), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 3:
                                                                                        WikiGamesEvent.submit$default(1020, null, null, "games_click", "more_menu", null, null, null);
                                                                                        AppCompatActivity requireActivity5 = menuNavTabDialog.requireActivity();
                                                                                        int i8 = GamesHubActivity.$r8$clinit;
                                                                                        requireActivity5.startActivity(new Intent(menuNavTabDialog.requireActivity(), (Class<?>) GamesHubActivity.class));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 4:
                                                                                        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                        String m = ViewSizeResolver$CC.m();
                                                                                        Prefs prefs = Prefs.INSTANCE;
                                                                                        EventPlatformClient.submit(new AppInteractionEvent("places_click", "main_nav_tab", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                        AppCompatActivity requireActivity6 = menuNavTabDialog.requireActivity();
                                                                                        int i9 = PlacesActivity.$r8$clinit;
                                                                                        requireActivity6.startActivity(ByteString.Companion.newIntent(menuNavTabDialog.requireActivity(), null, null));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 5:
                                                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity7 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding6 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding6.getClass();
                                                                                        LinearLayout linearLayout15 = (LinearLayout) viewMainDrawerBinding6.mainDrawerSettingsContainer;
                                                                                        companion5.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity7, linearLayout15);
                                                                                        MenuNavTabDialog.Callback callback5 = menuNavTabDialog.callback();
                                                                                        if (callback5 != null) {
                                                                                            MainFragment mainFragment5 = (MainFragment) callback5;
                                                                                            int i10 = SettingsActivity.$r8$clinit;
                                                                                            mainFragment5.startActivityForResult(new Intent(mainFragment5.requireActivity(), (Class<?>) SettingsActivity.class), 41, null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 6:
                                                                                        BreadCrumbLogEvent.Companion companion6 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity8 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding7 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding7.getClass();
                                                                                        LinearLayout linearLayout16 = viewMainDrawerBinding7.mainDrawerContribsContainer;
                                                                                        companion6.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity8, linearLayout16);
                                                                                        MenuNavTabDialog.Callback callback6 = menuNavTabDialog.callback();
                                                                                        if (callback6 != null) {
                                                                                            MainFragment mainFragment6 = (MainFragment) callback6;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i11 = UserContribListActivity.$r8$clinit;
                                                                                                mainFragment6.startActivity(HttpUrl.Companion.newIntent(mainFragment6.requireActivity(), Headers.Companion.getUserName()), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 7:
                                                                                        BreadCrumbLogEvent.Companion companion7 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity9 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding8 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding8.getClass();
                                                                                        LinearLayout linearLayout17 = viewMainDrawerBinding8.mainDrawerDonateContainer;
                                                                                        companion7.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity9, linearLayout17);
                                                                                        Cache.Companion.logAction$default(12, "donate_start_click", "more_menu", null, null);
                                                                                        MenuNavTabDialog.Callback callback7 = menuNavTabDialog.callback();
                                                                                        if (callback7 != null) {
                                                                                            AppCompatActivity requireActivity10 = ((MainFragment) callback7).requireActivity();
                                                                                            BaseActivity baseActivity = requireActivity10 instanceof BaseActivity ? (BaseActivity) requireActivity10 : null;
                                                                                            if (baseActivity != null) {
                                                                                                int i12 = BaseActivity.$r8$clinit;
                                                                                                Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), Path.Companion.newInstance$default(12, null, null));
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 8:
                                                                                        UriUtil.submit$default(238, null, "start_click", null, Headers.Companion.isLoggedIn() ? "li_profile" : "lo_profile", null);
                                                                                        MenuNavTabDialog.Callback callback8 = menuNavTabDialog.callback();
                                                                                        if (callback8 != null) {
                                                                                            MainFragment mainFragment7 = (MainFragment) callback8;
                                                                                            int i13 = YearInReviewOnboardingActivity.$r8$clinit;
                                                                                            mainFragment7.startActivity(new Intent(mainFragment7.requireActivity(), (Class<?>) YearInReviewOnboardingActivity.class), null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    default:
                                                                                        BreadCrumbLogEvent.Companion companion8 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity11 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding9 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding9.getClass();
                                                                                        LinearLayout linearLayout18 = (LinearLayout) viewMainDrawerBinding9.mainDrawerEditContainer;
                                                                                        companion8.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity11, linearLayout18);
                                                                                        WikiGamesEvent.submit$default("more_menu", "edit_click", null, null, null, null, null, null, null, null, null, null, 16380);
                                                                                        int i14 = SuggestedEditsTasksActivity.$r8$clinit;
                                                                                        menuNavTabDialog.startActivity(new Intent(menuNavTabDialog.requireContext(), (Class<?>) SuggestedEditsTasksActivity.class), null);
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                }
                                                                            }
                                                                        });
                                                                        ViewMainDrawerBinding viewMainDrawerBinding3 = this._binding;
                                                                        viewMainDrawerBinding3.getClass();
                                                                        final int i3 = 1;
                                                                        ((LinearLayout) viewMainDrawerBinding3.mainDrawerTalkContainer).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.navtab.MenuNavTabDialog$$ExternalSyntheticLambda0
                                                                            public final /* synthetic */ MenuNavTabDialog f$0;

                                                                            {
                                                                                this.f$0 = this;
                                                                            }

                                                                            @Override // android.view.View.OnClickListener
                                                                            public final void onClick(View view) {
                                                                                int i32 = i3;
                                                                                MenuNavTabDialog menuNavTabDialog = this.f$0;
                                                                                switch (i32) {
                                                                                    case 0:
                                                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding32 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding32.getClass();
                                                                                        LinearLayout linearLayout12 = viewMainDrawerBinding32.mainDrawerAccountContainer;
                                                                                        companion.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity, linearLayout12);
                                                                                        if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                                            MenuNavTabDialog.Callback callback = menuNavTabDialog.callback();
                                                                                            if (callback != null) {
                                                                                                MainFragment mainFragment = (MainFragment) callback;
                                                                                                int i4 = LoginActivity.$r8$clinit;
                                                                                                mainFragment.startActivityForResult(Path.Companion.newIntent(mainFragment.requireContext(), "navigation", true), 53, null);
                                                                                            }
                                                                                        } else {
                                                                                            MenuNavTabDialog.Callback callback2 = menuNavTabDialog.callback();
                                                                                            if (callback2 != null) {
                                                                                                MainFragment mainFragment2 = (MainFragment) callback2;
                                                                                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                                PageTitle pageTitle = new PageTitle(UserAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode()), Jsoup.getInstance().getWikiSite(), Headers.Companion.getUserName(), null, null, null, null, null);
                                                                                                HistoryEntry historyEntry = new HistoryEntry(8, pageTitle);
                                                                                                int i5 = PageActivity.$r8$clinit;
                                                                                                mainFragment2.startActivity(LoginClient.newIntentForNewTab(mainFragment2.requireContext(), historyEntry, pageTitle), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 1:
                                                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity2 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding4 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding4.getClass();
                                                                                        LinearLayout linearLayout13 = (LinearLayout) viewMainDrawerBinding4.mainDrawerTalkContainer;
                                                                                        companion2.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity2, linearLayout13);
                                                                                        MenuNavTabDialog.Callback callback3 = menuNavTabDialog.callback();
                                                                                        if (callback3 != null) {
                                                                                            MainFragment mainFragment3 = (MainFragment) callback3;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i6 = TalkTopicsActivity.$r8$clinit;
                                                                                                AppCompatActivity requireActivity3 = mainFragment3.requireActivity();
                                                                                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                                String valueFor = UserTalkAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode());
                                                                                                String userName = Headers.Companion.getUserName();
                                                                                                WikiSite.Companion companion3 = WikiSite.Companion;
                                                                                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                                                                                companion3.getClass();
                                                                                                mainFragment3.startActivity(Headers.Companion.newIntent(requireActivity3, new PageTitle(valueFor, WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode), userName, null, null, null, null, null), Constants.InvokeSource.NAV_MENU), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 2:
                                                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity4 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding5 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding5.getClass();
                                                                                        LinearLayout linearLayout14 = (LinearLayout) viewMainDrawerBinding5.mainDrawerWatchlistContainer;
                                                                                        companion4.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity4, linearLayout14);
                                                                                        MenuNavTabDialog.Callback callback4 = menuNavTabDialog.callback();
                                                                                        if (callback4 != null) {
                                                                                            MainFragment mainFragment4 = (MainFragment) callback4;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i7 = WatchlistActivity.$r8$clinit;
                                                                                                mainFragment4.startActivity(new Intent(mainFragment4.requireActivity(), (Class<?>) WatchlistActivity.class), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 3:
                                                                                        WikiGamesEvent.submit$default(1020, null, null, "games_click", "more_menu", null, null, null);
                                                                                        AppCompatActivity requireActivity5 = menuNavTabDialog.requireActivity();
                                                                                        int i8 = GamesHubActivity.$r8$clinit;
                                                                                        requireActivity5.startActivity(new Intent(menuNavTabDialog.requireActivity(), (Class<?>) GamesHubActivity.class));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 4:
                                                                                        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                        String m = ViewSizeResolver$CC.m();
                                                                                        Prefs prefs = Prefs.INSTANCE;
                                                                                        EventPlatformClient.submit(new AppInteractionEvent("places_click", "main_nav_tab", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                        AppCompatActivity requireActivity6 = menuNavTabDialog.requireActivity();
                                                                                        int i9 = PlacesActivity.$r8$clinit;
                                                                                        requireActivity6.startActivity(ByteString.Companion.newIntent(menuNavTabDialog.requireActivity(), null, null));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 5:
                                                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity7 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding6 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding6.getClass();
                                                                                        LinearLayout linearLayout15 = (LinearLayout) viewMainDrawerBinding6.mainDrawerSettingsContainer;
                                                                                        companion5.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity7, linearLayout15);
                                                                                        MenuNavTabDialog.Callback callback5 = menuNavTabDialog.callback();
                                                                                        if (callback5 != null) {
                                                                                            MainFragment mainFragment5 = (MainFragment) callback5;
                                                                                            int i10 = SettingsActivity.$r8$clinit;
                                                                                            mainFragment5.startActivityForResult(new Intent(mainFragment5.requireActivity(), (Class<?>) SettingsActivity.class), 41, null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 6:
                                                                                        BreadCrumbLogEvent.Companion companion6 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity8 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding7 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding7.getClass();
                                                                                        LinearLayout linearLayout16 = viewMainDrawerBinding7.mainDrawerContribsContainer;
                                                                                        companion6.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity8, linearLayout16);
                                                                                        MenuNavTabDialog.Callback callback6 = menuNavTabDialog.callback();
                                                                                        if (callback6 != null) {
                                                                                            MainFragment mainFragment6 = (MainFragment) callback6;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i11 = UserContribListActivity.$r8$clinit;
                                                                                                mainFragment6.startActivity(HttpUrl.Companion.newIntent(mainFragment6.requireActivity(), Headers.Companion.getUserName()), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 7:
                                                                                        BreadCrumbLogEvent.Companion companion7 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity9 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding8 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding8.getClass();
                                                                                        LinearLayout linearLayout17 = viewMainDrawerBinding8.mainDrawerDonateContainer;
                                                                                        companion7.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity9, linearLayout17);
                                                                                        Cache.Companion.logAction$default(12, "donate_start_click", "more_menu", null, null);
                                                                                        MenuNavTabDialog.Callback callback7 = menuNavTabDialog.callback();
                                                                                        if (callback7 != null) {
                                                                                            AppCompatActivity requireActivity10 = ((MainFragment) callback7).requireActivity();
                                                                                            BaseActivity baseActivity = requireActivity10 instanceof BaseActivity ? (BaseActivity) requireActivity10 : null;
                                                                                            if (baseActivity != null) {
                                                                                                int i12 = BaseActivity.$r8$clinit;
                                                                                                Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), Path.Companion.newInstance$default(12, null, null));
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 8:
                                                                                        UriUtil.submit$default(238, null, "start_click", null, Headers.Companion.isLoggedIn() ? "li_profile" : "lo_profile", null);
                                                                                        MenuNavTabDialog.Callback callback8 = menuNavTabDialog.callback();
                                                                                        if (callback8 != null) {
                                                                                            MainFragment mainFragment7 = (MainFragment) callback8;
                                                                                            int i13 = YearInReviewOnboardingActivity.$r8$clinit;
                                                                                            mainFragment7.startActivity(new Intent(mainFragment7.requireActivity(), (Class<?>) YearInReviewOnboardingActivity.class), null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    default:
                                                                                        BreadCrumbLogEvent.Companion companion8 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity11 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding9 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding9.getClass();
                                                                                        LinearLayout linearLayout18 = (LinearLayout) viewMainDrawerBinding9.mainDrawerEditContainer;
                                                                                        companion8.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity11, linearLayout18);
                                                                                        WikiGamesEvent.submit$default("more_menu", "edit_click", null, null, null, null, null, null, null, null, null, null, 16380);
                                                                                        int i14 = SuggestedEditsTasksActivity.$r8$clinit;
                                                                                        menuNavTabDialog.startActivity(new Intent(menuNavTabDialog.requireContext(), (Class<?>) SuggestedEditsTasksActivity.class), null);
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                }
                                                                            }
                                                                        });
                                                                        ViewMainDrawerBinding viewMainDrawerBinding4 = this._binding;
                                                                        viewMainDrawerBinding4.getClass();
                                                                        final int i4 = 2;
                                                                        ((LinearLayout) viewMainDrawerBinding4.mainDrawerWatchlistContainer).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.navtab.MenuNavTabDialog$$ExternalSyntheticLambda0
                                                                            public final /* synthetic */ MenuNavTabDialog f$0;

                                                                            {
                                                                                this.f$0 = this;
                                                                            }

                                                                            @Override // android.view.View.OnClickListener
                                                                            public final void onClick(View view) {
                                                                                int i32 = i4;
                                                                                MenuNavTabDialog menuNavTabDialog = this.f$0;
                                                                                switch (i32) {
                                                                                    case 0:
                                                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding32 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding32.getClass();
                                                                                        LinearLayout linearLayout12 = viewMainDrawerBinding32.mainDrawerAccountContainer;
                                                                                        companion.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity, linearLayout12);
                                                                                        if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                                            MenuNavTabDialog.Callback callback = menuNavTabDialog.callback();
                                                                                            if (callback != null) {
                                                                                                MainFragment mainFragment = (MainFragment) callback;
                                                                                                int i42 = LoginActivity.$r8$clinit;
                                                                                                mainFragment.startActivityForResult(Path.Companion.newIntent(mainFragment.requireContext(), "navigation", true), 53, null);
                                                                                            }
                                                                                        } else {
                                                                                            MenuNavTabDialog.Callback callback2 = menuNavTabDialog.callback();
                                                                                            if (callback2 != null) {
                                                                                                MainFragment mainFragment2 = (MainFragment) callback2;
                                                                                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                                PageTitle pageTitle = new PageTitle(UserAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode()), Jsoup.getInstance().getWikiSite(), Headers.Companion.getUserName(), null, null, null, null, null);
                                                                                                HistoryEntry historyEntry = new HistoryEntry(8, pageTitle);
                                                                                                int i5 = PageActivity.$r8$clinit;
                                                                                                mainFragment2.startActivity(LoginClient.newIntentForNewTab(mainFragment2.requireContext(), historyEntry, pageTitle), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 1:
                                                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity2 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding42 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding42.getClass();
                                                                                        LinearLayout linearLayout13 = (LinearLayout) viewMainDrawerBinding42.mainDrawerTalkContainer;
                                                                                        companion2.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity2, linearLayout13);
                                                                                        MenuNavTabDialog.Callback callback3 = menuNavTabDialog.callback();
                                                                                        if (callback3 != null) {
                                                                                            MainFragment mainFragment3 = (MainFragment) callback3;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i6 = TalkTopicsActivity.$r8$clinit;
                                                                                                AppCompatActivity requireActivity3 = mainFragment3.requireActivity();
                                                                                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                                String valueFor = UserTalkAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode());
                                                                                                String userName = Headers.Companion.getUserName();
                                                                                                WikiSite.Companion companion3 = WikiSite.Companion;
                                                                                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                                                                                companion3.getClass();
                                                                                                mainFragment3.startActivity(Headers.Companion.newIntent(requireActivity3, new PageTitle(valueFor, WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode), userName, null, null, null, null, null), Constants.InvokeSource.NAV_MENU), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 2:
                                                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity4 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding5 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding5.getClass();
                                                                                        LinearLayout linearLayout14 = (LinearLayout) viewMainDrawerBinding5.mainDrawerWatchlistContainer;
                                                                                        companion4.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity4, linearLayout14);
                                                                                        MenuNavTabDialog.Callback callback4 = menuNavTabDialog.callback();
                                                                                        if (callback4 != null) {
                                                                                            MainFragment mainFragment4 = (MainFragment) callback4;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i7 = WatchlistActivity.$r8$clinit;
                                                                                                mainFragment4.startActivity(new Intent(mainFragment4.requireActivity(), (Class<?>) WatchlistActivity.class), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 3:
                                                                                        WikiGamesEvent.submit$default(1020, null, null, "games_click", "more_menu", null, null, null);
                                                                                        AppCompatActivity requireActivity5 = menuNavTabDialog.requireActivity();
                                                                                        int i8 = GamesHubActivity.$r8$clinit;
                                                                                        requireActivity5.startActivity(new Intent(menuNavTabDialog.requireActivity(), (Class<?>) GamesHubActivity.class));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 4:
                                                                                        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                        String m = ViewSizeResolver$CC.m();
                                                                                        Prefs prefs = Prefs.INSTANCE;
                                                                                        EventPlatformClient.submit(new AppInteractionEvent("places_click", "main_nav_tab", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                        AppCompatActivity requireActivity6 = menuNavTabDialog.requireActivity();
                                                                                        int i9 = PlacesActivity.$r8$clinit;
                                                                                        requireActivity6.startActivity(ByteString.Companion.newIntent(menuNavTabDialog.requireActivity(), null, null));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 5:
                                                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity7 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding6 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding6.getClass();
                                                                                        LinearLayout linearLayout15 = (LinearLayout) viewMainDrawerBinding6.mainDrawerSettingsContainer;
                                                                                        companion5.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity7, linearLayout15);
                                                                                        MenuNavTabDialog.Callback callback5 = menuNavTabDialog.callback();
                                                                                        if (callback5 != null) {
                                                                                            MainFragment mainFragment5 = (MainFragment) callback5;
                                                                                            int i10 = SettingsActivity.$r8$clinit;
                                                                                            mainFragment5.startActivityForResult(new Intent(mainFragment5.requireActivity(), (Class<?>) SettingsActivity.class), 41, null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 6:
                                                                                        BreadCrumbLogEvent.Companion companion6 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity8 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding7 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding7.getClass();
                                                                                        LinearLayout linearLayout16 = viewMainDrawerBinding7.mainDrawerContribsContainer;
                                                                                        companion6.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity8, linearLayout16);
                                                                                        MenuNavTabDialog.Callback callback6 = menuNavTabDialog.callback();
                                                                                        if (callback6 != null) {
                                                                                            MainFragment mainFragment6 = (MainFragment) callback6;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i11 = UserContribListActivity.$r8$clinit;
                                                                                                mainFragment6.startActivity(HttpUrl.Companion.newIntent(mainFragment6.requireActivity(), Headers.Companion.getUserName()), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 7:
                                                                                        BreadCrumbLogEvent.Companion companion7 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity9 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding8 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding8.getClass();
                                                                                        LinearLayout linearLayout17 = viewMainDrawerBinding8.mainDrawerDonateContainer;
                                                                                        companion7.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity9, linearLayout17);
                                                                                        Cache.Companion.logAction$default(12, "donate_start_click", "more_menu", null, null);
                                                                                        MenuNavTabDialog.Callback callback7 = menuNavTabDialog.callback();
                                                                                        if (callback7 != null) {
                                                                                            AppCompatActivity requireActivity10 = ((MainFragment) callback7).requireActivity();
                                                                                            BaseActivity baseActivity = requireActivity10 instanceof BaseActivity ? (BaseActivity) requireActivity10 : null;
                                                                                            if (baseActivity != null) {
                                                                                                int i12 = BaseActivity.$r8$clinit;
                                                                                                Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), Path.Companion.newInstance$default(12, null, null));
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 8:
                                                                                        UriUtil.submit$default(238, null, "start_click", null, Headers.Companion.isLoggedIn() ? "li_profile" : "lo_profile", null);
                                                                                        MenuNavTabDialog.Callback callback8 = menuNavTabDialog.callback();
                                                                                        if (callback8 != null) {
                                                                                            MainFragment mainFragment7 = (MainFragment) callback8;
                                                                                            int i13 = YearInReviewOnboardingActivity.$r8$clinit;
                                                                                            mainFragment7.startActivity(new Intent(mainFragment7.requireActivity(), (Class<?>) YearInReviewOnboardingActivity.class), null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    default:
                                                                                        BreadCrumbLogEvent.Companion companion8 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity11 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding9 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding9.getClass();
                                                                                        LinearLayout linearLayout18 = (LinearLayout) viewMainDrawerBinding9.mainDrawerEditContainer;
                                                                                        companion8.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity11, linearLayout18);
                                                                                        WikiGamesEvent.submit$default("more_menu", "edit_click", null, null, null, null, null, null, null, null, null, null, 16380);
                                                                                        int i14 = SuggestedEditsTasksActivity.$r8$clinit;
                                                                                        menuNavTabDialog.startActivity(new Intent(menuNavTabDialog.requireContext(), (Class<?>) SuggestedEditsTasksActivity.class), null);
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                }
                                                                            }
                                                                        });
                                                                        ViewMainDrawerBinding viewMainDrawerBinding5 = this._binding;
                                                                        viewMainDrawerBinding5.getClass();
                                                                        final int i5 = 3;
                                                                        ((LinearLayout) viewMainDrawerBinding5.mainDrawerGamesHubContainer).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.navtab.MenuNavTabDialog$$ExternalSyntheticLambda0
                                                                            public final /* synthetic */ MenuNavTabDialog f$0;

                                                                            {
                                                                                this.f$0 = this;
                                                                            }

                                                                            @Override // android.view.View.OnClickListener
                                                                            public final void onClick(View view) {
                                                                                int i32 = i5;
                                                                                MenuNavTabDialog menuNavTabDialog = this.f$0;
                                                                                switch (i32) {
                                                                                    case 0:
                                                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding32 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding32.getClass();
                                                                                        LinearLayout linearLayout12 = viewMainDrawerBinding32.mainDrawerAccountContainer;
                                                                                        companion.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity, linearLayout12);
                                                                                        if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                                            MenuNavTabDialog.Callback callback = menuNavTabDialog.callback();
                                                                                            if (callback != null) {
                                                                                                MainFragment mainFragment = (MainFragment) callback;
                                                                                                int i42 = LoginActivity.$r8$clinit;
                                                                                                mainFragment.startActivityForResult(Path.Companion.newIntent(mainFragment.requireContext(), "navigation", true), 53, null);
                                                                                            }
                                                                                        } else {
                                                                                            MenuNavTabDialog.Callback callback2 = menuNavTabDialog.callback();
                                                                                            if (callback2 != null) {
                                                                                                MainFragment mainFragment2 = (MainFragment) callback2;
                                                                                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                                PageTitle pageTitle = new PageTitle(UserAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode()), Jsoup.getInstance().getWikiSite(), Headers.Companion.getUserName(), null, null, null, null, null);
                                                                                                HistoryEntry historyEntry = new HistoryEntry(8, pageTitle);
                                                                                                int i52 = PageActivity.$r8$clinit;
                                                                                                mainFragment2.startActivity(LoginClient.newIntentForNewTab(mainFragment2.requireContext(), historyEntry, pageTitle), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 1:
                                                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity2 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding42 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding42.getClass();
                                                                                        LinearLayout linearLayout13 = (LinearLayout) viewMainDrawerBinding42.mainDrawerTalkContainer;
                                                                                        companion2.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity2, linearLayout13);
                                                                                        MenuNavTabDialog.Callback callback3 = menuNavTabDialog.callback();
                                                                                        if (callback3 != null) {
                                                                                            MainFragment mainFragment3 = (MainFragment) callback3;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i6 = TalkTopicsActivity.$r8$clinit;
                                                                                                AppCompatActivity requireActivity3 = mainFragment3.requireActivity();
                                                                                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                                String valueFor = UserTalkAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode());
                                                                                                String userName = Headers.Companion.getUserName();
                                                                                                WikiSite.Companion companion3 = WikiSite.Companion;
                                                                                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                                                                                companion3.getClass();
                                                                                                mainFragment3.startActivity(Headers.Companion.newIntent(requireActivity3, new PageTitle(valueFor, WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode), userName, null, null, null, null, null), Constants.InvokeSource.NAV_MENU), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 2:
                                                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity4 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding52 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding52.getClass();
                                                                                        LinearLayout linearLayout14 = (LinearLayout) viewMainDrawerBinding52.mainDrawerWatchlistContainer;
                                                                                        companion4.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity4, linearLayout14);
                                                                                        MenuNavTabDialog.Callback callback4 = menuNavTabDialog.callback();
                                                                                        if (callback4 != null) {
                                                                                            MainFragment mainFragment4 = (MainFragment) callback4;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i7 = WatchlistActivity.$r8$clinit;
                                                                                                mainFragment4.startActivity(new Intent(mainFragment4.requireActivity(), (Class<?>) WatchlistActivity.class), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 3:
                                                                                        WikiGamesEvent.submit$default(1020, null, null, "games_click", "more_menu", null, null, null);
                                                                                        AppCompatActivity requireActivity5 = menuNavTabDialog.requireActivity();
                                                                                        int i8 = GamesHubActivity.$r8$clinit;
                                                                                        requireActivity5.startActivity(new Intent(menuNavTabDialog.requireActivity(), (Class<?>) GamesHubActivity.class));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 4:
                                                                                        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                        String m = ViewSizeResolver$CC.m();
                                                                                        Prefs prefs = Prefs.INSTANCE;
                                                                                        EventPlatformClient.submit(new AppInteractionEvent("places_click", "main_nav_tab", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                        AppCompatActivity requireActivity6 = menuNavTabDialog.requireActivity();
                                                                                        int i9 = PlacesActivity.$r8$clinit;
                                                                                        requireActivity6.startActivity(ByteString.Companion.newIntent(menuNavTabDialog.requireActivity(), null, null));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 5:
                                                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity7 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding6 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding6.getClass();
                                                                                        LinearLayout linearLayout15 = (LinearLayout) viewMainDrawerBinding6.mainDrawerSettingsContainer;
                                                                                        companion5.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity7, linearLayout15);
                                                                                        MenuNavTabDialog.Callback callback5 = menuNavTabDialog.callback();
                                                                                        if (callback5 != null) {
                                                                                            MainFragment mainFragment5 = (MainFragment) callback5;
                                                                                            int i10 = SettingsActivity.$r8$clinit;
                                                                                            mainFragment5.startActivityForResult(new Intent(mainFragment5.requireActivity(), (Class<?>) SettingsActivity.class), 41, null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 6:
                                                                                        BreadCrumbLogEvent.Companion companion6 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity8 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding7 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding7.getClass();
                                                                                        LinearLayout linearLayout16 = viewMainDrawerBinding7.mainDrawerContribsContainer;
                                                                                        companion6.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity8, linearLayout16);
                                                                                        MenuNavTabDialog.Callback callback6 = menuNavTabDialog.callback();
                                                                                        if (callback6 != null) {
                                                                                            MainFragment mainFragment6 = (MainFragment) callback6;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i11 = UserContribListActivity.$r8$clinit;
                                                                                                mainFragment6.startActivity(HttpUrl.Companion.newIntent(mainFragment6.requireActivity(), Headers.Companion.getUserName()), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 7:
                                                                                        BreadCrumbLogEvent.Companion companion7 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity9 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding8 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding8.getClass();
                                                                                        LinearLayout linearLayout17 = viewMainDrawerBinding8.mainDrawerDonateContainer;
                                                                                        companion7.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity9, linearLayout17);
                                                                                        Cache.Companion.logAction$default(12, "donate_start_click", "more_menu", null, null);
                                                                                        MenuNavTabDialog.Callback callback7 = menuNavTabDialog.callback();
                                                                                        if (callback7 != null) {
                                                                                            AppCompatActivity requireActivity10 = ((MainFragment) callback7).requireActivity();
                                                                                            BaseActivity baseActivity = requireActivity10 instanceof BaseActivity ? (BaseActivity) requireActivity10 : null;
                                                                                            if (baseActivity != null) {
                                                                                                int i12 = BaseActivity.$r8$clinit;
                                                                                                Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), Path.Companion.newInstance$default(12, null, null));
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 8:
                                                                                        UriUtil.submit$default(238, null, "start_click", null, Headers.Companion.isLoggedIn() ? "li_profile" : "lo_profile", null);
                                                                                        MenuNavTabDialog.Callback callback8 = menuNavTabDialog.callback();
                                                                                        if (callback8 != null) {
                                                                                            MainFragment mainFragment7 = (MainFragment) callback8;
                                                                                            int i13 = YearInReviewOnboardingActivity.$r8$clinit;
                                                                                            mainFragment7.startActivity(new Intent(mainFragment7.requireActivity(), (Class<?>) YearInReviewOnboardingActivity.class), null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    default:
                                                                                        BreadCrumbLogEvent.Companion companion8 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity11 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding9 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding9.getClass();
                                                                                        LinearLayout linearLayout18 = (LinearLayout) viewMainDrawerBinding9.mainDrawerEditContainer;
                                                                                        companion8.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity11, linearLayout18);
                                                                                        WikiGamesEvent.submit$default("more_menu", "edit_click", null, null, null, null, null, null, null, null, null, null, 16380);
                                                                                        int i14 = SuggestedEditsTasksActivity.$r8$clinit;
                                                                                        menuNavTabDialog.startActivity(new Intent(menuNavTabDialog.requireContext(), (Class<?>) SuggestedEditsTasksActivity.class), null);
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                }
                                                                            }
                                                                        });
                                                                        ViewMainDrawerBinding viewMainDrawerBinding6 = this._binding;
                                                                        viewMainDrawerBinding6.getClass();
                                                                        final int i6 = 4;
                                                                        ((LinearLayout) viewMainDrawerBinding6.mainDrawerPlacesContainer).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.navtab.MenuNavTabDialog$$ExternalSyntheticLambda0
                                                                            public final /* synthetic */ MenuNavTabDialog f$0;

                                                                            {
                                                                                this.f$0 = this;
                                                                            }

                                                                            @Override // android.view.View.OnClickListener
                                                                            public final void onClick(View view) {
                                                                                int i32 = i6;
                                                                                MenuNavTabDialog menuNavTabDialog = this.f$0;
                                                                                switch (i32) {
                                                                                    case 0:
                                                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding32 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding32.getClass();
                                                                                        LinearLayout linearLayout12 = viewMainDrawerBinding32.mainDrawerAccountContainer;
                                                                                        companion.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity, linearLayout12);
                                                                                        if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                                            MenuNavTabDialog.Callback callback = menuNavTabDialog.callback();
                                                                                            if (callback != null) {
                                                                                                MainFragment mainFragment = (MainFragment) callback;
                                                                                                int i42 = LoginActivity.$r8$clinit;
                                                                                                mainFragment.startActivityForResult(Path.Companion.newIntent(mainFragment.requireContext(), "navigation", true), 53, null);
                                                                                            }
                                                                                        } else {
                                                                                            MenuNavTabDialog.Callback callback2 = menuNavTabDialog.callback();
                                                                                            if (callback2 != null) {
                                                                                                MainFragment mainFragment2 = (MainFragment) callback2;
                                                                                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                                PageTitle pageTitle = new PageTitle(UserAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode()), Jsoup.getInstance().getWikiSite(), Headers.Companion.getUserName(), null, null, null, null, null);
                                                                                                HistoryEntry historyEntry = new HistoryEntry(8, pageTitle);
                                                                                                int i52 = PageActivity.$r8$clinit;
                                                                                                mainFragment2.startActivity(LoginClient.newIntentForNewTab(mainFragment2.requireContext(), historyEntry, pageTitle), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 1:
                                                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity2 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding42 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding42.getClass();
                                                                                        LinearLayout linearLayout13 = (LinearLayout) viewMainDrawerBinding42.mainDrawerTalkContainer;
                                                                                        companion2.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity2, linearLayout13);
                                                                                        MenuNavTabDialog.Callback callback3 = menuNavTabDialog.callback();
                                                                                        if (callback3 != null) {
                                                                                            MainFragment mainFragment3 = (MainFragment) callback3;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i62 = TalkTopicsActivity.$r8$clinit;
                                                                                                AppCompatActivity requireActivity3 = mainFragment3.requireActivity();
                                                                                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                                String valueFor = UserTalkAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode());
                                                                                                String userName = Headers.Companion.getUserName();
                                                                                                WikiSite.Companion companion3 = WikiSite.Companion;
                                                                                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                                                                                companion3.getClass();
                                                                                                mainFragment3.startActivity(Headers.Companion.newIntent(requireActivity3, new PageTitle(valueFor, WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode), userName, null, null, null, null, null), Constants.InvokeSource.NAV_MENU), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 2:
                                                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity4 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding52 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding52.getClass();
                                                                                        LinearLayout linearLayout14 = (LinearLayout) viewMainDrawerBinding52.mainDrawerWatchlistContainer;
                                                                                        companion4.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity4, linearLayout14);
                                                                                        MenuNavTabDialog.Callback callback4 = menuNavTabDialog.callback();
                                                                                        if (callback4 != null) {
                                                                                            MainFragment mainFragment4 = (MainFragment) callback4;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i7 = WatchlistActivity.$r8$clinit;
                                                                                                mainFragment4.startActivity(new Intent(mainFragment4.requireActivity(), (Class<?>) WatchlistActivity.class), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 3:
                                                                                        WikiGamesEvent.submit$default(1020, null, null, "games_click", "more_menu", null, null, null);
                                                                                        AppCompatActivity requireActivity5 = menuNavTabDialog.requireActivity();
                                                                                        int i8 = GamesHubActivity.$r8$clinit;
                                                                                        requireActivity5.startActivity(new Intent(menuNavTabDialog.requireActivity(), (Class<?>) GamesHubActivity.class));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 4:
                                                                                        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                        String m = ViewSizeResolver$CC.m();
                                                                                        Prefs prefs = Prefs.INSTANCE;
                                                                                        EventPlatformClient.submit(new AppInteractionEvent("places_click", "main_nav_tab", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                        AppCompatActivity requireActivity6 = menuNavTabDialog.requireActivity();
                                                                                        int i9 = PlacesActivity.$r8$clinit;
                                                                                        requireActivity6.startActivity(ByteString.Companion.newIntent(menuNavTabDialog.requireActivity(), null, null));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 5:
                                                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity7 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding62 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding62.getClass();
                                                                                        LinearLayout linearLayout15 = (LinearLayout) viewMainDrawerBinding62.mainDrawerSettingsContainer;
                                                                                        companion5.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity7, linearLayout15);
                                                                                        MenuNavTabDialog.Callback callback5 = menuNavTabDialog.callback();
                                                                                        if (callback5 != null) {
                                                                                            MainFragment mainFragment5 = (MainFragment) callback5;
                                                                                            int i10 = SettingsActivity.$r8$clinit;
                                                                                            mainFragment5.startActivityForResult(new Intent(mainFragment5.requireActivity(), (Class<?>) SettingsActivity.class), 41, null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 6:
                                                                                        BreadCrumbLogEvent.Companion companion6 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity8 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding7 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding7.getClass();
                                                                                        LinearLayout linearLayout16 = viewMainDrawerBinding7.mainDrawerContribsContainer;
                                                                                        companion6.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity8, linearLayout16);
                                                                                        MenuNavTabDialog.Callback callback6 = menuNavTabDialog.callback();
                                                                                        if (callback6 != null) {
                                                                                            MainFragment mainFragment6 = (MainFragment) callback6;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i11 = UserContribListActivity.$r8$clinit;
                                                                                                mainFragment6.startActivity(HttpUrl.Companion.newIntent(mainFragment6.requireActivity(), Headers.Companion.getUserName()), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 7:
                                                                                        BreadCrumbLogEvent.Companion companion7 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity9 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding8 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding8.getClass();
                                                                                        LinearLayout linearLayout17 = viewMainDrawerBinding8.mainDrawerDonateContainer;
                                                                                        companion7.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity9, linearLayout17);
                                                                                        Cache.Companion.logAction$default(12, "donate_start_click", "more_menu", null, null);
                                                                                        MenuNavTabDialog.Callback callback7 = menuNavTabDialog.callback();
                                                                                        if (callback7 != null) {
                                                                                            AppCompatActivity requireActivity10 = ((MainFragment) callback7).requireActivity();
                                                                                            BaseActivity baseActivity = requireActivity10 instanceof BaseActivity ? (BaseActivity) requireActivity10 : null;
                                                                                            if (baseActivity != null) {
                                                                                                int i12 = BaseActivity.$r8$clinit;
                                                                                                Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), Path.Companion.newInstance$default(12, null, null));
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 8:
                                                                                        UriUtil.submit$default(238, null, "start_click", null, Headers.Companion.isLoggedIn() ? "li_profile" : "lo_profile", null);
                                                                                        MenuNavTabDialog.Callback callback8 = menuNavTabDialog.callback();
                                                                                        if (callback8 != null) {
                                                                                            MainFragment mainFragment7 = (MainFragment) callback8;
                                                                                            int i13 = YearInReviewOnboardingActivity.$r8$clinit;
                                                                                            mainFragment7.startActivity(new Intent(mainFragment7.requireActivity(), (Class<?>) YearInReviewOnboardingActivity.class), null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    default:
                                                                                        BreadCrumbLogEvent.Companion companion8 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity11 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding9 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding9.getClass();
                                                                                        LinearLayout linearLayout18 = (LinearLayout) viewMainDrawerBinding9.mainDrawerEditContainer;
                                                                                        companion8.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity11, linearLayout18);
                                                                                        WikiGamesEvent.submit$default("more_menu", "edit_click", null, null, null, null, null, null, null, null, null, null, 16380);
                                                                                        int i14 = SuggestedEditsTasksActivity.$r8$clinit;
                                                                                        menuNavTabDialog.startActivity(new Intent(menuNavTabDialog.requireContext(), (Class<?>) SuggestedEditsTasksActivity.class), null);
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                }
                                                                            }
                                                                        });
                                                                        ViewMainDrawerBinding viewMainDrawerBinding7 = this._binding;
                                                                        viewMainDrawerBinding7.getClass();
                                                                        final int i7 = 5;
                                                                        ((LinearLayout) viewMainDrawerBinding7.mainDrawerSettingsContainer).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.navtab.MenuNavTabDialog$$ExternalSyntheticLambda0
                                                                            public final /* synthetic */ MenuNavTabDialog f$0;

                                                                            {
                                                                                this.f$0 = this;
                                                                            }

                                                                            @Override // android.view.View.OnClickListener
                                                                            public final void onClick(View view) {
                                                                                int i32 = i7;
                                                                                MenuNavTabDialog menuNavTabDialog = this.f$0;
                                                                                switch (i32) {
                                                                                    case 0:
                                                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding32 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding32.getClass();
                                                                                        LinearLayout linearLayout12 = viewMainDrawerBinding32.mainDrawerAccountContainer;
                                                                                        companion.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity, linearLayout12);
                                                                                        if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                                            MenuNavTabDialog.Callback callback = menuNavTabDialog.callback();
                                                                                            if (callback != null) {
                                                                                                MainFragment mainFragment = (MainFragment) callback;
                                                                                                int i42 = LoginActivity.$r8$clinit;
                                                                                                mainFragment.startActivityForResult(Path.Companion.newIntent(mainFragment.requireContext(), "navigation", true), 53, null);
                                                                                            }
                                                                                        } else {
                                                                                            MenuNavTabDialog.Callback callback2 = menuNavTabDialog.callback();
                                                                                            if (callback2 != null) {
                                                                                                MainFragment mainFragment2 = (MainFragment) callback2;
                                                                                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                                PageTitle pageTitle = new PageTitle(UserAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode()), Jsoup.getInstance().getWikiSite(), Headers.Companion.getUserName(), null, null, null, null, null);
                                                                                                HistoryEntry historyEntry = new HistoryEntry(8, pageTitle);
                                                                                                int i52 = PageActivity.$r8$clinit;
                                                                                                mainFragment2.startActivity(LoginClient.newIntentForNewTab(mainFragment2.requireContext(), historyEntry, pageTitle), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 1:
                                                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity2 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding42 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding42.getClass();
                                                                                        LinearLayout linearLayout13 = (LinearLayout) viewMainDrawerBinding42.mainDrawerTalkContainer;
                                                                                        companion2.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity2, linearLayout13);
                                                                                        MenuNavTabDialog.Callback callback3 = menuNavTabDialog.callback();
                                                                                        if (callback3 != null) {
                                                                                            MainFragment mainFragment3 = (MainFragment) callback3;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i62 = TalkTopicsActivity.$r8$clinit;
                                                                                                AppCompatActivity requireActivity3 = mainFragment3.requireActivity();
                                                                                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                                String valueFor = UserTalkAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode());
                                                                                                String userName = Headers.Companion.getUserName();
                                                                                                WikiSite.Companion companion3 = WikiSite.Companion;
                                                                                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                                                                                companion3.getClass();
                                                                                                mainFragment3.startActivity(Headers.Companion.newIntent(requireActivity3, new PageTitle(valueFor, WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode), userName, null, null, null, null, null), Constants.InvokeSource.NAV_MENU), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 2:
                                                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity4 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding52 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding52.getClass();
                                                                                        LinearLayout linearLayout14 = (LinearLayout) viewMainDrawerBinding52.mainDrawerWatchlistContainer;
                                                                                        companion4.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity4, linearLayout14);
                                                                                        MenuNavTabDialog.Callback callback4 = menuNavTabDialog.callback();
                                                                                        if (callback4 != null) {
                                                                                            MainFragment mainFragment4 = (MainFragment) callback4;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i72 = WatchlistActivity.$r8$clinit;
                                                                                                mainFragment4.startActivity(new Intent(mainFragment4.requireActivity(), (Class<?>) WatchlistActivity.class), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 3:
                                                                                        WikiGamesEvent.submit$default(1020, null, null, "games_click", "more_menu", null, null, null);
                                                                                        AppCompatActivity requireActivity5 = menuNavTabDialog.requireActivity();
                                                                                        int i8 = GamesHubActivity.$r8$clinit;
                                                                                        requireActivity5.startActivity(new Intent(menuNavTabDialog.requireActivity(), (Class<?>) GamesHubActivity.class));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 4:
                                                                                        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                        String m = ViewSizeResolver$CC.m();
                                                                                        Prefs prefs = Prefs.INSTANCE;
                                                                                        EventPlatformClient.submit(new AppInteractionEvent("places_click", "main_nav_tab", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                        AppCompatActivity requireActivity6 = menuNavTabDialog.requireActivity();
                                                                                        int i9 = PlacesActivity.$r8$clinit;
                                                                                        requireActivity6.startActivity(ByteString.Companion.newIntent(menuNavTabDialog.requireActivity(), null, null));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 5:
                                                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity7 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding62 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding62.getClass();
                                                                                        LinearLayout linearLayout15 = (LinearLayout) viewMainDrawerBinding62.mainDrawerSettingsContainer;
                                                                                        companion5.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity7, linearLayout15);
                                                                                        MenuNavTabDialog.Callback callback5 = menuNavTabDialog.callback();
                                                                                        if (callback5 != null) {
                                                                                            MainFragment mainFragment5 = (MainFragment) callback5;
                                                                                            int i10 = SettingsActivity.$r8$clinit;
                                                                                            mainFragment5.startActivityForResult(new Intent(mainFragment5.requireActivity(), (Class<?>) SettingsActivity.class), 41, null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 6:
                                                                                        BreadCrumbLogEvent.Companion companion6 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity8 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding72 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding72.getClass();
                                                                                        LinearLayout linearLayout16 = viewMainDrawerBinding72.mainDrawerContribsContainer;
                                                                                        companion6.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity8, linearLayout16);
                                                                                        MenuNavTabDialog.Callback callback6 = menuNavTabDialog.callback();
                                                                                        if (callback6 != null) {
                                                                                            MainFragment mainFragment6 = (MainFragment) callback6;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i11 = UserContribListActivity.$r8$clinit;
                                                                                                mainFragment6.startActivity(HttpUrl.Companion.newIntent(mainFragment6.requireActivity(), Headers.Companion.getUserName()), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 7:
                                                                                        BreadCrumbLogEvent.Companion companion7 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity9 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding8 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding8.getClass();
                                                                                        LinearLayout linearLayout17 = viewMainDrawerBinding8.mainDrawerDonateContainer;
                                                                                        companion7.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity9, linearLayout17);
                                                                                        Cache.Companion.logAction$default(12, "donate_start_click", "more_menu", null, null);
                                                                                        MenuNavTabDialog.Callback callback7 = menuNavTabDialog.callback();
                                                                                        if (callback7 != null) {
                                                                                            AppCompatActivity requireActivity10 = ((MainFragment) callback7).requireActivity();
                                                                                            BaseActivity baseActivity = requireActivity10 instanceof BaseActivity ? (BaseActivity) requireActivity10 : null;
                                                                                            if (baseActivity != null) {
                                                                                                int i12 = BaseActivity.$r8$clinit;
                                                                                                Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), Path.Companion.newInstance$default(12, null, null));
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 8:
                                                                                        UriUtil.submit$default(238, null, "start_click", null, Headers.Companion.isLoggedIn() ? "li_profile" : "lo_profile", null);
                                                                                        MenuNavTabDialog.Callback callback8 = menuNavTabDialog.callback();
                                                                                        if (callback8 != null) {
                                                                                            MainFragment mainFragment7 = (MainFragment) callback8;
                                                                                            int i13 = YearInReviewOnboardingActivity.$r8$clinit;
                                                                                            mainFragment7.startActivity(new Intent(mainFragment7.requireActivity(), (Class<?>) YearInReviewOnboardingActivity.class), null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    default:
                                                                                        BreadCrumbLogEvent.Companion companion8 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity11 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding9 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding9.getClass();
                                                                                        LinearLayout linearLayout18 = (LinearLayout) viewMainDrawerBinding9.mainDrawerEditContainer;
                                                                                        companion8.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity11, linearLayout18);
                                                                                        WikiGamesEvent.submit$default("more_menu", "edit_click", null, null, null, null, null, null, null, null, null, null, 16380);
                                                                                        int i14 = SuggestedEditsTasksActivity.$r8$clinit;
                                                                                        menuNavTabDialog.startActivity(new Intent(menuNavTabDialog.requireContext(), (Class<?>) SuggestedEditsTasksActivity.class), null);
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                }
                                                                            }
                                                                        });
                                                                        ViewMainDrawerBinding viewMainDrawerBinding8 = this._binding;
                                                                        viewMainDrawerBinding8.getClass();
                                                                        final int i8 = 6;
                                                                        viewMainDrawerBinding8.mainDrawerContribsContainer.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.navtab.MenuNavTabDialog$$ExternalSyntheticLambda0
                                                                            public final /* synthetic */ MenuNavTabDialog f$0;

                                                                            {
                                                                                this.f$0 = this;
                                                                            }

                                                                            @Override // android.view.View.OnClickListener
                                                                            public final void onClick(View view) {
                                                                                int i32 = i8;
                                                                                MenuNavTabDialog menuNavTabDialog = this.f$0;
                                                                                switch (i32) {
                                                                                    case 0:
                                                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding32 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding32.getClass();
                                                                                        LinearLayout linearLayout12 = viewMainDrawerBinding32.mainDrawerAccountContainer;
                                                                                        companion.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity, linearLayout12);
                                                                                        if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                                            MenuNavTabDialog.Callback callback = menuNavTabDialog.callback();
                                                                                            if (callback != null) {
                                                                                                MainFragment mainFragment = (MainFragment) callback;
                                                                                                int i42 = LoginActivity.$r8$clinit;
                                                                                                mainFragment.startActivityForResult(Path.Companion.newIntent(mainFragment.requireContext(), "navigation", true), 53, null);
                                                                                            }
                                                                                        } else {
                                                                                            MenuNavTabDialog.Callback callback2 = menuNavTabDialog.callback();
                                                                                            if (callback2 != null) {
                                                                                                MainFragment mainFragment2 = (MainFragment) callback2;
                                                                                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                                PageTitle pageTitle = new PageTitle(UserAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode()), Jsoup.getInstance().getWikiSite(), Headers.Companion.getUserName(), null, null, null, null, null);
                                                                                                HistoryEntry historyEntry = new HistoryEntry(8, pageTitle);
                                                                                                int i52 = PageActivity.$r8$clinit;
                                                                                                mainFragment2.startActivity(LoginClient.newIntentForNewTab(mainFragment2.requireContext(), historyEntry, pageTitle), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 1:
                                                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity2 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding42 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding42.getClass();
                                                                                        LinearLayout linearLayout13 = (LinearLayout) viewMainDrawerBinding42.mainDrawerTalkContainer;
                                                                                        companion2.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity2, linearLayout13);
                                                                                        MenuNavTabDialog.Callback callback3 = menuNavTabDialog.callback();
                                                                                        if (callback3 != null) {
                                                                                            MainFragment mainFragment3 = (MainFragment) callback3;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i62 = TalkTopicsActivity.$r8$clinit;
                                                                                                AppCompatActivity requireActivity3 = mainFragment3.requireActivity();
                                                                                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                                String valueFor = UserTalkAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode());
                                                                                                String userName = Headers.Companion.getUserName();
                                                                                                WikiSite.Companion companion3 = WikiSite.Companion;
                                                                                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                                                                                companion3.getClass();
                                                                                                mainFragment3.startActivity(Headers.Companion.newIntent(requireActivity3, new PageTitle(valueFor, WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode), userName, null, null, null, null, null), Constants.InvokeSource.NAV_MENU), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 2:
                                                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity4 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding52 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding52.getClass();
                                                                                        LinearLayout linearLayout14 = (LinearLayout) viewMainDrawerBinding52.mainDrawerWatchlistContainer;
                                                                                        companion4.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity4, linearLayout14);
                                                                                        MenuNavTabDialog.Callback callback4 = menuNavTabDialog.callback();
                                                                                        if (callback4 != null) {
                                                                                            MainFragment mainFragment4 = (MainFragment) callback4;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i72 = WatchlistActivity.$r8$clinit;
                                                                                                mainFragment4.startActivity(new Intent(mainFragment4.requireActivity(), (Class<?>) WatchlistActivity.class), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 3:
                                                                                        WikiGamesEvent.submit$default(1020, null, null, "games_click", "more_menu", null, null, null);
                                                                                        AppCompatActivity requireActivity5 = menuNavTabDialog.requireActivity();
                                                                                        int i82 = GamesHubActivity.$r8$clinit;
                                                                                        requireActivity5.startActivity(new Intent(menuNavTabDialog.requireActivity(), (Class<?>) GamesHubActivity.class));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 4:
                                                                                        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                        String m = ViewSizeResolver$CC.m();
                                                                                        Prefs prefs = Prefs.INSTANCE;
                                                                                        EventPlatformClient.submit(new AppInteractionEvent("places_click", "main_nav_tab", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                        AppCompatActivity requireActivity6 = menuNavTabDialog.requireActivity();
                                                                                        int i9 = PlacesActivity.$r8$clinit;
                                                                                        requireActivity6.startActivity(ByteString.Companion.newIntent(menuNavTabDialog.requireActivity(), null, null));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 5:
                                                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity7 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding62 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding62.getClass();
                                                                                        LinearLayout linearLayout15 = (LinearLayout) viewMainDrawerBinding62.mainDrawerSettingsContainer;
                                                                                        companion5.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity7, linearLayout15);
                                                                                        MenuNavTabDialog.Callback callback5 = menuNavTabDialog.callback();
                                                                                        if (callback5 != null) {
                                                                                            MainFragment mainFragment5 = (MainFragment) callback5;
                                                                                            int i10 = SettingsActivity.$r8$clinit;
                                                                                            mainFragment5.startActivityForResult(new Intent(mainFragment5.requireActivity(), (Class<?>) SettingsActivity.class), 41, null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 6:
                                                                                        BreadCrumbLogEvent.Companion companion6 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity8 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding72 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding72.getClass();
                                                                                        LinearLayout linearLayout16 = viewMainDrawerBinding72.mainDrawerContribsContainer;
                                                                                        companion6.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity8, linearLayout16);
                                                                                        MenuNavTabDialog.Callback callback6 = menuNavTabDialog.callback();
                                                                                        if (callback6 != null) {
                                                                                            MainFragment mainFragment6 = (MainFragment) callback6;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i11 = UserContribListActivity.$r8$clinit;
                                                                                                mainFragment6.startActivity(HttpUrl.Companion.newIntent(mainFragment6.requireActivity(), Headers.Companion.getUserName()), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 7:
                                                                                        BreadCrumbLogEvent.Companion companion7 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity9 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding82 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding82.getClass();
                                                                                        LinearLayout linearLayout17 = viewMainDrawerBinding82.mainDrawerDonateContainer;
                                                                                        companion7.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity9, linearLayout17);
                                                                                        Cache.Companion.logAction$default(12, "donate_start_click", "more_menu", null, null);
                                                                                        MenuNavTabDialog.Callback callback7 = menuNavTabDialog.callback();
                                                                                        if (callback7 != null) {
                                                                                            AppCompatActivity requireActivity10 = ((MainFragment) callback7).requireActivity();
                                                                                            BaseActivity baseActivity = requireActivity10 instanceof BaseActivity ? (BaseActivity) requireActivity10 : null;
                                                                                            if (baseActivity != null) {
                                                                                                int i12 = BaseActivity.$r8$clinit;
                                                                                                Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), Path.Companion.newInstance$default(12, null, null));
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 8:
                                                                                        UriUtil.submit$default(238, null, "start_click", null, Headers.Companion.isLoggedIn() ? "li_profile" : "lo_profile", null);
                                                                                        MenuNavTabDialog.Callback callback8 = menuNavTabDialog.callback();
                                                                                        if (callback8 != null) {
                                                                                            MainFragment mainFragment7 = (MainFragment) callback8;
                                                                                            int i13 = YearInReviewOnboardingActivity.$r8$clinit;
                                                                                            mainFragment7.startActivity(new Intent(mainFragment7.requireActivity(), (Class<?>) YearInReviewOnboardingActivity.class), null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    default:
                                                                                        BreadCrumbLogEvent.Companion companion8 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity11 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding9 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding9.getClass();
                                                                                        LinearLayout linearLayout18 = (LinearLayout) viewMainDrawerBinding9.mainDrawerEditContainer;
                                                                                        companion8.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity11, linearLayout18);
                                                                                        WikiGamesEvent.submit$default("more_menu", "edit_click", null, null, null, null, null, null, null, null, null, null, 16380);
                                                                                        int i14 = SuggestedEditsTasksActivity.$r8$clinit;
                                                                                        menuNavTabDialog.startActivity(new Intent(menuNavTabDialog.requireContext(), (Class<?>) SuggestedEditsTasksActivity.class), null);
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                }
                                                                            }
                                                                        });
                                                                        ViewMainDrawerBinding viewMainDrawerBinding9 = this._binding;
                                                                        viewMainDrawerBinding9.getClass();
                                                                        final int i9 = 7;
                                                                        viewMainDrawerBinding9.mainDrawerDonateContainer.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.navtab.MenuNavTabDialog$$ExternalSyntheticLambda0
                                                                            public final /* synthetic */ MenuNavTabDialog f$0;

                                                                            {
                                                                                this.f$0 = this;
                                                                            }

                                                                            @Override // android.view.View.OnClickListener
                                                                            public final void onClick(View view) {
                                                                                int i32 = i9;
                                                                                MenuNavTabDialog menuNavTabDialog = this.f$0;
                                                                                switch (i32) {
                                                                                    case 0:
                                                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding32 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding32.getClass();
                                                                                        LinearLayout linearLayout12 = viewMainDrawerBinding32.mainDrawerAccountContainer;
                                                                                        companion.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity, linearLayout12);
                                                                                        if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                                            MenuNavTabDialog.Callback callback = menuNavTabDialog.callback();
                                                                                            if (callback != null) {
                                                                                                MainFragment mainFragment = (MainFragment) callback;
                                                                                                int i42 = LoginActivity.$r8$clinit;
                                                                                                mainFragment.startActivityForResult(Path.Companion.newIntent(mainFragment.requireContext(), "navigation", true), 53, null);
                                                                                            }
                                                                                        } else {
                                                                                            MenuNavTabDialog.Callback callback2 = menuNavTabDialog.callback();
                                                                                            if (callback2 != null) {
                                                                                                MainFragment mainFragment2 = (MainFragment) callback2;
                                                                                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                                PageTitle pageTitle = new PageTitle(UserAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode()), Jsoup.getInstance().getWikiSite(), Headers.Companion.getUserName(), null, null, null, null, null);
                                                                                                HistoryEntry historyEntry = new HistoryEntry(8, pageTitle);
                                                                                                int i52 = PageActivity.$r8$clinit;
                                                                                                mainFragment2.startActivity(LoginClient.newIntentForNewTab(mainFragment2.requireContext(), historyEntry, pageTitle), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 1:
                                                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity2 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding42 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding42.getClass();
                                                                                        LinearLayout linearLayout13 = (LinearLayout) viewMainDrawerBinding42.mainDrawerTalkContainer;
                                                                                        companion2.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity2, linearLayout13);
                                                                                        MenuNavTabDialog.Callback callback3 = menuNavTabDialog.callback();
                                                                                        if (callback3 != null) {
                                                                                            MainFragment mainFragment3 = (MainFragment) callback3;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i62 = TalkTopicsActivity.$r8$clinit;
                                                                                                AppCompatActivity requireActivity3 = mainFragment3.requireActivity();
                                                                                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                                String valueFor = UserTalkAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode());
                                                                                                String userName = Headers.Companion.getUserName();
                                                                                                WikiSite.Companion companion3 = WikiSite.Companion;
                                                                                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                                                                                companion3.getClass();
                                                                                                mainFragment3.startActivity(Headers.Companion.newIntent(requireActivity3, new PageTitle(valueFor, WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode), userName, null, null, null, null, null), Constants.InvokeSource.NAV_MENU), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 2:
                                                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity4 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding52 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding52.getClass();
                                                                                        LinearLayout linearLayout14 = (LinearLayout) viewMainDrawerBinding52.mainDrawerWatchlistContainer;
                                                                                        companion4.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity4, linearLayout14);
                                                                                        MenuNavTabDialog.Callback callback4 = menuNavTabDialog.callback();
                                                                                        if (callback4 != null) {
                                                                                            MainFragment mainFragment4 = (MainFragment) callback4;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i72 = WatchlistActivity.$r8$clinit;
                                                                                                mainFragment4.startActivity(new Intent(mainFragment4.requireActivity(), (Class<?>) WatchlistActivity.class), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 3:
                                                                                        WikiGamesEvent.submit$default(1020, null, null, "games_click", "more_menu", null, null, null);
                                                                                        AppCompatActivity requireActivity5 = menuNavTabDialog.requireActivity();
                                                                                        int i82 = GamesHubActivity.$r8$clinit;
                                                                                        requireActivity5.startActivity(new Intent(menuNavTabDialog.requireActivity(), (Class<?>) GamesHubActivity.class));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 4:
                                                                                        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                        String m = ViewSizeResolver$CC.m();
                                                                                        Prefs prefs = Prefs.INSTANCE;
                                                                                        EventPlatformClient.submit(new AppInteractionEvent("places_click", "main_nav_tab", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                        AppCompatActivity requireActivity6 = menuNavTabDialog.requireActivity();
                                                                                        int i92 = PlacesActivity.$r8$clinit;
                                                                                        requireActivity6.startActivity(ByteString.Companion.newIntent(menuNavTabDialog.requireActivity(), null, null));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 5:
                                                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity7 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding62 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding62.getClass();
                                                                                        LinearLayout linearLayout15 = (LinearLayout) viewMainDrawerBinding62.mainDrawerSettingsContainer;
                                                                                        companion5.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity7, linearLayout15);
                                                                                        MenuNavTabDialog.Callback callback5 = menuNavTabDialog.callback();
                                                                                        if (callback5 != null) {
                                                                                            MainFragment mainFragment5 = (MainFragment) callback5;
                                                                                            int i10 = SettingsActivity.$r8$clinit;
                                                                                            mainFragment5.startActivityForResult(new Intent(mainFragment5.requireActivity(), (Class<?>) SettingsActivity.class), 41, null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 6:
                                                                                        BreadCrumbLogEvent.Companion companion6 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity8 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding72 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding72.getClass();
                                                                                        LinearLayout linearLayout16 = viewMainDrawerBinding72.mainDrawerContribsContainer;
                                                                                        companion6.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity8, linearLayout16);
                                                                                        MenuNavTabDialog.Callback callback6 = menuNavTabDialog.callback();
                                                                                        if (callback6 != null) {
                                                                                            MainFragment mainFragment6 = (MainFragment) callback6;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i11 = UserContribListActivity.$r8$clinit;
                                                                                                mainFragment6.startActivity(HttpUrl.Companion.newIntent(mainFragment6.requireActivity(), Headers.Companion.getUserName()), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 7:
                                                                                        BreadCrumbLogEvent.Companion companion7 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity9 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding82 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding82.getClass();
                                                                                        LinearLayout linearLayout17 = viewMainDrawerBinding82.mainDrawerDonateContainer;
                                                                                        companion7.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity9, linearLayout17);
                                                                                        Cache.Companion.logAction$default(12, "donate_start_click", "more_menu", null, null);
                                                                                        MenuNavTabDialog.Callback callback7 = menuNavTabDialog.callback();
                                                                                        if (callback7 != null) {
                                                                                            AppCompatActivity requireActivity10 = ((MainFragment) callback7).requireActivity();
                                                                                            BaseActivity baseActivity = requireActivity10 instanceof BaseActivity ? (BaseActivity) requireActivity10 : null;
                                                                                            if (baseActivity != null) {
                                                                                                int i12 = BaseActivity.$r8$clinit;
                                                                                                Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), Path.Companion.newInstance$default(12, null, null));
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 8:
                                                                                        UriUtil.submit$default(238, null, "start_click", null, Headers.Companion.isLoggedIn() ? "li_profile" : "lo_profile", null);
                                                                                        MenuNavTabDialog.Callback callback8 = menuNavTabDialog.callback();
                                                                                        if (callback8 != null) {
                                                                                            MainFragment mainFragment7 = (MainFragment) callback8;
                                                                                            int i13 = YearInReviewOnboardingActivity.$r8$clinit;
                                                                                            mainFragment7.startActivity(new Intent(mainFragment7.requireActivity(), (Class<?>) YearInReviewOnboardingActivity.class), null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    default:
                                                                                        BreadCrumbLogEvent.Companion companion8 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity11 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding92 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding92.getClass();
                                                                                        LinearLayout linearLayout18 = (LinearLayout) viewMainDrawerBinding92.mainDrawerEditContainer;
                                                                                        companion8.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity11, linearLayout18);
                                                                                        WikiGamesEvent.submit$default("more_menu", "edit_click", null, null, null, null, null, null, null, null, null, null, 16380);
                                                                                        int i14 = SuggestedEditsTasksActivity.$r8$clinit;
                                                                                        menuNavTabDialog.startActivity(new Intent(menuNavTabDialog.requireContext(), (Class<?>) SuggestedEditsTasksActivity.class), null);
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                }
                                                                            }
                                                                        });
                                                                        ViewMainDrawerBinding viewMainDrawerBinding10 = this._binding;
                                                                        viewMainDrawerBinding10.getClass();
                                                                        ((LinearLayout) viewMainDrawerBinding10.mainDrawerYearInReviewContainer).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.navtab.MenuNavTabDialog$$ExternalSyntheticLambda0
                                                                            public final /* synthetic */ MenuNavTabDialog f$0;

                                                                            {
                                                                                this.f$0 = this;
                                                                            }

                                                                            @Override // android.view.View.OnClickListener
                                                                            public final void onClick(View view) {
                                                                                int i32 = i2;
                                                                                MenuNavTabDialog menuNavTabDialog = this.f$0;
                                                                                switch (i32) {
                                                                                    case 0:
                                                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding32 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding32.getClass();
                                                                                        LinearLayout linearLayout12 = viewMainDrawerBinding32.mainDrawerAccountContainer;
                                                                                        companion.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity, linearLayout12);
                                                                                        if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                                            MenuNavTabDialog.Callback callback = menuNavTabDialog.callback();
                                                                                            if (callback != null) {
                                                                                                MainFragment mainFragment = (MainFragment) callback;
                                                                                                int i42 = LoginActivity.$r8$clinit;
                                                                                                mainFragment.startActivityForResult(Path.Companion.newIntent(mainFragment.requireContext(), "navigation", true), 53, null);
                                                                                            }
                                                                                        } else {
                                                                                            MenuNavTabDialog.Callback callback2 = menuNavTabDialog.callback();
                                                                                            if (callback2 != null) {
                                                                                                MainFragment mainFragment2 = (MainFragment) callback2;
                                                                                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                                PageTitle pageTitle = new PageTitle(UserAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode()), Jsoup.getInstance().getWikiSite(), Headers.Companion.getUserName(), null, null, null, null, null);
                                                                                                HistoryEntry historyEntry = new HistoryEntry(8, pageTitle);
                                                                                                int i52 = PageActivity.$r8$clinit;
                                                                                                mainFragment2.startActivity(LoginClient.newIntentForNewTab(mainFragment2.requireContext(), historyEntry, pageTitle), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 1:
                                                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity2 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding42 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding42.getClass();
                                                                                        LinearLayout linearLayout13 = (LinearLayout) viewMainDrawerBinding42.mainDrawerTalkContainer;
                                                                                        companion2.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity2, linearLayout13);
                                                                                        MenuNavTabDialog.Callback callback3 = menuNavTabDialog.callback();
                                                                                        if (callback3 != null) {
                                                                                            MainFragment mainFragment3 = (MainFragment) callback3;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i62 = TalkTopicsActivity.$r8$clinit;
                                                                                                AppCompatActivity requireActivity3 = mainFragment3.requireActivity();
                                                                                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                                String valueFor = UserTalkAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode());
                                                                                                String userName = Headers.Companion.getUserName();
                                                                                                WikiSite.Companion companion3 = WikiSite.Companion;
                                                                                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                                                                                companion3.getClass();
                                                                                                mainFragment3.startActivity(Headers.Companion.newIntent(requireActivity3, new PageTitle(valueFor, WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode), userName, null, null, null, null, null), Constants.InvokeSource.NAV_MENU), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 2:
                                                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity4 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding52 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding52.getClass();
                                                                                        LinearLayout linearLayout14 = (LinearLayout) viewMainDrawerBinding52.mainDrawerWatchlistContainer;
                                                                                        companion4.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity4, linearLayout14);
                                                                                        MenuNavTabDialog.Callback callback4 = menuNavTabDialog.callback();
                                                                                        if (callback4 != null) {
                                                                                            MainFragment mainFragment4 = (MainFragment) callback4;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i72 = WatchlistActivity.$r8$clinit;
                                                                                                mainFragment4.startActivity(new Intent(mainFragment4.requireActivity(), (Class<?>) WatchlistActivity.class), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 3:
                                                                                        WikiGamesEvent.submit$default(1020, null, null, "games_click", "more_menu", null, null, null);
                                                                                        AppCompatActivity requireActivity5 = menuNavTabDialog.requireActivity();
                                                                                        int i82 = GamesHubActivity.$r8$clinit;
                                                                                        requireActivity5.startActivity(new Intent(menuNavTabDialog.requireActivity(), (Class<?>) GamesHubActivity.class));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 4:
                                                                                        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                        String m = ViewSizeResolver$CC.m();
                                                                                        Prefs prefs = Prefs.INSTANCE;
                                                                                        EventPlatformClient.submit(new AppInteractionEvent("places_click", "main_nav_tab", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                        AppCompatActivity requireActivity6 = menuNavTabDialog.requireActivity();
                                                                                        int i92 = PlacesActivity.$r8$clinit;
                                                                                        requireActivity6.startActivity(ByteString.Companion.newIntent(menuNavTabDialog.requireActivity(), null, null));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 5:
                                                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity7 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding62 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding62.getClass();
                                                                                        LinearLayout linearLayout15 = (LinearLayout) viewMainDrawerBinding62.mainDrawerSettingsContainer;
                                                                                        companion5.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity7, linearLayout15);
                                                                                        MenuNavTabDialog.Callback callback5 = menuNavTabDialog.callback();
                                                                                        if (callback5 != null) {
                                                                                            MainFragment mainFragment5 = (MainFragment) callback5;
                                                                                            int i10 = SettingsActivity.$r8$clinit;
                                                                                            mainFragment5.startActivityForResult(new Intent(mainFragment5.requireActivity(), (Class<?>) SettingsActivity.class), 41, null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 6:
                                                                                        BreadCrumbLogEvent.Companion companion6 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity8 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding72 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding72.getClass();
                                                                                        LinearLayout linearLayout16 = viewMainDrawerBinding72.mainDrawerContribsContainer;
                                                                                        companion6.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity8, linearLayout16);
                                                                                        MenuNavTabDialog.Callback callback6 = menuNavTabDialog.callback();
                                                                                        if (callback6 != null) {
                                                                                            MainFragment mainFragment6 = (MainFragment) callback6;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i11 = UserContribListActivity.$r8$clinit;
                                                                                                mainFragment6.startActivity(HttpUrl.Companion.newIntent(mainFragment6.requireActivity(), Headers.Companion.getUserName()), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 7:
                                                                                        BreadCrumbLogEvent.Companion companion7 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity9 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding82 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding82.getClass();
                                                                                        LinearLayout linearLayout17 = viewMainDrawerBinding82.mainDrawerDonateContainer;
                                                                                        companion7.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity9, linearLayout17);
                                                                                        Cache.Companion.logAction$default(12, "donate_start_click", "more_menu", null, null);
                                                                                        MenuNavTabDialog.Callback callback7 = menuNavTabDialog.callback();
                                                                                        if (callback7 != null) {
                                                                                            AppCompatActivity requireActivity10 = ((MainFragment) callback7).requireActivity();
                                                                                            BaseActivity baseActivity = requireActivity10 instanceof BaseActivity ? (BaseActivity) requireActivity10 : null;
                                                                                            if (baseActivity != null) {
                                                                                                int i12 = BaseActivity.$r8$clinit;
                                                                                                Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), Path.Companion.newInstance$default(12, null, null));
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 8:
                                                                                        UriUtil.submit$default(238, null, "start_click", null, Headers.Companion.isLoggedIn() ? "li_profile" : "lo_profile", null);
                                                                                        MenuNavTabDialog.Callback callback8 = menuNavTabDialog.callback();
                                                                                        if (callback8 != null) {
                                                                                            MainFragment mainFragment7 = (MainFragment) callback8;
                                                                                            int i13 = YearInReviewOnboardingActivity.$r8$clinit;
                                                                                            mainFragment7.startActivity(new Intent(mainFragment7.requireActivity(), (Class<?>) YearInReviewOnboardingActivity.class), null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    default:
                                                                                        BreadCrumbLogEvent.Companion companion8 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity11 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding92 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding92.getClass();
                                                                                        LinearLayout linearLayout18 = (LinearLayout) viewMainDrawerBinding92.mainDrawerEditContainer;
                                                                                        companion8.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity11, linearLayout18);
                                                                                        WikiGamesEvent.submit$default("more_menu", "edit_click", null, null, null, null, null, null, null, null, null, null, 16380);
                                                                                        int i14 = SuggestedEditsTasksActivity.$r8$clinit;
                                                                                        menuNavTabDialog.startActivity(new Intent(menuNavTabDialog.requireContext(), (Class<?>) SuggestedEditsTasksActivity.class), null);
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                }
                                                                            }
                                                                        });
                                                                        ViewMainDrawerBinding viewMainDrawerBinding11 = this._binding;
                                                                        viewMainDrawerBinding11.getClass();
                                                                        View view = viewMainDrawerBinding11.yearInReviewRedDot;
                                                                        Prefs prefs = Prefs.INSTANCE;
                                                                        view.setVisibility(!Prefs.getYearInReviewVisited() ? 0 : 8);
                                                                        ViewMainDrawerBinding viewMainDrawerBinding12 = this._binding;
                                                                        viewMainDrawerBinding12.getClass();
                                                                        final int i10 = 9;
                                                                        ((LinearLayout) viewMainDrawerBinding12.mainDrawerEditContainer).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.navtab.MenuNavTabDialog$$ExternalSyntheticLambda0
                                                                            public final /* synthetic */ MenuNavTabDialog f$0;

                                                                            {
                                                                                this.f$0 = this;
                                                                            }

                                                                            @Override // android.view.View.OnClickListener
                                                                            public final void onClick(View view2) {
                                                                                int i32 = i10;
                                                                                MenuNavTabDialog menuNavTabDialog = this.f$0;
                                                                                switch (i32) {
                                                                                    case 0:
                                                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding32 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding32.getClass();
                                                                                        LinearLayout linearLayout12 = viewMainDrawerBinding32.mainDrawerAccountContainer;
                                                                                        companion.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity, linearLayout12);
                                                                                        if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                                            MenuNavTabDialog.Callback callback = menuNavTabDialog.callback();
                                                                                            if (callback != null) {
                                                                                                MainFragment mainFragment = (MainFragment) callback;
                                                                                                int i42 = LoginActivity.$r8$clinit;
                                                                                                mainFragment.startActivityForResult(Path.Companion.newIntent(mainFragment.requireContext(), "navigation", true), 53, null);
                                                                                            }
                                                                                        } else {
                                                                                            MenuNavTabDialog.Callback callback2 = menuNavTabDialog.callback();
                                                                                            if (callback2 != null) {
                                                                                                MainFragment mainFragment2 = (MainFragment) callback2;
                                                                                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                                                PageTitle pageTitle = new PageTitle(UserAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode()), Jsoup.getInstance().getWikiSite(), Headers.Companion.getUserName(), null, null, null, null, null);
                                                                                                HistoryEntry historyEntry = new HistoryEntry(8, pageTitle);
                                                                                                int i52 = PageActivity.$r8$clinit;
                                                                                                mainFragment2.startActivity(LoginClient.newIntentForNewTab(mainFragment2.requireContext(), historyEntry, pageTitle), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 1:
                                                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity2 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding42 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding42.getClass();
                                                                                        LinearLayout linearLayout13 = (LinearLayout) viewMainDrawerBinding42.mainDrawerTalkContainer;
                                                                                        companion2.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity2, linearLayout13);
                                                                                        MenuNavTabDialog.Callback callback3 = menuNavTabDialog.callback();
                                                                                        if (callback3 != null) {
                                                                                            MainFragment mainFragment3 = (MainFragment) callback3;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i62 = TalkTopicsActivity.$r8$clinit;
                                                                                                AppCompatActivity requireActivity3 = mainFragment3.requireActivity();
                                                                                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                                                                String valueFor = UserTalkAliasData.valueFor(Jsoup.getInstance().getLanguageState().getAppLanguageCode());
                                                                                                String userName = Headers.Companion.getUserName();
                                                                                                WikiSite.Companion companion3 = WikiSite.Companion;
                                                                                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                                                                                companion3.getClass();
                                                                                                mainFragment3.startActivity(Headers.Companion.newIntent(requireActivity3, new PageTitle(valueFor, WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode), userName, null, null, null, null, null), Constants.InvokeSource.NAV_MENU), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 2:
                                                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity4 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding52 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding52.getClass();
                                                                                        LinearLayout linearLayout14 = (LinearLayout) viewMainDrawerBinding52.mainDrawerWatchlistContainer;
                                                                                        companion4.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity4, linearLayout14);
                                                                                        MenuNavTabDialog.Callback callback4 = menuNavTabDialog.callback();
                                                                                        if (callback4 != null) {
                                                                                            MainFragment mainFragment4 = (MainFragment) callback4;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i72 = WatchlistActivity.$r8$clinit;
                                                                                                mainFragment4.startActivity(new Intent(mainFragment4.requireActivity(), (Class<?>) WatchlistActivity.class), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 3:
                                                                                        WikiGamesEvent.submit$default(1020, null, null, "games_click", "more_menu", null, null, null);
                                                                                        AppCompatActivity requireActivity5 = menuNavTabDialog.requireActivity();
                                                                                        int i82 = GamesHubActivity.$r8$clinit;
                                                                                        requireActivity5.startActivity(new Intent(menuNavTabDialog.requireActivity(), (Class<?>) GamesHubActivity.class));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 4:
                                                                                        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                                                        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                                                        String m = ViewSizeResolver$CC.m();
                                                                                        Prefs prefs2 = Prefs.INSTANCE;
                                                                                        EventPlatformClient.submit(new AppInteractionEvent("places_click", "main_nav_tab", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                                                                        AppCompatActivity requireActivity6 = menuNavTabDialog.requireActivity();
                                                                                        int i92 = PlacesActivity.$r8$clinit;
                                                                                        requireActivity6.startActivity(ByteString.Companion.newIntent(menuNavTabDialog.requireActivity(), null, null));
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 5:
                                                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity7 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding62 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding62.getClass();
                                                                                        LinearLayout linearLayout15 = (LinearLayout) viewMainDrawerBinding62.mainDrawerSettingsContainer;
                                                                                        companion5.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity7, linearLayout15);
                                                                                        MenuNavTabDialog.Callback callback5 = menuNavTabDialog.callback();
                                                                                        if (callback5 != null) {
                                                                                            MainFragment mainFragment5 = (MainFragment) callback5;
                                                                                            int i102 = SettingsActivity.$r8$clinit;
                                                                                            mainFragment5.startActivityForResult(new Intent(mainFragment5.requireActivity(), (Class<?>) SettingsActivity.class), 41, null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 6:
                                                                                        BreadCrumbLogEvent.Companion companion6 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity8 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding72 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding72.getClass();
                                                                                        LinearLayout linearLayout16 = viewMainDrawerBinding72.mainDrawerContribsContainer;
                                                                                        companion6.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity8, linearLayout16);
                                                                                        MenuNavTabDialog.Callback callback6 = menuNavTabDialog.callback();
                                                                                        if (callback6 != null) {
                                                                                            MainFragment mainFragment6 = (MainFragment) callback6;
                                                                                            if (Headers.Companion.isLoggedIn()) {
                                                                                                int i11 = UserContribListActivity.$r8$clinit;
                                                                                                mainFragment6.startActivity(HttpUrl.Companion.newIntent(mainFragment6.requireActivity(), Headers.Companion.getUserName()), null);
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 7:
                                                                                        BreadCrumbLogEvent.Companion companion7 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity9 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding82 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding82.getClass();
                                                                                        LinearLayout linearLayout17 = viewMainDrawerBinding82.mainDrawerDonateContainer;
                                                                                        companion7.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity9, linearLayout17);
                                                                                        Cache.Companion.logAction$default(12, "donate_start_click", "more_menu", null, null);
                                                                                        MenuNavTabDialog.Callback callback7 = menuNavTabDialog.callback();
                                                                                        if (callback7 != null) {
                                                                                            AppCompatActivity requireActivity10 = ((MainFragment) callback7).requireActivity();
                                                                                            BaseActivity baseActivity = requireActivity10 instanceof BaseActivity ? (BaseActivity) requireActivity10 : null;
                                                                                            if (baseActivity != null) {
                                                                                                int i12 = BaseActivity.$r8$clinit;
                                                                                                Okio__OkioKt.show(baseActivity.getSupportFragmentManager(), Path.Companion.newInstance$default(12, null, null));
                                                                                            }
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    case 8:
                                                                                        UriUtil.submit$default(238, null, "start_click", null, Headers.Companion.isLoggedIn() ? "li_profile" : "lo_profile", null);
                                                                                        MenuNavTabDialog.Callback callback8 = menuNavTabDialog.callback();
                                                                                        if (callback8 != null) {
                                                                                            MainFragment mainFragment7 = (MainFragment) callback8;
                                                                                            int i13 = YearInReviewOnboardingActivity.$r8$clinit;
                                                                                            mainFragment7.startActivity(new Intent(mainFragment7.requireActivity(), (Class<?>) YearInReviewOnboardingActivity.class), null);
                                                                                        }
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                    default:
                                                                                        BreadCrumbLogEvent.Companion companion8 = BreadCrumbLogEvent.Companion;
                                                                                        AppCompatActivity requireActivity11 = menuNavTabDialog.requireActivity();
                                                                                        ViewMainDrawerBinding viewMainDrawerBinding92 = menuNavTabDialog._binding;
                                                                                        viewMainDrawerBinding92.getClass();
                                                                                        LinearLayout linearLayout18 = (LinearLayout) viewMainDrawerBinding92.mainDrawerEditContainer;
                                                                                        companion8.getClass();
                                                                                        BreadCrumbLogEvent.Companion.logClick(requireActivity11, linearLayout18);
                                                                                        WikiGamesEvent.submit$default("more_menu", "edit_click", null, null, null, null, null, null, null, null, null, null, 16380);
                                                                                        int i14 = SuggestedEditsTasksActivity.$r8$clinit;
                                                                                        menuNavTabDialog.startActivity(new Intent(menuNavTabDialog.requireContext(), (Class<?>) SuggestedEditsTasksActivity.class), null);
                                                                                        menuNavTabDialog.dismiss();
                                                                                        break;
                                                                                }
                                                                            }
                                                                        });
                                                                        if (Headers.Companion.isLoggedIn()) {
                                                                            boolean isTemporaryAccount = Headers.Companion.isTemporaryAccount();
                                                                            ViewMainDrawerBinding viewMainDrawerBinding13 = this._binding;
                                                                            if (isTemporaryAccount) {
                                                                                viewMainDrawerBinding13.getClass();
                                                                                ((ImageView) viewMainDrawerBinding13.mainDrawerAccountAvatar).setImageResource(R.drawable.ic_login_24px);
                                                                                ViewMainDrawerBinding viewMainDrawerBinding14 = this._binding;
                                                                                viewMainDrawerBinding14.getClass();
                                                                                ((ImageView) viewMainDrawerBinding14.mainDrawerAccountAvatar).setImageTintList(Cache.Companion.getThemedColorStateList(requireContext(), R.attr.progressive_color));
                                                                                ViewMainDrawerBinding viewMainDrawerBinding15 = this._binding;
                                                                                viewMainDrawerBinding15.getClass();
                                                                                ((TextView) viewMainDrawerBinding15.tempAccountName).setText(Headers.Companion.getUserName());
                                                                                ViewMainDrawerBinding viewMainDrawerBinding16 = this._binding;
                                                                                viewMainDrawerBinding16.getClass();
                                                                                viewMainDrawerBinding16.mainDrawerAccountName.setVisibility(8);
                                                                                ViewMainDrawerBinding viewMainDrawerBinding17 = this._binding;
                                                                                viewMainDrawerBinding17.getClass();
                                                                                viewMainDrawerBinding17.mainDrawerLoginButton.setTextAlignment(2);
                                                                                ViewMainDrawerBinding viewMainDrawerBinding18 = this._binding;
                                                                                viewMainDrawerBinding18.getClass();
                                                                                viewMainDrawerBinding18.mainDrawerLoginButton.setText(getString(R.string.main_drawer_login));
                                                                                ViewMainDrawerBinding viewMainDrawerBinding19 = this._binding;
                                                                                viewMainDrawerBinding19.getClass();
                                                                                viewMainDrawerBinding19.mainDrawerLoginButton.setTextColor(Cache.Companion.getThemedColorStateList(requireContext(), R.attr.progressive_color));
                                                                                ViewMainDrawerBinding viewMainDrawerBinding20 = this._binding;
                                                                                viewMainDrawerBinding20.getClass();
                                                                                viewMainDrawerBinding20.mainDrawerLoginButton.setVisibility(0);
                                                                            } else {
                                                                                viewMainDrawerBinding13.getClass();
                                                                                ((ImageView) viewMainDrawerBinding13.mainDrawerAccountAvatar).setImageResource(R.drawable.ic_baseline_person_24);
                                                                                ViewMainDrawerBinding viewMainDrawerBinding21 = this._binding;
                                                                                viewMainDrawerBinding21.getClass();
                                                                                ((ImageView) viewMainDrawerBinding21.mainDrawerAccountAvatar).setImageTintList(Cache.Companion.getThemedColorStateList(requireContext(), R.attr.secondary_color));
                                                                                ViewMainDrawerBinding viewMainDrawerBinding22 = this._binding;
                                                                                viewMainDrawerBinding22.getClass();
                                                                                viewMainDrawerBinding22.mainDrawerAccountName.setText(Headers.Companion.getUserName());
                                                                                ViewMainDrawerBinding viewMainDrawerBinding23 = this._binding;
                                                                                viewMainDrawerBinding23.getClass();
                                                                                viewMainDrawerBinding23.mainDrawerAccountName.setVisibility(0);
                                                                                ViewMainDrawerBinding viewMainDrawerBinding24 = this._binding;
                                                                                viewMainDrawerBinding24.getClass();
                                                                                viewMainDrawerBinding24.mainDrawerLoginButton.setVisibility(8);
                                                                            }
                                                                            ViewMainDrawerBinding viewMainDrawerBinding25 = this._binding;
                                                                            viewMainDrawerBinding25.getClass();
                                                                            ((LinearLayout) viewMainDrawerBinding25.mainDrawerTalkContainer).setVisibility(0);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding26 = this._binding;
                                                                            viewMainDrawerBinding26.getClass();
                                                                            ((LinearLayout) viewMainDrawerBinding26.mainDrawerTempAccountContainer).setVisibility(Headers.Companion.isTemporaryAccount() ? 0 : 8);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding27 = this._binding;
                                                                            viewMainDrawerBinding27.getClass();
                                                                            ((LinearLayout) viewMainDrawerBinding27.mainDrawerWatchlistContainer).setVisibility(!Headers.Companion.isTemporaryAccount() ? 0 : 8);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding28 = this._binding;
                                                                            viewMainDrawerBinding28.getClass();
                                                                            viewMainDrawerBinding28.mainDrawerContribsContainer.setVisibility(0);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding29 = this._binding;
                                                                            viewMainDrawerBinding29.getClass();
                                                                            ((LinearLayout) viewMainDrawerBinding29.mainDrawerEditContainer).setVisibility(0);
                                                                        } else {
                                                                            ViewMainDrawerBinding viewMainDrawerBinding30 = this._binding;
                                                                            viewMainDrawerBinding30.getClass();
                                                                            ((ImageView) viewMainDrawerBinding30.mainDrawerAccountAvatar).setImageResource(R.drawable.ic_login_24px);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding31 = this._binding;
                                                                            viewMainDrawerBinding31.getClass();
                                                                            ((ImageView) viewMainDrawerBinding31.mainDrawerAccountAvatar).setImageTintList(Cache.Companion.getThemedColorStateList(requireContext(), R.attr.progressive_color));
                                                                            ViewMainDrawerBinding viewMainDrawerBinding32 = this._binding;
                                                                            viewMainDrawerBinding32.getClass();
                                                                            viewMainDrawerBinding32.mainDrawerAccountName.setVisibility(8);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding33 = this._binding;
                                                                            viewMainDrawerBinding33.getClass();
                                                                            ((LinearLayout) viewMainDrawerBinding33.mainDrawerTempAccountContainer).setVisibility(8);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding34 = this._binding;
                                                                            viewMainDrawerBinding34.getClass();
                                                                            viewMainDrawerBinding34.mainDrawerLoginButton.setTextAlignment(2);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding35 = this._binding;
                                                                            viewMainDrawerBinding35.getClass();
                                                                            viewMainDrawerBinding35.mainDrawerLoginButton.setText(getString(R.string.main_drawer_login));
                                                                            ViewMainDrawerBinding viewMainDrawerBinding36 = this._binding;
                                                                            viewMainDrawerBinding36.getClass();
                                                                            viewMainDrawerBinding36.mainDrawerLoginButton.setTextColor(Cache.Companion.getThemedColorStateList(requireContext(), R.attr.progressive_color));
                                                                            ViewMainDrawerBinding viewMainDrawerBinding37 = this._binding;
                                                                            viewMainDrawerBinding37.getClass();
                                                                            ((LinearLayout) viewMainDrawerBinding37.mainDrawerTalkContainer).setVisibility(8);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding38 = this._binding;
                                                                            viewMainDrawerBinding38.getClass();
                                                                            ((LinearLayout) viewMainDrawerBinding38.mainDrawerWatchlistContainer).setVisibility(8);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding39 = this._binding;
                                                                            viewMainDrawerBinding39.getClass();
                                                                            viewMainDrawerBinding39.mainDrawerContribsContainer.setVisibility(8);
                                                                            ViewMainDrawerBinding viewMainDrawerBinding40 = this._binding;
                                                                            viewMainDrawerBinding40.getClass();
                                                                            ((LinearLayout) viewMainDrawerBinding40.mainDrawerEditContainer).setVisibility(8);
                                                                        }
                                                                        ViewMainDrawerBinding viewMainDrawerBinding41 = this._binding;
                                                                        viewMainDrawerBinding41.getClass();
                                                                        LinearLayout linearLayout12 = (LinearLayout) viewMainDrawerBinding41.mainDrawerGamesHubContainer;
                                                                        WikiGames wikiGames = WikiGames.WHICH_CAME_FIRST;
                                                                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                        String[] strArr = (String[]) ((ArrayList) ViewSizeResolver$CC.m785m()).toArray(new String[0]);
                                                                        linearLayout12.setVisibility(wikiGames.isLangSupported((String[]) Arrays.copyOf(strArr, strArr.length)) ? 0 : 8);
                                                                        ViewMainDrawerBinding viewMainDrawerBinding42 = this._binding;
                                                                        viewMainDrawerBinding42.getClass();
                                                                        FrameLayout frameLayout = viewMainDrawerBinding42.rootView;
                                                                        frameLayout.getClass();
                                                                        return frameLayout;
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    @Override // org.wikipedia.page.ExtendedBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        ViewMainDrawerBinding viewMainDrawerBinding = this._binding;
        viewMainDrawerBinding.getClass();
        Object parent = viewMainDrawerBinding.rootView.getParent();
        parent.getClass();
        BottomSheetBehavior from = BottomSheetBehavior.from((View) parent);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Resources resources = Jsoup.getInstance().getResources();
        resources.getClass();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        displayMetrics.getClass();
        from.setPeekHeight(displayMetrics.heightPixels);
    }
}
