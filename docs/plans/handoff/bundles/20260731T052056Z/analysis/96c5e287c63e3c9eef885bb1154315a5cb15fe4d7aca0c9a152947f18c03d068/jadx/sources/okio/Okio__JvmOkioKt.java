package okio;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.util.TypedValueCompat$Api34Impl;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigationevent.NavigationEvent_androidKt;
import androidx.work.Constraints;
import androidx.work.NetworkType;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import coil3.network.HttpException;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.UtilsKt;
import java.io.EOFException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.text.MatchGroup;
import kotlin.text.MatcherMatchResult;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlin.text.RegexKt;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.model.ForYouCard;
import org.wikipedia.feed.model.RandomCard;
import org.wikipedia.feed.random.RandomModuleKt$$ExternalSyntheticLambda1;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.language.LanguageUtil;
import org.wikipedia.notifications.PollNotificationWorker;
import org.wikipedia.page.PageTitle;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.homefeed.CommunityModuleType;
import org.wikipedia.settings.homefeed.ForYouModulesScreenKt$$ExternalSyntheticLambda0;
import org.wikipedia.settings.homefeed.ForYouModulesScreenKt$$ExternalSyntheticLambda3;
import org.wikipedia.settings.homefeed.ForYouModulesScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.settings.homefeed.ModulesViewModel;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda7;
import org.wikipedia.views.SurveyDialog$WhenMappings;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract /* synthetic */ class Okio__JvmOkioKt {
    public static Boolean debug;

    public static final void CommunityModulesScreen(ModulesViewModel modulesViewModel, Function0 function0, GapComposer gapComposer, int i) {
        ModulesViewModel modulesViewModel2;
        int i2;
        ModulesViewModel modulesViewModel3;
        MutableState mutableState;
        MutableState mutableState2;
        Object obj;
        GapComposer gapComposer2;
        ModulesViewModel modulesViewModel4;
        GapComposer gapComposer3 = gapComposer;
        function0.getClass();
        gapComposer3.startRestartGroup(-236582848);
        int i3 = i | 2 | (gapComposer3.changedInstance(function0) ? 32 : 16);
        int i4 = 1;
        if (gapComposer3.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            gapComposer3.startDefaults();
            if ((i & 1) == 0 || gapComposer3.getDefaultsInvalid()) {
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer3);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                } else {
                    i2 = i3 & (-15);
                    modulesViewModel3 = (ModulesViewModel) UnsignedKt.viewModel(Reflection.factory.getOrCreateKotlinClass(ModulesViewModel.class), current, null, ViewModelKt.getViewModelCreationExtras(current), gapComposer3);
                }
            } else {
                gapComposer3.skipToGroupEnd();
                i2 = i3 & (-15);
                modulesViewModel3 = modulesViewModel;
            }
            gapComposer3.endDefaults();
            Context context = (Context) gapComposer3.consume(AndroidCompositionLocals_androidKt.LocalContext);
            MutableState collectAsState = Updater.collectAsState(modulesViewModel3.hiddenModules, gapComposer3);
            Object rememberedValue = gapComposer3.rememberedValue();
            Object obj2 = Composer$Companion.Empty;
            if (rememberedValue == obj2) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer3.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState3 = (MutableState) rememberedValue;
            Object rememberedValue2 = gapComposer3.rememberedValue();
            if (rememberedValue2 == obj2) {
                rememberedValue2 = Updater.mutableStateOf$default("");
                gapComposer3.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState4 = (MutableState) rememberedValue2;
            Set set = (Set) collectAsState.getValue();
            if (set == null) {
                gapComposer3.startReplaceGroup(2087657);
                gapComposer3.end(false);
                mutableState = mutableState4;
                mutableState2 = mutableState3;
                obj = obj2;
                gapComposer2 = gapComposer3;
            } else {
                gapComposer3.startReplaceGroup(2087658);
                String stringResource = UtilsKt.stringResource(R.string.explore_feed_community_tab_label, gapComposer3);
                String stringResource2 = UtilsKt.stringResource(R.string.home_feed_settings_community_modules_description, gapComposer3);
                CommunityModuleType.Companion.getClass();
                int i5 = i2;
                ArrayList entries = CommunityModuleType.Companion.entries();
                boolean changedInstance = gapComposer3.changedInstance(context) | gapComposer3.changedInstance(modulesViewModel3);
                Object rememberedValue3 = gapComposer3.rememberedValue();
                if (changedInstance || rememberedValue3 == obj2) {
                    ForYouModulesScreenKt$$ExternalSyntheticLambda0 forYouModulesScreenKt$$ExternalSyntheticLambda0 = new ForYouModulesScreenKt$$ExternalSyntheticLambda0(context, modulesViewModel3, mutableState4, mutableState3, 1);
                    mutableState = mutableState4;
                    mutableState2 = mutableState3;
                    gapComposer3.updateRememberedValue(forYouModulesScreenKt$$ExternalSyntheticLambda0);
                    rememberedValue3 = forYouModulesScreenKt$$ExternalSyntheticLambda0;
                } else {
                    mutableState = mutableState4;
                    mutableState2 = mutableState3;
                }
                obj = obj2;
                TabsBoxKt.ToggleListScreen(stringResource, stringResource2, entries, set, (Function2) rememberedValue3, null, function0, gapComposer3, 3670016 & (i5 << 15), 32);
                gapComposer2 = gapComposer3;
                gapComposer2.end(false);
            }
            if (((Boolean) mutableState2.getValue()).booleanValue()) {
                gapComposer2.startReplaceGroup(3091469);
                String stringResource3 = UtilsKt.stringResource(R.string.home_feed_settings_community_empty_dialog_title, gapComposer2);
                String stringResource4 = UtilsKt.stringResource(R.string.home_feed_settings_empty_dialog_text, gapComposer2);
                String stringResource5 = UtilsKt.stringResource(R.string.home_feed_settings_empty_dialog_positive, gapComposer2);
                String stringResource6 = UtilsKt.stringResource(android.R.string.cancel, gapComposer2);
                Object rememberedValue4 = gapComposer2.rememberedValue();
                if (rememberedValue4 == obj) {
                    rememberedValue4 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda32(mutableState2, 9);
                    gapComposer2.updateRememberedValue(rememberedValue4);
                }
                Function0 function02 = (Function0) rememberedValue4;
                boolean changedInstance2 = gapComposer2.changedInstance(context);
                Object rememberedValue5 = gapComposer2.rememberedValue();
                if (changedInstance2 || rememberedValue5 == obj) {
                    rememberedValue5 = new ForYouModulesScreenKt$$ExternalSyntheticLambda3(context, mutableState2, i4);
                    gapComposer2.updateRememberedValue(rememberedValue5);
                }
                Function0 function03 = (Function0) rememberedValue5;
                boolean changedInstance3 = gapComposer2.changedInstance(context) | gapComposer2.changedInstance(modulesViewModel3);
                Object rememberedValue6 = gapComposer2.rememberedValue();
                if (changedInstance3 || rememberedValue6 == obj) {
                    ModulesViewModel modulesViewModel5 = modulesViewModel3;
                    ForYouModulesScreenKt$$ExternalSyntheticLambda4 forYouModulesScreenKt$$ExternalSyntheticLambda4 = new ForYouModulesScreenKt$$ExternalSyntheticLambda4(context, modulesViewModel5, mutableState2, mutableState, 1);
                    modulesViewModel4 = modulesViewModel5;
                    gapComposer2.updateRememberedValue(forYouModulesScreenKt$$ExternalSyntheticLambda4);
                    rememberedValue6 = forYouModulesScreenKt$$ExternalSyntheticLambda4;
                } else {
                    modulesViewModel4 = modulesViewModel3;
                }
                TabsBoxKt.m905WikipediaAlertDialogsK9R1Co(null, stringResource3, null, 0, stringResource4, null, 0, null, stringResource5, 0L, stringResource6, 0L, function02, function03, (Function0) rememberedValue6, gapComposer, 0, 384, 2797);
                gapComposer3 = gapComposer;
                gapComposer3.end(false);
            } else {
                gapComposer3 = gapComposer2;
                modulesViewModel4 = modulesViewModel3;
                gapComposer3.startReplaceGroup(4034210);
                gapComposer3.end(false);
            }
            modulesViewModel2 = modulesViewModel4;
        } else {
            gapComposer3.skipToGroupEnd();
            modulesViewModel2 = modulesViewModel;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer3.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomActivity$$ExternalSyntheticLambda1(modulesViewModel2, function0, i, 12);
        }
    }

    public static final void RandomModule(Modifier modifier, final WikiSite wikiSite, final ForYouModule.Random random, final Function2 function2, final Function2 function22, final Function2 function23, final Function2 function24, final Function0 function0, Function1 function1, final Function1 function12, final Function0 function02, GapComposer gapComposer, int i) {
        wikiSite.getClass();
        random.getClass();
        gapComposer.startRestartGroup(-2029008529);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changedInstance(wikiSite) ? 32 : 16) | (gapComposer.changedInstance(random) ? 256 : 128) | (gapComposer.changedInstance(function2) ? 2048 : 1024) | (gapComposer.changedInstance(function22) ? 16384 : 8192) | (gapComposer.changedInstance(function23) ? 131072 : 65536) | (gapComposer.changedInstance(function24) ? 1048576 : 524288) | (gapComposer.changedInstance(function0) ? 8388608 : 4194304) | (gapComposer.changedInstance(function1) ? 67108864 : 33554432) | (gapComposer.changedInstance(function12) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i2 & 1, ((306783379 & i2) == 306783378 && ((gapComposer.changedInstance(function02) ? (char) 4 : (char) 2) & 3) == 2) ? false : true)) {
            final Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            ForYouCardKt.ForYouModulePager(modifier, random, function1, Expect_jvmKt.rememberComposableLambda(1535493531, new Function3() { // from class: org.wikipedia.feed.random.RandomModuleKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    int intValue = ((Integer) obj).intValue();
                    GapComposer gapComposer2 = (GapComposer) obj2;
                    int intValue2 = ((Integer) obj3).intValue();
                    if ((intValue2 & 6) == 0) {
                        intValue2 |= gapComposer2.changed(intValue) ? 4 : 2;
                    }
                    final int i3 = 0;
                    final int i4 = 1;
                    if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                        ForYouModule.Random random2 = ForYouModule.Random.this;
                        Object obj4 = random2.cards.get(intValue);
                        obj4.getClass();
                        final RandomCard randomCard = (RandomCard) obj4;
                        final HistoryEntry historyEntry = new HistoryEntry(18, randomCard.title);
                        PageTitle pageTitle = randomCard.title;
                        ForYouCard forYouCard = (ForYouCard) random2.cards.get(intValue);
                        WikiSite wikiSite2 = wikiSite;
                        Context context2 = context;
                        String string = ContextKt.getString(context2, wikiSite2.languageCode, R.string.view_random_article_card_title, new Object[0]);
                        ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(186387259, new RandomScreenKt$$ExternalSyntheticLambda18(function02, context2, wikiSite2), gapComposer2);
                        final Function2 function25 = function2;
                        boolean changed = gapComposer2.changed(function25) | gapComposer2.changedInstance(randomCard) | gapComposer2.changedInstance(historyEntry);
                        Object rememberedValue = gapComposer2.rememberedValue();
                        Object obj5 = Composer$Companion.Empty;
                        if (changed || rememberedValue == obj5) {
                            rememberedValue = new Function1() { // from class: org.wikipedia.feed.random.RandomModuleKt$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj6) {
                                    int i5 = i3;
                                    Unit unit = Unit.INSTANCE;
                                    HistoryEntry historyEntry2 = historyEntry;
                                    RandomCard randomCard2 = randomCard;
                                    Function2 function26 = function25;
                                    PageTitle pageTitle2 = (PageTitle) obj6;
                                    switch (i5) {
                                        case 0:
                                            pageTitle2.getClass();
                                            function26.invoke(randomCard2, historyEntry2);
                                            break;
                                        case 1:
                                            pageTitle2.getClass();
                                            function26.invoke(randomCard2, historyEntry2);
                                            break;
                                        default:
                                            pageTitle2.getClass();
                                            function26.invoke(randomCard2, historyEntry2);
                                            break;
                                    }
                                    return unit;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue);
                        }
                        Function1 function13 = (Function1) rememberedValue;
                        final Function2 function26 = function23;
                        boolean changed2 = gapComposer2.changed(function26) | gapComposer2.changedInstance(randomCard) | gapComposer2.changedInstance(historyEntry);
                        Object rememberedValue2 = gapComposer2.rememberedValue();
                        if (changed2 || rememberedValue2 == obj5) {
                            rememberedValue2 = new Function1() { // from class: org.wikipedia.feed.random.RandomModuleKt$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj6) {
                                    int i5 = i4;
                                    Unit unit = Unit.INSTANCE;
                                    HistoryEntry historyEntry2 = historyEntry;
                                    RandomCard randomCard2 = randomCard;
                                    Function2 function262 = function26;
                                    PageTitle pageTitle2 = (PageTitle) obj6;
                                    switch (i5) {
                                        case 0:
                                            pageTitle2.getClass();
                                            function262.invoke(randomCard2, historyEntry2);
                                            break;
                                        case 1:
                                            pageTitle2.getClass();
                                            function262.invoke(randomCard2, historyEntry2);
                                            break;
                                        default:
                                            pageTitle2.getClass();
                                            function262.invoke(randomCard2, historyEntry2);
                                            break;
                                    }
                                    return unit;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue2);
                        }
                        Function1 function14 = (Function1) rememberedValue2;
                        final Function2 function27 = function22;
                        boolean changed3 = gapComposer2.changed(function27) | gapComposer2.changedInstance(randomCard) | gapComposer2.changedInstance(historyEntry);
                        Object rememberedValue3 = gapComposer2.rememberedValue();
                        if (changed3 || rememberedValue3 == obj5) {
                            final int i5 = 2;
                            rememberedValue3 = new Function1() { // from class: org.wikipedia.feed.random.RandomModuleKt$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj6) {
                                    int i52 = i5;
                                    Unit unit = Unit.INSTANCE;
                                    HistoryEntry historyEntry2 = historyEntry;
                                    RandomCard randomCard2 = randomCard;
                                    Function2 function262 = function27;
                                    PageTitle pageTitle2 = (PageTitle) obj6;
                                    switch (i52) {
                                        case 0:
                                            pageTitle2.getClass();
                                            function262.invoke(randomCard2, historyEntry2);
                                            break;
                                        case 1:
                                            pageTitle2.getClass();
                                            function262.invoke(randomCard2, historyEntry2);
                                            break;
                                        default:
                                            pageTitle2.getClass();
                                            function262.invoke(randomCard2, historyEntry2);
                                            break;
                                    }
                                    return unit;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue3);
                        }
                        Function1 function15 = (Function1) rememberedValue3;
                        Object obj6 = function12;
                        boolean changed4 = gapComposer2.changed(obj6) | gapComposer2.changedInstance(randomCard);
                        Object rememberedValue4 = gapComposer2.rememberedValue();
                        if (changed4 || rememberedValue4 == obj5) {
                            rememberedValue4 = new Regex$$ExternalSyntheticLambda0(24, obj6, randomCard);
                            gapComposer2.updateRememberedValue(rememberedValue4);
                        }
                        ForYouCardKt.ForYouCardContent(wikiSite2, pageTitle, null, 0, random2, forYouCard, null, string, rememberComposableLambda, function13, function14, function15, function24, function0, 0, (Function0) rememberedValue4, gapComposer2, 100663296, 16460);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, (i2 & 14) | 3072 | ((i2 >> 3) & 112) | ((i2 >> 18) & 896));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomModuleKt$$ExternalSyntheticLambda1(modifier, wikiSite, random, function2, function22, function23, function24, function0, function1, function12, function02, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void WikiErrorView(androidx.compose.ui.Modifier r51, java.lang.Throwable r52, org.wikipedia.compose.components.error.WikiErrorClickEvents r53, boolean r54, androidx.compose.runtime.GapComposer r55, int r56, int r57) {
        /*
            Method dump skipped, instructions count: 928
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Okio__JvmOkioKt.WikiErrorView(androidx.compose.ui.Modifier, java.lang.Throwable, org.wikipedia.compose.components.error.WikiErrorClickEvents, boolean, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static void checkThread(String str) {
        Boolean bool = debug;
        if (bool == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("ThreadUtils isn't correctly initialised");
        } else if (bool.booleanValue() && Looper.myLooper() != Looper.getMainLooper()) {
            throw new HttpException(str.concat(" interactions should happen on the UI thread."));
        }
    }

    public static Pair findNameParamInTemplate(String[] strArr, String str, int i, int i2) {
        int i3;
        String str2 = "";
        int i4 = -1;
        for (String str3 : strArr) {
            if (i4 == -1) {
                Pattern compile = Pattern.compile("\\|(\\s*)" + str3 + "\\s*=([^|]*)(\\|)");
                compile.getClass();
                str.getClass();
                Matcher matcher = compile.matcher(str);
                matcher.getClass();
                MatcherMatchResult findNext = RegexKt.findNext(matcher, i, str);
                MatchGroup matchGroup = findNext != null ? findNext.groups.get(1) : null;
                MatchGroup matchGroup2 = findNext != null ? findNext.groups.get(3) : null;
                if (matchGroup != null && matchGroup2 != null && (i3 = matchGroup2.range.first) < i2) {
                    str2 = matchGroup.value;
                    i4 = i3;
                }
            }
        }
        return new Pair(Integer.valueOf(i4), str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0080, code lost:
    
        if (r28.equals(android.text.TextUtils.getLayoutDirectionFromLocale(new java.util.Locale(r21)) == 1 ? "img_left" : "img_right") == false) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:122:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x047c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static kotlin.Triple insertImageIntoWikiText(java.lang.String r21, java.lang.String r22, java.lang.String r23, java.lang.String r24, java.lang.String r25, java.lang.String r26, java.lang.String r27, java.lang.String r28, int r29, boolean r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 1173
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Okio__JvmOkioKt.insertImageIntoWikiText(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, boolean, boolean):kotlin.Triple");
    }

    public static final boolean isProbablyUtf8(Buffer buffer) {
        buffer.getClass();
        try {
            RealBufferedSource realBufferedSource = new RealBufferedSource(new PeekSource(buffer));
            for (long j = 0; j < 16; j++) {
                if (realBufferedSource.exhausted()) {
                    return true;
                }
                realBufferedSource.require(1L);
                Buffer buffer2 = realBufferedSource.bufferField;
                byte b = buffer2.getByte(0L);
                if ((b & 224) == 192) {
                    realBufferedSource.require(2L);
                } else if ((b & 240) == 224) {
                    realBufferedSource.require(3L);
                } else if ((b & 248) == 240) {
                    realBufferedSource.require(4L);
                }
                int readUtf8CodePoint = buffer2.readUtf8CodePoint();
                if (Character.isISOControl(readUtf8CodePoint) && !Character.isWhitespace(readUtf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static void openInCustomTab(Context context, String str) {
        ActivityOptions activityOptions;
        context.getClass();
        int themedColor = Cache.Companion.getThemedColor(context, R.attr.paper_color) | (-16777216);
        int themedColor2 = (-16777216) | Cache.Companion.getThemedColor(context, R.attr.paper_color);
        int themedColor3 = Cache.Companion.getThemedColor(context, R.attr.paper_color);
        int themedColor4 = Cache.Companion.getThemedColor(context, R.attr.secondary_color);
        Intent intent = new Intent("android.intent.action.VIEW");
        Bundle bundle = new Bundle();
        bundle.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", themedColor);
        bundle.putInt("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", themedColor3);
        bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR", themedColor2);
        bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR", themedColor4);
        if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
            Bundle bundle2 = new Bundle();
            bundle2.putBinder("android.support.customtabs.extra.SESSION", null);
            intent.putExtras(bundle2);
        }
        intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
        intent.putExtras(new Bundle());
        intent.putExtras(bundle);
        intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            String defaultLocale = LanguageUtil.getDefaultLocale();
            if (!TextUtils.isEmpty(defaultLocale)) {
                Bundle bundleExtra = intent.hasExtra("com.android.browser.headers") ? intent.getBundleExtra("com.android.browser.headers") : new Bundle();
                if (!bundleExtra.containsKey("Accept-Language")) {
                    bundleExtra.putString("Accept-Language", defaultLocale);
                    intent.putExtra("com.android.browser.headers", bundleExtra);
                }
            }
        }
        if (i >= 34) {
            activityOptions = ActivityOptions.makeBasic();
            TypedValueCompat$Api34Impl.setShareIdentityEnabled(activityOptions);
        } else {
            activityOptions = null;
        }
        if (i >= 36) {
            if (activityOptions == null) {
                activityOptions = ActivityOptions.makeBasic();
            }
            NavigationEvent_androidKt.setAllowPassThroughOnTouchOutside(activityOptions, !intent.getBooleanExtra("androidx.browser.customtabs.extra.DISABLE_BACKGROUND_INTERACTION", false));
        }
        Bundle bundle3 = activityOptions != null ? activityOptions.toBundle() : null;
        Uri parse = Uri.parse(str);
        parse.getClass();
        intent.setData(parse);
        context.startActivity(intent, bundle3);
    }

    public static void schedulePollNotificationJob(Context context) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        NetworkType networkType = NetworkType.CONNECTED;
        networkType.getClass();
        Constraints constraints = new Constraints(new NetworkRequestCompat(null), networkType, false, false, false, false, -1L, -1L, Build.VERSION.SDK_INT >= 24 ? CollectionsKt.toSet(linkedHashSet) : EmptySet.INSTANCE);
        Latch latch = new Latch(PollNotificationWorker.class);
        ((WorkSpec) latch.awaiters).constraints = constraints;
        WorkManagerImpl.getInstance$1(context).enqueue(latch.build());
    }

    public static void showFeedbackSnackbarAndTooltip(AppCompatActivity appCompatActivity, Constants.InvokeSource invokeSource) {
        ShareUtil.showMessage(appCompatActivity, R.string.survey_dialog_submitted_snackbar);
        if (SurveyDialog$WhenMappings.$EnumSwitchMapping$0[invokeSource.ordinal()] == 1) {
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String m = ViewSizeResolver$CC.m();
            Prefs prefs = Prefs.INSTANCE;
            EventPlatformClient.submit(new AppInteractionEvent("feedback_submit_toast", "feedback_form", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
            appCompatActivity.getWindow().getDecorView().postDelayed(new SurveyDialog$$ExternalSyntheticLambda7(appCompatActivity, invokeSource, 0), 100L);
        }
    }

    public static final InputStreamSource source(InputStream inputStream) {
        inputStream.getClass();
        return new InputStreamSource(inputStream, new Timeout());
    }
}
