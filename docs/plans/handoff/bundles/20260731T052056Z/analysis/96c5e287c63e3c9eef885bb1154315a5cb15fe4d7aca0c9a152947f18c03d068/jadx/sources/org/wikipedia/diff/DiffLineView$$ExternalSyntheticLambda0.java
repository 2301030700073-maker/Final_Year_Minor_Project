package org.wikipedia.diff;

import android.app.ActivityOptions;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ActionMode;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.textfield.ClearTextEndIconDelegate;
import com.google.android.material.textfield.DropdownMenuEndIconDelegate;
import com.google.android.material.textfield.PasswordToggleEndIconDelegate;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.R;
import org.wikipedia.activity.SingleWebViewActivity;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.categories.CategoryDialog;
import org.wikipedia.commons.FilePageFragment;
import org.wikipedia.commons.ImagePreviewDialog;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.UserContribution;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.descriptions.DescriptionEditSuccessActivity;
import org.wikipedia.descriptions.DescriptionEditSuccessFragment;
import org.wikipedia.descriptions.DescriptionEditSuccessView;
import org.wikipedia.donate.donationreminder.DonationReminderActivity;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.onthisday.OnThisDayPagesViewHolder;
import org.wikipedia.gallery.GalleryActivity;
import org.wikipedia.gallery.GalleryItemFragment;
import org.wikipedia.games.GamesHubActivity;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.language.addlanguages.AddLanguagesListActivity;
import org.wikipedia.login.LoginClient;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.notifications.NotificationCategory;
import org.wikipedia.notifications.NotificationFilterItemView;
import org.wikipedia.notifications.NotificationLinkHandler;
import org.wikipedia.notifications.NotificationListItemContainer;
import org.wikipedia.notifications.db.Notification;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.customize.CustomizeToolbarFragment;
import org.wikipedia.page.customize.CustomizeToolbarViewModel;
import org.wikipedia.page.leadimages.LeadImagesHandler;
import org.wikipedia.readinglist.ReadingListActivity;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity;
import org.wikipedia.settings.languages.WikipediaLanguagesFragment;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsOnboardingActivity;
import org.wikipedia.suggestededits.SuggestedEditsImageTagsOnboardingActivity;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFilterItemView;
import org.wikipedia.suggestededits.SuggestedEditsSnackbars;
import org.wikipedia.talk.TalkReplyViewModel$loadTemplates$2;
import org.wikipedia.talk.TalkThreadHeaderView;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.talk.TalkTopicHolder;
import org.wikipedia.talk.TalkTopicViewModel;
import org.wikipedia.talk.TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.usercontrib.UserContribFilterItemView;
import org.wikipedia.usercontrib.UserContribItemView;
import org.wikipedia.usercontrib.UserContribListActivity;
import org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.EditNoticesDialog;
import org.wikipedia.views.NotificationActionsOverflowView;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda1;
import org.wikipedia.views.ViewUtil$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DiffLineView$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ DiffLineView$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ComponentCallbacks activity;
        NotificationListItemContainer notificationListItemContainer;
        Notification.Contents contents;
        List list;
        Notification.Link primary;
        int i = this.$r8$classId;
        int i2 = 2;
        Continuation continuation = null;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                DiffLineView._init_$lambda$0((DiffLineView) obj);
                return;
            case 1:
                ClearTextEndIconDelegate clearTextEndIconDelegate = (ClearTextEndIconDelegate) obj;
                EditText editText = clearTextEndIconDelegate.editText;
                if (editText == null) {
                    return;
                }
                Editable text = editText.getText();
                if (view.hasFocus()) {
                    clearTextEndIconDelegate.editText.requestFocus();
                }
                if (text != null) {
                    text.clear();
                }
                clearTextEndIconDelegate.refreshIconState();
                return;
            case 2:
                ((DropdownMenuEndIconDelegate) obj).showHideDropdown();
                return;
            case 3:
                PasswordToggleEndIconDelegate passwordToggleEndIconDelegate = (PasswordToggleEndIconDelegate) obj;
                EditText editText2 = passwordToggleEndIconDelegate.editText;
                if (editText2 == null) {
                    return;
                }
                int selectionEnd = editText2.getSelectionEnd();
                EditText editText3 = passwordToggleEndIconDelegate.editText;
                boolean z = editText3 != null && (editText3.getTransformationMethod() instanceof PasswordTransformationMethod);
                EditText editText4 = passwordToggleEndIconDelegate.editText;
                if (z) {
                    editText4.setTransformationMethod(null);
                } else {
                    editText4.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
                if (selectionEnd >= 0) {
                    passwordToggleEndIconDelegate.editText.setSelection(selectionEnd);
                }
                passwordToggleEndIconDelegate.refreshIconState();
                return;
            case 4:
                int i3 = SingleWebViewActivity.$r8$clinit;
                ((SingleWebViewActivity) obj).goBack();
                return;
            case 5:
                CaptchaHandler captchaHandler = (CaptchaHandler) obj;
                SVGAndroidRenderer sVGAndroidRenderer = captchaHandler.instrument;
                if (sVGAndroidRenderer != null) {
                    SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "fancy_captcha_request_new", null, null, null, null, null, 254);
                }
                captchaHandler.requestNewCaptcha();
                return;
            case 6:
                ((CategoryDialog) obj).dismiss();
                return;
            case 7:
                ((FilePageFragment) obj).requireActivity().finish();
                return;
            case 8:
                ((ImagePreviewDialog) obj).dismiss();
                return;
            case 9:
                DescriptionEditSuccessView.Callback callback = ((DescriptionEditSuccessView) obj).callback;
                if (callback != null) {
                    DescriptionEditSuccessFragment descriptionEditSuccessFragment = (DescriptionEditSuccessFragment) callback;
                    if (DescriptionEditSuccessFragment.Callback.class.isInstance(descriptionEditSuccessFragment.getTargetFragment(true))) {
                        activity = descriptionEditSuccessFragment.getTargetFragment(true);
                    } else {
                        Fragment fragment = descriptionEditSuccessFragment.mParentFragment;
                        if (fragment != null) {
                            if (DescriptionEditSuccessFragment.Callback.class.isInstance(fragment)) {
                                activity = descriptionEditSuccessFragment.mParentFragment;
                            } else if (DescriptionEditSuccessFragment.Callback.class.isInstance(descriptionEditSuccessFragment.requireParentFragment().mParentFragment)) {
                                activity = descriptionEditSuccessFragment.requireParentFragment().mParentFragment;
                            }
                        }
                        activity = DescriptionEditSuccessFragment.Callback.class.isInstance(descriptionEditSuccessFragment.getActivity()) ? descriptionEditSuccessFragment.getActivity() : null;
                    }
                    DescriptionEditSuccessFragment.Callback callback2 = (DescriptionEditSuccessFragment.Callback) activity;
                    if (callback2 != null) {
                        DescriptionEditSuccessActivity descriptionEditSuccessActivity = (DescriptionEditSuccessActivity) callback2;
                        descriptionEditSuccessActivity.setResult(1, descriptionEditSuccessActivity.getIntent());
                        descriptionEditSuccessActivity.finish();
                        return;
                    }
                    return;
                }
                return;
            case 10:
                ((AutoCompleteTextView) ((MultipartBody.Builder) obj).parts).requestFocus();
                return;
            case 11:
                OnThisDayPagesViewHolder onThisDayPagesViewHolder = (OnThisDayPagesViewHolder) obj;
                PageSummary pageSummary = onThisDayPagesViewHolder.selectedPage;
                pageSummary.getClass();
                HistoryEntry historyEntry = new HistoryEntry(24, pageSummary.getPageTitle(onThisDayPagesViewHolder.wiki));
                AppCompatActivity appCompatActivity = onThisDayPagesViewHolder.activity;
                Pair[] sharedElements = Cookie.Companion.getSharedElements(appCompatActivity, onThisDayPagesViewHolder.image);
                ActivityOptions makeSceneTransitionAnimation = ActivityOptions.makeSceneTransitionAnimation(appCompatActivity, (Pair[]) Arrays.copyOf(sharedElements, sharedElements.length));
                int i4 = PageActivity.$r8$clinit;
                Intent newIntentForNewTab = LoginClient.newIntentForNewTab(appCompatActivity, historyEntry, historyEntry.getTitle());
                if (sharedElements.length != 0) {
                    newIntentForNewTab.putExtra("hasTransitionAnim", true);
                }
                appCompatActivity.startActivity(newIntentForNewTab, (appCompatActivity.getResources().getConfiguration().orientation == 2 || sharedElements.length == 0) ? null : makeSceneTransitionAnimation.toBundle());
                return;
            case 12:
                GalleryItemFragment galleryItemFragment = (GalleryItemFragment) obj;
                if (galleryItemFragment.isAdded()) {
                    ((GalleryActivity) galleryItemFragment.requireActivity()).setControlsShowing(!r0.controlsShowing);
                    return;
                }
                return;
            case IMAGE_VALUE:
                GamesHubActivity gamesHubActivity = (GamesHubActivity) obj;
                int i5 = GamesHubActivity.$r8$clinit;
                if (Headers.Companion.isLoggedIn()) {
                    gamesHubActivity.startActivity(new Intent(gamesHubActivity, (Class<?>) NotificationActivity.class));
                    return;
                }
                return;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                NotificationActivity.NotificationItemHolder notificationItemHolder = (NotificationActivity.NotificationItemHolder) obj;
                view.getClass();
                NotificationActivity notificationActivity = NotificationActivity.this;
                NotificationActionsOverflowView notificationActionsOverflowView = new NotificationActionsOverflowView(notificationActivity);
                View inflate = LayoutInflater.from(notificationActivity).inflate(R.layout.view_notification_actions_overflow, (ViewGroup) notificationActionsOverflowView, false);
                notificationActionsOverflowView.addView(inflate);
                int i6 = R.id.overflow_mark_as_read;
                TextView textView = (TextView) Room.findChildViewById(inflate, R.id.overflow_mark_as_read);
                if (textView != null) {
                    i6 = R.id.overflow_view_primary;
                    TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.overflow_view_primary);
                    if (textView2 != null) {
                        i6 = R.id.overflow_view_secondary;
                        TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.overflow_view_secondary);
                        if (textView3 != null) {
                            i6 = R.id.overflow_view_secondary_talk;
                            TextView textView4 = (TextView) Room.findChildViewById(inflate, R.id.overflow_view_secondary_talk);
                            if (textView4 != null) {
                                i6 = R.id.overflow_view_tertiary;
                                TextView textView5 = (TextView) Room.findChildViewById(inflate, R.id.overflow_view_tertiary);
                                if (textView5 != null) {
                                    ViewUtil$$ExternalSyntheticLambda0 viewUtil$$ExternalSyntheticLambda0 = new ViewUtil$$ExternalSyntheticLambda0(i2, notificationActionsOverflowView);
                                    notificationActivity.notificationActionOverflowView = notificationActionsOverflowView;
                                    NotificationListItemContainer container = notificationItemHolder.getContainer();
                                    TextLinkScope$$ExternalSyntheticLambda3 textLinkScope$$ExternalSyntheticLambda3 = new TextLinkScope$$ExternalSyntheticLambda3(8, notificationActivity, notificationItemHolder);
                                    notificationActionsOverflowView.container = container;
                                    PopupWindow popupWindow = new PopupWindow((View) notificationActionsOverflowView, -2, -2, true);
                                    notificationActionsOverflowView.popupWindowHost = popupWindow;
                                    popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                                    popupWindow.setOverlapAnchor(true);
                                    popupWindow.showAsDropDown(view, 0, 0, 8388613);
                                    Notification notification = container.notification;
                                    if (notification == null || (contents = notification.contents) == null) {
                                        notificationListItemContainer = container;
                                    } else {
                                        Notification.Links links = contents.links;
                                        NotificationCategory.Companion companion = NotificationCategory.Companion;
                                        String str = notification.category;
                                        companion.getClass();
                                        NotificationCategory find = NotificationCategory.Companion.find(str);
                                        Context context = notificationActionsOverflowView.getContext();
                                        Context context2 = notificationActionsOverflowView.getContext();
                                        context2.getClass();
                                        int iconColor = find.getIconColor();
                                        TypedValue typedValue = new TypedValue();
                                        notificationListItemContainer = container;
                                        if (!context2.getTheme().resolveAttribute(iconColor, typedValue, true)) {
                                            typedValue = null;
                                        }
                                        if (typedValue == null) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(iconColor, "Attribute not found; ID="));
                                            return;
                                        }
                                        int color = context.getColor(typedValue.resourceId);
                                        Context context3 = view.getContext();
                                        context3.getClass();
                                        notificationActionsOverflowView.linkHandler = new NotificationLinkHandler(context3, find);
                                        if (links != null && (primary = links.getPrimary()) != null) {
                                            NotificationActionsOverflowView.setUpViewForLink(textView2, primary, find.getIconResId(), color, color);
                                            textView2.setVisibility(0);
                                        }
                                        if (links != null && (list = links.secondary) != null && !list.isEmpty()) {
                                            NotificationActionsOverflowView.setUpViewForLink$default(notificationActionsOverflowView, textView3, (Notification.Link) CollectionsKt.first(list));
                                            textView3.setVisibility(0);
                                            Uri parse = Uri.parse(((Notification.Link) CollectionsKt.first(list)).url);
                                            PageTitle.Companion companion2 = PageTitle.Companion;
                                            parse.getClass();
                                            WikiSite wikiSite = new WikiSite(parse);
                                            companion2.getClass();
                                            PageTitle titleForUri = PageTitle.Companion.titleForUri(parse, wikiSite);
                                            Namespace namespace = titleForUri.namespace();
                                            namespace.getClass();
                                            if (namespace == Namespace.USER) {
                                                textView4.setVisibility(0);
                                                Context context4 = view.getContext();
                                                context4.getClass();
                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                textView4.setText(ContextKt.getString(context4, StringUtil.dbNameToLangCode(notification.wiki), R.string.notifications_menu_user_talk_page, ((Notification.Link) CollectionsKt.first(list)).label));
                                                textView4.setOnClickListener(new SurveyDialog$$ExternalSyntheticLambda1(parse, notificationActionsOverflowView, titleForUri, 5));
                                            }
                                            if (list.size() > 1) {
                                                NotificationActionsOverflowView.setUpViewForLink$default(notificationActionsOverflowView, textView5, (Notification.Link) list.get(1));
                                                textView5.setVisibility(0);
                                            }
                                        }
                                    }
                                    if (notification != null) {
                                        boolean isUnread = notification.isUnread();
                                        Context context5 = view.getContext();
                                        context5.getClass();
                                        StringUtil stringUtil2 = StringUtil.INSTANCE;
                                        textView.setText(ContextKt.getString(context5, StringUtil.dbNameToLangCode(notification.wiki), isUnread ? R.string.notifications_menu_mark_as_read : R.string.notifications_menu_mark_as_unread, new Object[0]));
                                        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(isUnread ? R.drawable.ic_outline_markunread_24 : R.drawable.ic_outline_drafts_24, 0, 0, 0);
                                    }
                                    textView2.setOnClickListener(viewUtil$$ExternalSyntheticLambda0);
                                    textView3.setOnClickListener(viewUtil$$ExternalSyntheticLambda0);
                                    textView5.setOnClickListener(viewUtil$$ExternalSyntheticLambda0);
                                    textView.setOnClickListener(new SurveyDialog$$ExternalSyntheticLambda1(notificationActionsOverflowView, textLinkScope$$ExternalSyntheticLambda3, notificationListItemContainer, 6));
                                    return;
                                }
                            }
                        }
                    }
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i6)));
                return;
            case 15:
                NotificationFilterItemView notificationFilterItemView = (NotificationFilterItemView) obj;
                NotificationFilterItemView.Callback callback3 = notificationFilterItemView.callback;
                if (callback3 != null) {
                    callback3.onCheckedChanged(notificationFilterItemView.filter);
                    return;
                }
                return;
            case LAZY_VERTICAL_GRID_VALUE:
                CustomizeToolbarFragment customizeToolbarFragment = (CustomizeToolbarFragment) obj;
                CustomizeToolbarViewModel viewModel = customizeToolbarFragment.getViewModel();
                viewModel.setupDefaultOrder(true);
                viewModel.preProcessList();
                viewModel.saveChanges();
                customizeToolbarFragment.setupRecyclerView$1();
                return;
            case VERTICAL_GRID_ITEM_VALUE:
                Cache.Companion.logDonationReminderAction$default("setting_click", "reminder_milestone", null, null, null, null, null, 252);
                PageFragment pageFragment = ((LeadImagesHandler) obj).parentFragment;
                AppCompatActivity requireActivity = pageFragment.requireActivity();
                int i7 = DonationReminderActivity.$r8$clinit;
                requireActivity.startActivity(DonationReminderScreenKt.newIntent(pageFragment.requireActivity(), true));
                return;
            case RADIO_GROUP_VALUE:
                Context context6 = view.getContext();
                int i8 = ReadingListActivity.$r8$clinit;
                Context context7 = view.getContext();
                context7.getClass();
                context6.startActivity(NodeUtils.newIntent(context7, (ReadingList) obj));
                return;
            case RADIO_BUTTON_VALUE:
                int i9 = RecommendedReadingListSettingsActivity.$r8$clinit;
                ((Regex$$ExternalSyntheticLambda0) obj).invoke();
                return;
            case RADIO_ROW_VALUE:
                WikipediaLanguagesFragment wikipediaLanguagesFragment = (WikipediaLanguagesFragment) obj;
                wikipediaLanguagesFragment.startActivityForResult(new Intent(wikipediaLanguagesFragment.requireActivity(), (Class<?>) AddLanguagesListActivity.class), 59, null);
                ActionMode actionMode = wikipediaLanguagesFragment.actionMode;
                if (actionMode != null) {
                    actionMode.finish();
                    return;
                }
                return;
            case RADIO_COLUMN_VALUE:
                SuggestedEditsImageRecsOnboardingActivity suggestedEditsImageRecsOnboardingActivity = (SuggestedEditsImageRecsOnboardingActivity) obj;
                int i10 = SuggestedEditsImageRecsOnboardingActivity.$r8$clinit;
                ImageRecommendationsEvent.Companion.logAction$default(ImageRecommendationsEvent.Companion, "next", "onboarding_step_1_dialog", null, 12);
                suggestedEditsImageRecsOnboardingActivity.setResult(-1);
                suggestedEditsImageRecsOnboardingActivity.finish();
                return;
            case SIZE_BOX_VALUE:
                SuggestedEditsImageTagsOnboardingActivity suggestedEditsImageTagsOnboardingActivity = (SuggestedEditsImageTagsOnboardingActivity) obj;
                int i11 = SuggestedEditsImageTagsOnboardingActivity.$r8$clinit;
                suggestedEditsImageTagsOnboardingActivity.setResult(-1);
                suggestedEditsImageTagsOnboardingActivity.finish();
                return;
            case 23:
                SuggestedEditsRecentEditsFilterItemView suggestedEditsRecentEditsFilterItemView = (SuggestedEditsRecentEditsFilterItemView) obj;
                SuggestedEditsRecentEditsFilterItemView.Callback callback4 = suggestedEditsRecentEditsFilterItemView.callback;
                if (callback4 != null) {
                    callback4.onCheckedChanged(suggestedEditsRecentEditsFilterItemView.filter);
                    return;
                }
                return;
            case 24:
                view.getClass();
                ((SuggestedEditsSnackbars.OpenPageListener) obj).open(view);
                return;
            case 25:
                TalkThreadHeaderView.Callback callback5 = ((TalkThreadHeaderView) obj).callback;
                if (callback5 != null) {
                    boolean isLoggedIn = Headers.Companion.isLoggedIn();
                    TalkTopicActivity talkTopicActivity = TalkTopicActivity.this;
                    if (isLoggedIn) {
                        int i12 = TalkTopicActivity.$r8$clinit;
                        TalkTopicViewModel viewModel2 = talkTopicActivity.getViewModel();
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1(viewModel2, 2), null, new SyntaxHighlighter.AnonymousClass2(17, viewModel2, continuation), 2);
                        return;
                    } else {
                        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(talkTopicActivity, 0);
                        materialAlertDialogBuilder.setTitle(R.string.talk_login_to_subscribe_dialog_title);
                        materialAlertDialogBuilder.setMessage(R.string.talk_login_to_subscribe_dialog_content);
                        materialAlertDialogBuilder.setPositiveButton(R.string.login_join_wikipedia, new PageFragment$$ExternalSyntheticLambda28(13, talkTopicActivity));
                        materialAlertDialogBuilder.setNegativeButton(R.string.onboarding_maybe_later, (DialogInterface.OnClickListener) null);
                        materialAlertDialogBuilder.show();
                        return;
                    }
                }
                return;
            case 26:
                TalkTopicHolder talkTopicHolder = (TalkTopicHolder) obj;
                view.getClass();
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(talkTopicHolder.context), new ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(talkTopicHolder), null, new TalkReplyViewModel$loadTemplates$2(talkTopicHolder, view, continuation, 7), 2);
                return;
            case 27:
                UserContribFilterItemView userContribFilterItemView = (UserContribFilterItemView) obj;
                UserContribFilterItemView.Callback callback6 = userContribFilterItemView.callback;
                if (callback6 != null) {
                    callback6.onSelected(userContribFilterItemView.item);
                    return;
                }
                return;
            case 28:
                UserContribItemView.Listener listener = ((UserContribItemView) obj).listener;
                if (listener != null) {
                    UserContribListActivity.UserContribListItemHolder userContribListItemHolder = (UserContribListActivity.UserContribListItemHolder) listener;
                    UserContribListActivity userContribListActivity = UserContribListActivity.this;
                    ByteString.Companion companion3 = ArticleEditDetailsActivity.Companion;
                    UserContribution userContribution = userContribListItemHolder.contrib;
                    if (userContribution == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("contrib");
                        throw null;
                    }
                    String str2 = userContribution.title;
                    int i13 = UserContribListActivity.$r8$clinit;
                    PageTitle pageTitle = new PageTitle(str2, userContribListActivity.getViewModel().getWikiSite(), (String) null);
                    UserContribution userContribution2 = userContribListItemHolder.contrib;
                    if (userContribution2 != null) {
                        userContribListActivity.startActivity(ByteString.Companion.newIntent$default(companion3, userContribListActivity, pageTitle, userContribution2.pageid, 0L, userContribution2.revid, null, 40));
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("contrib");
                        throw null;
                    }
                }
                return;
            default:
                AlertDialog alertDialog = ((EditNoticesDialog) obj).dialog;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                    return;
                }
                return;
        }
    }
}
