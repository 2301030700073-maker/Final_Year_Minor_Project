package androidx.paging;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.location.Location;
import android.net.Uri;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.Space;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.tabs.TabLayout;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.MultipartBody;
import org.jsoup.Jsoup;
import org.jsoup.nodes.NodeUtils;
import org.maplibre.android.maps.MapChangeReceiver;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.ArticleLinkPreviewInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.databinding.DialogLinkPreviewBinding;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.wikipedia.databinding.ViewMainDrawerBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.growthtasks.GrowthImageSuggestion;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.gallery.ExtMetadata;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewDialog;
import org.wikipedia.page.linkpreview.LinkPreviewErrorType;
import org.wikipedia.page.linkpreview.LinkPreviewOverlayView;
import org.wikipedia.page.linkpreview.LinkPreviewViewModel;
import org.wikipedia.page.linkpreview.LinkPreviewViewModel$loadGallery$2;
import org.wikipedia.page.linkpreview.LinkPreviewViewState;
import org.wikipedia.settings.Prefs;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.suggestededits.SuggestedEditsCardsFragment;
import org.wikipedia.suggestededits.SuggestedEditsCardsFragment$$ExternalSyntheticLambda0;
import org.wikipedia.suggestededits.SuggestedEditsCardsItemFragment;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsFragmentViewModel;
import org.wikipedia.suggestededits.SuggestedEditsTasksFragment;
import org.wikipedia.suggestededits.SuggestedEditsTasksFragment$$ExternalSyntheticLambda1;
import org.wikipedia.suggestededits.SuggestedEditsTasksFragmentViewModel;
import org.wikipedia.usercontrib.UserInformationDialog;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.GeoUtil;
import org.wikipedia.util.ImageUrlUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.ImageDetailHorizontalView;
import org.wikipedia.views.MessageCardView;
import org.wikipedia.views.PageItemView$$ExternalSyntheticLambda3;
import org.wikipedia.views.ViewUtil;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.WikiSwipeRefreshLayout;
import org.wikipedia.watchlist.WatchlistExpiryDialog;
import org.wikipedia.watchlist.WatchlistExpiryDialogViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ChannelFlowCollector implements FlowCollector {
    public final /* synthetic */ int $r8$classId;
    public final Object channel;

    public ChannelFlowCollector(SendChannel sendChannel) {
        this.$r8$classId = 0;
        sendChannel.getClass();
        this.channel = sendChannel;
    }

    private final Object emit$org$wikipedia$notifications$NotificationActivity$onCreate$7$1$1(Object obj, Continuation continuation) {
        Resource resource = (Resource) obj;
        NotificationActivity notificationActivity = (NotificationActivity) this.channel;
        if (resource instanceof Resource.Success) {
            Pair pair = (Pair) ((Resource.Success) resource).data;
            List list = (List) pair.first;
            boolean booleanValue = ((Boolean) pair.second).booleanValue();
            int i = NotificationActivity.$r8$clinit;
            ArrayList arrayList = notificationActivity.notificationContainerList;
            ItemNotificationBinding itemNotificationBinding = notificationActivity.binding;
            if (itemNotificationBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((WikiSwipeRefreshLayout) itemNotificationBinding.notificationWikiCodeImage).setRefreshing(false);
            ItemNotificationBinding itemNotificationBinding2 = notificationActivity.binding;
            if (itemNotificationBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((ProgressBar) itemNotificationBinding2.notificationItemSelectedImage).setVisibility(8);
            ItemNotificationBinding itemNotificationBinding3 = notificationActivity.binding;
            if (itemNotificationBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((WikiErrorView) itemNotificationBinding3.notificationItemImage).setVisibility(8);
            ItemNotificationBinding itemNotificationBinding4 = notificationActivity.binding;
            if (itemNotificationBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((RecyclerView) itemNotificationBinding4.notificationOverflowMenu).setVisibility(0);
            ItemNotificationBinding itemNotificationBinding5 = notificationActivity.binding;
            if (itemNotificationBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((TabLayout) itemNotificationBinding5.notificationSubtitle).setVisibility(0);
            notificationActivity.fromContinuation = booleanValue;
            arrayList.clear();
            arrayList.addAll(list);
            notificationActivity.postprocessAndDisplay(null);
        } else if (resource instanceof Resource.Error) {
            Throwable th = ((Resource.Error) resource).throwable;
            int i2 = NotificationActivity.$r8$clinit;
            L.e(th);
            ItemNotificationBinding itemNotificationBinding6 = notificationActivity.binding;
            if (itemNotificationBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((WikiSwipeRefreshLayout) itemNotificationBinding6.notificationWikiCodeImage).setRefreshing(false);
            ItemNotificationBinding itemNotificationBinding7 = notificationActivity.binding;
            if (itemNotificationBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((ProgressBar) itemNotificationBinding7.notificationItemSelectedImage).setVisibility(8);
            ItemNotificationBinding itemNotificationBinding8 = notificationActivity.binding;
            if (itemNotificationBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((RecyclerView) itemNotificationBinding8.notificationOverflowMenu).setVisibility(8);
            ItemNotificationBinding itemNotificationBinding9 = notificationActivity.binding;
            if (itemNotificationBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((LinearLayout) itemNotificationBinding9.notificationTitle).setVisibility(8);
            ItemNotificationBinding itemNotificationBinding10 = notificationActivity.binding;
            if (itemNotificationBinding10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((LinearLayout) itemNotificationBinding10.notificationWikiCode).setVisibility(8);
            ItemNotificationBinding itemNotificationBinding11 = notificationActivity.binding;
            if (itemNotificationBinding11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            WikiErrorView wikiErrorView = (WikiErrorView) itemNotificationBinding11.notificationItemImage;
            int i3 = WikiErrorView.$r8$clinit;
            wikiErrorView.setError(th, null);
            ItemNotificationBinding itemNotificationBinding12 = notificationActivity.binding;
            if (itemNotificationBinding12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((WikiErrorView) itemNotificationBinding12.notificationItemImage).setVisibility(0);
        }
        return Unit.INSTANCE;
    }

    private final Object emit$org$wikipedia$page$linkpreview$LinkPreviewDialog$onCreateView$4$1$1(Object obj, Continuation continuation) {
        Location location;
        Location location2;
        LinkPreviewViewState linkPreviewViewState = (LinkPreviewViewState) obj;
        LinkPreviewDialog linkPreviewDialog = (LinkPreviewDialog) this.channel;
        int i = 0;
        if (linkPreviewViewState instanceof LinkPreviewViewState.Loading) {
            DialogLinkPreviewBinding dialogLinkPreviewBinding = linkPreviewDialog._binding;
            dialogLinkPreviewBinding.getClass();
            dialogLinkPreviewBinding.linkPreviewProgress.setVisibility(0);
        } else {
            Continuation continuation2 = null;
            if (linkPreviewViewState instanceof LinkPreviewViewState.Error) {
                Throwable th = ((LinkPreviewViewState.Error) linkPreviewViewState).throwable;
                L.e(th);
                DialogLinkPreviewBinding dialogLinkPreviewBinding2 = linkPreviewDialog._binding;
                dialogLinkPreviewBinding2.getClass();
                TextView textView = dialogLinkPreviewBinding2.linkPreviewTitle;
                StringUtil stringUtil = StringUtil.INSTANCE;
                textView.setText(StringUtil.fromHtml(linkPreviewDialog.getViewModel().pageTitle.getDisplayText()));
                DialogLinkPreviewBinding dialogLinkPreviewBinding3 = linkPreviewDialog._binding;
                dialogLinkPreviewBinding3.getClass();
                dialogLinkPreviewBinding3.dialogLinkPreviewContainer.setLayoutTransition(null);
                DialogLinkPreviewBinding dialogLinkPreviewBinding4 = linkPreviewDialog._binding;
                dialogLinkPreviewBinding4.getClass();
                dialogLinkPreviewBinding4.dialogLinkPreviewContainer.setMinimumHeight(0);
                DialogLinkPreviewBinding dialogLinkPreviewBinding5 = linkPreviewDialog._binding;
                dialogLinkPreviewBinding5.getClass();
                dialogLinkPreviewBinding5.linkPreviewProgress.setVisibility(8);
                DialogLinkPreviewBinding dialogLinkPreviewBinding6 = linkPreviewDialog._binding;
                dialogLinkPreviewBinding6.getClass();
                dialogLinkPreviewBinding6.dialogLinkPreviewContentContainer.setVisibility(8);
                DialogLinkPreviewBinding dialogLinkPreviewBinding7 = linkPreviewDialog._binding;
                dialogLinkPreviewBinding7.getClass();
                dialogLinkPreviewBinding7.dialogLinkPreviewErrorContainer.setVisibility(0);
                DialogLinkPreviewBinding dialogLinkPreviewBinding8 = linkPreviewDialog._binding;
                dialogLinkPreviewBinding8.getClass();
                dialogLinkPreviewBinding8.dialogLinkPreviewErrorContainer.setCallback(linkPreviewDialog);
                DialogLinkPreviewBinding dialogLinkPreviewBinding9 = linkPreviewDialog._binding;
                dialogLinkPreviewBinding9.getClass();
                dialogLinkPreviewBinding9.dialogLinkPreviewErrorContainer.setError(th, linkPreviewDialog.getViewModel().pageTitle);
                LinkPreviewErrorType.Companion companion = LinkPreviewErrorType.Companion;
                PageTitle pageTitle = linkPreviewDialog.getViewModel().pageTitle;
                companion.getClass();
                LinkPreviewErrorType linkPreviewErrorType = LinkPreviewErrorType.Companion.get(th, pageTitle);
                LinkPreviewOverlayView linkPreviewOverlayView = linkPreviewDialog.overlayView;
                if (linkPreviewOverlayView != null) {
                    MultipartBody.Builder builder = linkPreviewOverlayView.binding;
                    ((Button) builder.type).setVisibility(8);
                    ((Button) builder.parts).setVisibility(8);
                    linkPreviewOverlayView.setPrimaryButtonText(linkPreviewDialog.getResources().getString(linkPreviewErrorType.getButtonText()));
                    DialogLinkPreviewBinding dialogLinkPreviewBinding10 = linkPreviewDialog._binding;
                    dialogLinkPreviewBinding10.getClass();
                    linkPreviewOverlayView.setCallback(linkPreviewErrorType.buttonAction(dialogLinkPreviewBinding10.dialogLinkPreviewErrorContainer));
                    if (linkPreviewErrorType != LinkPreviewErrorType.OFFLINE) {
                        DialogLinkPreviewBinding dialogLinkPreviewBinding11 = linkPreviewDialog._binding;
                        dialogLinkPreviewBinding11.getClass();
                        dialogLinkPreviewBinding11.linkPreviewToolbar.setOnClickListener(null);
                        DialogLinkPreviewBinding dialogLinkPreviewBinding12 = linkPreviewDialog._binding;
                        dialogLinkPreviewBinding12.getClass();
                        dialogLinkPreviewBinding12.linkPreviewOverflowButton.setVisibility(8);
                    }
                }
            } else {
                int i2 = 2;
                if (linkPreviewViewState instanceof LinkPreviewViewState.Content) {
                    PageSummary pageSummary = ((LinkPreviewViewState.Content) linkPreviewViewState).data;
                    ArticleLinkPreviewInteractionEvent articleLinkPreviewInteractionEvent = new ArticleLinkPreviewInteractionEvent(linkPreviewDialog.getViewModel().pageTitle.wikiSite.dbName(), pageSummary.pageId, linkPreviewDialog.getViewModel().historyEntry.source);
                    linkPreviewDialog.articleLinkPreviewInteractionEvent = articleLinkPreviewInteractionEvent;
                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                    EventPlatformClient.submit(new ArticleLinkPreviewInteractionEvent.ArticleLinkPreviewInteractionEventImpl(articleLinkPreviewInteractionEvent.source, (int) (System.currentTimeMillis() - articleLinkPreviewInteractionEvent.startTime), articleLinkPreviewInteractionEvent.pageId, "linkclick", articleLinkPreviewInteractionEvent.wikiDb));
                    DialogLinkPreviewBinding dialogLinkPreviewBinding13 = linkPreviewDialog._binding;
                    dialogLinkPreviewBinding13.getClass();
                    TextView textView2 = dialogLinkPreviewBinding13.linkPreviewTitle;
                    StringUtil stringUtil2 = StringUtil.INSTANCE;
                    textView2.setText(StringUtil.fromHtml(pageSummary.getDisplayTitle()));
                    if (linkPreviewDialog.getViewModel().fromPlaces && (location = linkPreviewDialog.getViewModel().location) != null && (location2 = linkPreviewDialog.getViewModel().lastKnownLocation) != null) {
                        DialogLinkPreviewBinding dialogLinkPreviewBinding14 = linkPreviewDialog._binding;
                        dialogLinkPreviewBinding14.getClass();
                        dialogLinkPreviewBinding14.linkPreviewDistance.setVisibility(0);
                        DialogLinkPreviewBinding dialogLinkPreviewBinding15 = linkPreviewDialog._binding;
                        dialogLinkPreviewBinding15.getClass();
                        TextView textView3 = dialogLinkPreviewBinding15.linkPreviewDistance;
                        Locale locale = Locale.getDefault();
                        locale.getClass();
                        textView3.setText(GeoUtil.getDistanceWithUnit(location, location2, locale));
                    }
                    WikiSite wikiSite = linkPreviewDialog.getViewModel().pageTitle.wikiSite;
                    String str = pageSummary.extractHtml;
                    wikiSite.getClass();
                    PageTitle pageTitle2 = pageSummary.getPageTitle(wikiSite);
                    PageSummary.NamespaceContainer namespaceContainer = pageSummary.namespace;
                    boolean areEqual = Intrinsics.areEqual(pageSummary.type, "disambiguation");
                    if (areEqual) {
                        str = ViewSizeResolver$CC.m("<p>", NodeUtils.getString(R.string.link_preview_disambiguation_description, pageTitle2), "</p>", str);
                    }
                    LinkPreviewViewModel viewModel = linkPreviewDialog.getViewModel();
                    Prefs prefs = Prefs.INSTANCE;
                    if (!Prefs.isImageDownloadEnabled() || viewModel.pageTitle.isFilePage()) {
                        StateFlowImpl stateFlowImpl = viewModel._uiState;
                        stateFlowImpl.getClass();
                        stateFlowImpl.updateState(null, LinkPreviewViewState.Completed.INSTANCE);
                    } else {
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 23), null, new LinkPreviewViewModel$loadGallery$2(viewModel, continuation2, i), 2);
                    }
                    boolean z = (str == null || StringsKt.isBlank(str)) && namespaceContainer != null && namespaceContainer.id == Namespace.MAIN.code();
                    DialogLinkPreviewBinding dialogLinkPreviewBinding16 = linkPreviewDialog._binding;
                    dialogLinkPreviewBinding16.getClass();
                    dialogLinkPreviewBinding16.linkPreviewEditButton.setVisibility(z ? 0 : 8);
                    DialogLinkPreviewBinding dialogLinkPreviewBinding17 = linkPreviewDialog._binding;
                    dialogLinkPreviewBinding17.getClass();
                    dialogLinkPreviewBinding17.linkPreviewThumbnailGallery.setVisibility(z ? 8 : 0);
                    if (z) {
                        str = Animation.CC.m("<i>", linkPreviewDialog.getString(R.string.link_preview_stub_placeholder_text), "</i>");
                    }
                    DialogLinkPreviewBinding dialogLinkPreviewBinding18 = linkPreviewDialog._binding;
                    dialogLinkPreviewBinding18.getClass();
                    dialogLinkPreviewBinding18.linkPreviewExtract.setText(StringUtil.fromHtml(str));
                    String str2 = pageTitle2.thumbUrl;
                    if (str2 != null) {
                        DialogLinkPreviewBinding dialogLinkPreviewBinding19 = linkPreviewDialog._binding;
                        dialogLinkPreviewBinding19.getClass();
                        dialogLinkPreviewBinding19.linkPreviewThumbnail.setVisibility(0);
                        DialogLinkPreviewBinding dialogLinkPreviewBinding20 = linkPreviewDialog._binding;
                        dialogLinkPreviewBinding20.getClass();
                        ViewUtil.loadImage$default(dialogLinkPreviewBinding20.linkPreviewThumbnail, str2, null, 28);
                    }
                    LinkPreviewOverlayView linkPreviewOverlayView2 = linkPreviewDialog.overlayView;
                    if (linkPreviewOverlayView2 != null) {
                        if (!linkPreviewDialog.getViewModel().fromPlaces) {
                            linkPreviewOverlayView2.setPrimaryButtonText(ContextKt.getString(linkPreviewDialog.requireContext(), linkPreviewDialog.getViewModel().pageTitle, areEqual ? R.string.button_continue_to_disambiguation : (linkPreviewDialog.getViewModel().pageTitle.namespace() == Namespace.TALK || linkPreviewDialog.getViewModel().pageTitle.namespace() == Namespace.USER_TALK) ? R.string.button_continue_to_talk_page : R.string.button_continue_to_article));
                        } else if (linkPreviewDialog.getViewModel().fromPlaces) {
                            linkPreviewOverlayView2.setSecondaryButtonText(ContextKt.getString(linkPreviewDialog.requireContext(), linkPreviewDialog.getViewModel().pageTitle, linkPreviewDialog.getViewModel().isInReadingList ? R.string.link_preview_dialog_saved_button : R.string.link_preview_dialog_save_button));
                        }
                    }
                } else if (linkPreviewViewState instanceof LinkPreviewViewState.Gallery) {
                    DialogLinkPreviewBinding dialogLinkPreviewBinding21 = linkPreviewDialog._binding;
                    dialogLinkPreviewBinding21.getClass();
                    dialogLinkPreviewBinding21.linkPreviewThumbnailGallery.setGalleryList(((LinkPreviewViewState.Gallery) linkPreviewViewState).data);
                    DialogLinkPreviewBinding dialogLinkPreviewBinding22 = linkPreviewDialog._binding;
                    dialogLinkPreviewBinding22.getClass();
                    dialogLinkPreviewBinding22.linkPreviewThumbnailGallery.setListener(linkPreviewDialog.galleryViewListener);
                    DialogLinkPreviewBinding dialogLinkPreviewBinding23 = linkPreviewDialog._binding;
                    dialogLinkPreviewBinding23.getClass();
                    dialogLinkPreviewBinding23.linkPreviewProgress.setVisibility(8);
                } else if (linkPreviewViewState instanceof LinkPreviewViewState.Watch) {
                    BaseActivity baseActivity = (BaseActivity) linkPreviewDialog.requireActivity();
                    FragmentManagerImpl supportFragmentManager = linkPreviewDialog.requireActivity().getSupportFragmentManager();
                    PageTitle pageTitle3 = linkPreviewDialog.getViewModel().pageTitle;
                    Pair pair = ((LinkPreviewViewState.Watch) linkPreviewViewState).data;
                    boolean booleanValue = ((Boolean) pair.first).booleanValue();
                    String str3 = (String) pair.second;
                    pageTitle3.getClass();
                    str3.getClass();
                    if (booleanValue) {
                        Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(baseActivity, str3, 0, 12);
                        makeSnackbar$default.setAction(R.string.watchlist_page_add_to_watchlist_snackbar_action, new PageItemView$$ExternalSyntheticLambda3(i2, supportFragmentManager, pageTitle3));
                        makeSnackbar$default.show();
                    } else {
                        ShareUtil.showMessage(baseActivity, str3, 0);
                    }
                    linkPreviewDialog.dismiss();
                } else {
                    if (!(linkPreviewViewState instanceof LinkPreviewViewState.Completed)) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    DialogLinkPreviewBinding dialogLinkPreviewBinding24 = linkPreviewDialog._binding;
                    dialogLinkPreviewBinding24.getClass();
                    dialogLinkPreviewBinding24.linkPreviewProgress.setVisibility(8);
                }
            }
        }
        return Unit.INSTANCE;
    }

    private final Object emit$org$wikipedia$suggestededits$SuggestedEditsCardsFragment$onViewCreated$3$1$1(Object obj, Continuation continuation) {
        Resource resource = (Resource) obj;
        if (resource instanceof Resource.Success) {
            SuggestedEditsCardsFragment suggestedEditsCardsFragment = (SuggestedEditsCardsFragment) this.channel;
            List list = (List) ((Resource.Success) resource).data;
            ActivityLoginBinding activityLoginBinding = suggestedEditsCardsFragment._binding;
            activityLoginBinding.getClass();
            if (((LinearLayout) activityLoginBinding.loginPrimaryContainer).getVisibility() == 0) {
                ActivityLoginBinding activityLoginBinding2 = suggestedEditsCardsFragment._binding;
                activityLoginBinding2.getClass();
                ((Spinner) activityLoginBinding2.viewLoginError).setAdapter((SpinnerAdapter) new ArrayAdapter(suggestedEditsCardsFragment.requireContext(), R.layout.item_language_spinner, list));
                ActivityLoginBinding activityLoginBinding3 = suggestedEditsCardsFragment._binding;
                activityLoginBinding3.getClass();
                ((Spinner) activityLoginBinding3.viewProgressBar).setAdapter((SpinnerAdapter) new ArrayAdapter(suggestedEditsCardsFragment.requireContext(), R.layout.item_language_spinner, list));
                ActivityLoginBinding activityLoginBinding4 = suggestedEditsCardsFragment._binding;
                activityLoginBinding4.getClass();
                ((Spinner) activityLoginBinding4.viewProgressBar).setSelection(((ArrayList) suggestedEditsCardsFragment.app.getLanguageState().getAppLanguageCodes()).indexOf(suggestedEditsCardsFragment.getViewModel().langToCode));
                ActivityLoginBinding activityLoginBinding5 = suggestedEditsCardsFragment._binding;
                activityLoginBinding5.getClass();
                ((Spinner) activityLoginBinding5.viewLoginError).setOnItemSelectedListener(new SuggestedEditsCardsFragment.OnToSpinnerItemSelectedListener(suggestedEditsCardsFragment, 1));
                ActivityLoginBinding activityLoginBinding6 = suggestedEditsCardsFragment._binding;
                activityLoginBinding6.getClass();
                ((Spinner) activityLoginBinding6.viewProgressBar).setOnItemSelectedListener(new SuggestedEditsCardsFragment.OnToSpinnerItemSelectedListener(suggestedEditsCardsFragment, 0));
                ActivityLoginBinding activityLoginBinding7 = suggestedEditsCardsFragment._binding;
                activityLoginBinding7.getClass();
                ((ImageView) activityLoginBinding7.login2faText).setOnClickListener(new SuggestedEditsCardsFragment$$ExternalSyntheticLambda0(suggestedEditsCardsFragment, 3));
            }
        }
        return Unit.INSTANCE;
    }

    private final Object emit$org$wikipedia$suggestededits$SuggestedEditsCardsItemFragment$onViewCreated$5$1$1$1(Object obj, Continuation continuation) {
        int i;
        Uri uri;
        String str;
        ExtMetadata extMetadata;
        Resource resource = (Resource) obj;
        SuggestedEditsCardsItemFragment suggestedEditsCardsItemFragment = (SuggestedEditsCardsItemFragment) this.channel;
        if (resource instanceof Resource.Loading) {
            ViewMainDrawerBinding viewMainDrawerBinding = suggestedEditsCardsItemFragment._binding;
            viewMainDrawerBinding.getClass();
            ((ProgressBar) viewMainDrawerBinding.mainDrawerGamesHubContainer).setVisibility(0);
            ViewMainDrawerBinding viewMainDrawerBinding2 = suggestedEditsCardsItemFragment._binding;
            viewMainDrawerBinding2.getClass();
            ((ScrollView) viewMainDrawerBinding2.rootView).setVisibility(8);
            ViewMainDrawerBinding viewMainDrawerBinding3 = suggestedEditsCardsItemFragment._binding;
            viewMainDrawerBinding3.getClass();
            ((WikiErrorView) viewMainDrawerBinding3.mainDrawerAccountAvatar).setVisibility(8);
        } else if (resource instanceof Resource.Success) {
            Pair pair = (Pair) ((Resource.Success) resource).data;
            suggestedEditsCardsItemFragment.sourceSummaryForEdit = (PageSummaryForEdit) pair.first;
            suggestedEditsCardsItemFragment.targetSummaryForEdit = (PageSummaryForEdit) pair.second;
            ViewMainDrawerBinding viewMainDrawerBinding4 = suggestedEditsCardsItemFragment._binding;
            viewMainDrawerBinding4.getClass();
            ((WikiErrorView) viewMainDrawerBinding4.mainDrawerAccountAvatar).setVisibility(8);
            ViewMainDrawerBinding viewMainDrawerBinding5 = suggestedEditsCardsItemFragment._binding;
            viewMainDrawerBinding5.getClass();
            ((ScrollView) viewMainDrawerBinding5.rootView).setVisibility(0);
            ViewMainDrawerBinding viewMainDrawerBinding6 = suggestedEditsCardsItemFragment._binding;
            viewMainDrawerBinding6.getClass();
            ((ProgressBar) viewMainDrawerBinding6.mainDrawerGamesHubContainer).setVisibility(8);
            ViewMainDrawerBinding viewMainDrawerBinding7 = suggestedEditsCardsItemFragment._binding;
            viewMainDrawerBinding7.getClass();
            FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) viewMainDrawerBinding7.mainDrawerPlacesContainer;
            PageSummaryForEdit pageSummaryForEdit = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
            faceAndColorDetectImageView.setContentDescription(suggestedEditsCardsItemFragment.getString(R.string.image_content_description, pageSummaryForEdit != null ? pageSummaryForEdit.displayTitle : null));
            ViewMainDrawerBinding viewMainDrawerBinding8 = suggestedEditsCardsItemFragment._binding;
            viewMainDrawerBinding8.getClass();
            FaceAndColorDetectImageView faceAndColorDetectImageView2 = (FaceAndColorDetectImageView) viewMainDrawerBinding8.mainDrawerPlacesContainer;
            if (faceAndColorDetectImageView2.getTag() == null || !(faceAndColorDetectImageView2.getTag() instanceof Integer)) {
                i = 0;
            } else {
                Object tag = faceAndColorDetectImageView2.getTag();
                tag.getClass();
                i = ((Integer) tag).intValue();
            }
            faceAndColorDetectImageView2.setTag(Integer.valueOf(i | 1));
            if (suggestedEditsCardsItemFragment.parent().getViewModel().action == DescriptionEditActivity.Action.ADD_DESCRIPTION || suggestedEditsCardsItemFragment.parent().getViewModel().action == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION) {
                ViewMainDrawerBinding viewMainDrawerBinding9 = suggestedEditsCardsItemFragment._binding;
                viewMainDrawerBinding9.getClass();
                TextView textView = viewMainDrawerBinding9.mainDrawerLoginButton;
                StringUtil stringUtil = StringUtil.INSTANCE;
                PageSummaryForEdit pageSummaryForEdit2 = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
                textView.setText(StringUtil.fromHtml(pageSummaryForEdit2 != null ? pageSummaryForEdit2.displayTitle : null));
                ViewMainDrawerBinding viewMainDrawerBinding10 = suggestedEditsCardsItemFragment._binding;
                viewMainDrawerBinding10.getClass();
                viewMainDrawerBinding10.mainDrawerLoginButton.setVisibility(0);
                if (suggestedEditsCardsItemFragment.parent().getViewModel().action == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION) {
                    ViewMainDrawerBinding viewMainDrawerBinding11 = suggestedEditsCardsItemFragment._binding;
                    viewMainDrawerBinding11.getClass();
                    viewMainDrawerBinding11.mainDrawerDonateContainer.setVisibility(0);
                    ViewMainDrawerBinding viewMainDrawerBinding12 = suggestedEditsCardsItemFragment._binding;
                    viewMainDrawerBinding12.getClass();
                    GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) viewMainDrawerBinding12.mainDrawerSettingsContainer;
                    String str2 = suggestedEditsCardsItemFragment.addedContribution;
                    if (str2.length() == 0) {
                        PageSummaryForEdit pageSummaryForEdit3 = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
                        str2 = pageSummaryForEdit3 != null ? pageSummaryForEdit3.description : null;
                    }
                    goneIfEmptyTextView.setText(str2);
                }
                ViewMainDrawerBinding viewMainDrawerBinding13 = suggestedEditsCardsItemFragment._binding;
                viewMainDrawerBinding13.getClass();
                ((LinearLayout) viewMainDrawerBinding13.mainDrawerEditContainer).setVisibility(8);
                ViewMainDrawerBinding viewMainDrawerBinding14 = suggestedEditsCardsItemFragment._binding;
                viewMainDrawerBinding14.getClass();
                TextView textView2 = viewMainDrawerBinding14.mainDrawerAccountName;
                PageSummaryForEdit pageSummaryForEdit4 = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
                textView2.setText(StringUtil.removeHTMLTags(pageSummaryForEdit4 != null ? pageSummaryForEdit4.extractHtml : null));
                PageSummaryForEdit pageSummaryForEdit5 = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
                pageSummaryForEdit5.getClass();
                String str3 = pageSummaryForEdit5.thumbnailUrl;
                if (str3 == null || StringsKt.isBlank(str3)) {
                    ViewMainDrawerBinding viewMainDrawerBinding15 = suggestedEditsCardsItemFragment._binding;
                    viewMainDrawerBinding15.getClass();
                    viewMainDrawerBinding15.mainDrawerContribsContainer.setVisibility(8);
                } else {
                    ViewMainDrawerBinding viewMainDrawerBinding16 = suggestedEditsCardsItemFragment._binding;
                    viewMainDrawerBinding16.getClass();
                    viewMainDrawerBinding16.mainDrawerContribsContainer.setVisibility(0);
                    ViewMainDrawerBinding viewMainDrawerBinding17 = suggestedEditsCardsItemFragment._binding;
                    viewMainDrawerBinding17.getClass();
                    FaceAndColorDetectImageView faceAndColorDetectImageView3 = (FaceAndColorDetectImageView) viewMainDrawerBinding17.mainDrawerPlacesContainer;
                    PageSummaryForEdit pageSummaryForEdit6 = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
                    if (pageSummaryForEdit6 != null) {
                        uri = Uri.parse(pageSummaryForEdit6.getPreferredSizeThumbnailUrl());
                        uri.getClass();
                    } else {
                        uri = null;
                    }
                    faceAndColorDetectImageView3.loadImage(uri, null);
                }
            } else {
                ViewMainDrawerBinding viewMainDrawerBinding18 = suggestedEditsCardsItemFragment._binding;
                viewMainDrawerBinding18.getClass();
                viewMainDrawerBinding18.mainDrawerLoginButton.setVisibility(8);
                ViewMainDrawerBinding viewMainDrawerBinding19 = suggestedEditsCardsItemFragment._binding;
                viewMainDrawerBinding19.getClass();
                viewMainDrawerBinding19.mainDrawerDonateContainer.setVisibility(0);
                String str4 = suggestedEditsCardsItemFragment.addedContribution;
                if (str4.length() == 0) {
                    PageSummaryForEdit pageSummaryForEdit7 = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
                    pageSummaryForEdit7.getClass();
                    str4 = pageSummaryForEdit7.description;
                    str4.getClass();
                    if (str4.length() == 0) {
                        str4 = suggestedEditsCardsItemFragment.getString(R.string.suggested_edits_no_description);
                        str4.getClass();
                    }
                }
                ViewMainDrawerBinding viewMainDrawerBinding20 = suggestedEditsCardsItemFragment._binding;
                viewMainDrawerBinding20.getClass();
                GoneIfEmptyTextView goneIfEmptyTextView2 = (GoneIfEmptyTextView) viewMainDrawerBinding20.mainDrawerSettingsContainer;
                StringUtil stringUtil2 = StringUtil.INSTANCE;
                goneIfEmptyTextView2.setText(StringsKt.trim(StringUtil.removeHTMLTags(str4)).toString());
                ViewMainDrawerBinding viewMainDrawerBinding21 = suggestedEditsCardsItemFragment._binding;
                viewMainDrawerBinding21.getClass();
                ImageDetailHorizontalView imageDetailHorizontalView = (ImageDetailHorizontalView) viewMainDrawerBinding21.mainDrawerWatchlistContainer;
                PageSummaryForEdit pageSummaryForEdit8 = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
                String str5 = pageSummaryForEdit8 != null ? pageSummaryForEdit8.displayTitle : null;
                if (str5 == null) {
                    str5 = "";
                }
                imageDetailHorizontalView.setDetailText(StringsKt.substringAfter$default(str5, ':'));
                PageSummaryForEdit pageSummaryForEdit9 = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
                String str6 = pageSummaryForEdit9 != null ? pageSummaryForEdit9.user : null;
                if (str6 == null || str6.length() == 0) {
                    ViewMainDrawerBinding viewMainDrawerBinding22 = suggestedEditsCardsItemFragment._binding;
                    viewMainDrawerBinding22.getClass();
                    ImageDetailHorizontalView imageDetailHorizontalView2 = (ImageDetailHorizontalView) viewMainDrawerBinding22.mainDrawerTalkContainer;
                    PageSummaryForEdit pageSummaryForEdit10 = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
                    if (pageSummaryForEdit10 == null || (extMetadata = pageSummaryForEdit10.metadata) == null) {
                        str = null;
                    } else {
                        ExtMetadata.Values values = extMetadata.artist;
                        str = values != null ? values.value : null;
                        if (str == null) {
                            str = "";
                        }
                    }
                    imageDetailHorizontalView2.setTitleText(StringUtil.removeHTMLTags(str));
                } else {
                    ViewMainDrawerBinding viewMainDrawerBinding23 = suggestedEditsCardsItemFragment._binding;
                    viewMainDrawerBinding23.getClass();
                    ImageDetailHorizontalView imageDetailHorizontalView3 = (ImageDetailHorizontalView) viewMainDrawerBinding23.mainDrawerTalkContainer;
                    String string = suggestedEditsCardsItemFragment.getString(R.string.suggested_edits_image_caption_summary_title_author);
                    string.getClass();
                    imageDetailHorizontalView3.setTitleText(string);
                    ViewMainDrawerBinding viewMainDrawerBinding24 = suggestedEditsCardsItemFragment._binding;
                    viewMainDrawerBinding24.getClass();
                    ImageDetailHorizontalView imageDetailHorizontalView4 = (ImageDetailHorizontalView) viewMainDrawerBinding24.mainDrawerTalkContainer;
                    PageSummaryForEdit pageSummaryForEdit11 = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
                    imageDetailHorizontalView4.setDetailText(pageSummaryForEdit11 != null ? pageSummaryForEdit11.user : null);
                }
                ViewMainDrawerBinding viewMainDrawerBinding25 = suggestedEditsCardsItemFragment._binding;
                viewMainDrawerBinding25.getClass();
                ImageDetailHorizontalView imageDetailHorizontalView5 = (ImageDetailHorizontalView) viewMainDrawerBinding25.mainDrawerTempAccountContainer;
                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                Context requireContext = suggestedEditsCardsItemFragment.requireContext();
                PageSummaryForEdit pageSummaryForEdit12 = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
                String str7 = pageSummaryForEdit12 != null ? pageSummaryForEdit12.timestamp : null;
                if (str7 == null) {
                    str7 = "";
                }
                imageDetailHorizontalView5.setDetailText(DateUtil.getTimeAndDateString(requireContext, str7));
                ViewMainDrawerBinding viewMainDrawerBinding26 = suggestedEditsCardsItemFragment._binding;
                viewMainDrawerBinding26.getClass();
                ImageDetailHorizontalView imageDetailHorizontalView6 = (ImageDetailHorizontalView) viewMainDrawerBinding26.tempAccountName;
                PageSummaryForEdit pageSummaryForEdit13 = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
                pageSummaryForEdit13.getClass();
                ExtMetadata extMetadata2 = pageSummaryForEdit13.metadata;
                extMetadata2.getClass();
                ExtMetadata.Values values2 = extMetadata2.credit;
                String str8 = values2 != null ? values2.value : null;
                imageDetailHorizontalView6.setDetailText(str8 != null ? str8 : "");
                ViewMainDrawerBinding viewMainDrawerBinding27 = suggestedEditsCardsItemFragment._binding;
                viewMainDrawerBinding27.getClass();
                ImageDetailHorizontalView imageDetailHorizontalView7 = (ImageDetailHorizontalView) viewMainDrawerBinding27.mainDrawerYearInReviewContainer;
                PageSummaryForEdit pageSummaryForEdit14 = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
                pageSummaryForEdit14.getClass();
                ExtMetadata extMetadata3 = pageSummaryForEdit14.metadata;
                extMetadata3.getClass();
                imageDetailHorizontalView7.setDetailText(extMetadata3.licenseShortName());
                ViewMainDrawerBinding viewMainDrawerBinding28 = suggestedEditsCardsItemFragment._binding;
                viewMainDrawerBinding28.getClass();
                FaceAndColorDetectImageView faceAndColorDetectImageView4 = (FaceAndColorDetectImageView) viewMainDrawerBinding28.mainDrawerPlacesContainer;
                PageSummaryForEdit pageSummaryForEdit15 = suggestedEditsCardsItemFragment.sourceSummaryForEdit;
                pageSummaryForEdit15.getClass();
                Uri parse = Uri.parse(pageSummaryForEdit15.getPreferredSizeThumbnailUrl());
                parse.getClass();
                faceAndColorDetectImageView4.loadImage(parse, null);
                ViewMainDrawerBinding viewMainDrawerBinding29 = suggestedEditsCardsItemFragment._binding;
                viewMainDrawerBinding29.getClass();
                viewMainDrawerBinding29.mainDrawerAccountName.setVisibility(8);
            }
        } else if (resource instanceof Resource.Error) {
            Throwable th = ((Resource.Error) resource).throwable;
            L.e(th);
            ViewMainDrawerBinding viewMainDrawerBinding30 = suggestedEditsCardsItemFragment._binding;
            viewMainDrawerBinding30.getClass();
            WikiErrorView wikiErrorView = (WikiErrorView) viewMainDrawerBinding30.mainDrawerAccountAvatar;
            int i2 = WikiErrorView.$r8$clinit;
            wikiErrorView.setError(th, null);
            ViewMainDrawerBinding viewMainDrawerBinding31 = suggestedEditsCardsItemFragment._binding;
            viewMainDrawerBinding31.getClass();
            ((WikiErrorView) viewMainDrawerBinding31.mainDrawerAccountAvatar).setVisibility(0);
            ViewMainDrawerBinding viewMainDrawerBinding32 = suggestedEditsCardsItemFragment._binding;
            viewMainDrawerBinding32.getClass();
            ((ProgressBar) viewMainDrawerBinding32.mainDrawerGamesHubContainer).setVisibility(8);
            ViewMainDrawerBinding viewMainDrawerBinding33 = suggestedEditsCardsItemFragment._binding;
            viewMainDrawerBinding33.getClass();
            ((ScrollView) viewMainDrawerBinding33.rootView).setVisibility(8);
        }
        return Unit.INSTANCE;
    }

    private final Object emit$org$wikipedia$suggestededits$SuggestedEditsImageRecsFragment$onViewCreated$13$1$1(Object obj, Continuation continuation) {
        Resource resource = (Resource) obj;
        SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = (SuggestedEditsImageRecsFragment) this.channel;
        int i = 0;
        if (resource instanceof Resource.Loading) {
            MapChangeReceiver mapChangeReceiver = suggestedEditsImageRecsFragment._binding;
            mapChangeReceiver.getClass();
            ((ProgressBar) mapChangeReceiver.onDidFinishRenderingMapListenerList).setVisibility(0);
            MapChangeReceiver mapChangeReceiver2 = suggestedEditsImageRecsFragment._binding;
            mapChangeReceiver2.getClass();
            ((WikiErrorView) mapChangeReceiver2.onWillStartRenderingMapListenerList).setVisibility(8);
            MapChangeReceiver mapChangeReceiver3 = suggestedEditsImageRecsFragment._binding;
            mapChangeReceiver3.getClass();
            ((CoordinatorLayout) mapChangeReceiver3.onDidFinishRenderingFrameWithStatsList).setVisibility(8);
            MapChangeReceiver mapChangeReceiver4 = suggestedEditsImageRecsFragment._binding;
            mapChangeReceiver4.getClass();
            ((NestedScrollView) mapChangeReceiver4.onCameraDidChangeListenerList).setVisibility(8);
            MapChangeReceiver mapChangeReceiver5 = suggestedEditsImageRecsFragment._binding;
            mapChangeReceiver5.getClass();
            ((LinearLayout) mapChangeReceiver5.onCanRemoveUnusedStyleImageListenerList).setVisibility(8);
        } else {
            if (resource instanceof Resource.Success) {
                int i2 = 1;
                suggestedEditsImageRecsFragment.isLoaded = true;
                if (suggestedEditsImageRecsFragment.isVisibleToUser && !suggestedEditsImageRecsFragment.isImpressionLogged) {
                    ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                    String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                    String str = suggestedEditsImageRecsFragment.getViewModel().langCode;
                    companion.getClass();
                    ImageRecommendationsEvent.Companion.logImpression("recommendedimagetoolbar", actionStringForAnalytics$default, str);
                    suggestedEditsImageRecsFragment.isImpressionLogged = true;
                }
                MapChangeReceiver mapChangeReceiver6 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver6.getClass();
                ((ProgressBar) mapChangeReceiver6.onDidFinishRenderingMapListenerList).setVisibility(8);
                MapChangeReceiver mapChangeReceiver7 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver7.getClass();
                ((WikiErrorView) mapChangeReceiver7.onWillStartRenderingMapListenerList).setVisibility(8);
                MapChangeReceiver mapChangeReceiver8 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver8.getClass();
                ((CoordinatorLayout) mapChangeReceiver8.onDidFinishRenderingFrameWithStatsList).setVisibility(0);
                MapChangeReceiver mapChangeReceiver9 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver9.getClass();
                ((NestedScrollView) mapChangeReceiver9.onCameraDidChangeListenerList).setVisibility(0);
                MapChangeReceiver mapChangeReceiver10 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver10.getClass();
                TextView textView = (TextView) mapChangeReceiver10.onDidFinishRenderingFrameList;
                StringUtil stringUtil = StringUtil.INSTANCE;
                PageSummary pageSummary = suggestedEditsImageRecsFragment.getViewModel().summary;
                if (pageSummary == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("summary");
                    throw null;
                }
                textView.setText(StringUtil.fromHtml(pageSummary.getDisplayTitle()));
                MapChangeReceiver mapChangeReceiver11 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver11.getClass();
                GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) mapChangeReceiver11.onWillStartLoadingMapListenerList;
                PageSummary pageSummary2 = suggestedEditsImageRecsFragment.getViewModel().summary;
                if (pageSummary2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("summary");
                    throw null;
                }
                goneIfEmptyTextView.setText(pageSummary2.description);
                MapChangeReceiver mapChangeReceiver12 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver12.getClass();
                TextView textView2 = (TextView) mapChangeReceiver12.onDidFailLoadingMapListenerList;
                PageSummary pageSummary3 = suggestedEditsImageRecsFragment.getViewModel().summary;
                if (pageSummary3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("summary");
                    throw null;
                }
                textView2.setText(StringsKt.trim(StringUtil.fromHtml(pageSummary3.extractHtml)));
                Pattern pattern = ImageUrlUtil.WIDTH_IN_IMAGE_URL_REGEX;
                GrowthImageSuggestion.ImageMetadata imageMetadata = ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).metadata;
                imageMetadata.getClass();
                String urlForPreferredSize = ImageUrlUtil.getUrlForPreferredSize(960, imageMetadata.thumbUrl);
                if (StringsKt__StringsJVMKt.startsWith(urlForPreferredSize, "//", false)) {
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    urlForPreferredSize = Animation.CC.m(Jsoup.getInstance().getWikiSite().scheme(), ":", urlForPreferredSize);
                }
                MapChangeReceiver mapChangeReceiver13 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver13.getClass();
                FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) mapChangeReceiver13.onGlyphsLoadedList;
                Uri parse = Uri.parse(urlForPreferredSize);
                parse.getClass();
                faceAndColorDetectImageView.loadImage(parse, new AvPlayer(22, suggestedEditsImageRecsFragment));
                MapChangeReceiver mapChangeReceiver14 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver14.getClass();
                TextView textView3 = (TextView) mapChangeReceiver14.onDidBecomeIdleListenerList;
                GrowthImageSuggestion.ImageMetadata imageMetadata2 = ((GrowthImageSuggestion.ImageItem) CollectionsKt.first(suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images)).metadata;
                String str2 = imageMetadata2 != null ? imageMetadata2.caption : null;
                if (str2 == null) {
                    str2 = "";
                }
                textView3.setText(StringsKt.trim(str2).toString());
                MapChangeReceiver mapChangeReceiver15 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver15.getClass();
                TextView textView4 = (TextView) mapChangeReceiver15.onDidBecomeIdleListenerList;
                MapChangeReceiver mapChangeReceiver16 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver16.getClass();
                CharSequence text = ((TextView) mapChangeReceiver16.onDidBecomeIdleListenerList).getText();
                text.getClass();
                textView4.setVisibility(text.length() > 0 ? 0 : 8);
                MapChangeReceiver mapChangeReceiver17 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver17.getClass();
                ((Space) mapChangeReceiver17.onWillStartRenderingFrameList).post(new SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12(suggestedEditsImageRecsFragment, i));
                MapChangeReceiver mapChangeReceiver18 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver18.getClass();
                ((TextView) mapChangeReceiver18.onSourceChangedListenerList).setText(((GrowthImageSuggestion.ImageItem) CollectionsKt.first(suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images)).displayFilename);
                MapChangeReceiver mapChangeReceiver19 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver19.getClass();
                TextView textView5 = (TextView) mapChangeReceiver19.onShaderCompileFailedList;
                GrowthImageSuggestion.ImageMetadata imageMetadata3 = ((GrowthImageSuggestion.ImageItem) CollectionsKt.first(suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images)).metadata;
                textView5.setText(imageMetadata3 != null ? imageMetadata3.reason : null);
                MapChangeReceiver mapChangeReceiver20 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver20.getClass();
                ((ConstraintLayout) mapChangeReceiver20.onPostCompileShaderList).setVisibility(0);
                suggestedEditsImageRecsFragment.requireActivity().invalidateOptionsMenu();
                Prefs prefs = Prefs.INSTANCE;
                if (!Prefs.getSuggestedEditsImageRecsOnboardingShown()) {
                    MapChangeReceiver mapChangeReceiver21 = suggestedEditsImageRecsFragment._binding;
                    mapChangeReceiver21.getClass();
                    ((CoordinatorLayout) mapChangeReceiver21.onCameraWillChangeListenerList).post(new SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12(suggestedEditsImageRecsFragment, i2));
                }
                suggestedEditsImageRecsFragment.callback().updateActionButton();
            } else if (resource instanceof SuggestedEditsImageRecsFragmentViewModel.Depleted) {
                ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                String str3 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                companion2.getClass();
                ImageRecommendationsEvent.Companion.logImpression("nosuggestions_dialog", actionStringForAnalytics$default2, str3);
                MapChangeReceiver mapChangeReceiver22 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver22.getClass();
                ((CoordinatorLayout) mapChangeReceiver22.onDidFinishRenderingFrameWithStatsList).setVisibility(8);
                MapChangeReceiver mapChangeReceiver23 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver23.getClass();
                ((NestedScrollView) mapChangeReceiver23.onCameraDidChangeListenerList).setVisibility(8);
                MapChangeReceiver mapChangeReceiver24 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver24.getClass();
                ((ProgressBar) mapChangeReceiver24.onDidFinishRenderingMapListenerList).setVisibility(8);
                MapChangeReceiver mapChangeReceiver25 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver25.getClass();
                ((WikiErrorView) mapChangeReceiver25.onWillStartRenderingMapListenerList).setVisibility(8);
                MapChangeReceiver mapChangeReceiver26 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver26.getClass();
                ((LinearLayout) mapChangeReceiver26.onCanRemoveUnusedStyleImageListenerList).setVisibility(0);
            } else if (resource instanceof Resource.Error) {
                Throwable th = ((Resource.Error) resource).throwable;
                L.e(th);
                MapChangeReceiver mapChangeReceiver27 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver27.getClass();
                ((ProgressBar) mapChangeReceiver27.onDidFinishRenderingMapListenerList).setVisibility(8);
                MapChangeReceiver mapChangeReceiver28 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver28.getClass();
                ((CoordinatorLayout) mapChangeReceiver28.onDidFinishRenderingFrameWithStatsList).setVisibility(8);
                MapChangeReceiver mapChangeReceiver29 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver29.getClass();
                ((NestedScrollView) mapChangeReceiver29.onCameraDidChangeListenerList).setVisibility(8);
                MapChangeReceiver mapChangeReceiver30 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver30.getClass();
                ((LinearLayout) mapChangeReceiver30.onCanRemoveUnusedStyleImageListenerList).setVisibility(8);
                MapChangeReceiver mapChangeReceiver31 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver31.getClass();
                ((WikiErrorView) mapChangeReceiver31.onWillStartRenderingMapListenerList).setVisibility(0);
                MapChangeReceiver mapChangeReceiver32 = suggestedEditsImageRecsFragment._binding;
                mapChangeReceiver32.getClass();
                ((WikiErrorView) mapChangeReceiver32.onWillStartRenderingMapListenerList).setError(th, null);
            }
        }
        return Unit.INSTANCE;
    }

    private final Object emit$org$wikipedia$suggestededits$SuggestedEditsTasksFragment$onViewCreated$4$1$1$1(Object obj, Continuation continuation) {
        Resource resource = (Resource) obj;
        SuggestedEditsTasksFragment suggestedEditsTasksFragment = (SuggestedEditsTasksFragment) this.channel;
        if (resource instanceof Resource.Loading) {
            SVGAndroidRenderer sVGAndroidRenderer = suggestedEditsTasksFragment._binding;
            sVGAndroidRenderer.getClass();
            ((LinearProgressIndicator) sVGAndroidRenderer.stateStack).setVisibility(0);
            SVGAndroidRenderer sVGAndroidRenderer2 = suggestedEditsTasksFragment._binding;
            sVGAndroidRenderer2.getClass();
            ((NestedScrollView) sVGAndroidRenderer2.parentStack).setVisibility(8);
        } else if (resource instanceof Resource.Success) {
            suggestedEditsTasksFragment.setFinalUIState();
        } else if (resource instanceof SuggestedEditsTasksFragmentViewModel.RequireLogin) {
            suggestedEditsTasksFragment.clearContents(true);
            SVGAndroidRenderer sVGAndroidRenderer3 = suggestedEditsTasksFragment._binding;
            sVGAndroidRenderer3.getClass();
            ((MessageCardView) sVGAndroidRenderer3.state).setRequiredLogin(new SuggestedEditsTasksFragment$$ExternalSyntheticLambda1(suggestedEditsTasksFragment, 5));
            SVGAndroidRenderer sVGAndroidRenderer4 = suggestedEditsTasksFragment._binding;
            sVGAndroidRenderer4.getClass();
            ((MessageCardView) sVGAndroidRenderer4.state).setVisibility(0);
        } else if (resource instanceof Resource.Error) {
            Throwable th = ((Resource.Error) resource).throwable;
            suggestedEditsTasksFragment.clearContents(true);
            SVGAndroidRenderer sVGAndroidRenderer5 = suggestedEditsTasksFragment._binding;
            sVGAndroidRenderer5.getClass();
            WikiErrorView wikiErrorView = (WikiErrorView) sVGAndroidRenderer5.canvas;
            int i = WikiErrorView.$r8$clinit;
            wikiErrorView.setError(th, null);
            SVGAndroidRenderer sVGAndroidRenderer6 = suggestedEditsTasksFragment._binding;
            sVGAndroidRenderer6.getClass();
            ((WikiErrorView) sVGAndroidRenderer6.canvas).setVisibility(0);
        }
        return Unit.INSTANCE;
    }

    private final Object emit$org$wikipedia$usercontrib$UserInformationDialog$setupDialog$1$1$1(Object obj, Continuation continuation) {
        Resource resource = (Resource) obj;
        UserInformationDialog userInformationDialog = (UserInformationDialog) this.channel;
        if (resource instanceof Resource.Loading) {
            SVGAndroidRenderer sVGAndroidRenderer = userInformationDialog._binding;
            sVGAndroidRenderer.getClass();
            ((LinearLayout) sVGAndroidRenderer.parentStack).setVisibility(8);
            SVGAndroidRenderer sVGAndroidRenderer2 = userInformationDialog._binding;
            sVGAndroidRenderer2.getClass();
            ((ProgressBar) sVGAndroidRenderer2.state).setVisibility(0);
            SVGAndroidRenderer sVGAndroidRenderer3 = userInformationDialog._binding;
            sVGAndroidRenderer3.getClass();
            ((WikiErrorView) sVGAndroidRenderer3.document).setVisibility(8);
        } else if (resource instanceof Resource.Success) {
            Pair pair = (Pair) ((Resource.Success) resource).data;
            userInformationDialog.onSuccess((String) pair.first, (Date) pair.second);
        } else if (resource instanceof Resource.Error) {
            Throwable th = ((Resource.Error) resource).throwable;
            SVGAndroidRenderer sVGAndroidRenderer4 = userInformationDialog._binding;
            sVGAndroidRenderer4.getClass();
            ((LinearLayout) sVGAndroidRenderer4.parentStack).setVisibility(8);
            SVGAndroidRenderer sVGAndroidRenderer5 = userInformationDialog._binding;
            sVGAndroidRenderer5.getClass();
            ((ProgressBar) sVGAndroidRenderer5.state).setVisibility(8);
            SVGAndroidRenderer sVGAndroidRenderer6 = userInformationDialog._binding;
            sVGAndroidRenderer6.getClass();
            WikiErrorView wikiErrorView = (WikiErrorView) sVGAndroidRenderer6.document;
            int i = WikiErrorView.$r8$clinit;
            wikiErrorView.setError(th, null);
            SVGAndroidRenderer sVGAndroidRenderer7 = userInformationDialog._binding;
            sVGAndroidRenderer7.getClass();
            ((WikiErrorView) sVGAndroidRenderer7.document).setVisibility(0);
        }
        return Unit.INSTANCE;
    }

    private final Object emit$org$wikipedia$watchlist$WatchlistExpiryDialog$onViewCreated$1$1$1(Object obj, Continuation continuation) {
        ComponentCallbacks activity;
        Resource resource = (Resource) obj;
        WatchlistExpiryDialog watchlistExpiryDialog = (WatchlistExpiryDialog) this.channel;
        if (resource instanceof Resource.Success) {
            AppCompatActivity requireActivity = watchlistExpiryDialog.requireActivity();
            WatchlistExpiryDialogViewModel.WatchlistExpiryChangeSuccess watchlistExpiryChangeSuccess = (WatchlistExpiryDialogViewModel.WatchlistExpiryChangeSuccess) ((Resource.Success) resource).data;
            ShareUtil.makeSnackbar$default(requireActivity, watchlistExpiryChangeSuccess.message, 0, 12).show();
            if (WatchlistExpiryDialog.Callback.class.isInstance(watchlistExpiryDialog.getTargetFragment(true))) {
                activity = watchlistExpiryDialog.getTargetFragment(true);
            } else {
                Fragment fragment = watchlistExpiryDialog.mParentFragment;
                if (fragment != null) {
                    if (WatchlistExpiryDialog.Callback.class.isInstance(fragment)) {
                        activity = watchlistExpiryDialog.mParentFragment;
                    } else if (WatchlistExpiryDialog.Callback.class.isInstance(watchlistExpiryDialog.requireParentFragment().mParentFragment)) {
                        activity = watchlistExpiryDialog.requireParentFragment().mParentFragment;
                    }
                }
                activity = WatchlistExpiryDialog.Callback.class.isInstance(watchlistExpiryDialog.getActivity()) ? watchlistExpiryDialog.getActivity() : null;
            }
            WatchlistExpiryDialog.Callback callback = (WatchlistExpiryDialog.Callback) activity;
            if (callback != null) {
                callback.onExpiryChanged(watchlistExpiryChangeSuccess.expiry);
            }
            watchlistExpiryDialog.dismiss();
        } else if (resource instanceof Resource.Error) {
            ShareUtil.showError$default(watchlistExpiryDialog.requireActivity(), ((Resource.Error) resource).throwable);
            watchlistExpiryDialog.dismiss();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x07d7  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0bc1  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0bce  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0128  */
    /* JADX WARN: Type inference failed for: r7v35, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r7v36, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r7v43, types: [java.util.ArrayList] */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r31, kotlin.coroutines.Continuation r32) {
        /*
            Method dump skipped, instructions count: 3188
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.ChannelFlowCollector.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public /* synthetic */ ChannelFlowCollector(int i, Object obj) {
        this.$r8$classId = i;
        this.channel = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0059, code lost:
    
        if (r6.record(r7, r1) != r8) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005b, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
    
        if (r6.emit(r7, r1) == r8) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(kotlin.collections.IndexedValue r7, kotlin.coroutines.Continuation r8) {
        /*
            r6 = this;
            java.lang.Object r0 = r6.channel
            okhttp3.Request$Builder r0 = (okhttp3.Request.Builder) r0
            boolean r1 = r8 instanceof androidx.paging.CachedPageEventFlow$job$1$1$emit$1
            if (r1 == 0) goto L17
            r1 = r8
            androidx.paging.CachedPageEventFlow$job$1$1$emit$1 r1 = (androidx.paging.CachedPageEventFlow$job$1$1$emit$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.label = r2
            goto L1c
        L17:
            androidx.paging.CachedPageEventFlow$job$1$1$emit$1 r1 = new androidx.paging.CachedPageEventFlow$job$1$1$emit$1
            r1.<init>(r6, r8)
        L1c:
            java.lang.Object r6 = r1.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r1.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3b
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            kotlin.ResultKt.throwOnFailure(r6)
            goto L5c
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L35:
            kotlin.collections.IndexedValue r7 = r1.L$0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4d
        L3b:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.Object r6 = r0.method
            kotlinx.coroutines.flow.SharedFlowImpl r6 = (kotlinx.coroutines.flow.SharedFlowImpl) r6
            r1.L$0 = r7
            r1.label = r5
            java.lang.Object r6 = r6.emit(r7, r1)
            if (r6 != r8) goto L4d
            goto L5b
        L4d:
            java.lang.Object r6 = r0.url
            okhttp3.internal.http.StatusLine r6 = (okhttp3.internal.http.StatusLine) r6
            r1.L$0 = r3
            r1.label = r4
            java.lang.Object r6 = r6.record(r7, r1)
            if (r6 != r8) goto L5c
        L5b:
            return r8
        L5c:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.ChannelFlowCollector.emit(kotlin.collections.IndexedValue, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(3:18|19|(1:21))|11|12|13))|23|6|7|(0)(0)|11|12|13) */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(androidx.paging.PageEvent r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof androidx.paging.PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.paging.PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1 r0 = (androidx.paging.PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1 r0 = new androidx.paging.PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L2e
            if (r2 != r3) goto L27
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: kotlinx.coroutines.channels.ClosedSendChannelException -> L40
            goto L40
        L27:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r4 = 0
            return r4
        L2e:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.Object r4 = r4.channel     // Catch: kotlinx.coroutines.channels.ClosedSendChannelException -> L40
            androidx.paging.SimpleProducerScopeImpl r4 = (androidx.paging.SimpleProducerScopeImpl) r4     // Catch: kotlinx.coroutines.channels.ClosedSendChannelException -> L40
            r0.label = r3     // Catch: kotlinx.coroutines.channels.ClosedSendChannelException -> L40
            kotlinx.coroutines.channels.BufferedChannel r4 = r4.channel     // Catch: kotlinx.coroutines.channels.ClosedSendChannelException -> L40
            java.lang.Object r4 = r4.send(r5, r0)     // Catch: kotlinx.coroutines.channels.ClosedSendChannelException -> L40
            if (r4 != r1) goto L40
            return r1
        L40:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.ChannelFlowCollector.emit(androidx.paging.PageEvent, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
