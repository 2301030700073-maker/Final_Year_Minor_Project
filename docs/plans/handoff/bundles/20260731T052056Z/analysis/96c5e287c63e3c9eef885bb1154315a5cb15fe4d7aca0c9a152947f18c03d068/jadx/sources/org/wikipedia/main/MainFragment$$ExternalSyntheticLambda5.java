package org.wikipedia.main;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.Fragment;
import androidx.paging.HintHandler;
import androidx.viewpager2.widget.ViewPager2;
import coil3.size.ViewSizeResolver$CC;
import com.skydoves.balloon.Balloon;
import com.skydoves.balloon.Balloon$relayShowAlignBottom$$inlined$relay$1;
import j$.time.Duration;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.Request;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.activitytab.ActivityTabFragment;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.databinding.FragmentArticleEditDetailsBinding;
import org.wikipedia.databinding.FragmentOnThisDayGamePlayBinding;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.wikipedia.descriptions.DescriptionEditFragment;
import org.wikipedia.descriptions.DescriptionEditSuccessActivity;
import org.wikipedia.descriptions.DescriptionEditView;
import org.wikipedia.diff.ArticleEditDetailsFragment;
import org.wikipedia.edit.SyntaxHighlightableEditText;
import org.wikipedia.edit.insertmedia.InsertMediaActivity;
import org.wikipedia.feed.onthisday.OnThisDayFragment;
import org.wikipedia.feed.onthisday.OnThisDayViewModel;
import org.wikipedia.games.onthisday.OnThisDayGamePlayFragment;
import org.wikipedia.games.onthisday.OnThisDayGameResultFragment;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.navtab.NavTabLayout;
import org.wikipedia.page.leadimages.PageHeaderView;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.ReadingListItemView;
import org.wikipedia.readinglist.ReadingListsFragment;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.languages.WikipediaLanguagesFragment;
import org.wikipedia.suggestededits.SuggestedEditsCardsFragment;
import org.wikipedia.suggestededits.SuggestedEditsCardsFragment.ViewPagerAdapter;
import org.wikipedia.talk.template.TalkTemplatesFragment;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.ShareUtil;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MainFragment$$ExternalSyntheticLambda5 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ MainFragment$$ExternalSyntheticLambda5(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ActivityTabFragment.Callback callback;
        int i = this.$r8$classId;
        boolean z = true;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                MainFragment mainFragment = (MainFragment) obj;
                if (mainFragment.isAdded()) {
                    AppCompatActivity requireActivity = mainFragment.requireActivity();
                    Request.Builder builder = mainFragment._binding;
                    builder.getClass();
                    View findViewById = ((NavTabLayout) builder.body).findViewById(NavTab.HOME.getId());
                    findViewById.getClass();
                    String string = mainFragment.getString(R.string.home_feed_update_tooltip1);
                    string.getClass();
                    ShareUtil.showTooltip$default(requireActivity, findViewById, string, true, false, 96);
                    return;
                }
                return;
            case 1:
                BaseActivity baseActivity = (BaseActivity) obj;
                if (baseActivity.isDestroyed()) {
                    return;
                }
                baseActivity.onUnreadNotification();
                return;
            case 2:
                ActivityTabFragment activityTabFragment = (ActivityTabFragment) obj;
                if (activityTabFragment.requireActivity().isDestroyed() || (callback = activityTabFragment.callback()) == null) {
                    return;
                }
                ((MainFragment) callback).onNavigateTo(NavTab.HOME);
                return;
            case 3:
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                Toast.makeText(Jsoup.getInstance(), ((Object[]) obj)[0].toString(), 1).show();
                return;
            case 4:
                DescriptionEditFragment descriptionEditFragment = (DescriptionEditFragment) obj;
                if (descriptionEditFragment.isAdded()) {
                    if (!Headers.Companion.isLoggedIn()) {
                        Prefs prefs = Prefs.INSTANCE;
                        PrefsIoUtil.setInt(R.string.preference_key_total_anon_descriptions_edited, PrefsIoUtil.getInt(R.string.preference_key_total_anon_descriptions_edited, 0) + 1);
                    }
                    Prefs prefs2 = Prefs.INSTANCE;
                    PrefsIoUtil.setLong(new Date().getTime(), R.string.preference_key_last_description_edit_time);
                    PrefsIoUtil.setBoolean(R.string.preference_key_suggested_edits_reactivation_pass_stage_one, false);
                    OkHttpCall.AnonymousClass1 anonymousClass1 = descriptionEditFragment._binding;
                    anonymousClass1.getClass();
                    ((DescriptionEditView) anonymousClass1.this$0).setSaveState(false);
                    WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                    if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_description_edit_success_prompt), true) && descriptionEditFragment.getViewModel$1().invokeSource != Constants.InvokeSource.SUGGESTED_EDITS) {
                        Fragment.AnonymousClass10 anonymousClass10 = descriptionEditFragment.editSuccessLauncher;
                        int i2 = DescriptionEditSuccessActivity.$r8$clinit;
                        Context requireContext = descriptionEditFragment.requireContext();
                        Constants.InvokeSource invokeSource = descriptionEditFragment.getViewModel$1().invokeSource;
                        invokeSource.getClass();
                        Intent putExtra = new Intent(requireContext, (Class<?>) DescriptionEditSuccessActivity.class).putExtra("invokeSource", invokeSource);
                        putExtra.getClass();
                        anonymousClass10.launch(putExtra, null);
                        PrefsIoUtil.setBoolean(R.string.preference_key_show_description_edit_success_prompt, false);
                        return;
                    }
                    Intent intent = new Intent();
                    OkHttpCall.AnonymousClass1 anonymousClass12 = descriptionEditFragment._binding;
                    anonymousClass12.getClass();
                    intent.putExtra("addedContribution", ((DescriptionEditView) anonymousClass12.this$0).getDescription());
                    intent.putExtra("invokeSource", descriptionEditFragment.getViewModel$1().invokeSource);
                    intent.putExtra("intentAction", descriptionEditFragment.getViewModel$1().action);
                    descriptionEditFragment.requireActivity().setResult(-1, intent);
                    Window window = descriptionEditFragment.requireActivity().getWindow();
                    window.getClass();
                    HintHandler hintHandler = new HintHandler(window.getDecorView());
                    int i3 = Build.VERSION.SDK_INT;
                    (i3 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i3 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i3 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                    descriptionEditFragment.requireActivity().finish();
                    return;
                }
                return;
            case 5:
                ArticleEditDetailsFragment articleEditDetailsFragment = (ArticleEditDetailsFragment) obj;
                if (articleEditDetailsFragment.isAdded()) {
                    articleEditDetailsFragment.sendPatrollerExperienceEvent("impression", "pt_tooltip", "");
                    Context requireContext2 = articleEditDetailsFragment.requireContext();
                    String string2 = articleEditDetailsFragment.getString(R.string.patroller_diff_tooltip_one);
                    string2.getClass();
                    Balloon tooltip$default = ShareUtil.getTooltip$default(requireContext2, string2, true, 0, false, true, 1, 2, 56);
                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding = articleEditDetailsFragment._binding;
                    fragmentArticleEditDetailsBinding.getClass();
                    tooltip$default.showAlignBottom(fragmentArticleEditDetailsBinding.oresDamagingButton, 0);
                    Context requireContext3 = articleEditDetailsFragment.requireContext();
                    String string3 = articleEditDetailsFragment.getString(R.string.patroller_diff_tooltip_two);
                    string3.getClass();
                    Balloon tooltip$default2 = ShareUtil.getTooltip$default(requireContext3, string3, true, 0, false, true, 2, 2, 184);
                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding2 = articleEditDetailsFragment._binding;
                    fragmentArticleEditDetailsBinding2.getClass();
                    tooltip$default.setOnBalloonDismissListener(new Balloon$relayShowAlignBottom$$inlined$relay$1(tooltip$default, tooltip$default2, fragmentArticleEditDetailsBinding2.oresGoodFaithButton, 0));
                    return;
                }
                return;
            case 6:
                SyntaxHighlightableEditText syntaxHighlightableEditText = (SyntaxHighlightableEditText) obj;
                int i4 = SyntaxHighlightableEditText.$r8$clinit;
                if (syntaxHighlightableEditText.isAttachedToWindow()) {
                    syntaxHighlightableEditText.allowScrollToCursor = true;
                    return;
                }
                return;
            case 7:
                InsertMediaActivity insertMediaActivity = (InsertMediaActivity) obj;
                int i5 = InsertMediaActivity.$r8$clinit;
                if (insertMediaActivity.isDestroyed()) {
                    return;
                }
                insertMediaActivity.showMediaSettingsFragment();
                insertMediaActivity.adjustRefreshViewLayoutParams(true);
                return;
            case 8:
                OnThisDayFragment onThisDayFragment = (OnThisDayFragment) obj;
                if (onThisDayFragment.isAdded()) {
                    OnThisDayViewModel viewModel = onThisDayFragment.getViewModel();
                    ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                    int i6 = viewModel.age;
                    Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
                    calendar.add(5, -i6);
                    viewModel.loadOnThisDay(calendar);
                    return;
                }
                return;
            case 9:
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = (OnThisDayGamePlayFragment) obj;
                if (onThisDayGamePlayFragment.isAdded()) {
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding.getClass();
                    LinearLayout linearLayout = fragmentOnThisDayGamePlayBinding.questionContainer1;
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding2 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding2.getClass();
                    linearLayout.setMinimumHeight(fragmentOnThisDayGamePlayBinding2.questionScroll1.getHeight() - Okio__OkioKt.roundedDpToPx(16.0f));
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding3 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding3.getClass();
                    LinearLayout linearLayout2 = fragmentOnThisDayGamePlayBinding3.questionContainer2;
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding4 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding4.getClass();
                    linearLayout2.setMinimumHeight(fragmentOnThisDayGamePlayBinding4.questionScroll2.getHeight() - Okio__OkioKt.roundedDpToPx(16.0f));
                    return;
                }
                return;
            case 10:
                OnThisDayGameResultFragment onThisDayGameResultFragment = (OnThisDayGameResultFragment) obj;
                LocalDateTime now = LocalDateTime.now();
                Duration between = Duration.between(now, LocalDateTime.of(now.toLocalDate().plusDays(1L), LocalTime.MIDNIGHT));
                between.getClass();
                ItemNotificationBinding itemNotificationBinding = onThisDayGameResultFragment._binding;
                itemNotificationBinding.getClass();
                ((TextView) itemNotificationBinding.notificationDescription).setText(onThisDayGameResultFragment.getString(R.string.on_this_day_game_next_in, String.format(Locale.getDefault(), "%02d:%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(between.toHoursPart()), Integer.valueOf(between.toMinutesPart()), Integer.valueOf(between.toSecondsPart())}, 3))));
                Handler handler = onThisDayGameResultFragment.handler;
                MainFragment$$ExternalSyntheticLambda5 mainFragment$$ExternalSyntheticLambda5 = onThisDayGameResultFragment.timeUpdateRunnable;
                if (mainFragment$$ExternalSyntheticLambda5 != null) {
                    handler.postDelayed(mainFragment$$ExternalSyntheticLambda5, 1000L);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("timeUpdateRunnable");
                    throw null;
                }
            case 11:
                PageHeaderView.setDonationReminderCard$lambda$0$0((PageHeaderView) obj);
                return;
            case 12:
                ReadingListFragment readingListFragment = (ReadingListFragment) obj;
                AppCompatActivity requireActivity2 = readingListFragment.requireActivity();
                ReadingListItemView readingListItemView = readingListFragment.headerView;
                if (readingListItemView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("headerView");
                    throw null;
                }
                ImageView shareButton = readingListItemView.getShareButton();
                String string4 = readingListFragment.getString(R.string.reading_list_share_menu_tooltip);
                string4.getClass();
                ShareUtil.showTooltip$default(requireActivity2, shareButton, string4, false, true, 96);
                Prefs prefs3 = Prefs.INSTANCE;
                PrefsIoUtil.setBoolean(R.string.preference_key_reading_lists_share_tooltip_shown, true);
                return;
            case IMAGE_VALUE:
                ReadingListsFragment readingListsFragment = (ReadingListsFragment) obj;
                if (readingListsFragment.isAdded()) {
                    String str = readingListsFragment.currentSearchQuery;
                    if ((str == null || str.length() == 0) && readingListsFragment.recentPreviewSavedReadingList == null) {
                        z = false;
                    }
                    readingListsFragment.updateLists(str, z);
                    return;
                }
                return;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                WikipediaLanguagesFragment wikipediaLanguagesFragment = (WikipediaLanguagesFragment) obj;
                if (wikipediaLanguagesFragment.isAdded()) {
                    wikipediaLanguagesFragment.app.getLanguageState().setAppLanguageCodes(wikipediaLanguagesFragment.wikipediaLanguages);
                    WikipediaLanguagesFragment.WikipediaLanguageItemAdapter wikipediaLanguageItemAdapter = wikipediaLanguagesFragment.adapter;
                    if (wikipediaLanguageItemAdapter == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        throw null;
                    }
                    wikipediaLanguageItemAdapter.notifyDataSetChanged();
                    wikipediaLanguagesFragment.requireActivity().invalidateOptionsMenu();
                    return;
                }
                return;
            case 15:
                SuggestedEditsCardsFragment suggestedEditsCardsFragment = (SuggestedEditsCardsFragment) obj;
                if (suggestedEditsCardsFragment.isAdded()) {
                    ActivityLoginBinding activityLoginBinding = suggestedEditsCardsFragment._binding;
                    activityLoginBinding.getClass();
                    ((ViewPager2) activityLoginBinding.loginButton).setAdapter(suggestedEditsCardsFragment.new ViewPagerAdapter(suggestedEditsCardsFragment));
                    suggestedEditsCardsFragment.resettingViewPager = false;
                    return;
                }
                return;
            case LAZY_VERTICAL_GRID_VALUE:
                TalkTemplatesFragment talkTemplatesFragment = (TalkTemplatesFragment) obj;
                if (talkTemplatesFragment.isAdded()) {
                    talkTemplatesFragment.updateAndNotifyAdapter();
                    return;
                }
                return;
            case VERTICAL_GRID_ITEM_VALUE:
                ((ScrollView) ((ActivityTalkReplyBinding) obj).editKeyboardOverlay).fullScroll(130);
                return;
            default:
                Function1 function1 = (Function1) obj;
                if (function1 != null) {
                    function1.invoke(Boolean.TRUE);
                    return;
                }
                return;
        }
    }
}
