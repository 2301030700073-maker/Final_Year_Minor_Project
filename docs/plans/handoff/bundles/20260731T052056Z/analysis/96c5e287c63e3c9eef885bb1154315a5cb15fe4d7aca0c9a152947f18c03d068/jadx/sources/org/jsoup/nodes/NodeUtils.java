package org.jsoup.nodes;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.activity.compose.ActivityResultLauncherHolder;
import androidx.activity.compose.LocalActivityResultRegistryOwner;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.DisposableEffectImpl;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.core.app.NotificationCompat$Builder;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda13;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.snackbar.Snackbar;
import j$.time.Duration;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.util.Spliterators;
import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;
import java.util.Arrays;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.internal.StreamingJsonEncoder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Options;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.model.ForYouCard;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda23;
import org.wikipedia.games.WikiGames;
import org.wikipedia.games.onthisday.OnThisDayGameActivity;
import org.wikipedia.games.onthisday.OnThisDayGameNotificationManager$$ExternalSyntheticLambda4;
import org.wikipedia.games.onthisday.OnThisDayGameNotificationState;
import org.wikipedia.games.onthisday.OnThisDayGameProvider;
import org.wikipedia.notifications.NotificationCategory;
import org.wikipedia.notifications.NotificationPollBroadcastReceiver;
import org.wikipedia.notifications.NotificationPresenter;
import org.wikipedia.page.PageTitle;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.readinglist.ReadingListActivity;
import org.wikipedia.readinglist.ReadingListMode;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda7;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.homefeed.HomeFeedSettingsDestination;
import org.wikipedia.settings.homefeed.HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0;
import org.wikipedia.settings.homefeed.HomeFeedSettingsNavHostKt$WhenMappings;
import org.wikipedia.settings.homefeed.HomeFeedSettingsStartDestination;
import org.wikipedia.suggestededits.SuggestedEditsCardsFragment;
import org.wikipedia.talk.TalkTopicsViewModel$$ExternalSyntheticLambda0;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NodeUtils {
    public static final void BecauseYouReadModule(Modifier modifier, WikiSite wikiSite, ForYouModule.BecauseYouRead becauseYouRead, Function2 function2, Function2 function22, Function2 function23, Function2 function24, Function0 function0, Function1 function1, Function1 function12, GapComposer gapComposer, int i) {
        wikiSite.getClass();
        becauseYouRead.getClass();
        gapComposer.startRestartGroup(-1552615925);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changedInstance(wikiSite) ? 32 : 16) | (gapComposer.changedInstance(becauseYouRead) ? 256 : 128) | (gapComposer.changedInstance(function2) ? 2048 : 1024) | (gapComposer.changedInstance(function22) ? 16384 : 8192) | (gapComposer.changedInstance(function23) ? 131072 : 65536) | (gapComposer.changedInstance(function24) ? 1048576 : 524288) | (gapComposer.changedInstance(function0) ? 8388608 : 4194304) | (gapComposer.changedInstance(function1) ? 67108864 : 33554432) | (gapComposer.changedInstance(function12) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            ForYouCard forYouCard = (ForYouCard) CollectionsKt.firstOrNull(becauseYouRead.cards);
            String hideKey = forYouCard != null ? forYouCard.getHideKey() : null;
            ForYouCardKt.ForYouModulePager(modifier, becauseYouRead, function1, Expect_jvmKt.rememberComposableLambda(361515319, new HomeScreenKt$$ExternalSyntheticLambda2(becauseYouRead, wikiSite, Math.abs(hideKey != null ? hideKey.hashCode() : 0), context, function2, function23, function22, function24, function0, function12, 1), gapComposer), gapComposer, (i2 & 14) | 3072 | ((i2 >> 3) & 112) | ((i2 >> 18) & 896));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NavHostKt$$ExternalSyntheticLambda13(modifier, wikiSite, becauseYouRead, function2, function22, function23, function24, function0, function1, function12, i, 1);
        }
    }

    public static final void HomeFeedSettingsNavHost(NavHostController navHostController, HomeFeedSettingsStartDestination homeFeedSettingsStartDestination, Function0 function0, GapComposer gapComposer, int i) {
        Object obj;
        Object obj2;
        Object gamesHubScreenKt$$ExternalSyntheticLambda23;
        navHostController.getClass();
        homeFeedSettingsStartDestination.getClass();
        function0.getClass();
        gapComposer.startRestartGroup(1267082666);
        int i2 = i | (gapComposer.changedInstance(navHostController) ? 4 : 2) | (gapComposer.changed(homeFeedSettingsStartDestination.ordinal()) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128);
        int i3 = 1;
        int i4 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Context context = navHostController.context;
            int i5 = HomeFeedSettingsNavHostKt$WhenMappings.$EnumSwitchMapping$0[homeFeedSettingsStartDestination.ordinal()];
            int i6 = 3;
            if (i5 == 1) {
                obj = HomeFeedSettingsDestination.Root.INSTANCE;
            } else if (i5 == 2) {
                obj = HomeFeedSettingsDestination.CommunityModuleScreen.INSTANCE;
            } else if (i5 == 3) {
                obj = HomeFeedSettingsDestination.ForYouModuleScreen.INSTANCE;
            } else {
                if (i5 != 4) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                obj = HomeFeedSettingsDestination.DefaultFeedViewScreen.INSTANCE;
            }
            Object obj3 = obj;
            Object fragmentManager$FragmentIntentSenderContract = new FragmentManager$FragmentIntentSenderContract(i6);
            boolean changedInstance = gapComposer.changedInstance(context);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj4 = Composer$Companion.Empty;
            if (changedInstance || rememberedValue == obj4) {
                rememberedValue = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0(context, i4);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Updater.rememberUpdatedState(fragmentManager$FragmentIntentSenderContract, gapComposer);
            Object rememberUpdatedState = Updater.rememberUpdatedState((Function1) rememberedValue, gapComposer);
            Object[] objArr = new Object[0];
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj4) {
                rememberedValue2 = new ImmLeaksCleaner$$ExternalSyntheticLambda0(i3);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Object obj5 = (String) SaverKt.rememberSaveable(objArr, (Function0) rememberedValue2, gapComposer);
            ActivityResultRegistryOwner activityResultRegistryOwner = (ActivityResultRegistryOwner) gapComposer.consume(LocalActivityResultRegistryOwner.LocalComposition);
            if (activityResultRegistryOwner == null) {
                gapComposer.startReplaceGroup(1213380307);
                Object obj6 = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
                while (true) {
                    if (!(obj6 instanceof ContextWrapper)) {
                        obj6 = null;
                        break;
                    } else if (obj6 instanceof ActivityResultRegistryOwner) {
                        break;
                    } else {
                        obj6 = ((ContextWrapper) obj6).getBaseContext();
                    }
                }
                activityResultRegistryOwner = (ActivityResultRegistryOwner) obj6;
            } else {
                gapComposer.startReplaceGroup(1213379439);
            }
            gapComposer.end(false);
            if (activityResultRegistryOwner == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No ActivityResultRegistryOwner was provided via LocalActivityResultRegistryOwner");
                return;
            }
            Object activityResultRegistry = activityResultRegistryOwner.getActivityResultRegistry();
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == obj4) {
                rememberedValue3 = new ActivityResultLauncherHolder();
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            ActivityResultLauncherHolder activityResultLauncherHolder = (ActivityResultLauncherHolder) rememberedValue3;
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (rememberedValue4 == obj4) {
                rememberedValue4 = new ManagedActivityResultLauncher(activityResultLauncherHolder);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Object obj7 = (ManagedActivityResultLauncher) rememberedValue4;
            boolean changedInstance2 = gapComposer.changedInstance(activityResultLauncherHolder) | gapComposer.changedInstance(activityResultRegistry) | gapComposer.changed(obj5) | gapComposer.changedInstance(fragmentManager$FragmentIntentSenderContract) | gapComposer.changed(rememberUpdatedState);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue5 == obj4) {
                obj2 = obj7;
                gamesHubScreenKt$$ExternalSyntheticLambda23 = new GamesHubScreenKt$$ExternalSyntheticLambda23(activityResultLauncherHolder, activityResultRegistry, obj5, fragmentManager$FragmentIntentSenderContract, rememberUpdatedState, 1);
                gapComposer.updateRememberedValue(gamesHubScreenKt$$ExternalSyntheticLambda23);
            } else {
                gamesHubScreenKt$$ExternalSyntheticLambda23 = rememberedValue5;
                obj2 = obj7;
            }
            Function1 function1 = (Function1) gamesHubScreenKt$$ExternalSyntheticLambda23;
            boolean changed = gapComposer.changed(fragmentManager$FragmentIntentSenderContract) | gapComposer.changed(activityResultRegistry) | gapComposer.changed(obj5);
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (changed || rememberedValue6 == obj4) {
                rememberedValue6 = new DisposableEffectImpl(function1);
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            Object rememberedValue7 = gapComposer.rememberedValue();
            if (rememberedValue7 == obj4) {
                rememberedValue7 = new TalkTopicsViewModel$$ExternalSyntheticLambda0(22);
                gapComposer.updateRememberedValue(rememberedValue7);
            }
            Function1 function12 = (Function1) rememberedValue7;
            Object rememberedValue8 = gapComposer.rememberedValue();
            if (rememberedValue8 == obj4) {
                rememberedValue8 = new TalkTopicsViewModel$$ExternalSyntheticLambda0(23);
                gapComposer.updateRememberedValue(rememberedValue8);
            }
            Function1 function13 = (Function1) rememberedValue8;
            Object rememberedValue9 = gapComposer.rememberedValue();
            if (rememberedValue9 == obj4) {
                rememberedValue9 = new TalkTopicsViewModel$$ExternalSyntheticLambda0(24);
                gapComposer.updateRememberedValue(rememberedValue9);
            }
            Function1 function14 = (Function1) rememberedValue9;
            Object rememberedValue10 = gapComposer.rememberedValue();
            if (rememberedValue10 == obj4) {
                rememberedValue10 = new TalkTopicsViewModel$$ExternalSyntheticLambda0(25);
                gapComposer.updateRememberedValue(rememberedValue10);
            }
            Function1 function15 = (Function1) rememberedValue10;
            boolean changedInstance3 = ((i2 & 896) == 256) | gapComposer.changedInstance(context) | gapComposer.changedInstance(navHostController) | gapComposer.changedInstance(obj2);
            Object rememberedValue11 = gapComposer.rememberedValue();
            if (changedInstance3 || rememberedValue11 == obj4) {
                Object aboutActivityKt$$ExternalSyntheticLambda7 = new AboutActivityKt$$ExternalSyntheticLambda7(function0, context, navHostController, obj2, 16);
                gapComposer.updateRememberedValue(aboutActivityKt$$ExternalSyntheticLambda7);
                rememberedValue11 = aboutActivityKt$$ExternalSyntheticLambda7;
            }
            ContextsKt.NavHost(navHostController, obj3, null, null, null, function12, function13, function14, function15, (Function1) rememberedValue11, gapComposer, (i2 & 14) | 920125440);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda18(navHostController, homeFeedSettingsStartDestination, function0, i, 24);
        }
    }

    public static final JsonDecoder asJsonDecoder(Decoder decoder) {
        decoder.getClass();
        JsonDecoder jsonDecoder = decoder instanceof JsonDecoder ? (JsonDecoder) decoder : null;
        if (jsonDecoder != null) {
            return jsonDecoder;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m(Reflection.factory, decoder.getClass(), new StringBuilder("This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got ")));
        return null;
    }

    public static final void asJsonEncoder(UuidKt uuidKt) {
        uuidKt.getClass();
        if ((uuidKt instanceof StreamingJsonEncoder ? (StreamingJsonEncoder) uuidKt : null) != null) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(ViewSizeResolver$CC.m(Reflection.factory, uuidKt.getClass(), new StringBuilder("This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got ")));
    }

    public static void disableNotifications(OnThisDayGameActivity onThisDayGameActivity, boolean z) {
        Prefs prefs = Prefs.INSTANCE;
        Prefs.setOtdNotificationState(OnThisDayGameNotificationState.DISABLED);
        Object systemService = onThisDayGameActivity.getSystemService("alarm");
        systemService.getClass();
        Intent action = new Intent(onThisDayGameActivity, (Class<?>) NotificationPollBroadcastReceiver.class).setAction("action_daily_game");
        action.getClass();
        ((AlarmManager) systemService).cancel(PendingIntent.getBroadcast(onThisDayGameActivity, 0, action, 67108864));
        if (z) {
            String string = onThisDayGameActivity.getString(R.string.on_this_day_game_notification_turned_off_snackbar_message);
            string.getClass();
            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(onThisDayGameActivity, string, 0, 12);
            makeSnackbar$default.setAction(R.string.reading_list_item_delete_undo, new OnThisDayGameNotificationManager$$ExternalSyntheticLambda4(onThisDayGameActivity, 1));
            makeSnackbar$default.show();
        }
        onThisDayGameActivity.invalidateOptionsMenu();
    }

    public static void enableNotifications(OnThisDayGameActivity onThisDayGameActivity, boolean z) {
        Prefs prefs = Prefs.INSTANCE;
        Prefs.setOtdNotificationState(OnThisDayGameNotificationState.ENABLED);
        if (Build.VERSION.SDK_INT < 33) {
            scheduleDailyGameNotification(onThisDayGameActivity);
        } else if (FileUtil.checkSelfPermission(onThisDayGameActivity, "android.permission.POST_NOTIFICATIONS") == 0) {
            scheduleDailyGameNotification(onThisDayGameActivity);
        } else {
            onThisDayGameActivity.requestPermissionLauncher.launch("android.permission.POST_NOTIFICATIONS", null);
        }
        if (z) {
            String string = onThisDayGameActivity.getString(R.string.on_this_day_game_notification_turned_on_snackbar_message);
            string.getClass();
            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(onThisDayGameActivity, string, 0, 12);
            makeSnackbar$default.setAction(R.string.reading_list_item_delete_undo, new OnThisDayGameNotificationManager$$ExternalSyntheticLambda4(onThisDayGameActivity, 0));
            makeSnackbar$default.show();
        }
        onThisDayGameActivity.invalidateOptionsMenu();
    }

    public static Fragment getAncestor(Fragment fragment) {
        fragment.getClass();
        Fragment fragment2 = fragment.mParentFragment;
        if (fragment2 == null) {
            return null;
        }
        boolean isInstance = SuggestedEditsCardsFragment.class.isInstance(fragment2);
        Fragment fragment3 = fragment.mParentFragment;
        if (isInstance) {
            fragment3.getClass();
            return fragment3;
        }
        fragment3.getClass();
        return getAncestor(fragment3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterative(DepthRegionTraversal.java:31)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visit(SwitchOverStringVisitor.java:60)
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0054 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x005c A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getDesiredLanguageCode(java.lang.String r3) {
        /*
            r3.getClass()
            int r0 = r3.hashCode()
            java.lang.String r1 = "zh-hans"
            java.lang.String r2 = "zh-hant"
            switch(r0) {
                case -371515459: goto L55;
                case -371515458: goto L4d;
                case 115814250: goto L43;
                case 115814402: goto L39;
                case 115814561: goto L2f;
                case 115814571: goto L25;
                case 115814739: goto L1b;
                case 115814786: goto L11;
                default: goto L10;
            }
        L10:
            goto L5b
        L11:
            java.lang.String r0 = "zh-tw"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L54
            goto L5b
        L1b:
            java.lang.String r0 = "zh-sg"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L5c
            goto L5b
        L25:
            java.lang.String r0 = "zh-my"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L5c
            goto L5b
        L2f:
            java.lang.String r0 = "zh-mo"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L54
            goto L5b
        L39:
            java.lang.String r0 = "zh-hk"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L54
            goto L5b
        L43:
            java.lang.String r0 = "zh-cn"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L5c
            goto L5b
        L4d:
            boolean r0 = r3.equals(r2)
            if (r0 != 0) goto L54
            goto L5b
        L54:
            return r2
        L55:
            boolean r0 = r3.equals(r1)
            if (r0 != 0) goto L5c
        L5b:
            return r3
        L5c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.NodeUtils.getDesiredLanguageCode(java.lang.String):java.lang.String");
    }

    public static Locale getDesiredLocale(Locale locale) {
        String language = locale.getLanguage();
        if (language == null) {
            return locale;
        }
        switch (language.hashCode()) {
            case -371515459:
                if (!language.equals("zh-hans")) {
                    return locale;
                }
                break;
            case -371515458:
                if (!language.equals("zh-hant")) {
                    return locale;
                }
                Locale locale2 = Locale.TRADITIONAL_CHINESE;
                locale2.getClass();
                return locale2;
            case 115814250:
                if (!language.equals("zh-cn")) {
                    return locale;
                }
                break;
            case 115814402:
                if (!language.equals("zh-hk")) {
                    return locale;
                }
                Locale locale22 = Locale.TRADITIONAL_CHINESE;
                locale22.getClass();
                return locale22;
            case 115814561:
                if (!language.equals("zh-mo")) {
                    return locale;
                }
                Locale locale222 = Locale.TRADITIONAL_CHINESE;
                locale222.getClass();
                return locale222;
            case 115814571:
                if (!language.equals("zh-my")) {
                    return locale;
                }
                break;
            case 115814739:
                if (!language.equals("zh-sg")) {
                    return locale;
                }
                break;
            case 115814786:
                if (!language.equals("zh-tw")) {
                    return locale;
                }
                Locale locale2222 = Locale.TRADITIONAL_CHINESE;
                locale2222.getClass();
                return locale2222;
            default:
                return locale;
        }
        Locale locale3 = Locale.SIMPLIFIED_CHINESE;
        locale3.getClass();
        return locale3;
    }

    public static String getString(int i, PageTitle pageTitle) {
        pageTitle.getClass();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Context context = Jsoup.getInstance().activityLifecycleHandler.currentActivity;
        if (context == null) {
            context = Jsoup.getInstance();
        }
        return getStringForLocale(context, new Locale(pageTitle.wikiSite.languageCode), i, new Object[0]);
    }

    public static String getStringForLocale(Context context, Locale locale, int i, Object... objArr) {
        context.getClass();
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        Locale locale2 = UuidKt.getLocales(configuration).mImpl.get(0);
        if (Intrinsics.areEqual(locale2 != null ? locale2.getLanguage() : null, locale.getLanguage())) {
            String string = context.getString(i, Arrays.copyOf(objArr, objArr.length));
            string.getClass();
            return string;
        }
        setDesiredLocale(configuration, locale);
        String m = ViewSizeResolver$CC.m(objArr, objArr.length, context.createConfigurationContext(configuration).getResources(), i);
        configuration.setLocale(locale2);
        context.createConfigurationContext(configuration);
        return m;
    }

    public static boolean isEndToEnd(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    public static Intent newIntent(Context context, ReadingList readingList) {
        readingList.getClass();
        Intent putExtra = new Intent(context, (Class<?>) ReadingListActivity.class).putExtra("readingListTitle", readingList.getTitle()).putExtra("readingListId", readingList.id);
        putExtra.getClass();
        return putExtra;
    }

    public static void scheduleDailyGameNotification(OnThisDayGameActivity onThisDayGameActivity) {
        Object systemService = onThisDayGameActivity.getSystemService("alarm");
        systemService.getClass();
        AlarmManager alarmManager = (AlarmManager) systemService;
        Intent action = new Intent(onThisDayGameActivity, (Class<?>) NotificationPollBroadcastReceiver.class).setAction("action_daily_game");
        action.getClass();
        LocalDateTime now = LocalDateTime.now();
        Duration between = Duration.between(now, LocalDateTime.of(now.toLocalDate().plusDays(1L), LocalTime.MIDNIGHT));
        between.getClass();
        alarmManager.setInexactRepeating(0, System.currentTimeMillis() + between.toMillis(), 86400000L, PendingIntent.getBroadcast(onThisDayGameActivity, 0, action, 67108864));
    }

    public static void setDesiredLocale(Configuration configuration, Locale locale) {
        if (!Intrinsics.areEqual(locale.getLanguage(), "zh")) {
            configuration.setLocale(getDesiredLocale(locale));
        } else {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            configuration.setLocale(getDesiredLocale(new Locale(ViewSizeResolver$CC.m())));
        }
    }

    public static void showNotification(Context context) {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        if ((Jsoup.getInstance().activityLifecycleHandler.currentActivity instanceof OnThisDayGameActivity) || !WikiGames.WHICH_CAME_FIRST.isLangSupported(Jsoup.getInstance().getWikiSite().languageCode)) {
            return;
        }
        NotificationCompat$Builder defaultBuilder$default = NotificationPresenter.getDefaultBuilder$default(context, 1L, NotificationCategory.GAMES, 4);
        String string = context.getString(R.string.on_this_day_game_feed_entry_card_heading);
        string.getClass();
        String string2 = context.getString(R.string.on_this_day_game_notification_text);
        string2.getClass();
        String string3 = context.getString(R.string.on_this_day_game_notification_text);
        int i = OnThisDayGameActivity.$r8$clinit;
        NotificationPresenter.showNotification(context, defaultBuilder$default, 1, string, string2, string3, null, null, R.color.blue600, OnThisDayGameProvider.newIntent$default(context, Constants.InvokeSource.NOTIFICATION, Jsoup.getInstance().getWikiSite(), null, 0, 24));
    }

    public static Stream stream(Element element, Class cls) {
        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(new NodeIterator(element, cls), 273), false);
    }

    public static final AnnotatedString toAnnotatedStringWithBoldQuery(String str, String str2) {
        AnnotatedString annotatedString;
        int indexOf$default;
        if (StringsKt.contains(str, "<", false) || StringsKt.contains(str, "&", false)) {
            StringUtil stringUtil = StringUtil.INSTANCE;
            annotatedString = Options.Companion.toAnnotatedString(StringUtil.fromHtml(str), null, null);
        } else {
            annotatedString = new AnnotatedString(str);
        }
        if (str2 == null || str2.length() == 0 || (indexOf$default = StringsKt.indexOf$default(annotatedString.text, str2, 0, true, 2)) < 0) {
            return annotatedString;
        }
        AnnotatedString.Builder builder = new AnnotatedString.Builder(annotatedString);
        builder.addStyle(new SpanStyle(0L, 0L, FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531), indexOf$default, str2.length() + indexOf$default);
        return builder.toAnnotatedString();
    }

    public static Intent newIntent(Context context, ReadingListMode readingListMode, Constants.InvokeSource invokeSource) {
        readingListMode.getClass();
        Intent putExtra = new Intent(context, (Class<?>) ReadingListActivity.class).putExtra("readingListMode", readingListMode).putExtra("invokeSource", invokeSource);
        putExtra.getClass();
        return putExtra;
    }

    public static String getString(int i, String str) {
        str.getClass();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Context context = Jsoup.getInstance().activityLifecycleHandler.currentActivity;
        if (context == null) {
            context = Jsoup.getInstance();
        }
        return getStringForLocale(context, new Locale(str), i, new Object[0]);
    }
}
