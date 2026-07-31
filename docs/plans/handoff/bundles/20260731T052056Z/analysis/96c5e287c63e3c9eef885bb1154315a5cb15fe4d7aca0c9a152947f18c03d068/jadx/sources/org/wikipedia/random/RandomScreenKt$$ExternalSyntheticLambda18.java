package org.wikipedia.random;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.collection.internal.Lock;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextFieldDefaults;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.painter.BrushPainter;
import androidx.compose.ui.graphics.painter.ColorPainter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt$NavHost$29$1$1$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.Operation$State;
import coil3.compose.AsyncImageKt;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import java.io.Serializable;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Cookie;
import okio.ByteString;
import okio.Okio__OkioKt;
import okio.Options;
import org.jsoup.Jsoup;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.growthtasks.GrowthUserImpact;
import org.wikipedia.donate.donationreminder.DonationReminderDropDownMenuItem;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.events.NewRecommendedReadingListEvent;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda5;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda30;
import org.wikipedia.feed.personalization.PersonalizationActivity;
import org.wikipedia.feed.personalization.PersonalizationScreenKt;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceContent;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceScreenKt;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.feed.random.RandomModuleKt$$ExternalSyntheticLambda7;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.notifications.NotificationPollBroadcastReceiver;
import org.wikipedia.onboarding.InitialOnboardingActivity;
import org.wikipedia.onboarding.InitialOnboardingScreenKt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsState;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;
import org.wikipedia.readinglist.recommended.RecommendedReadingListUpdateFrequency;
import org.wikipedia.search.NoSearchResultsKt;
import org.wikipedia.search.SearchResult;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt;
import org.wikipedia.settings.homefeed.HomeFeedSettingsStartDestination;
import org.wikipedia.settings.homefeed.ModulesViewModel;
import org.wikipedia.settings.languages.WikipediaLanguagesActivity;
import org.wikipedia.talk.TalkTopicsViewModel$subscribeTopic$1;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.ImageUrlUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UiState;
import org.wikipedia.wiktionary.WiktionaryDialogScreenKt$$ExternalSyntheticLambda6;
import org.wikipedia.yearinreview.YearInReviewDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RandomScreenKt$$ExternalSyntheticLambda18 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda18(Modifier modifier, Function0 function0, Function1 function1, int i) {
        this.$r8$classId = 21;
        this.f$1 = modifier;
        this.f$2 = function0;
        this.f$0 = function1;
    }

    private final Object invoke$org$wikipedia$readinglist$recommended$RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda3(Object obj, Object obj2) {
        final RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity = (RecommendedReadingListSettingsActivity) this.f$0;
        State state = (State) this.f$1;
        State state2 = (State) this.f$2;
        GapComposer gapComposer = (GapComposer) obj;
        int intValue = ((Integer) obj2).intValue();
        int i = RecommendedReadingListSettingsActivity.$r8$clinit;
        final int i2 = 0;
        final int i3 = 1;
        final int i4 = 2;
        if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
            RecommendedReadingListSettingsState recommendedReadingListSettingsState = (RecommendedReadingListSettingsState) state2.getValue();
            Resource resource = (Resource) state.getValue();
            Modifier imePadding = OffsetKt.imePadding(OffsetKt.safeDrawingPadding(SizeKt.FillWholeMaxSize));
            boolean changedInstance = gapComposer.changedInstance(recommendedReadingListSettingsActivity);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (changedInstance || rememberedValue == neverEqualPolicy) {
                rememberedValue = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i5 = i2;
                        Unit unit = Unit.INSTANCE;
                        RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity2 = recommendedReadingListSettingsActivity;
                        switch (i5) {
                            case 0:
                                int i6 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                RecommendedReadingListSettingsViewModel viewModel = recommendedReadingListSettingsActivity2.getViewModel();
                                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel), null, new SyntaxHighlighter.AnonymousClass2(12, viewModel, (Continuation) null), 2);
                                break;
                            case 1:
                                int i7 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                recommendedReadingListSettingsActivity2.getOnBackPressedDispatcher().onBackPressed();
                                break;
                            case 2:
                                int i8 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                recommendedReadingListSettingsActivity2.getOnBackPressedDispatcher().onBackPressed();
                                break;
                            case 3:
                                int i9 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                Prefs prefs = Prefs.INSTANCE;
                                WikiGamesEvent.submit$default("built_click", "discover_settings", null, null, null, null, Prefs.getRecommendedReadingListSource().getEventString(), null, 444);
                                recommendedReadingListSettingsActivity2.currentRecommendedReadingListSource = Prefs.getRecommendedReadingListSource();
                                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = recommendedReadingListSettingsActivity2.recommendedReadingListSourceLauncher;
                                Intent intent = new Intent(recommendedReadingListSettingsActivity2, (Class<?>) RecommendedReadingListOnboardingActivity.class);
                                intent.putExtra("startFromSourceSelection", true);
                                intent.putExtra("fromSettings", true);
                                activityResultRegistry$register$2.launch(intent, null);
                                break;
                            default:
                                int i10 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default("interests_click", "discover_settings", null, null, null, null, null, null, 508);
                                ActivityResultRegistry$register$2 activityResultRegistry$register$22 = recommendedReadingListSettingsActivity2.recommendedReadingListInterestsLauncher;
                                Intent intent2 = new Intent(recommendedReadingListSettingsActivity2, (Class<?>) RecommendedReadingListOnboardingActivity.class);
                                intent2.putExtra("startFromSourceSelection", false);
                                intent2.putExtra("fromSettings", true);
                                activityResultRegistry$register$22.launch(intent2, null);
                                break;
                        }
                        return unit;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function0 function0 = (Function0) rememberedValue;
            boolean changedInstance2 = gapComposer.changedInstance(recommendedReadingListSettingsActivity);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i5 = i4;
                        Unit unit = Unit.INSTANCE;
                        RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity2 = recommendedReadingListSettingsActivity;
                        switch (i5) {
                            case 0:
                                int i6 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                RecommendedReadingListSettingsViewModel viewModel = recommendedReadingListSettingsActivity2.getViewModel();
                                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel), null, new SyntaxHighlighter.AnonymousClass2(12, viewModel, (Continuation) null), 2);
                                break;
                            case 1:
                                int i7 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                recommendedReadingListSettingsActivity2.getOnBackPressedDispatcher().onBackPressed();
                                break;
                            case 2:
                                int i8 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                recommendedReadingListSettingsActivity2.getOnBackPressedDispatcher().onBackPressed();
                                break;
                            case 3:
                                int i9 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                Prefs prefs = Prefs.INSTANCE;
                                WikiGamesEvent.submit$default("built_click", "discover_settings", null, null, null, null, Prefs.getRecommendedReadingListSource().getEventString(), null, 444);
                                recommendedReadingListSettingsActivity2.currentRecommendedReadingListSource = Prefs.getRecommendedReadingListSource();
                                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = recommendedReadingListSettingsActivity2.recommendedReadingListSourceLauncher;
                                Intent intent = new Intent(recommendedReadingListSettingsActivity2, (Class<?>) RecommendedReadingListOnboardingActivity.class);
                                intent.putExtra("startFromSourceSelection", true);
                                intent.putExtra("fromSettings", true);
                                activityResultRegistry$register$2.launch(intent, null);
                                break;
                            default:
                                int i10 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default("interests_click", "discover_settings", null, null, null, null, null, null, 508);
                                ActivityResultRegistry$register$2 activityResultRegistry$register$22 = recommendedReadingListSettingsActivity2.recommendedReadingListInterestsLauncher;
                                Intent intent2 = new Intent(recommendedReadingListSettingsActivity2, (Class<?>) RecommendedReadingListOnboardingActivity.class);
                                intent2.putExtra("startFromSourceSelection", false);
                                intent2.putExtra("fromSettings", true);
                                activityResultRegistry$register$22.launch(intent2, null);
                                break;
                        }
                        return unit;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            WikiErrorClickEvents wikiErrorClickEvents = new WikiErrorClickEvents(function0, (Function0) rememberedValue2, null, 12);
            boolean changed = gapComposer.changed(state) | gapComposer.changedInstance(recommendedReadingListSettingsActivity);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new Regex$$ExternalSyntheticLambda0(29, recommendedReadingListSettingsActivity, state);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Function0 function02 = (Function0) rememberedValue3;
            boolean changedInstance3 = gapComposer.changedInstance(recommendedReadingListSettingsActivity);
            Object rememberedValue4 = gapComposer.rememberedValue();
            final int i5 = 3;
            if (changedInstance3 || rememberedValue4 == neverEqualPolicy) {
                rememberedValue4 = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i52 = i5;
                        Unit unit = Unit.INSTANCE;
                        RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity2 = recommendedReadingListSettingsActivity;
                        switch (i52) {
                            case 0:
                                int i6 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                RecommendedReadingListSettingsViewModel viewModel = recommendedReadingListSettingsActivity2.getViewModel();
                                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel), null, new SyntaxHighlighter.AnonymousClass2(12, viewModel, (Continuation) null), 2);
                                break;
                            case 1:
                                int i7 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                recommendedReadingListSettingsActivity2.getOnBackPressedDispatcher().onBackPressed();
                                break;
                            case 2:
                                int i8 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                recommendedReadingListSettingsActivity2.getOnBackPressedDispatcher().onBackPressed();
                                break;
                            case 3:
                                int i9 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                Prefs prefs = Prefs.INSTANCE;
                                WikiGamesEvent.submit$default("built_click", "discover_settings", null, null, null, null, Prefs.getRecommendedReadingListSource().getEventString(), null, 444);
                                recommendedReadingListSettingsActivity2.currentRecommendedReadingListSource = Prefs.getRecommendedReadingListSource();
                                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = recommendedReadingListSettingsActivity2.recommendedReadingListSourceLauncher;
                                Intent intent = new Intent(recommendedReadingListSettingsActivity2, (Class<?>) RecommendedReadingListOnboardingActivity.class);
                                intent.putExtra("startFromSourceSelection", true);
                                intent.putExtra("fromSettings", true);
                                activityResultRegistry$register$2.launch(intent, null);
                                break;
                            default:
                                int i10 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default("interests_click", "discover_settings", null, null, null, null, null, null, 508);
                                ActivityResultRegistry$register$2 activityResultRegistry$register$22 = recommendedReadingListSettingsActivity2.recommendedReadingListInterestsLauncher;
                                Intent intent2 = new Intent(recommendedReadingListSettingsActivity2, (Class<?>) RecommendedReadingListOnboardingActivity.class);
                                intent2.putExtra("startFromSourceSelection", false);
                                intent2.putExtra("fromSettings", true);
                                activityResultRegistry$register$22.launch(intent2, null);
                                break;
                        }
                        return unit;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Function0 function03 = (Function0) rememberedValue4;
            boolean changedInstance4 = gapComposer.changedInstance(recommendedReadingListSettingsActivity);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changedInstance4 || rememberedValue5 == neverEqualPolicy) {
                final int i6 = 4;
                rememberedValue5 = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i52 = i6;
                        Unit unit = Unit.INSTANCE;
                        RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity2 = recommendedReadingListSettingsActivity;
                        switch (i52) {
                            case 0:
                                int i62 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                RecommendedReadingListSettingsViewModel viewModel = recommendedReadingListSettingsActivity2.getViewModel();
                                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel), null, new SyntaxHighlighter.AnonymousClass2(12, viewModel, (Continuation) null), 2);
                                break;
                            case 1:
                                int i7 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                recommendedReadingListSettingsActivity2.getOnBackPressedDispatcher().onBackPressed();
                                break;
                            case 2:
                                int i8 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                recommendedReadingListSettingsActivity2.getOnBackPressedDispatcher().onBackPressed();
                                break;
                            case 3:
                                int i9 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                Prefs prefs = Prefs.INSTANCE;
                                WikiGamesEvent.submit$default("built_click", "discover_settings", null, null, null, null, Prefs.getRecommendedReadingListSource().getEventString(), null, 444);
                                recommendedReadingListSettingsActivity2.currentRecommendedReadingListSource = Prefs.getRecommendedReadingListSource();
                                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = recommendedReadingListSettingsActivity2.recommendedReadingListSourceLauncher;
                                Intent intent = new Intent(recommendedReadingListSettingsActivity2, (Class<?>) RecommendedReadingListOnboardingActivity.class);
                                intent.putExtra("startFromSourceSelection", true);
                                intent.putExtra("fromSettings", true);
                                activityResultRegistry$register$2.launch(intent, null);
                                break;
                            default:
                                int i10 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default("interests_click", "discover_settings", null, null, null, null, null, null, 508);
                                ActivityResultRegistry$register$2 activityResultRegistry$register$22 = recommendedReadingListSettingsActivity2.recommendedReadingListInterestsLauncher;
                                Intent intent2 = new Intent(recommendedReadingListSettingsActivity2, (Class<?>) RecommendedReadingListOnboardingActivity.class);
                                intent2.putExtra("startFromSourceSelection", false);
                                intent2.putExtra("fromSettings", true);
                                activityResultRegistry$register$22.launch(intent2, null);
                                break;
                        }
                        return unit;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            Function0 function04 = (Function0) rememberedValue5;
            boolean changedInstance5 = gapComposer.changedInstance(recommendedReadingListSettingsActivity);
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (changedInstance5 || rememberedValue6 == neverEqualPolicy) {
                rememberedValue6 = new Function1() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        String str;
                        int i7 = i2;
                        Unit unit = Unit.INSTANCE;
                        RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity2 = recommendedReadingListSettingsActivity;
                        switch (i7) {
                            case 0:
                                boolean booleanValue = ((Boolean) obj3).booleanValue();
                                int i8 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default(booleanValue ? "discover_on_click" : "discover_off_click", "discover_settings", null, null, null, null, null, null, 508);
                                RecommendedReadingListSettingsViewModel viewModel = recommendedReadingListSettingsActivity2.getViewModel();
                                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 7), null, new TalkTopicsViewModel$subscribeTopic$1(booleanValue, viewModel, null), 2);
                                FlowEventBus.post(new NewRecommendedReadingListEvent());
                                break;
                            case 1:
                                boolean booleanValue2 = ((Boolean) obj3).booleanValue();
                                int i9 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default(booleanValue2 ? "notifs_on_click" : "notifs_off_click", "discover_settings", null, null, null, null, null, null, 508);
                                if (!booleanValue2) {
                                    Object systemService = recommendedReadingListSettingsActivity2.getSystemService("alarm");
                                    systemService.getClass();
                                    Intent action = new Intent(recommendedReadingListSettingsActivity2, (Class<?>) NotificationPollBroadcastReceiver.class).setAction("action_recommended_reading_list");
                                    action.getClass();
                                    ((AlarmManager) systemService).cancel(PendingIntent.getBroadcast(recommendedReadingListSettingsActivity2, 0, action, 67108864));
                                    recommendedReadingListSettingsActivity2.getViewModel().toggleNotification(false);
                                    break;
                                } else {
                                    recommendedReadingListSettingsActivity2.requestPermissionAndScheduleRecommendedReadingNotification();
                                    break;
                                }
                            case 2:
                                Integer num = (Integer) obj3;
                                int intValue2 = num.intValue();
                                int i10 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default("article_count_click", "discover_settings", null, null, num, null, null, null, 492);
                                RecommendedReadingListSettingsViewModel viewModel2 = recommendedReadingListSettingsActivity2.getViewModel();
                                Prefs prefs = Prefs.INSTANCE;
                                if (intValue2 != Prefs.getRecommendedReadingListArticlesNumber()) {
                                    PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_reset, true);
                                }
                                PrefsIoUtil.setInt(R.string.preference_key_recommended_reading_list_articles_number, intValue2);
                                StateFlowImpl stateFlowImpl = viewModel2._uiState;
                                stateFlowImpl.updateState(null, RecommendedReadingListSettingsState.copy$default((RecommendedReadingListSettingsState) stateFlowImpl.getValue(), false, intValue2, null, null, false, 29));
                                break;
                            default:
                                RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency = (RecommendedReadingListUpdateFrequency) obj3;
                                int i11 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                recommendedReadingListUpdateFrequency.getClass();
                                int i12 = RecommendedReadingListSettingsActivity.WhenMappings.$EnumSwitchMapping$0[recommendedReadingListUpdateFrequency.ordinal()];
                                if (i12 == 1) {
                                    str = "daily";
                                } else if (i12 == 2) {
                                    str = "weekly";
                                } else if (i12 != 3) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                                    break;
                                } else {
                                    str = "monthly";
                                }
                                WikiGamesEvent.submit$default(Animation.CC.m("update_", str, "_click"), "discover_settings", null, null, null, null, null, null, 508);
                                RecommendedReadingListSettingsViewModel viewModel3 = recommendedReadingListSettingsActivity2.getViewModel();
                                Prefs prefs2 = Prefs.INSTANCE;
                                PrefsIoUtil.setString(R.string.preference_key_recommended_reading_list_update_frequency, recommendedReadingListUpdateFrequency.name());
                                StateFlowImpl stateFlowImpl2 = viewModel3._uiState;
                                stateFlowImpl2.updateState(null, RecommendedReadingListSettingsState.copy$default((RecommendedReadingListSettingsState) stateFlowImpl2.getValue(), false, 0, recommendedReadingListUpdateFrequency, null, false, 27));
                                recommendedReadingListSettingsActivity2.requestPermissionAndScheduleRecommendedReadingNotification();
                                break;
                        }
                        return unit;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            Function1 function1 = (Function1) rememberedValue6;
            boolean changedInstance6 = gapComposer.changedInstance(recommendedReadingListSettingsActivity);
            Object rememberedValue7 = gapComposer.rememberedValue();
            if (changedInstance6 || rememberedValue7 == neverEqualPolicy) {
                rememberedValue7 = new Function1() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        String str;
                        int i7 = i3;
                        Unit unit = Unit.INSTANCE;
                        RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity2 = recommendedReadingListSettingsActivity;
                        switch (i7) {
                            case 0:
                                boolean booleanValue = ((Boolean) obj3).booleanValue();
                                int i8 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default(booleanValue ? "discover_on_click" : "discover_off_click", "discover_settings", null, null, null, null, null, null, 508);
                                RecommendedReadingListSettingsViewModel viewModel = recommendedReadingListSettingsActivity2.getViewModel();
                                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 7), null, new TalkTopicsViewModel$subscribeTopic$1(booleanValue, viewModel, null), 2);
                                FlowEventBus.post(new NewRecommendedReadingListEvent());
                                break;
                            case 1:
                                boolean booleanValue2 = ((Boolean) obj3).booleanValue();
                                int i9 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default(booleanValue2 ? "notifs_on_click" : "notifs_off_click", "discover_settings", null, null, null, null, null, null, 508);
                                if (!booleanValue2) {
                                    Object systemService = recommendedReadingListSettingsActivity2.getSystemService("alarm");
                                    systemService.getClass();
                                    Intent action = new Intent(recommendedReadingListSettingsActivity2, (Class<?>) NotificationPollBroadcastReceiver.class).setAction("action_recommended_reading_list");
                                    action.getClass();
                                    ((AlarmManager) systemService).cancel(PendingIntent.getBroadcast(recommendedReadingListSettingsActivity2, 0, action, 67108864));
                                    recommendedReadingListSettingsActivity2.getViewModel().toggleNotification(false);
                                    break;
                                } else {
                                    recommendedReadingListSettingsActivity2.requestPermissionAndScheduleRecommendedReadingNotification();
                                    break;
                                }
                            case 2:
                                Integer num = (Integer) obj3;
                                int intValue2 = num.intValue();
                                int i10 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default("article_count_click", "discover_settings", null, null, num, null, null, null, 492);
                                RecommendedReadingListSettingsViewModel viewModel2 = recommendedReadingListSettingsActivity2.getViewModel();
                                Prefs prefs = Prefs.INSTANCE;
                                if (intValue2 != Prefs.getRecommendedReadingListArticlesNumber()) {
                                    PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_reset, true);
                                }
                                PrefsIoUtil.setInt(R.string.preference_key_recommended_reading_list_articles_number, intValue2);
                                StateFlowImpl stateFlowImpl = viewModel2._uiState;
                                stateFlowImpl.updateState(null, RecommendedReadingListSettingsState.copy$default((RecommendedReadingListSettingsState) stateFlowImpl.getValue(), false, intValue2, null, null, false, 29));
                                break;
                            default:
                                RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency = (RecommendedReadingListUpdateFrequency) obj3;
                                int i11 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                recommendedReadingListUpdateFrequency.getClass();
                                int i12 = RecommendedReadingListSettingsActivity.WhenMappings.$EnumSwitchMapping$0[recommendedReadingListUpdateFrequency.ordinal()];
                                if (i12 == 1) {
                                    str = "daily";
                                } else if (i12 == 2) {
                                    str = "weekly";
                                } else if (i12 != 3) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                                    break;
                                } else {
                                    str = "monthly";
                                }
                                WikiGamesEvent.submit$default(Animation.CC.m("update_", str, "_click"), "discover_settings", null, null, null, null, null, null, 508);
                                RecommendedReadingListSettingsViewModel viewModel3 = recommendedReadingListSettingsActivity2.getViewModel();
                                Prefs prefs2 = Prefs.INSTANCE;
                                PrefsIoUtil.setString(R.string.preference_key_recommended_reading_list_update_frequency, recommendedReadingListUpdateFrequency.name());
                                StateFlowImpl stateFlowImpl2 = viewModel3._uiState;
                                stateFlowImpl2.updateState(null, RecommendedReadingListSettingsState.copy$default((RecommendedReadingListSettingsState) stateFlowImpl2.getValue(), false, 0, recommendedReadingListUpdateFrequency, null, false, 27));
                                recommendedReadingListSettingsActivity2.requestPermissionAndScheduleRecommendedReadingNotification();
                                break;
                        }
                        return unit;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue7);
            }
            Function1 function12 = (Function1) rememberedValue7;
            boolean changedInstance7 = gapComposer.changedInstance(recommendedReadingListSettingsActivity);
            Object rememberedValue8 = gapComposer.rememberedValue();
            if (changedInstance7 || rememberedValue8 == neverEqualPolicy) {
                rememberedValue8 = new Function1() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        String str;
                        int i7 = i4;
                        Unit unit = Unit.INSTANCE;
                        RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity2 = recommendedReadingListSettingsActivity;
                        switch (i7) {
                            case 0:
                                boolean booleanValue = ((Boolean) obj3).booleanValue();
                                int i8 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default(booleanValue ? "discover_on_click" : "discover_off_click", "discover_settings", null, null, null, null, null, null, 508);
                                RecommendedReadingListSettingsViewModel viewModel = recommendedReadingListSettingsActivity2.getViewModel();
                                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 7), null, new TalkTopicsViewModel$subscribeTopic$1(booleanValue, viewModel, null), 2);
                                FlowEventBus.post(new NewRecommendedReadingListEvent());
                                break;
                            case 1:
                                boolean booleanValue2 = ((Boolean) obj3).booleanValue();
                                int i9 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default(booleanValue2 ? "notifs_on_click" : "notifs_off_click", "discover_settings", null, null, null, null, null, null, 508);
                                if (!booleanValue2) {
                                    Object systemService = recommendedReadingListSettingsActivity2.getSystemService("alarm");
                                    systemService.getClass();
                                    Intent action = new Intent(recommendedReadingListSettingsActivity2, (Class<?>) NotificationPollBroadcastReceiver.class).setAction("action_recommended_reading_list");
                                    action.getClass();
                                    ((AlarmManager) systemService).cancel(PendingIntent.getBroadcast(recommendedReadingListSettingsActivity2, 0, action, 67108864));
                                    recommendedReadingListSettingsActivity2.getViewModel().toggleNotification(false);
                                    break;
                                } else {
                                    recommendedReadingListSettingsActivity2.requestPermissionAndScheduleRecommendedReadingNotification();
                                    break;
                                }
                            case 2:
                                Integer num = (Integer) obj3;
                                int intValue2 = num.intValue();
                                int i10 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default("article_count_click", "discover_settings", null, null, num, null, null, null, 492);
                                RecommendedReadingListSettingsViewModel viewModel2 = recommendedReadingListSettingsActivity2.getViewModel();
                                Prefs prefs = Prefs.INSTANCE;
                                if (intValue2 != Prefs.getRecommendedReadingListArticlesNumber()) {
                                    PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_reset, true);
                                }
                                PrefsIoUtil.setInt(R.string.preference_key_recommended_reading_list_articles_number, intValue2);
                                StateFlowImpl stateFlowImpl = viewModel2._uiState;
                                stateFlowImpl.updateState(null, RecommendedReadingListSettingsState.copy$default((RecommendedReadingListSettingsState) stateFlowImpl.getValue(), false, intValue2, null, null, false, 29));
                                break;
                            default:
                                RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency = (RecommendedReadingListUpdateFrequency) obj3;
                                int i11 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                recommendedReadingListUpdateFrequency.getClass();
                                int i12 = RecommendedReadingListSettingsActivity.WhenMappings.$EnumSwitchMapping$0[recommendedReadingListUpdateFrequency.ordinal()];
                                if (i12 == 1) {
                                    str = "daily";
                                } else if (i12 == 2) {
                                    str = "weekly";
                                } else if (i12 != 3) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                                    break;
                                } else {
                                    str = "monthly";
                                }
                                WikiGamesEvent.submit$default(Animation.CC.m("update_", str, "_click"), "discover_settings", null, null, null, null, null, null, 508);
                                RecommendedReadingListSettingsViewModel viewModel3 = recommendedReadingListSettingsActivity2.getViewModel();
                                Prefs prefs2 = Prefs.INSTANCE;
                                PrefsIoUtil.setString(R.string.preference_key_recommended_reading_list_update_frequency, recommendedReadingListUpdateFrequency.name());
                                StateFlowImpl stateFlowImpl2 = viewModel3._uiState;
                                stateFlowImpl2.updateState(null, RecommendedReadingListSettingsState.copy$default((RecommendedReadingListSettingsState) stateFlowImpl2.getValue(), false, 0, recommendedReadingListUpdateFrequency, null, false, 27));
                                recommendedReadingListSettingsActivity2.requestPermissionAndScheduleRecommendedReadingNotification();
                                break;
                        }
                        return unit;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue8);
            }
            Function1 function13 = (Function1) rememberedValue8;
            boolean changedInstance8 = gapComposer.changedInstance(recommendedReadingListSettingsActivity);
            Object rememberedValue9 = gapComposer.rememberedValue();
            if (changedInstance8 || rememberedValue9 == neverEqualPolicy) {
                rememberedValue9 = new Function1() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        String str;
                        int i7 = i5;
                        Unit unit = Unit.INSTANCE;
                        RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity2 = recommendedReadingListSettingsActivity;
                        switch (i7) {
                            case 0:
                                boolean booleanValue = ((Boolean) obj3).booleanValue();
                                int i8 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default(booleanValue ? "discover_on_click" : "discover_off_click", "discover_settings", null, null, null, null, null, null, 508);
                                RecommendedReadingListSettingsViewModel viewModel = recommendedReadingListSettingsActivity2.getViewModel();
                                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 7), null, new TalkTopicsViewModel$subscribeTopic$1(booleanValue, viewModel, null), 2);
                                FlowEventBus.post(new NewRecommendedReadingListEvent());
                                break;
                            case 1:
                                boolean booleanValue2 = ((Boolean) obj3).booleanValue();
                                int i9 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default(booleanValue2 ? "notifs_on_click" : "notifs_off_click", "discover_settings", null, null, null, null, null, null, 508);
                                if (!booleanValue2) {
                                    Object systemService = recommendedReadingListSettingsActivity2.getSystemService("alarm");
                                    systemService.getClass();
                                    Intent action = new Intent(recommendedReadingListSettingsActivity2, (Class<?>) NotificationPollBroadcastReceiver.class).setAction("action_recommended_reading_list");
                                    action.getClass();
                                    ((AlarmManager) systemService).cancel(PendingIntent.getBroadcast(recommendedReadingListSettingsActivity2, 0, action, 67108864));
                                    recommendedReadingListSettingsActivity2.getViewModel().toggleNotification(false);
                                    break;
                                } else {
                                    recommendedReadingListSettingsActivity2.requestPermissionAndScheduleRecommendedReadingNotification();
                                    break;
                                }
                            case 2:
                                Integer num = (Integer) obj3;
                                int intValue2 = num.intValue();
                                int i10 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default("article_count_click", "discover_settings", null, null, num, null, null, null, 492);
                                RecommendedReadingListSettingsViewModel viewModel2 = recommendedReadingListSettingsActivity2.getViewModel();
                                Prefs prefs = Prefs.INSTANCE;
                                if (intValue2 != Prefs.getRecommendedReadingListArticlesNumber()) {
                                    PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_reset, true);
                                }
                                PrefsIoUtil.setInt(R.string.preference_key_recommended_reading_list_articles_number, intValue2);
                                StateFlowImpl stateFlowImpl = viewModel2._uiState;
                                stateFlowImpl.updateState(null, RecommendedReadingListSettingsState.copy$default((RecommendedReadingListSettingsState) stateFlowImpl.getValue(), false, intValue2, null, null, false, 29));
                                break;
                            default:
                                RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency = (RecommendedReadingListUpdateFrequency) obj3;
                                int i11 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                recommendedReadingListUpdateFrequency.getClass();
                                int i12 = RecommendedReadingListSettingsActivity.WhenMappings.$EnumSwitchMapping$0[recommendedReadingListUpdateFrequency.ordinal()];
                                if (i12 == 1) {
                                    str = "daily";
                                } else if (i12 == 2) {
                                    str = "weekly";
                                } else if (i12 != 3) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                                    break;
                                } else {
                                    str = "monthly";
                                }
                                WikiGamesEvent.submit$default(Animation.CC.m("update_", str, "_click"), "discover_settings", null, null, null, null, null, null, 508);
                                RecommendedReadingListSettingsViewModel viewModel3 = recommendedReadingListSettingsActivity2.getViewModel();
                                Prefs prefs2 = Prefs.INSTANCE;
                                PrefsIoUtil.setString(R.string.preference_key_recommended_reading_list_update_frequency, recommendedReadingListUpdateFrequency.name());
                                StateFlowImpl stateFlowImpl2 = viewModel3._uiState;
                                stateFlowImpl2.updateState(null, RecommendedReadingListSettingsState.copy$default((RecommendedReadingListSettingsState) stateFlowImpl2.getValue(), false, 0, recommendedReadingListUpdateFrequency, null, false, 27));
                                recommendedReadingListSettingsActivity2.requestPermissionAndScheduleRecommendedReadingNotification();
                                break;
                        }
                        return unit;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue9);
            }
            Function1 function14 = (Function1) rememberedValue9;
            boolean changedInstance9 = gapComposer.changedInstance(recommendedReadingListSettingsActivity);
            Object rememberedValue10 = gapComposer.rememberedValue();
            if (changedInstance9 || rememberedValue10 == neverEqualPolicy) {
                final int i7 = 1;
                rememberedValue10 = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i52 = i7;
                        Unit unit = Unit.INSTANCE;
                        RecommendedReadingListSettingsActivity recommendedReadingListSettingsActivity2 = recommendedReadingListSettingsActivity;
                        switch (i52) {
                            case 0:
                                int i62 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                RecommendedReadingListSettingsViewModel viewModel = recommendedReadingListSettingsActivity2.getViewModel();
                                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel), null, new SyntaxHighlighter.AnonymousClass2(12, viewModel, (Continuation) null), 2);
                                break;
                            case 1:
                                int i72 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                recommendedReadingListSettingsActivity2.getOnBackPressedDispatcher().onBackPressed();
                                break;
                            case 2:
                                int i8 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                recommendedReadingListSettingsActivity2.getOnBackPressedDispatcher().onBackPressed();
                                break;
                            case 3:
                                int i9 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                Prefs prefs = Prefs.INSTANCE;
                                WikiGamesEvent.submit$default("built_click", "discover_settings", null, null, null, null, Prefs.getRecommendedReadingListSource().getEventString(), null, 444);
                                recommendedReadingListSettingsActivity2.currentRecommendedReadingListSource = Prefs.getRecommendedReadingListSource();
                                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = recommendedReadingListSettingsActivity2.recommendedReadingListSourceLauncher;
                                Intent intent = new Intent(recommendedReadingListSettingsActivity2, (Class<?>) RecommendedReadingListOnboardingActivity.class);
                                intent.putExtra("startFromSourceSelection", true);
                                intent.putExtra("fromSettings", true);
                                activityResultRegistry$register$2.launch(intent, null);
                                break;
                            default:
                                int i10 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                WikiGamesEvent.submit$default("interests_click", "discover_settings", null, null, null, null, null, null, 508);
                                ActivityResultRegistry$register$2 activityResultRegistry$register$22 = recommendedReadingListSettingsActivity2.recommendedReadingListInterestsLauncher;
                                Intent intent2 = new Intent(recommendedReadingListSettingsActivity2, (Class<?>) RecommendedReadingListOnboardingActivity.class);
                                intent2.putExtra("startFromSourceSelection", false);
                                intent2.putExtra("fromSettings", true);
                                activityResultRegistry$register$22.launch(intent2, null);
                                break;
                        }
                        return unit;
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue10);
            }
            RecommendedReadingListSourceScreenKt.RecommendedReadingListSettingsScreen(imePadding, recommendedReadingListSettingsState, resource, function02, function03, function04, function1, function12, function13, function14, (Function0) rememberedValue10, wikiErrorClickEvents, gapComposer, 0, 0, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x01a2, code lost:
    
        if (r6 == r1) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object invoke$org$wikipedia$settings$dev$playground$ReadingChallengePlayGroundDialog$$ExternalSyntheticLambda1(java.lang.Object r38, java.lang.Object r39) {
        /*
            Method dump skipped, instructions count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18.invoke$org$wikipedia$settings$dev$playground$ReadingChallengePlayGroundDialog$$ExternalSyntheticLambda1(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    private final Object invoke$org$wikipedia$wiktionary$WiktionaryDialogScreenKt$$ExternalSyntheticLambda4(Object obj, Object obj2) {
        String str = (String) this.f$1;
        Context context = (Context) this.f$2;
        Function1 function1 = (Function1) this.f$0;
        GapComposer gapComposer = (GapComposer) obj;
        int intValue = ((Integer) obj2).intValue();
        if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
            StringUtil stringUtil = StringUtil.INSTANCE;
            String removeStyleTags = StringUtil.removeStyleTags(str);
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 16.0f, RecyclerView.DECELERATION_RATE, 16.0f, 4.0f, 2);
            TextStyle textStyle = new TextStyle(((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, ContextsKt.getSp(14), null, new FontStyle(1), 0L, 0, 0L, 16777204);
            boolean changedInstance = gapComposer.changedInstance(context) | gapComposer.changed(function1);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new WiktionaryDialogScreenKt$$ExternalSyntheticLambda6(context, function1, 0);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            TabsBoxKt.m897HtmlTextKiACRJU(removeStyleTags, m136paddingqDBjuR0$default, null, textStyle, 0L, 0, 0, 0L, (LinkInteractionListener) rememberedValue, null, 0, gapComposer, 48, 3828);
        } else {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r2v42, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r2v58 */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        float f;
        OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1;
        int i;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1;
        long Color;
        long Color2;
        long Color3;
        long Color4;
        long Color5;
        long Color6;
        LinearGradient m11linearGradientmHitzGk;
        long Color7;
        long Color8;
        long Color9;
        Iterator it;
        Map map;
        Arrangement$End$1 arrangement$End$1;
        BiasAlignment.Horizontal horizontal;
        NeverEqualPolicy neverEqualPolicy;
        Function1 function1;
        NumberFormat numberFormat;
        ?? r2;
        Modifier.Companion companion;
        int i2;
        int i3 = this.$r8$classId;
        Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
        NeverEqualPolicy neverEqualPolicy2 = Composer$Companion.Empty;
        int i4 = 2;
        final byte b = 0;
        Unit unit = Unit.INSTANCE;
        final int i5 = 1;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        Object obj5 = this.f$0;
        switch (i3) {
            case 0:
                Function1 function12 = (Function1) obj5;
                PageTitle pageTitle = (PageTitle) obj4;
                Context context = (Context) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    FillElement fillElement = SizeKt.FillWholeMaxSize;
                    boolean changed = gapComposer.changed(function12) | gapComposer.changedInstance(pageTitle);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy2) {
                        rememberedValue = new ForYouCardKt$$ExternalSyntheticLambda5(function12, pageTitle, 7);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, fillElement, null, (Function0) rememberedValue, false);
                    BiasAlignment biasAlignment = Alignment.Companion.TopStart;
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                    long j = gapComposer.compositeKeyHashCode;
                    int i6 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m51clickableoSLSa3U$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$12);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$13);
                    Integer valueOf = Integer.valueOf(i6);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$14);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$12);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$15);
                    String str = pageTitle.thumbUrl;
                    RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
                    if (str == null || str.length() == 0) {
                        f = 0.0f;
                        ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                        i = 0;
                        gapComposer.startReplaceGroup(-1895189865);
                        composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$13;
                        BoxKt.Box(ImageKt.m46backgroundbw27NRU(fillElement, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).backgroundColor, rectangleShapeKt$RectangleShape$1), gapComposer, 0);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(-1894864520);
                        Pattern pattern = ImageUrlUtil.WIDTH_IN_IMAGE_URL_REGEX;
                        String str2 = pageTitle.thumbUrl;
                        str2.getClass();
                        String urlForPreferredSize = ImageUrlUtil.getUrlForPreferredSize(960, str2);
                        Boolean bool = Boolean.FALSE;
                        context.getClass();
                        f = 0.0f;
                        ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                        TabsBoxKt.FadeInAsyncImage(Okio__OkioKt._implementation != null ? ByteString.Companion.getRequestBuilder(context, urlForPreferredSize, bool, bool, null, null).build() : null, null, fillElement, ContentScale.Companion.Crop, new ColorPainter(Color.Black), new ColorPainter(Color.DarkGray), 0, 0, gapComposer, 298416);
                        i = 0;
                        gapComposer.end(false);
                        composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$13;
                    }
                    BiasAlignment biasAlignment2 = Alignment.Companion.BottomStart;
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    Modifier.Companion companion3 = Modifier.Companion.$$INSTANCE;
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(boxScopeInstance.align(companion3, biasAlignment2), 1.0f);
                    Arrangement$End$1 arrangement$End$12 = OffsetKt.Top;
                    BiasAlignment.Horizontal horizontal2 = Alignment.Companion.Start;
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$12, horizontal2, gapComposer, i);
                    float f2 = f;
                    long j2 = gapComposer.compositeKeyHashCode;
                    int i7 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, fillMaxWidth);
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$12);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = composeUiNode$Companion$SetModifier$1;
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$16);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$13 = ownerSnapshotObserver$onCommitAffectingLayout$1;
                    Animation.CC.m(i7, gapComposer, composeUiNode$Companion$SetModifier$14, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$13);
                    Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$15);
                    Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion3, 1.0f), 120.0f);
                    Pair pair = new Pair(Float.valueOf(f2), new Color(Color.Transparent));
                    Float valueOf2 = Float.valueOf(0.18f);
                    long j3 = Color.Black;
                    Color = ColorKt.Color(Color.m433getRedimpl(j3), Color.m432getGreenimpl(j3), Color.m430getBlueimpl(j3), 0.05f, Color.m431getColorSpaceimpl(j3));
                    Pair pair2 = new Pair(valueOf2, new Color(Color));
                    Float valueOf3 = Float.valueOf(0.38f);
                    Color2 = ColorKt.Color(Color.m433getRedimpl(j3), Color.m432getGreenimpl(j3), Color.m430getBlueimpl(j3), 0.15f, Color.m431getColorSpaceimpl(j3));
                    Pair pair3 = new Pair(valueOf3, new Color(Color2));
                    Float valueOf4 = Float.valueOf(0.58f);
                    Color3 = ColorKt.Color(Color.m433getRedimpl(j3), Color.m432getGreenimpl(j3), Color.m430getBlueimpl(j3), 0.3f, Color.m431getColorSpaceimpl(j3));
                    Pair pair4 = new Pair(valueOf4, new Color(Color3));
                    Float valueOf5 = Float.valueOf(0.76f);
                    Color4 = ColorKt.Color(Color.m433getRedimpl(j3), Color.m432getGreenimpl(j3), Color.m430getBlueimpl(j3), 0.5f, Color.m431getColorSpaceimpl(j3));
                    Pair pair5 = new Pair(valueOf5, new Color(Color4));
                    Float valueOf6 = Float.valueOf(0.9f);
                    Color5 = ColorKt.Color(Color.m433getRedimpl(j3), Color.m432getGreenimpl(j3), Color.m430getBlueimpl(j3), 0.7f, Color.m431getColorSpaceimpl(j3));
                    Pair pair6 = new Pair(valueOf6, new Color(Color5));
                    Float valueOf7 = Float.valueOf(1.0f);
                    Color6 = ColorKt.Color(Color.m433getRedimpl(j3), Color.m432getGreenimpl(j3), Color.m430getBlueimpl(j3), 0.8f, Color.m431getColorSpaceimpl(j3));
                    m11linearGradientmHitzGk = Lock.m11linearGradientmHitzGk((Pair[]) Arrays.copyOf(r2, new Pair[]{pair, pair2, pair3, pair4, pair5, pair6, new Pair(valueOf7, new Color(Color6))}.length), (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) & 4294967295L), (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (4294967295L & Float.floatToRawIntBits(Float.POSITIVE_INFINITY)));
                    BoxKt.Box(ImageKt.background$default(m140height3ABfNKs, m11linearGradientmHitzGk, null, 6), gapComposer, 0);
                    Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(companion3, 1.0f);
                    Color7 = ColorKt.Color(Color.m433getRedimpl(j3), Color.m432getGreenimpl(j3), Color.m430getBlueimpl(j3), 0.8f, Color.m431getColorSpaceimpl(j3));
                    Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(fillMaxWidth2, Color7, rectangleShapeKt$RectangleShape$1);
                    MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                    long j4 = gapComposer.compositeKeyHashCode;
                    int i8 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, m46backgroundbw27NRU);
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$12);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$16);
                    Animation.CC.m(i8, gapComposer, composeUiNode$Companion$SetModifier$14, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$13);
                    Updater.m327setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$15);
                    Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion3, 1.0f), 16.0f, RecyclerView.DECELERATION_RATE, 16.0f, 24.0f, 2);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$12, horizontal2, gapComposer, 0);
                    long j5 = gapComposer.compositeKeyHashCode;
                    int i9 = (int) (j5 ^ (j5 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer, m136paddingqDBjuR0$default);
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$12);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$16);
                    Animation.CC.m(i9, gapComposer, composeUiNode$Companion$SetModifier$14, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$13);
                    Updater.m327setimpl(gapComposer, materializeModifier4, composeUiNode$Companion$SetModifier$15);
                    String displayText = pageTitle.getDisplayText();
                    long j6 = Color.White;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
                    TabsBoxKt.m897HtmlTextKiACRJU(displayText, null, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(staticProvidableCompositionLocal)).headlineSmall, 0L, 0L, null, FontFamily.Serif, 0L, 0L, null, 16777183), j6, 3, 0, 0L, null, null, 0, gapComposer, 221184, 4038);
                    String str3 = pageTitle.description;
                    if (str3 == null || str3.length() == 0) {
                        gapComposer.startReplaceGroup(1093124952);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(1092666338);
                        Modifier m136paddingqDBjuR0$default2 = OffsetKt.m136paddingqDBjuR0$default(companion3, RecyclerView.DECELERATION_RATE, 4.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                        String str4 = pageTitle.description;
                        str4.getClass();
                        Color9 = ColorKt.Color(Color.m433getRedimpl(j6), Color.m432getGreenimpl(j6), Color.m430getBlueimpl(j6), 0.8f, Color.m431getColorSpaceimpl(j6));
                        TabsBoxKt.m897HtmlTextKiACRJU(str4, m136paddingqDBjuR0$default2, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal)).bodyMedium, Color9, 2, 0, 0L, null, null, 0, gapComposer, 221232, 4036);
                        gapComposer.end(false);
                    }
                    Modifier m149width3ABfNKs = SizeKt.m149width3ABfNKs(OffsetKt.m134paddingVpY3zN4$default(companion3, f2, 12.0f, 1), 48.0f);
                    Color8 = ColorKt.Color(Color.m433getRedimpl(j6), Color.m432getGreenimpl(j6), Color.m430getBlueimpl(j6), 0.8f, Color.m431getColorSpaceimpl(j6));
                    CardKt.m266HorizontalDivider9IZ8Weo(m149width3ABfNKs, 1.0f, Color8, gapComposer, 438, 0);
                    String str5 = pageTitle.extract;
                    if (str5 == null || str5.length() == 0) {
                        gapComposer.startReplaceGroup(1094020728);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(1093665902);
                        String str6 = pageTitle.extract;
                        str6.getClass();
                        TabsBoxKt.m897HtmlTextKiACRJU(str6, null, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal)).bodyMedium, j6, 8, 0, 0L, null, null, 0, gapComposer, 221184, 4038);
                        gapComposer.end(false);
                    }
                    gapComposer.end(true);
                    gapComposer.end(true);
                    gapComposer.end(true);
                    gapComposer.end(true);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 1:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj5;
                ScrollingLogic scrollingLogic = (ScrollingLogic) obj4;
                float floatValue = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                long m104toOffsettuRUvjQ = scrollingLogic.m104toOffsettuRUvjQ(scrollingLogic.reverseIfNeeded(floatValue - ref$FloatRef.element));
                ScrollingLogic scrollingLogic2 = ((ScrollingLogic$nestedScrollScope$1) obj3).this$0;
                ref$FloatRef.element += scrollingLogic.reverseIfNeeded(scrollingLogic.m103toFloatk4lQ0M(scrollingLogic2.m101performScroll3eAAhYA(scrollingLogic2.outerStateScope, m104toOffsettuRUvjQ, 1)));
                return unit;
            case 2:
                ((Integer) obj2).getClass();
                BasicTextKt.CoreTextFieldRootBox((Modifier) obj5, (TextFieldSelectionManager) obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(385));
                return unit;
            case 3:
                Modifier modifier = (Modifier) obj5;
                MutableState mutableState = (MutableState) obj4;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj3;
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy2) {
                        rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState, 5);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    Modifier onGloballyPositioned = RulerKt.onGloballyPositioned(modifier, (Function1) rememberedValue2);
                    MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
                    long j7 = gapComposer2.compositeKeyHashCode;
                    int i10 = (int) (j7 ^ (j7 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer2, onGloballyPositioned);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope5, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer2, Integer.valueOf(i10), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer2, materializeModifier5, ComposeUiNode.Companion.SetModifier);
                    composableLambdaImpl.invoke((Object) gapComposer2, (Object) 0);
                    gapComposer2.end(true);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 4:
                ((Integer) obj2).getClass();
                CardKt.SnackbarHost((SnackbarHostState) obj5, (Modifier) obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(391));
                return unit;
            case 5:
                ((Integer) obj2).getClass();
                LayoutUtilKt.ObserveState((LifecycleOwner) obj4, (Function1) obj5, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 6:
                ((Integer) obj2).getClass();
                Operation$State.LocalOwnersProvider((NavBackStackEntry) obj5, (SaveableStateHolder) obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, Updater.updateChangedFlags(385));
                return unit;
            case 7:
                float floatValue2 = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                AwaitKt.launch$default((CoroutineScope) obj5, null, null, new NavHostKt$NavHost$29$1$1$1(floatValue2, (SeekableTransitionState) obj4, (NavBackStackEntry) obj3, (Continuation) null), 3);
                return unit;
            case 8:
                ((Integer) obj2).getClass();
                ImpactModuleKt.DonationModule((Modifier) obj5, (UiState) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 9:
                Map map2 = (Map) obj4;
                Function1 function13 = (Function1) obj5;
                NumberFormat numberFormat2 = (NumberFormat) obj3;
                ?? r0 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                BiasAlignment.Horizontal horizontal3 = Alignment.Companion.Start;
                Arrangement$End$1 arrangement$End$13 = OffsetKt.Top;
                if (r0.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    ColumnMeasurePolicy columnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(arrangement$End$13, horizontal3, r0, 0);
                    NeverEqualPolicy neverEqualPolicy3 = neverEqualPolicy2;
                    long j8 = r0.compositeKeyHashCode;
                    int i11 = (int) (j8 ^ (j8 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope6 = r0.currentCompositionLocalScope();
                    Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(r0, companion2);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                    r0.startReusableNode();
                    if (r0.inserting) {
                        r0.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        r0.useNode();
                    }
                    Updater.m327setimpl(r0, columnMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(r0, currentCompositionLocalScope6, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(r0, Integer.valueOf(i11), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(r0, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(r0, materializeModifier6, ComposeUiNode.Companion.SetModifier);
                    ImpactModuleKt.CommonCardHeader(OffsetKt.m132padding3ABfNKs(companion2, 16.0f), UnsignedKt.painterResource(R.drawable.outline_trending_up_24, 0, r0), UtilsKt.stringResource(R.string.activity_tab_impact_most_viewed, r0), null, false, false, r0, 70, 56);
                    r0.startReplaceGroup(-574266164);
                    Iterator it2 = map2.entrySet().iterator();
                    int i12 = 1;
                    while (it2.hasNext()) {
                        Map.Entry entry = (Map.Entry) it2.next();
                        PageTitle pageTitle2 = (PageTitle) entry.getKey();
                        GrowthUserImpact.ArticleViews articleViews = (GrowthUserImpact.ArticleViews) entry.getValue();
                        if (i12 <= 3) {
                            int i13 = i12 + 1;
                            Integer valueOf8 = i12 != 1 ? i12 != 2 ? i12 != 3 ? null : Integer.valueOf(R.drawable.outline_looks_three_24) : Integer.valueOf(R.drawable.outline_looks_two_24) : Integer.valueOf(R.drawable.outline_looks_one_24);
                            if (map2.size() <= 1) {
                                valueOf8 = null;
                            }
                            Modifier fillMaxWidth3 = SizeKt.fillMaxWidth(companion2, 1.0f);
                            boolean changed2 = r0.changed(function13) | r0.changedInstance(pageTitle2);
                            Object rememberedValue3 = r0.rememberedValue();
                            Object obj6 = rememberedValue3;
                            if (changed2 || rememberedValue3 == neverEqualPolicy3) {
                                ForYouCardKt$$ExternalSyntheticLambda5 forYouCardKt$$ExternalSyntheticLambda5 = new ForYouCardKt$$ExternalSyntheticLambda5(function13, pageTitle2, 1);
                                r0.updateRememberedValue(forYouCardKt$$ExternalSyntheticLambda5);
                                obj6 = forYouCardKt$$ExternalSyntheticLambda5;
                            }
                            it = it2;
                            map = map2;
                            Modifier m51clickableoSLSa3U$default2 = ImageKt.m51clickableoSLSa3U$default(15, fillMaxWidth3, null, (Function0) obj6, false);
                            MeasurePolicy maybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                            Integer num = valueOf8;
                            long j9 = r0.compositeKeyHashCode;
                            int i14 = (int) (j9 ^ (j9 >>> 32));
                            PersistentCompositionLocalHashMap currentCompositionLocalScope7 = r0.currentCompositionLocalScope();
                            Modifier materializeModifier7 = AbsoluteAlignment.materializeModifier(r0, m51clickableoSLSa3U$default2);
                            ComposeUiNode.Companion.getClass();
                            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$14 = ComposeUiNode.Companion.Constructor;
                            r0.startReusableNode();
                            if (r0.inserting) {
                                r0.createNode(layoutNode$Companion$Constructor$14);
                            } else {
                                r0.useNode();
                            }
                            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = ComposeUiNode.Companion.SetMeasurePolicy;
                            Updater.m327setimpl(r0, maybeCachedBoxMeasurePolicy4, composeUiNode$Companion$SetModifier$17);
                            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$18 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                            Updater.m327setimpl(r0, currentCompositionLocalScope7, composeUiNode$Companion$SetModifier$18);
                            Integer valueOf9 = Integer.valueOf(i14);
                            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$19 = ComposeUiNode.Companion.SetCompositeKeyHash;
                            Updater.m327setimpl(r0, valueOf9, composeUiNode$Companion$SetModifier$19);
                            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$14 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                            Updater.m326reconcileimpl(r0, ownerSnapshotObserver$onCommitAffectingLayout$14);
                            function1 = function13;
                            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$110 = ComposeUiNode.Companion.SetModifier;
                            Updater.m327setimpl(r0, materializeModifier7, composeUiNode$Companion$SetModifier$110);
                            neverEqualPolicy = neverEqualPolicy3;
                            Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(SizeKt.fillMaxWidth(companion2, 1.0f), 16.0f);
                            NumberFormat numberFormat3 = numberFormat2;
                            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, r0, 6);
                            long j10 = r0.compositeKeyHashCode;
                            int i15 = (int) (j10 ^ (j10 >>> 32));
                            PersistentCompositionLocalHashMap currentCompositionLocalScope8 = r0.currentCompositionLocalScope();
                            Modifier materializeModifier8 = AbsoluteAlignment.materializeModifier(r0, m132padding3ABfNKs);
                            r0.startReusableNode();
                            if (r0.inserting) {
                                r0.createNode(layoutNode$Companion$Constructor$14);
                            } else {
                                r0.useNode();
                            }
                            Updater.m327setimpl(r0, rowMeasurePolicy, composeUiNode$Companion$SetModifier$17);
                            Updater.m327setimpl(r0, currentCompositionLocalScope8, composeUiNode$Companion$SetModifier$18);
                            Animation.CC.m(i15, (GapComposer) r0, composeUiNode$Companion$SetModifier$19, (GapComposer) r0, ownerSnapshotObserver$onCommitAffectingLayout$14);
                            Updater.m327setimpl(r0, materializeModifier8, composeUiNode$Companion$SetModifier$110);
                            if (num == null) {
                                r0.startReplaceGroup(-548994231);
                                i2 = 0;
                                r0.end(false);
                            } else {
                                i2 = 0;
                                r0.startReplaceGroup(-548994230);
                                IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(num.intValue(), 0, r0), null, SizeKt.m145size3ABfNKs(companion2, 24.0f), ((WikipediaColor) r0.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, r0, 440, 0);
                                r0.end(false);
                            }
                            Modifier weight$default$1 = Animation.CC.weight$default$1(companion2, 1.0f);
                            ColumnMeasurePolicy columnMeasurePolicy4 = ColumnKt.columnMeasurePolicy(arrangement$End$13, horizontal3, r0, i2);
                            companion = companion2;
                            long j11 = r0.compositeKeyHashCode;
                            int i16 = (int) (j11 ^ (j11 >>> 32));
                            PersistentCompositionLocalHashMap currentCompositionLocalScope9 = r0.currentCompositionLocalScope();
                            Modifier materializeModifier9 = AbsoluteAlignment.materializeModifier(r0, weight$default$1);
                            r0.startReusableNode();
                            if (r0.inserting) {
                                r0.createNode(layoutNode$Companion$Constructor$14);
                            } else {
                                r0.useNode();
                            }
                            Updater.m327setimpl(r0, columnMeasurePolicy4, composeUiNode$Companion$SetModifier$17);
                            Updater.m327setimpl(r0, currentCompositionLocalScope9, composeUiNode$Companion$SetModifier$18);
                            Animation.CC.m(i16, (GapComposer) r0, composeUiNode$Companion$SetModifier$19, (GapComposer) r0, ownerSnapshotObserver$onCommitAffectingLayout$14);
                            Updater.m327setimpl(r0, materializeModifier9, composeUiNode$Companion$SetModifier$110);
                            String displayText2 = pageTitle2.getDisplayText();
                            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
                            TextStyle m647copyp1EtxEg$default = TextStyle.m647copyp1EtxEg$default(((Typography) r0.consume(staticProvidableCompositionLocal2)).titleMedium, 0L, 0L, null, FontFamily.Serif, 0L, 0L, null, 16777183);
                            StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
                            TabsBoxKt.m897HtmlTextKiACRJU(displayText2, null, null, m647copyp1EtxEg$default, ((WikipediaColor) r0.consume(staticProvidableCompositionLocal3)).primaryColor, 0, 0, 0L, null, null, 0, r0, 0, 4070);
                            String str7 = pageTitle2.description;
                            if (str7 == null) {
                                r0.startReplaceGroup(220193903);
                                r0.end(false);
                                horizontal = horizontal3;
                            } else {
                                r0.startReplaceGroup(220193904);
                                horizontal = horizontal3;
                                TextKt.m308TextNvy7gAk(str7, null, ((WikipediaColor) r0.consume(staticProvidableCompositionLocal3)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) r0.consume(staticProvidableCompositionLocal2)).bodyMedium, r0, 0, 0, 131066);
                                r0.end(false);
                                companion = companion;
                            }
                            Modifier m136paddingqDBjuR0$default3 = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                            RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, r0, 48);
                            long j12 = r0.compositeKeyHashCode;
                            int i17 = (int) (j12 ^ (j12 >>> 32));
                            PersistentCompositionLocalHashMap currentCompositionLocalScope10 = r0.currentCompositionLocalScope();
                            Modifier materializeModifier10 = AbsoluteAlignment.materializeModifier(r0, m136paddingqDBjuR0$default3);
                            r0.startReusableNode();
                            arrangement$End$1 = arrangement$End$13;
                            if (r0.inserting) {
                                r0.createNode(layoutNode$Companion$Constructor$14);
                            } else {
                                r0.useNode();
                            }
                            Updater.m327setimpl(r0, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$17);
                            Updater.m327setimpl(r0, currentCompositionLocalScope10, composeUiNode$Companion$SetModifier$18);
                            Animation.CC.m(i17, (GapComposer) r0, composeUiNode$Companion$SetModifier$19, (GapComposer) r0, ownerSnapshotObserver$onCommitAffectingLayout$14);
                            Updater.m327setimpl(r0, materializeModifier10, composeUiNode$Companion$SetModifier$110);
                            TabsBoxKt.m898LineChartxfPyhaw((Map) articleViews.viewsByDay$delegate.getValue(), SizeKt.m140height3ABfNKs(SizeKt.m149width3ABfNKs(companion, 24.0f), 6.0f), 10, 1.0f, ((WikipediaColor) r0.consume(staticProvidableCompositionLocal3)).progressiveColor, r0, 3504);
                            Modifier m136paddingqDBjuR0$default4 = OffsetKt.m136paddingqDBjuR0$default(Animation.CC.weight$default$1(companion, 1.0f), 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14);
                            numberFormat = numberFormat3;
                            String format = numberFormat.format(articleViews.viewsCount);
                            format.getClass();
                            TextKt.m308TextNvy7gAk(format, m136paddingqDBjuR0$default4, ((WikipediaColor) r0.consume(staticProvidableCompositionLocal3)).progressiveColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) r0.consume(staticProvidableCompositionLocal2)).labelSmall, r0, 0, 0, 131064);
                            r0.end(true);
                            r0.end(true);
                            String str8 = pageTitle2.thumbUrl;
                            if (str8 == null || str8.length() == 0) {
                                r0.startReplaceGroup(-545409266);
                                r0.end(false);
                            } else {
                                r0.startReplaceGroup(-546274166);
                                Context context2 = (Context) r0.consume(AndroidCompositionLocals_androidKt.LocalContext);
                                String str9 = pageTitle2.thumbUrl;
                                Boolean bool2 = Boolean.FALSE;
                                context2.getClass();
                                AsyncImageKt.m774AsyncImagex1rPTaM(Okio__OkioKt._implementation != null ? ByteString.Companion.getRequestBuilder(context2, str9, bool2, bool2, null, null).build() : null, null, ClipKt.clip(SizeKt.m145size3ABfNKs(companion, 56.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f)), new BrushPainter(new SolidColor(((WikipediaColor) r0.consume(staticProvidableCompositionLocal3)).borderColor)), new BrushPainter(new SolidColor(((WikipediaColor) r0.consume(staticProvidableCompositionLocal3)).borderColor)), null, null, ContentScale.Companion.Crop, r0, 36912, 6, 31712);
                                r0.end(false);
                            }
                            r0.end(true);
                            r0.end(true);
                            i12 = i13;
                            if (i12 < map.size() - 1) {
                                r0.startReplaceGroup(544295954);
                                CardKt.m266HorizontalDivider9IZ8Weo(null, RecyclerView.DECELERATION_RATE, ((WikipediaColor) r0.consume(staticProvidableCompositionLocal3)).borderColor, r0, 0, 3);
                                r2 = false;
                                r0.end(false);
                            } else {
                                r2 = false;
                                r0.startReplaceGroup(544436260);
                                r0.end(false);
                            }
                        } else {
                            it = it2;
                            map = map2;
                            arrangement$End$1 = arrangement$End$13;
                            horizontal = horizontal3;
                            neverEqualPolicy = neverEqualPolicy3;
                            function1 = function13;
                            numberFormat = numberFormat2;
                            r2 = b;
                            companion = companion2;
                        }
                        it2 = it;
                        b = r2;
                        numberFormat2 = numberFormat;
                        companion2 = companion;
                        map2 = map;
                        function13 = function1;
                        neverEqualPolicy3 = neverEqualPolicy;
                        horizontal3 = horizontal;
                        arrangement$End$13 = arrangement$End$1;
                    }
                    r0.end(b);
                    r0.end(true);
                } else {
                    r0.skipToGroupEnd();
                }
                return unit;
            case 10:
                ((Integer) obj2).getClass();
                TabsBoxKt.SearchBarCard((Modifier) obj5, (String) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 11:
                String str10 = (String) obj4;
                Function1 function14 = (Function1) obj5;
                String str11 = (String) obj3;
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (gapComposer3.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    Modifier testTag = TestTagKt.testTag(OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, RecyclerView.DECELERATION_RATE, 2.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), "search_text_field");
                    long j13 = Color.Transparent;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = WikipediaColorKt.LocalWikipediaColor;
                    CardKt.OutlinedTextField(str10, function14, testTag, false, new TextStyle(0L, ContextsKt.getSp(16), null, null, 0L, 0, 0L, 16777213), null, Expect_jvmKt.rememberComposableLambda(2109292692, new HomeScreenKt$$ExternalSyntheticLambda30(str11, i4, b), gapComposer3), null, null, null, null, false, null, null, null, true, 0, 0, null, TextFieldDefaults.m304colors0hiis_0(((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal4)).primaryColor, 0L, 0L, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal4)).progressiveColor, j13, j13, gapComposer3, 2147477246), gapComposer3, 12779904, 12582912, 4063064);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 12:
                Function0 function0 = (Function0) obj5;
                Function0 function02 = (Function0) obj4;
                Function0 function03 = (Function0) obj3;
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if (gapComposer4.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    DonationReminderScreenKt.DonationReminderAppBar(OffsetKt.m134paddingVpY3zN4$default(OffsetKt.m136paddingqDBjuR0$default(OffsetKt.statusBarsPadding(SizeKt.fillMaxWidth(companion2, 1.0f)), RecyclerView.DECELERATION_RATE, 12.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), 16.0f, RecyclerView.DECELERATION_RATE, 2), function0, Room.listOf((Object[]) new DonationReminderDropDownMenuItem[]{new DonationReminderDropDownMenuItem(R.drawable.ic_info_outline_black_24dp, UtilsKt.stringResource(R.string.donation_reminders_settings_learn_more_button, gapComposer4), function02), new DonationReminderDropDownMenuItem(R.drawable.ic_report_flag, UtilsKt.stringResource(R.string.donation_reminders_settings_report_button, gapComposer4), function03)}), gapComposer4, 0);
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case IMAGE_VALUE:
                ((Integer) obj2).getClass();
                PersonalizationScreenKt.OnboardingBottomBar((DefaultPagerState) obj5, (Function0) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ((Integer) obj2).getClass();
                HomePreferenceScreenKt.HomePreferenceArticleCard((Modifier) obj5, (HomePreferenceType) obj4, (HomePreferenceContent) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 15:
                Function0 function04 = (Function0) obj5;
                Context context3 = (Context) obj3;
                WikiSite wikiSite = (WikiSite) obj4;
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if (gapComposer5.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    Modifier m136paddingqDBjuR0$default5 = OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 16.0f, 16.0f, 16.0f, RecyclerView.DECELERATION_RATE, 8);
                    PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = WikipediaColorKt.LocalWikipediaColor;
                    CardKt.Button(function04, m136paddingqDBjuR0$default5, false, null, ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal5)).progressiveColor, ((WikipediaColor) gapComposer5.consume(staticProvidableCompositionLocal5)).paperColor, gapComposer5, 12), null, null, ButtonDefaults.ButtonWithIconContentPadding, Expect_jvmKt.rememberComposableLambda(657916235, new RandomModuleKt$$ExternalSyntheticLambda7(context3, wikiSite, b), gapComposer5), gapComposer5, 805306368, 364);
                } else {
                    gapComposer5.skipToGroupEnd();
                }
                return unit;
            case LAZY_VERTICAL_GRID_VALUE:
                ((Integer) obj2).getClass();
                Cookie.Companion.LanguageListItemView((Modifier) obj5, (String) obj4, (String) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case VERTICAL_GRID_ITEM_VALUE:
                final InitialOnboardingActivity initialOnboardingActivity = (InitialOnboardingActivity) obj5;
                MutableState mutableState2 = (MutableState) obj4;
                ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) obj3;
                GapComposer gapComposer6 = (GapComposer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                int i18 = InitialOnboardingActivity.$r8$clinit;
                if (gapComposer6.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    AppLanguageState languageState = Jsoup.getInstance().getLanguageState();
                    List list = (List) initialOnboardingActivity.appLanguageCodesState.getValue();
                    Prefs prefs = Prefs.INSTANCE;
                    boolean isInitialOnboardingEnabled = Prefs.isInitialOnboardingEnabled();
                    boolean changedInstance = gapComposer6.changedInstance(initialOnboardingActivity);
                    Object rememberedValue4 = gapComposer6.rememberedValue();
                    if (changedInstance || rememberedValue4 == neverEqualPolicy2) {
                        rememberedValue4 = new Function0() { // from class: org.wikipedia.onboarding.InitialOnboardingActivity$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i19 = b;
                                Unit unit2 = Unit.INSTANCE;
                                InitialOnboardingActivity initialOnboardingActivity2 = initialOnboardingActivity;
                                switch (i19) {
                                    case 0:
                                        ActivityResultRegistry$register$2 activityResultRegistry$register$2 = initialOnboardingActivity2.languagesLauncher;
                                        Constants.InvokeSource invokeSource = Constants.InvokeSource.ONBOARDING_DIALOG;
                                        invokeSource.getClass();
                                        Intent putExtra = new Intent(initialOnboardingActivity2, (Class<?>) WikipediaLanguagesActivity.class).putExtra("invokeSource", invokeSource);
                                        putExtra.getClass();
                                        activityResultRegistry$register$2.launch(putExtra, null);
                                        break;
                                    default:
                                        int i20 = InitialOnboardingActivity.$r8$clinit;
                                        Prefs prefs2 = Prefs.INSTANCE;
                                        PrefsIoUtil.setBoolean(R.string.preference_key_initial_onboarding_enabled, false);
                                        PrefsIoUtil.setBoolean(R.string.preference_key_explore_feed_update_prompt_shown, true);
                                        Intent putExtra2 = new Intent(initialOnboardingActivity2, (Class<?>) PersonalizationActivity.class).putExtra("show_interests_only", false);
                                        putExtra2.getClass();
                                        initialOnboardingActivity2.startActivity(putExtra2);
                                        initialOnboardingActivity2.finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer6.updateRememberedValue(rememberedValue4);
                    }
                    Function0 function05 = (Function0) rememberedValue4;
                    boolean changedInstance2 = gapComposer6.changedInstance(initialOnboardingActivity);
                    Object rememberedValue5 = gapComposer6.rememberedValue();
                    if (changedInstance2 || rememberedValue5 == neverEqualPolicy2) {
                        rememberedValue5 = new HomeScreenKt$$ExternalSyntheticLambda29((Object) initialOnboardingActivity, mutableState2, (MutableState) parcelableSnapshotMutableIntState, 17);
                        gapComposer6.updateRememberedValue(rememberedValue5);
                    }
                    Function0 function06 = (Function0) rememberedValue5;
                    boolean changedInstance3 = gapComposer6.changedInstance(initialOnboardingActivity);
                    Object rememberedValue6 = gapComposer6.rememberedValue();
                    if (changedInstance3 || rememberedValue6 == neverEqualPolicy2) {
                        rememberedValue6 = new Function0() { // from class: org.wikipedia.onboarding.InitialOnboardingActivity$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i19 = i5;
                                Unit unit2 = Unit.INSTANCE;
                                InitialOnboardingActivity initialOnboardingActivity2 = initialOnboardingActivity;
                                switch (i19) {
                                    case 0:
                                        ActivityResultRegistry$register$2 activityResultRegistry$register$2 = initialOnboardingActivity2.languagesLauncher;
                                        Constants.InvokeSource invokeSource = Constants.InvokeSource.ONBOARDING_DIALOG;
                                        invokeSource.getClass();
                                        Intent putExtra = new Intent(initialOnboardingActivity2, (Class<?>) WikipediaLanguagesActivity.class).putExtra("invokeSource", invokeSource);
                                        putExtra.getClass();
                                        activityResultRegistry$register$2.launch(putExtra, null);
                                        break;
                                    default:
                                        int i20 = InitialOnboardingActivity.$r8$clinit;
                                        Prefs prefs2 = Prefs.INSTANCE;
                                        PrefsIoUtil.setBoolean(R.string.preference_key_initial_onboarding_enabled, false);
                                        PrefsIoUtil.setBoolean(R.string.preference_key_explore_feed_update_prompt_shown, true);
                                        Intent putExtra2 = new Intent(initialOnboardingActivity2, (Class<?>) PersonalizationActivity.class).putExtra("show_interests_only", false);
                                        putExtra2.getClass();
                                        initialOnboardingActivity2.startActivity(putExtra2);
                                        initialOnboardingActivity2.finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer6.updateRememberedValue(rememberedValue6);
                    }
                    InitialOnboardingScreenKt.AppOnboardingScreen(null, languageState, list, isInitialOnboardingEnabled, function05, function06, (Function0) rememberedValue6, gapComposer6, 0);
                } else {
                    gapComposer6.skipToGroupEnd();
                }
                return unit;
            case RADIO_GROUP_VALUE:
                return invoke$org$wikipedia$readinglist$recommended$RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda3(obj, obj2);
            case RADIO_BUTTON_VALUE:
                ((Integer) obj2).getClass();
                RecommendedReadingListSourceScreenKt.UpdatesFrequencyView((RecommendedReadingListUpdateFrequency) obj4, (Function1) obj5, (Modifier) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case RADIO_ROW_VALUE:
                ((Integer) obj2).getClass();
                NoSearchResultsKt.SearchResultTitleOnly((SearchResult) obj5, (String) obj4, (Modifier) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case RADIO_COLUMN_VALUE:
                ((Integer) obj2).getClass();
                ReadingChallengePlaygroundDialogKt.DeleteView((Modifier) obj4, (Function0) obj3, (Function1) obj5, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case SIZE_BOX_VALUE:
                return invoke$org$wikipedia$settings$dev$playground$ReadingChallengePlayGroundDialog$$ExternalSyntheticLambda1(obj, obj2);
            case 23:
                ((Integer) obj2).getClass();
                Options.Companion.ForYouModulesScreen((ModulesViewModel) obj5, (Function0) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 24:
                ((Integer) obj2).getClass();
                NodeUtils.HomeFeedSettingsNavHost((NavHostController) obj5, (HomeFeedSettingsStartDestination) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 25:
                return invoke$org$wikipedia$wiktionary$WiktionaryDialogScreenKt$$ExternalSyntheticLambda4(obj, obj2);
            default:
                List list2 = (List) obj5;
                PagerState pagerState = (PagerState) obj4;
                Function0 function07 = (Function0) obj3;
                GapComposer gapComposer7 = (GapComposer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                if (gapComposer7.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    boolean changedInstance4 = gapComposer7.changedInstance(list2) | gapComposer7.changed(pagerState) | gapComposer7.changed(function07);
                    Object rememberedValue7 = gapComposer7.rememberedValue();
                    if (changedInstance4 || rememberedValue7 == neverEqualPolicy2) {
                        rememberedValue7 = new HomeScreenKt$$ExternalSyntheticLambda29(list2, pagerState, function07, 22);
                        gapComposer7.updateRememberedValue(rememberedValue7);
                    }
                    CardKt.IconButton((Function0) rememberedValue7, null, false, null, null, YearInReviewDialog.lambda$972779059, gapComposer7, 1572864, 62);
                } else {
                    gapComposer7.skipToGroupEnd();
                }
                return unit;
        }
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda18(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda18(Object obj, Object obj2, Object obj3, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda18(Object obj, Function1 function1, Serializable serializable, int i) {
        this.$r8$classId = i;
        this.f$1 = obj;
        this.f$0 = function1;
        this.f$2 = serializable;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda18(Object obj, Function1 function1, Object obj2, int i, int i2) {
        this.$r8$classId = i2;
        this.f$1 = obj;
        this.f$0 = function1;
        this.f$2 = obj2;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda18(String str, Context context, Function1 function1) {
        this.$r8$classId = 25;
        this.f$1 = str;
        this.f$2 = context;
        this.f$0 = function1;
    }

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda18(Function0 function0, Context context, WikiSite wikiSite) {
        this.$r8$classId = 15;
        this.f$0 = function0;
        this.f$2 = context;
        this.f$1 = wikiSite;
    }
}
