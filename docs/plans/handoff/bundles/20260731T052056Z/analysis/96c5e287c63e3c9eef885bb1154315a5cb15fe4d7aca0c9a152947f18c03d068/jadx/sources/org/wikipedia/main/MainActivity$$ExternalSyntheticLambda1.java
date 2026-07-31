package org.wikipedia.main;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.location.Location;
import android.os.Build;
import android.text.format.DateFormat;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.platform.ComposeView;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$1;
import androidx.fragment.app.FragmentManager$PopBackStackState;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.room.Room;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.swiperefreshlayout.widget.CircularProgressDrawable;
import coil3.SingletonImageLoader;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.disk.DiskLruCache$launchCleanup$1;
import coil3.request.ImageRequest;
import coil3.request.ImageRequestsKt;
import coil3.size.ViewSizeResolver$CC;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.snackbar.Snackbar;
import j$.time.LocalDate;
import j$.time.MonthDay;
import j$.time.format.DateTimeFormatter;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import okhttp3.Cache;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import okio.Path;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.maps.MapLibreMap;
import org.maplibre.android.maps.Style;
import org.maplibre.android.plugins.annotation.Symbol;
import org.maplibre.android.plugins.annotation.SymbolManager;
import org.maplibre.geojson.Point;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.activity.SingleWebViewActivity;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.bridge.JavaScriptActionHandler$ImageHitInfo;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.categories.CategoryDialog;
import org.wikipedia.createaccount.CreateAccountActivity;
import org.wikipedia.databinding.ActivityGalleryBinding;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.databinding.FragmentOnThisDayGamePlayBinding;
import org.wikipedia.databinding.FragmentPlacesBinding;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.dataclient.page.NearbyPage;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.descriptions.DescriptionEditFragment;
import org.wikipedia.descriptions.DescriptionEditView;
import org.wikipedia.donate.donationreminder.DonationReminderActivity;
import org.wikipedia.donate.donationreminder.DonationReminderHelper;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.gallery.GalleryActivity;
import org.wikipedia.gallery.GalleryItemFragment;
import org.wikipedia.gallery.ImageInfo;
import org.wikipedia.games.GamesHubFragment;
import org.wikipedia.games.onthisday.OnThisDayGameActivity;
import org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper;
import org.wikipedia.games.onthisday.OnThisDayGameBaseFragment;
import org.wikipedia.games.onthisday.OnThisDayGameMainMenuFragment;
import org.wikipedia.games.onthisday.OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;
import org.wikipedia.games.onthisday.OnThisDayGamePlayFragment;
import org.wikipedia.games.onthisday.OnThisDayGameProvider;
import org.wikipedia.games.onthisday.OnThisDayGameResultFragment;
import org.wikipedia.games.onthisday.OnThisDayGameResultFragment$$ExternalSyntheticLambda0;
import org.wikipedia.games.onthisday.OnThisDayGameResultFragment.RecyclerViewAdapter;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.notifications.db.Notification;
import org.wikipedia.notifications.db.NotificationDao_Impl;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.places.PlacesFragment;
import org.wikipedia.settings.AppIconDialog;
import org.wikipedia.settings.LauncherIcon;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.suggestededits.SuggestedEditsCardsFragment;
import org.wikipedia.suggestededits.SuggestedEditsImageTagEditActivity;
import org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment;
import org.wikipedia.suggestededits.SuggestedEditsItemFragment;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsActivity;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsOnboardingActivity;
import org.wikipedia.suggestededits.SuggestionsActivity;
import org.wikipedia.talk.TalkTopicViewModel$loadTopic$2;
import org.wikipedia.usercontrib.UserContribListActivity;
import org.wikipedia.util.FeedbackUtil$$ExternalSyntheticLambda1;
import org.wikipedia.util.ImageUrlUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.ShareUtil$shareImage$2;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.MarginItemDecoration;
import org.wikipedia.views.ObservableWebView;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.imageservice.DimImageTransformation;
import org.wikipedia.watchlist.WatchlistExpiry;
import org.wikipedia.watchlist.WatchlistExpiryDialog;
import org.wikipedia.watchlist.WatchlistExpiryDialogViewModel;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MainActivity$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ MainActivity$$ExternalSyntheticLambda1(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    private final Object invoke$org$wikipedia$places$PlacesFragment$$ExternalSyntheticLambda5(Object obj) {
        MapLibreMap mapLibreMap;
        Style style;
        PlacesFragment placesFragment = (PlacesFragment) this.f$0;
        Resource resource = (Resource) obj;
        String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
        if (resource instanceof Resource.Success) {
            List list = (List) ((Resource.Success) resource).data;
            ArrayDeque arrayDeque = placesFragment.annotationCache;
            SymbolManager symbolManager = placesFragment.symbolManager;
            int i = 2;
            if (symbolManager != null) {
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (true) {
                    Object obj2 = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    NearbyPage nearbyPage = (NearbyPage) next;
                    Iterator it2 = arrayDeque.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        Object next2 = it2.next();
                        if (((NearbyPage) next2).pageId == nearbyPage.pageId) {
                            obj2 = next2;
                            break;
                        }
                    }
                    if (obj2 == null) {
                        arrayList.add(next);
                    }
                }
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    NearbyPage nearbyPage2 = (NearbyPage) it3.next();
                    MultipartBody.Builder builder = new MultipartBody.Builder();
                    double d = nearbyPage2.latitude;
                    PageTitle pageTitle = nearbyPage2.pageTitle;
                    LatLng latLng = new LatLng(d, nearbyPage2.longitude);
                    builder.boundary = Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude());
                    builder.parts = PlacesFragment.MARKER_FONT_STACK;
                    builder.type = "markerDrawable";
                    nearbyPage2.annotation = symbolManager.create(builder);
                    PageTitle pageTitle2 = placesFragment.getViewModel().highlightedPageTitle;
                    String prefixedText = pageTitle2 != null ? pageTitle2.getPrefixedText() : null;
                    if (prefixedText == null) {
                        prefixedText = "";
                    }
                    if (prefixedText.equals(pageTitle.getPrefixedText())) {
                        placesFragment.setMagnifiedSymbol(nearbyPage2.annotation);
                    }
                    arrayDeque.addFirst(nearbyPage2);
                    symbolManager.update(nearbyPage2.annotation);
                    String str = pageTitle.thumbUrl;
                    Prefs prefs = Prefs.INSTANCE;
                    if (Prefs.isImageDownloadEnabled() && str != null && str.length() != 0) {
                        Context requireContext = placesFragment.requireContext();
                        UtilsKt$$ExternalSyntheticLambda1 utilsKt$$ExternalSyntheticLambda1 = new UtilsKt$$ExternalSyntheticLambda1(placesFragment, nearbyPage2, str, 26);
                        if (Okio__OkioKt._implementation == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("ImageService has not been set, call ImageService.setImplementation() before using ImageService");
                            return null;
                        }
                        ImageRequest.Builder builder2 = new ImageRequest.Builder(requireContext);
                        builder2.data = str;
                        ImageRequestsKt.transformations(builder2, new DimImageTransformation(i));
                        builder2.target = new DrawResult(utilsKt$$ExternalSyntheticLambda1);
                        SingletonImageLoader.get(requireContext).enqueue(builder2.build());
                    }
                    if (arrayDeque.size > 250) {
                        NearbyPage nearbyPage3 = (NearbyPage) arrayDeque.removeLast();
                        Symbol symbol = nearbyPage3.annotation;
                        PageTitle pageTitle3 = nearbyPage3.pageTitle;
                        symbolManager.annotations.remove(symbol.jsonObject.get("id").getAsLong());
                        symbolManager.draggableAnnotationController.getClass();
                        symbolManager.updateSource();
                        String str2 = pageTitle3.thumbUrl;
                        if (str2 != null && str2.length() != 0 && (mapLibreMap = placesFragment.mapboxMap) != null && (style = mapLibreMap.getStyle()) != null) {
                            String str3 = pageTitle3.thumbUrl;
                            str3.getClass();
                            style.removeImage(str3);
                        }
                    }
                }
            }
            FragmentPlacesBinding fragmentPlacesBinding = placesFragment._binding;
            fragmentPlacesBinding.getClass();
            fragmentPlacesBinding.listRecyclerView.setAdapter(new AppIconDialog.AppIconAdapter(placesFragment, list));
            if (list.isEmpty()) {
                Prefs prefs2 = Prefs.INSTANCE;
                if (Prefs.getPlacesLastLocationAndZoomLevel() == null) {
                    AppCompatActivity requireActivity = placesFragment.requireActivity();
                    String string = placesFragment.getString(R.string.places_empty_message_snackbar);
                    string.getClass();
                    Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                    makeSnackbar$default.setAction(R.string.dialog_close_description, new FeedbackUtil$$ExternalSyntheticLambda1(makeSnackbar$default, i));
                    makeSnackbar$default.show();
                    Location location = placesFragment.lastLocation;
                    if (location != null) {
                        Double valueOf = Double.valueOf(placesFragment.lastZoom);
                        PrefsIoUtil.setString(R.string.preference_key_places_last_location_and_zoom_level, location.getLatitude() + "|" + location.getLongitude() + "|" + valueOf);
                    }
                }
            }
        } else if (resource instanceof Resource.Error) {
            ShareUtil.showError$default(placesFragment.requireActivity(), ((Resource.Error) resource).throwable);
        }
        return Unit.INSTANCE;
    }

    private final Object invoke$org$wikipedia$settings$AppIconDialog$$ExternalSyntheticLambda0(Object obj) {
        AppIconDialog appIconDialog = (AppIconDialog) this.f$0;
        LauncherIcon launcherIcon = (LauncherIcon) obj;
        launcherIcon.getClass();
        UriUtil.submit$default(238, null, launcherIcon == LauncherIcon.DEFAULT ? "icon_deactivate_click" : "icon_activate_click", null, "setting", null);
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setString(R.string.preference_key_selected_app_icon, launcherIcon.getKey());
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Context applicationContext = Jsoup.getInstance().getApplicationContext();
        PackageManager packageManager = applicationContext.getPackageManager();
        Iterator<E> it = LauncherIcon.getEntries().iterator();
        while (true) {
            int i = 2;
            if (!it.hasNext()) {
                AwaitKt.launch$default(AwaitKt.CoroutineScope(Dispatchers.Default), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 5), null, new DiskLruCache$launchCleanup$1(7, appIconDialog.requireContext(), null), 2);
                appIconDialog.dismiss();
                Toast.makeText(appIconDialog.requireActivity(), R.string.settings_app_icon_updated, 0).show();
                return Unit.INSTANCE;
            }
            LauncherIcon launcherIcon2 = (LauncherIcon) it.next();
            ComponentName componentName = launcherIcon2.getComponentName(applicationContext);
            if (launcherIcon2 == launcherIcon) {
                i = 1;
            }
            packageManager.setComponentEnabledSetting(componentName, i, 1);
        }
    }

    private final Object invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsActivity$$ExternalSyntheticLambda0(Object obj) {
        SuggestedEditsRecentEditsActivity suggestedEditsRecentEditsActivity = (SuggestedEditsRecentEditsActivity) this.f$0;
        int i = SuggestedEditsRecentEditsActivity.$r8$clinit;
        ((FragmentManager$1) obj).getClass();
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String m = ViewSizeResolver$CC.m();
        Prefs prefs = Prefs.INSTANCE;
        EventPlatformClient.submit(new AppInteractionEvent("back", "pt_recent_changes", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
        suggestedEditsRecentEditsActivity.finish();
        return Unit.INSTANCE;
    }

    private final Object invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsOnboardingActivity$$ExternalSyntheticLambda0(Object obj) {
        SuggestedEditsRecentEditsOnboardingActivity suggestedEditsRecentEditsOnboardingActivity = (SuggestedEditsRecentEditsOnboardingActivity) this.f$0;
        int i = SuggestedEditsRecentEditsOnboardingActivity.$r8$clinit;
        ((FragmentManager$1) obj).getClass();
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String m = ViewSizeResolver$CC.m();
        Prefs prefs = Prefs.INSTANCE;
        EventPlatformClient.submit(new AppInteractionEvent("back", "pt_onboarding", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
        suggestedEditsRecentEditsOnboardingActivity.finish();
        return Unit.INSTANCE;
    }

    private final Object invoke$org$wikipedia$suggestededits$SuggestionsActivity$$ExternalSyntheticLambda0(Object obj) {
        SuggestionsActivity suggestionsActivity = (SuggestionsActivity) this.f$0;
        int i = SuggestionsActivity.$r8$clinit;
        ((FragmentManager$1) obj).getClass();
        SuggestedEditsItemFragment suggestedEditsItemFragment = ((SuggestedEditsCardsFragment) suggestionsActivity.getFragment()).topBaseChild();
        Unit unit = Unit.INSTANCE;
        if (suggestedEditsItemFragment != null && !suggestedEditsItemFragment.onBackPressed()) {
            return unit;
        }
        suggestionsActivity.finish();
        return unit;
    }

    private final Object invoke$org$wikipedia$talk$TalkTopicViewModel$loadTopic$2$$ExternalSyntheticLambda0(Object obj) {
        return Boolean.valueOf(!((Set) this.f$0).contains(((ThreadItem) obj).id));
    }

    private final Object invoke$org$wikipedia$usercontrib$UserContribListActivity$$ExternalSyntheticLambda1(Object obj) {
        UserContribListActivity userContribListActivity = (UserContribListActivity) this.f$0;
        if (((Resource) obj) instanceof Resource.Success) {
            userContribListActivity.userContribStatsAdapter.notifyItemChanged(0);
            userContribListActivity.userContribSearchBarAdapter.notifyItemChanged(0);
        } else {
            int i = UserContribListActivity.$r8$clinit;
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        GalleryItemFragment.Callback callback;
        int i;
        int i2;
        int i3;
        ColorStateList themedColorStateList;
        int i4 = this.$r8$classId;
        int i5 = 5;
        int i6 = 3;
        int i7 = 4;
        Continuation continuation = null;
        int i8 = 2;
        int i9 = 1;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$0;
        switch (i4) {
            case 0:
                MainActivity mainActivity = (MainActivity) obj2;
                int i10 = MainActivity.$r8$clinit;
                ((FragmentManager$1) obj).getClass();
                if (!((MainFragment) mainActivity.getFragment()).onBackPressed()) {
                    mainActivity.finish();
                }
                return unit;
            case 1:
                SingleWebViewActivity singleWebViewActivity = (SingleWebViewActivity) obj2;
                int i11 = SingleWebViewActivity.$r8$clinit;
                ((FragmentManager$1) obj).getClass();
                if (!singleWebViewActivity.isWebForm) {
                    DefaultSocket defaultSocket = singleWebViewActivity.binding;
                    if (defaultSocket == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    if (((ObservableWebView) defaultSocket.sink).canGoBack()) {
                        DefaultSocket defaultSocket2 = singleWebViewActivity.binding;
                        if (defaultSocket2 != null) {
                            ((ObservableWebView) defaultSocket2.sink).goBack();
                            return unit;
                        }
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                }
                singleWebViewActivity.goBack();
                return unit;
            case 2:
                CategoryDialog categoryDialog = (CategoryDialog) obj2;
                Resource resource = (Resource) obj;
                SVGAndroidRenderer sVGAndroidRenderer = categoryDialog._binding;
                sVGAndroidRenderer.getClass();
                ((ProgressBar) sVGAndroidRenderer.matrixStack).setVisibility(8);
                if (resource instanceof Resource.Success) {
                    List list = (List) ((Resource.Success) resource).data;
                    SVGAndroidRenderer sVGAndroidRenderer2 = categoryDialog._binding;
                    sVGAndroidRenderer2.getClass();
                    ((RecyclerView) sVGAndroidRenderer2.parentStack).setVisibility(!list.isEmpty() ? 0 : 8);
                    SVGAndroidRenderer sVGAndroidRenderer3 = categoryDialog._binding;
                    sVGAndroidRenderer3.getClass();
                    ((TextView) sVGAndroidRenderer3.stateStack).setVisibility(list.isEmpty() ? 0 : 8);
                    SVGAndroidRenderer sVGAndroidRenderer4 = categoryDialog._binding;
                    sVGAndroidRenderer4.getClass();
                    ((WikiErrorView) sVGAndroidRenderer4.state).setVisibility(8);
                    SVGAndroidRenderer sVGAndroidRenderer5 = categoryDialog._binding;
                    sVGAndroidRenderer5.getClass();
                    ((RecyclerView) sVGAndroidRenderer5.parentStack).setAdapter(new AppIconDialog.AppIconAdapter(i9, categoryDialog, list));
                } else if (resource instanceof Resource.Error) {
                    SVGAndroidRenderer sVGAndroidRenderer6 = categoryDialog._binding;
                    sVGAndroidRenderer6.getClass();
                    ((RecyclerView) sVGAndroidRenderer6.parentStack).setVisibility(8);
                    SVGAndroidRenderer sVGAndroidRenderer7 = categoryDialog._binding;
                    sVGAndroidRenderer7.getClass();
                    WikiErrorView wikiErrorView = (WikiErrorView) sVGAndroidRenderer7.state;
                    Throwable th = ((Resource.Error) resource).throwable;
                    int i12 = WikiErrorView.$r8$clinit;
                    wikiErrorView.setError(th, null);
                    SVGAndroidRenderer sVGAndroidRenderer8 = categoryDialog._binding;
                    sVGAndroidRenderer8.getClass();
                    ((WikiErrorView) sVGAndroidRenderer8.state).setVisibility(0);
                    L.e(th);
                }
                return unit;
            case 3:
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) obj;
                reusableGraphicsLayerScope.getClass();
                reusableGraphicsLayerScope.setAlpha(((ParcelableSnapshotMutableFloatState) obj2).getFloatValue());
                return unit;
            case 4:
                CreateAccountActivity createAccountActivity = (CreateAccountActivity) obj2;
                Pattern pattern = CreateAccountActivity.USERNAME_PATTERN;
                ((FragmentManager$1) obj).getClass();
                SVGAndroidRenderer instrument = ContextKt.getInstrument(createAccountActivity);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "back", null, null, 246);
                }
                CaptchaHandler captchaHandler = createAccountActivity.captchaHandler;
                if (captchaHandler == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                    throw null;
                }
                if (captchaHandler.isActive()) {
                    CaptchaHandler captchaHandler2 = createAccountActivity.captchaHandler;
                    if (captchaHandler2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                        throw null;
                    }
                    captchaHandler2.cancelCaptcha();
                    createAccountActivity.showProgressBar(false);
                } else {
                    Window window = createAccountActivity.getWindow();
                    window.getClass();
                    HintHandler hintHandler = new HintHandler(window.getDecorView());
                    int i13 = Build.VERSION.SDK_INT;
                    (i13 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i13 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i13 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                    createAccountActivity.finish();
                }
                return unit;
            case 5:
                DescriptionEditActivity descriptionEditActivity = (DescriptionEditActivity) obj2;
                int i14 = DescriptionEditActivity.$r8$clinit;
                ((FragmentManager$1) obj).getClass();
                OkHttpCall.AnonymousClass1 anonymousClass1 = ((DescriptionEditFragment) descriptionEditActivity.getFragment())._binding;
                anonymousClass1.getClass();
                if (((DescriptionEditView) anonymousClass1.this$0).showingReviewContent()) {
                    OkHttpCall.AnonymousClass1 anonymousClass12 = ((DescriptionEditFragment) descriptionEditActivity.getFragment())._binding;
                    anonymousClass12.getClass();
                    ((DescriptionEditView) anonymousClass12.this$0).loadReviewContent(false);
                } else {
                    Window window2 = descriptionEditActivity.getWindow();
                    window2.getClass();
                    HintHandler hintHandler2 = new HintHandler(window2.getDecorView());
                    int i15 = Build.VERSION.SDK_INT;
                    (i15 >= 35 ? new WindowInsetsControllerCompat$Impl35(window2, hintHandler2) : i15 >= 30 ? new WindowInsetsControllerCompat$Impl30(window2, hintHandler2) : i15 >= 26 ? new WindowInsetsControllerCompat$Impl26(window2, hintHandler2) : new WindowInsetsControllerCompat$Impl23(window2, hintHandler2)).hide();
                    descriptionEditActivity.finish();
                }
                return unit;
            case 6:
                DonationReminderActivity donationReminderActivity = (DonationReminderActivity) obj2;
                int i16 = DonationReminderActivity.$r8$clinit;
                ((String) obj).getClass();
                DonationReminderHelper.shouldShowSettingSnackbar = true;
                donationReminderActivity.setResult(100);
                donationReminderActivity.finish();
                return unit;
            case 7:
                Integer num = (Integer) obj;
                String quantityString = ((WikipediaApp) obj2).getResources().getQuantityString(R.plurals.donation_reminders_text_articles, num.intValue(), num);
                quantityString.getClass();
                return quantityString;
            case 8:
                GalleryActivity galleryActivity = (GalleryActivity) obj2;
                FragmentManager$1 fragmentManager$1 = (FragmentManager$1) obj;
                JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo = GalleryActivity.TRANSITION_INFO;
                fragmentManager$1.getClass();
                if (GalleryActivity.TRANSITION_INFO != null) {
                    ActivityGalleryBinding activityGalleryBinding = galleryActivity.binding;
                    if (activityGalleryBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((ImageView) activityGalleryBinding.transitionReceiver).setVisibility(0);
                }
                fragmentManager$1.setEnabled(false);
                galleryActivity.getOnBackPressedDispatcher().onBackPressed();
                return unit;
            case 9:
                GalleryItemFragment galleryItemFragment = (GalleryItemFragment) obj2;
                Bitmap bitmap = (Bitmap) obj;
                bitmap.getClass();
                if (galleryItemFragment.isAdded() && (callback = galleryItemFragment.callback()) != null) {
                    StringUtil stringUtil = StringUtil.INSTANCE;
                    String removeHTMLTags = StringUtil.removeHTMLTags(galleryItemFragment.getViewModel().imageTitle.getDisplayText());
                    PageTitle pageTitle = galleryItemFragment.getViewModel().imageTitle;
                    GalleryActivity galleryActivity2 = (GalleryActivity) callback;
                    removeHTMLTags.getClass();
                    pageTitle.getClass();
                    ImageInfo mediaInfo = galleryItemFragment.getMediaInfo();
                    if (mediaInfo != null) {
                        LifecycleCoroutineScopeImpl lifecycleScope = ViewModelKt.getLifecycleScope(galleryActivity2);
                        Pattern pattern2 = ImageUrlUtil.WIDTH_IN_IMAGE_URL_REGEX;
                        String name = new File(ImageUrlUtil.getUrlForPreferredSize(1280, mediaInfo.thumbUrl)).getName();
                        name.getClass();
                        AwaitKt.launch$default(lifecycleScope, new ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(galleryActivity2), null, new ShareUtil$shareImage$2(galleryActivity2, removeHTMLTags, pageTitle.getUri(), (Function0) null, bitmap, name, (Continuation) null), 2);
                    }
                }
                return unit;
            case 10:
                GamesHubFragment gamesHubFragment = (GamesHubFragment) obj2;
                LocalDate localDate = (LocalDate) obj;
                localDate.getClass();
                Fragment.AnonymousClass10 anonymousClass10 = gamesHubFragment.launchOnThisDayGameActivity;
                int i17 = OnThisDayGameActivity.$r8$clinit;
                AppCompatActivity requireActivity = gamesHubFragment.requireActivity();
                Constants.InvokeSource invokeSource = Constants.InvokeSource.GAMES_HUB;
                WikiSite.Companion companion = WikiSite.Companion;
                String str = gamesHubFragment.getViewModel().selectedLanguage;
                companion.getClass();
                anonymousClass10.launch(OnThisDayGameProvider.newIntent$default(requireActivity, invokeSource, WikiSite.Companion.forLanguageCode(str), localDate, 0, 16), null);
                return unit;
            case 11:
                Long l = (Long) obj;
                l.getClass();
                ((MainActivity$$ExternalSyntheticLambda1) obj2).invoke(l);
                return unit;
            case 12:
                ((OnThisDayGameArchiveCalendarHelper) obj2).handleDateSelection(((Long) obj).longValue());
                return unit;
            case IMAGE_VALUE:
                LocalDate localDate2 = (LocalDate) obj;
                localDate2.getClass();
                ((OnThisDayGameBaseFragment) obj2).onArchiveDateSelected(localDate2);
                return unit;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                OnThisDayGameMainMenuFragment onThisDayGameMainMenuFragment = (OnThisDayGameMainMenuFragment) obj2;
                Resource resource2 = (Resource) obj;
                if (resource2 instanceof Resource.Loading) {
                    FragmentNewsBinding fragmentNewsBinding = onThisDayGameMainMenuFragment._binding;
                    fragmentNewsBinding.getClass();
                    ((LinearLayout) fragmentNewsBinding.headerImageView).setVisibility(8);
                    FragmentNewsBinding fragmentNewsBinding2 = onThisDayGameMainMenuFragment._binding;
                    fragmentNewsBinding2.getClass();
                    ((ProgressBar) fragmentNewsBinding2.toolbarContainer).setVisibility(0);
                    FragmentNewsBinding fragmentNewsBinding3 = onThisDayGameMainMenuFragment._binding;
                    fragmentNewsBinding3.getClass();
                    ((WikiErrorView) fragmentNewsBinding3.gradientView).setVisibility(8);
                } else if (resource2 instanceof OnThisDayGameViewModel.GameStarted) {
                    onThisDayGameMainMenuFragment.showGameMenu();
                    FragmentNewsBinding fragmentNewsBinding4 = onThisDayGameMainMenuFragment._binding;
                    fragmentNewsBinding4.getClass();
                    ((Button) fragmentNewsBinding4.toolbar).setOnClickListener(new OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0(onThisDayGameMainMenuFragment, i7));
                } else if (resource2 instanceof OnThisDayGameViewModel.CurrentQuestion) {
                    OnThisDayGameViewModel.GameState gameState = ((OnThisDayGameViewModel.CurrentQuestion) resource2).data;
                    onThisDayGameMainMenuFragment.showGameMenu();
                    FragmentNewsBinding fragmentNewsBinding5 = onThisDayGameMainMenuFragment._binding;
                    fragmentNewsBinding5.getClass();
                    Button button = (Button) fragmentNewsBinding5.storyTextView;
                    Button button2 = (Button) fragmentNewsBinding5.toolbar;
                    ((TextView) fragmentNewsBinding5.newsStoryItemsRecyclerview).setText(onThisDayGameMainMenuFragment.getString(R.string.on_this_day_game_current_progress_message, Integer.valueOf(gameState.currentQuestionIndex + 1)));
                    String string = onThisDayGameMainMenuFragment.getString(onThisDayGameMainMenuFragment.getViewModel$2().isArchiveGame ? R.string.on_this_day_game_continue_playing_btn_text : R.string.on_this_day_game_continue_btn_text);
                    string.getClass();
                    button2.setText(string);
                    button2.setOnClickListener(new OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0(onThisDayGameMainMenuFragment, i8));
                    if (onThisDayGameMainMenuFragment.getViewModel$2().isArchiveGame) {
                        button.setVisibility(0);
                        button.setOnClickListener(new OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0(onThisDayGameMainMenuFragment, i6));
                    }
                } else if (resource2 instanceof OnThisDayGameViewModel.GameEnded) {
                    OnThisDayGameViewModel.GameState gameState2 = ((OnThisDayGameViewModel.GameEnded) resource2).data;
                    onThisDayGameMainMenuFragment.showGameMenu();
                    FragmentNewsBinding fragmentNewsBinding6 = onThisDayGameMainMenuFragment._binding;
                    fragmentNewsBinding6.getClass();
                    Button button3 = (Button) fragmentNewsBinding6.storyTextView;
                    Button button4 = (Button) fragmentNewsBinding6.toolbar;
                    List list2 = gameState2.answerState;
                    if (list2 == null || !list2.isEmpty()) {
                        Iterator it = list2.iterator();
                        i = 0;
                        while (it.hasNext()) {
                            if (((Boolean) it.next()).booleanValue() && (i = i + 1) < 0) {
                                Room.throwCountOverflow();
                                throw null;
                            }
                        }
                    } else {
                        i = 0;
                    }
                    FragmentNewsBinding fragmentNewsBinding7 = onThisDayGameMainMenuFragment._binding;
                    fragmentNewsBinding7.getClass();
                    ((TextView) fragmentNewsBinding7.newsStoryItemsRecyclerview).setText(onThisDayGameMainMenuFragment.getString(R.string.on_this_day_game_score_message, Integer.valueOf(i), Integer.valueOf(gameState2.totalQuestions)));
                    button4.setText(onThisDayGameMainMenuFragment.getString(R.string.on_this_day_game_review_results_btn_text));
                    button4.setOnClickListener(new OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0(onThisDayGameMainMenuFragment, i5));
                    button3.setVisibility(0);
                    button3.setOnClickListener(new OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0(onThisDayGameMainMenuFragment, 6));
                } else if (resource2 instanceof Resource.Error) {
                    Throwable th2 = ((Resource.Error) resource2).throwable;
                    FragmentNewsBinding fragmentNewsBinding8 = onThisDayGameMainMenuFragment._binding;
                    fragmentNewsBinding8.getClass();
                    ((WikiErrorView) fragmentNewsBinding8.gradientView).setVisibility(0);
                    FragmentNewsBinding fragmentNewsBinding9 = onThisDayGameMainMenuFragment._binding;
                    fragmentNewsBinding9.getClass();
                    ((ProgressBar) fragmentNewsBinding9.toolbarContainer).setVisibility(8);
                    FragmentNewsBinding fragmentNewsBinding10 = onThisDayGameMainMenuFragment._binding;
                    fragmentNewsBinding10.getClass();
                    ((LinearLayout) fragmentNewsBinding10.headerImageView).setVisibility(8);
                    FragmentNewsBinding fragmentNewsBinding11 = onThisDayGameMainMenuFragment._binding;
                    fragmentNewsBinding11.getClass();
                    ((WikiErrorView) fragmentNewsBinding11.gradientView).setError(th2, null);
                    FragmentNewsBinding fragmentNewsBinding12 = onThisDayGameMainMenuFragment._binding;
                    fragmentNewsBinding12.getClass();
                    ((WikiErrorView) fragmentNewsBinding12.gradientView).setIconColorFilter(Cache.Companion.getThemedColor(onThisDayGameMainMenuFragment.requireContext(), R.attr.paper_color));
                    FragmentNewsBinding fragmentNewsBinding13 = onThisDayGameMainMenuFragment._binding;
                    fragmentNewsBinding13.getClass();
                    ((WikiErrorView) fragmentNewsBinding13.gradientView).setErrorTextColor(Cache.Companion.getThemedColor(onThisDayGameMainMenuFragment.requireContext(), R.attr.paper_color));
                }
                return unit;
            case 15:
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = (OnThisDayGamePlayFragment) obj2;
                Resource resource3 = (Resource) obj;
                if (resource3 instanceof Resource.Loading) {
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding.getClass();
                    fragmentOnThisDayGamePlayBinding.errorView.setVisibility(8);
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding2 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding2.getClass();
                    fragmentOnThisDayGamePlayBinding2.scoreView.setVisibility(8);
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding3 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding3.getClass();
                    fragmentOnThisDayGamePlayBinding3.currentQuestionContainer.setVisibility(8);
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding4 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding4.getClass();
                    fragmentOnThisDayGamePlayBinding4.progressBar.setVisibility(0);
                } else if (resource3 instanceof OnThisDayGameViewModel.CurrentQuestion) {
                    OnThisDayGameViewModel.GameState gameState3 = ((OnThisDayGameViewModel.CurrentQuestion) resource3).data;
                    if (gameState3.currentQuestionIndex > 0) {
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding5 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding5.getClass();
                        CharSequence text = fragmentOnThisDayGamePlayBinding5.questionText1.getText();
                        text.getClass();
                        if (text.length() > 0) {
                            Regex$$ExternalSyntheticLambda0 regex$$ExternalSyntheticLambda0 = new Regex$$ExternalSyntheticLambda0(27, onThisDayGamePlayFragment, gameState3);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding6 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding6.getClass();
                            fragmentOnThisDayGamePlayBinding6.questionCard1.setAlpha(1.0f);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding7 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding7.getClass();
                            fragmentOnThisDayGamePlayBinding7.questionCard2.setAlpha(1.0f);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding8 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding8.getClass();
                            fragmentOnThisDayGamePlayBinding8.questionDate1.setVisibility(4);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding9 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding9.getClass();
                            fragmentOnThisDayGamePlayBinding9.questionDate2.setVisibility(4);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding10 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding10.getClass();
                            fragmentOnThisDayGamePlayBinding10.centerContent.setVisibility(4);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding11 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding11.getClass();
                            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(fragmentOnThisDayGamePlayBinding11.questionCard1, "translationX", RecyclerView.DECELERATION_RATE, Okio__OkioKt.dpToPx(-400.0f));
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding12 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding12.getClass();
                            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(fragmentOnThisDayGamePlayBinding12.questionCard1, "alpha", 1.0f, RecyclerView.DECELERATION_RATE);
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding13 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding13.getClass();
                            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(fragmentOnThisDayGamePlayBinding13.questionCard2, "translationX", RecyclerView.DECELERATION_RATE, Okio__OkioKt.dpToPx(-400.0f));
                            FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding14 = onThisDayGamePlayFragment._binding;
                            fragmentOnThisDayGamePlayBinding14.getClass();
                            ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(fragmentOnThisDayGamePlayBinding14.questionCard2, "alpha", 1.0f, RecyclerView.DECELERATION_RATE);
                            AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
                            ofFloat.setDuration(250L);
                            ofFloat.setInterpolator(accelerateInterpolator);
                            ofFloat2.setDuration(250L);
                            ofFloat2.setInterpolator(accelerateInterpolator);
                            ofFloat3.setDuration(250L);
                            ofFloat3.setStartDelay(250L);
                            ofFloat3.setInterpolator(accelerateInterpolator);
                            ofFloat4.setDuration(250L);
                            ofFloat4.setStartDelay(250L);
                            ofFloat4.setInterpolator(accelerateInterpolator);
                            AnimatorSet animatorSet = onThisDayGamePlayFragment.cardAnimatorSetOut;
                            animatorSet.removeAllListeners();
                            animatorSet.cancel();
                            animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4);
                            animatorSet.addListener(new CircularProgressDrawable.AnonymousClass2(i9, onThisDayGamePlayFragment, regex$$ExternalSyntheticLambda0));
                            animatorSet.start();
                        }
                    }
                    onThisDayGamePlayFragment.updateGameState(gameState3);
                    onThisDayGamePlayFragment.animateQuestionsIn();
                } else if (resource3 instanceof OnThisDayGameViewModel.GameStarted) {
                    onThisDayGamePlayFragment.updateGameState(((OnThisDayGameViewModel.GameStarted) resource3).data);
                    onThisDayGamePlayFragment.animateQuestionsIn();
                } else if (resource3 instanceof OnThisDayGameViewModel.CurrentQuestionCorrect) {
                    OnThisDayGameViewModel.GameState gameState4 = ((OnThisDayGameViewModel.CurrentQuestionCorrect) resource3).data;
                    onThisDayGamePlayFragment.updateGameState(gameState4);
                    onThisDayGamePlayFragment.updateQuestionEndLayout();
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding15 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding15.getClass();
                    fragmentOnThisDayGamePlayBinding15.correctIncorrectText.setText(R.string.on_this_day_game_correct);
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding16 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding16.getClass();
                    fragmentOnThisDayGamePlayBinding16.pointsText.setVisibility(0);
                    OnThisDayGameViewModel.QuestionState questionState = gameState4.currentQuestionState;
                    int i18 = questionState.event1.year;
                    int i19 = questionState.event2.year;
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding17 = onThisDayGamePlayFragment._binding;
                    if (i18 < i19) {
                        fragmentOnThisDayGamePlayBinding17.getClass();
                        fragmentOnThisDayGamePlayBinding17.questionDate1.setBackgroundResource(R.drawable.game_date_background_correct);
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding18 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding18.getClass();
                        fragmentOnThisDayGamePlayBinding18.questionDate1.setTextColor(-1);
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding19 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding19.getClass();
                        onThisDayGamePlayFragment.setCorrectIcon(fragmentOnThisDayGamePlayBinding19.questionStatusIcon1);
                    } else {
                        fragmentOnThisDayGamePlayBinding17.getClass();
                        fragmentOnThisDayGamePlayBinding17.questionDate2.setBackgroundResource(R.drawable.game_date_background_correct);
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding20 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding20.getClass();
                        fragmentOnThisDayGamePlayBinding20.questionDate2.setTextColor(-1);
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding21 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding21.getClass();
                        onThisDayGamePlayFragment.setCorrectIcon(fragmentOnThisDayGamePlayBinding21.questionStatusIcon2);
                    }
                    onThisDayGamePlayFragment.playSound("sound_completion");
                    onThisDayGamePlayFragment.enqueueGoNext(gameState4);
                } else if (resource3 instanceof OnThisDayGameViewModel.CurrentQuestionIncorrect) {
                    OnThisDayGameViewModel.GameState gameState5 = ((OnThisDayGameViewModel.CurrentQuestionIncorrect) resource3).data;
                    onThisDayGamePlayFragment.updateGameState(gameState5);
                    onThisDayGamePlayFragment.updateQuestionEndLayout();
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding22 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding22.getClass();
                    fragmentOnThisDayGamePlayBinding22.correctIncorrectText.setText(R.string.on_this_day_game_incorrect);
                    OnThisDayGameViewModel.QuestionState questionState2 = gameState5.currentQuestionState;
                    int i20 = questionState2.event1.year;
                    int i21 = questionState2.event2.year;
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding23 = onThisDayGamePlayFragment._binding;
                    if (i20 < i21) {
                        fragmentOnThisDayGamePlayBinding23.getClass();
                        fragmentOnThisDayGamePlayBinding23.questionDate1.setBackgroundResource(R.drawable.game_date_background_correct);
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding24 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding24.getClass();
                        fragmentOnThisDayGamePlayBinding24.questionDate2.setBackgroundResource(R.drawable.game_date_background_incorrect);
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding25 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding25.getClass();
                        onThisDayGamePlayFragment.setCorrectIcon(fragmentOnThisDayGamePlayBinding25.questionStatusIcon1);
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding26 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding26.getClass();
                        ImageView imageView = fragmentOnThisDayGamePlayBinding26.questionStatusIcon2;
                        imageView.setImageResource(R.drawable.ic_cancel_24px);
                        imageView.setImageTintList(Cache.Companion.getThemedColorStateList(onThisDayGamePlayFragment.requireContext(), R.attr.destructive_color));
                        imageView.setVisibility(0);
                    } else {
                        fragmentOnThisDayGamePlayBinding23.getClass();
                        fragmentOnThisDayGamePlayBinding23.questionDate1.setBackgroundResource(R.drawable.game_date_background_incorrect);
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding27 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding27.getClass();
                        fragmentOnThisDayGamePlayBinding27.questionDate2.setBackgroundResource(R.drawable.game_date_background_correct);
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding28 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding28.getClass();
                        ImageView imageView2 = fragmentOnThisDayGamePlayBinding28.questionStatusIcon1;
                        imageView2.setImageResource(R.drawable.ic_cancel_24px);
                        imageView2.setImageTintList(Cache.Companion.getThemedColorStateList(onThisDayGamePlayFragment.requireContext(), R.attr.destructive_color));
                        imageView2.setVisibility(0);
                        FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding29 = onThisDayGamePlayFragment._binding;
                        fragmentOnThisDayGamePlayBinding29.getClass();
                        onThisDayGamePlayFragment.setCorrectIcon(fragmentOnThisDayGamePlayBinding29.questionStatusIcon2);
                    }
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding30 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding30.getClass();
                    fragmentOnThisDayGamePlayBinding30.questionDate1.setTextColor(-1);
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding31 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding31.getClass();
                    fragmentOnThisDayGamePlayBinding31.questionDate2.setTextColor(-1);
                    onThisDayGamePlayFragment.playSound("sound_error");
                    onThisDayGamePlayFragment.enqueueGoNext(gameState5);
                } else if (resource3 instanceof OnThisDayGameViewModel.GameEnded) {
                    OnThisDayGameActivity onThisDayGameActivity = onThisDayGamePlayFragment.mainActivity;
                    if (onThisDayGameActivity != null) {
                        BackStackRecord backStackRecord = new BackStackRecord(onThisDayGameActivity.getSupportFragmentManager());
                        Constants.InvokeSource invokeSource2 = onThisDayGamePlayFragment.getViewModel$4().invokeSource;
                        invokeSource2.getClass();
                        OnThisDayGameResultFragment onThisDayGameResultFragment = new OnThisDayGameResultFragment();
                        onThisDayGameResultFragment.setArguments(UStringsKt.bundleOf(new Pair("invokeSource", invokeSource2)));
                        backStackRecord.doAddOp(R.id.fragmentContainer, onThisDayGameResultFragment, null, 1);
                        backStackRecord.commit();
                    }
                    OnThisDayGameActivity onThisDayGameActivity2 = onThisDayGamePlayFragment.mainActivity;
                    if (onThisDayGameActivity2 != null) {
                        onThisDayGameActivity2.setResult(-1, new Intent().putExtra("onThisDayGameCompleted", true));
                    }
                    onThisDayGamePlayFragment.playSound("sound_logo");
                } else if (resource3 instanceof Resource.Error) {
                    Throwable th3 = ((Resource.Error) resource3).throwable;
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding32 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding32.getClass();
                    fragmentOnThisDayGamePlayBinding32.progressBar.setVisibility(8);
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding33 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding33.getClass();
                    fragmentOnThisDayGamePlayBinding33.scoreView.setVisibility(8);
                    OnThisDayGameActivity onThisDayGameActivity3 = onThisDayGamePlayFragment.mainActivity;
                    if (onThisDayGameActivity3 != null) {
                        Request.Builder builder = onThisDayGameActivity3.binding;
                        if (builder == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((TextView) builder.headers).setVisibility(8);
                    }
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding34 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding34.getClass();
                    fragmentOnThisDayGamePlayBinding34.currentQuestionContainer.setVisibility(8);
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding35 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding35.getClass();
                    fragmentOnThisDayGamePlayBinding35.errorView.setVisibility(0);
                    FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding36 = onThisDayGamePlayFragment._binding;
                    fragmentOnThisDayGamePlayBinding36.getClass();
                    fragmentOnThisDayGamePlayBinding36.errorView.setError(th3, null);
                }
                return unit;
            case LAZY_VERTICAL_GRID_VALUE:
                OnThisDayGameResultFragment onThisDayGameResultFragment2 = (OnThisDayGameResultFragment) obj2;
                Resource resource4 = (Resource) obj;
                if (resource4 instanceof Resource.Loading) {
                    onThisDayGameResultFragment2.updateOnLoading$1();
                } else if (resource4 instanceof Resource.Error) {
                    Throwable th4 = ((Resource.Error) resource4).throwable;
                    ItemNotificationBinding itemNotificationBinding = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding.getClass();
                    ((LinearProgressIndicator) itemNotificationBinding.notificationItemImage).setVisibility(8);
                    ItemNotificationBinding itemNotificationBinding2 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding2.getClass();
                    ((NestedScrollView) itemNotificationBinding2.notificationWikiCodeImage).setVisibility(8);
                    ItemNotificationBinding itemNotificationBinding3 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding3.getClass();
                    ((WikiErrorView) itemNotificationBinding3.notificationTime).setVisibility(0);
                    ItemNotificationBinding itemNotificationBinding4 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding4.getClass();
                    ((WikiErrorView) itemNotificationBinding4.notificationTime).setError(th4, null);
                } else if (resource4 instanceof OnThisDayGameViewModel.GameEnded) {
                    OnThisDayGameViewModel.GameEnded gameEnded = (OnThisDayGameViewModel.GameEnded) resource4;
                    OnThisDayGameViewModel.GameState gameState6 = gameEnded.data;
                    OnThisDayGameViewModel.GameStatistics gameStatistics = gameEnded.gameStatistics;
                    OnThisDayGameActivity onThisDayGameActivity4 = onThisDayGameResultFragment2.mainActivity;
                    if (onThisDayGameActivity4 != null) {
                        onThisDayGameActivity4.showAppBarDateText();
                    }
                    String format = MonthDay.of(onThisDayGameResultFragment2.getViewModel$3().currentDate.getMonthValue(), onThisDayGameResultFragment2.getViewModel$3().currentDate.getDayOfMonth()).format(DateTimeFormatter.ofPattern(DateFormat.getBestDateTimePattern(Locale.getDefault(), "MMMM d")));
                    OnThisDayGameActivity onThisDayGameActivity5 = onThisDayGameResultFragment2.mainActivity;
                    if (onThisDayGameActivity5 != null) {
                        format.getClass();
                        Request.Builder builder2 = onThisDayGameActivity5.binding;
                        if (builder2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((TextView) builder2.headers).setText(format);
                    }
                    ItemNotificationBinding itemNotificationBinding5 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding5.getClass();
                    ((LinearProgressIndicator) itemNotificationBinding5.notificationItemImage).setVisibility(8);
                    ItemNotificationBinding itemNotificationBinding6 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding6.getClass();
                    ((WikiErrorView) itemNotificationBinding6.notificationTime).setVisibility(8);
                    ItemNotificationBinding itemNotificationBinding7 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding7.getClass();
                    ((NestedScrollView) itemNotificationBinding7.notificationWikiCodeImage).setVisibility(0);
                    List list3 = gameState6.answerState;
                    int i22 = gameState6.totalQuestions;
                    if (list3 == null || !list3.isEmpty()) {
                        Iterator it2 = list3.iterator();
                        i2 = 0;
                        while (it2.hasNext()) {
                            if (((Boolean) it2.next()).booleanValue() && (i2 = i2 + 1) < 0) {
                                Room.throwCountOverflow();
                                throw null;
                            }
                        }
                    } else {
                        i2 = 0;
                    }
                    ItemNotificationBinding itemNotificationBinding8 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding8.getClass();
                    ((TextView) itemNotificationBinding8.notificationSource).setText(onThisDayGameResultFragment2.getString(R.string.on_this_day_game_result, Integer.valueOf(i2), Integer.valueOf(i22)));
                    int i23 = (i2 == 0 || i2 == 1 || i2 == 2) ? R.color.yellow500 : (i2 == 3 || i2 == 4) ? R.color.orange500 : R.color.green600;
                    ItemNotificationBinding itemNotificationBinding9 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding9.getClass();
                    ((LinearLayout) itemNotificationBinding9.notificationOverflowMenu).setBackgroundColor(onThisDayGameResultFragment2.requireContext().getColor(i23));
                    ItemNotificationBinding itemNotificationBinding10 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding10.getClass();
                    ((ComposeView) itemNotificationBinding10.notificationTitle).setContent(new ComposableLambdaImpl(new OnThisDayGameResultFragment$$ExternalSyntheticLambda0(gameStatistics, onThisDayGameResultFragment2, r2), true, -968093979));
                    ItemNotificationBinding itemNotificationBinding11 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding11.getClass();
                    ((RecyclerView) itemNotificationBinding11.notificationItemSelectedImage).setLayoutManager(new StaggeredGridLayoutManager(2));
                    ItemNotificationBinding itemNotificationBinding12 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding12.getClass();
                    RecyclerView recyclerView = (RecyclerView) itemNotificationBinding12.notificationItemSelectedImage;
                    AppCompatActivity requireActivity2 = onThisDayGameResultFragment2.requireActivity();
                    recyclerView.addItemDecoration(new MarginItemDecoration(requireActivity2.getResources().getDimensionPixelSize(R.dimen.view_list_card_margin_horizontal), requireActivity2.getResources().getDimensionPixelSize(R.dimen.view_list_card_margin_horizontal), requireActivity2.getResources().getDimensionPixelSize(R.dimen.view_list_card_margin_horizontal), requireActivity2.getResources().getDimensionPixelSize(R.dimen.view_list_card_margin_horizontal)));
                    ItemNotificationBinding itemNotificationBinding13 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding13.getClass();
                    ((RecyclerView) itemNotificationBinding13.notificationItemSelectedImage).setNestedScrollingEnabled(false);
                    ItemNotificationBinding itemNotificationBinding14 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding14.getClass();
                    ((RecyclerView) itemNotificationBinding14.notificationItemSelectedImage).setAdapter(onThisDayGameResultFragment2.new RecyclerViewAdapter(onThisDayGameResultFragment2.getViewModel$3().getArticlesMentioned()));
                    ArrayList articlesMentioned = onThisDayGameResultFragment2.getViewModel$3().getArticlesMentioned();
                    if (list3 == null || !list3.isEmpty()) {
                        Iterator it3 = list3.iterator();
                        i3 = 0;
                        while (it3.hasNext()) {
                            if (((Boolean) it3.next()).booleanValue() && (i3 = i3 + 1) < 0) {
                                Room.throwCountOverflow();
                                throw null;
                            }
                        }
                    } else {
                        i3 = 0;
                    }
                    onThisDayGameResultFragment2.loadedImagesForShare = 0;
                    ItemNotificationBinding itemNotificationBinding15 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding15.getClass();
                    ((TextView) ((SVGAndroidRenderer) itemNotificationBinding15.notificationWikiCodeContainer).matrixStack).setText(onThisDayGameResultFragment2.getString(R.string.on_this_day_game_share_screen_title, Integer.valueOf(i3), Integer.valueOf(i22)));
                    int roundedDpToPx = Okio__OkioKt.roundedDpToPx(20.0f);
                    ArrayList arrayList = new ArrayList();
                    for (int i24 = 0; i24 < i22; i24++) {
                        int generateViewId = View.generateViewId();
                        ImageView imageView3 = new ImageView(onThisDayGameResultFragment2.requireContext());
                        arrayList.add(imageView3);
                        imageView3.setLayoutParams(new ViewGroup.LayoutParams(roundedDpToPx, roundedDpToPx));
                        int roundedDpToPx2 = Okio__OkioKt.roundedDpToPx(1.0f);
                        imageView3.setPadding(roundedDpToPx2, roundedDpToPx2, roundedDpToPx2, roundedDpToPx2);
                        imageView3.setBackgroundResource(R.drawable.shape_circle);
                        if (Intrinsics.areEqual(CollectionsKt.getOrNull(list3, i24), Boolean.TRUE)) {
                            imageView3.setImageResource(R.drawable.ic_check_black_24dp);
                            themedColorStateList = Cache.Companion.getThemedColorStateList(onThisDayGameResultFragment2.requireContext(), R.attr.success_color);
                        } else {
                            imageView3.setImageResource(R.drawable.ic_close_black_24dp);
                            themedColorStateList = Cache.Companion.getThemedColorStateList(onThisDayGameResultFragment2.requireContext(), R.attr.destructive_color);
                        }
                        imageView3.setBackgroundTintList(themedColorStateList);
                        imageView3.setImageTintList(ColorStateList.valueOf(-1));
                        imageView3.setId(generateViewId);
                        ItemNotificationBinding itemNotificationBinding16 = onThisDayGameResultFragment2._binding;
                        itemNotificationBinding16.getClass();
                        ((ConstraintLayout) ((SVGAndroidRenderer) itemNotificationBinding16.notificationWikiCodeContainer).state).addView(imageView3);
                    }
                    ItemNotificationBinding itemNotificationBinding17 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding17.getClass();
                    Flow flow = (Flow) ((SVGAndroidRenderer) itemNotificationBinding17.notificationWikiCodeContainer).document;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                    Iterator it4 = arrayList.iterator();
                    while (it4.hasNext()) {
                        arrayList2.add(Integer.valueOf(((ImageView) it4.next()).getId()));
                    }
                    flow.setReferencedIds(CollectionsKt.toIntArray(arrayList2));
                    ItemNotificationBinding itemNotificationBinding18 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding18.getClass();
                    RecyclerView recyclerView2 = (RecyclerView) ((SVGAndroidRenderer) itemNotificationBinding18.notificationWikiCodeContainer).stateStack;
                    onThisDayGameResultFragment2.requireContext();
                    recyclerView2.setLayoutManager(new LinearLayoutManager(1));
                    ItemNotificationBinding itemNotificationBinding19 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding19.getClass();
                    ((RecyclerView) ((SVGAndroidRenderer) itemNotificationBinding19.notificationWikiCodeContainer).stateStack).setNestedScrollingEnabled(false);
                    ItemNotificationBinding itemNotificationBinding20 = onThisDayGameResultFragment2._binding;
                    itemNotificationBinding20.getClass();
                    RecyclerView recyclerView3 = (RecyclerView) ((SVGAndroidRenderer) itemNotificationBinding20.notificationWikiCodeContainer).stateStack;
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it5 = articlesMentioned.iterator();
                    while (it5.hasNext()) {
                        Object next = it5.next();
                        String thumbnailUrl = ((PageSummary) next).getThumbnailUrl();
                        if (thumbnailUrl != null && thumbnailUrl.length() != 0) {
                            arrayList3.add(next);
                        }
                    }
                    ArrayList arrayList4 = new ArrayList();
                    Iterator it6 = arrayList3.iterator();
                    while (it6.hasNext()) {
                        Object next2 = it6.next();
                        int i25 = r2 + 1;
                        if (r2 < 0) {
                            Room.throwIndexOverflow();
                            throw null;
                        }
                        if (r2 % 2 == 0) {
                            arrayList4.add(next2);
                        }
                        r2 = i25;
                    }
                    recyclerView3.setAdapter(new AppIconDialog.AppIconAdapter(i7, onThisDayGameResultFragment2, CollectionsKt.take(arrayList4, 5)));
                } else {
                    FragmentManagerImpl supportFragmentManager = onThisDayGameResultFragment2.requireActivity().getSupportFragmentManager();
                    supportFragmentManager.enqueueAction(new FragmentManager$PopBackStackState(supportFragmentManager, -1, 0), false);
                }
                return unit;
            case VERTICAL_GRID_ITEM_VALUE:
                String str2 = (String) obj;
                str2.getClass();
                String appLanguageLocalizedName = ((AppLanguageState) obj2).getAppLanguageLocalizedName(str2);
                return appLanguageLocalizedName == null ? "" : appLanguageLocalizedName;
            case RADIO_GROUP_VALUE:
                LoginActivity loginActivity = (LoginActivity) obj2;
                int i26 = LoginActivity.$r8$clinit;
                ((FragmentManager$1) obj).getClass();
                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(loginActivity);
                if (instrument2 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "back", null, null, 246);
                }
                loginActivity.finish();
                return unit;
            case RADIO_BUTTON_VALUE:
                NotificationDao_Impl notificationDao_Impl = (NotificationDao_Impl) obj2;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM Notification");
                try {
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "wiki");
                    int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare, "read");
                    int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare, "category");
                    int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare, "type");
                    int columnIndexOrThrow6 = UnsignedKt.getColumnIndexOrThrow(prepare, "revid");
                    int columnIndexOrThrow7 = UnsignedKt.getColumnIndexOrThrow(prepare, "title");
                    int columnIndexOrThrow8 = UnsignedKt.getColumnIndexOrThrow(prepare, "agent");
                    int columnIndexOrThrow9 = UnsignedKt.getColumnIndexOrThrow(prepare, "timestamp");
                    int columnIndexOrThrow10 = UnsignedKt.getColumnIndexOrThrow(prepare, "contents");
                    ArrayList arrayList5 = new ArrayList();
                    while (prepare.step()) {
                        long j = prepare.getLong(columnIndexOrThrow);
                        String text2 = prepare.getText(columnIndexOrThrow2);
                        String text3 = prepare.isNull(columnIndexOrThrow3) ? null : prepare.getText(columnIndexOrThrow3);
                        String text4 = prepare.getText(columnIndexOrThrow4);
                        String text5 = prepare.getText(columnIndexOrThrow5);
                        long j2 = prepare.getLong(columnIndexOrThrow6);
                        String text6 = prepare.isNull(columnIndexOrThrow7) ? null : prepare.getText(columnIndexOrThrow7);
                        Path.Companion companion2 = notificationDao_Impl.__notificationTypeConverters;
                        arrayList5.add(new Notification(j, text2, text3, text4, text5, j2, Path.Companion.stringToTitle(text6), Path.Companion.stringToAgent(prepare.isNull(columnIndexOrThrow8) ? null : prepare.getText(columnIndexOrThrow8)), Path.Companion.stringToTimestamp(prepare.isNull(columnIndexOrThrow9) ? null : prepare.getText(columnIndexOrThrow9)), Path.Companion.stringToContents(prepare.isNull(columnIndexOrThrow10) ? null : prepare.getText(columnIndexOrThrow10))));
                    }
                    return arrayList5;
                } finally {
                    prepare.close();
                }
            case RADIO_ROW_VALUE:
                EditHistoryListActivity editHistoryListActivity = (EditHistoryListActivity) obj2;
                editHistoryListActivity.editHistoryStatsAdapter.notifyItemChanged(0);
                editHistoryListActivity.editHistorySearchBarAdapter.notifyItemChanged(0);
                return unit;
            case RADIO_COLUMN_VALUE:
                return invoke$org$wikipedia$places$PlacesFragment$$ExternalSyntheticLambda5(obj);
            case SIZE_BOX_VALUE:
                return invoke$org$wikipedia$settings$AppIconDialog$$ExternalSyntheticLambda0(obj);
            case 23:
                SuggestedEditsImageTagEditActivity suggestedEditsImageTagEditActivity = (SuggestedEditsImageTagEditActivity) obj2;
                int i27 = SuggestedEditsImageTagEditActivity.$r8$clinit;
                ((FragmentManager$1) obj).getClass();
                SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment = suggestedEditsImageTagEditActivity.suggestedEditsImageTagsFragment;
                if (suggestedEditsImageTagsFragment == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("suggestedEditsImageTagsFragment");
                    throw null;
                }
                if (suggestedEditsImageTagsFragment.onBackPressed()) {
                    suggestedEditsImageTagEditActivity.finish();
                }
                return unit;
            case 24:
                return invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsActivity$$ExternalSyntheticLambda0(obj);
            case 25:
                return invoke$org$wikipedia$suggestededits$SuggestedEditsRecentEditsOnboardingActivity$$ExternalSyntheticLambda0(obj);
            case 26:
                return invoke$org$wikipedia$suggestededits$SuggestionsActivity$$ExternalSyntheticLambda0(obj);
            case 27:
                return invoke$org$wikipedia$talk$TalkTopicViewModel$loadTopic$2$$ExternalSyntheticLambda0(obj);
            case 28:
                return invoke$org$wikipedia$usercontrib$UserContribListActivity$$ExternalSyntheticLambda1(obj);
            default:
                WatchlistExpiry watchlistExpiry = (WatchlistExpiry) obj;
                watchlistExpiry.getClass();
                WatchlistExpiryDialogViewModel watchlistExpiryDialogViewModel = (WatchlistExpiryDialogViewModel) ((WatchlistExpiryDialog) obj2).viewModel$delegate.getValue();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(watchlistExpiryDialogViewModel), watchlistExpiryDialogViewModel.handler, null, new TalkTopicViewModel$loadTopic$2(watchlistExpiryDialogViewModel, watchlistExpiry, continuation, i8), 2);
                return unit;
        }
    }
}
