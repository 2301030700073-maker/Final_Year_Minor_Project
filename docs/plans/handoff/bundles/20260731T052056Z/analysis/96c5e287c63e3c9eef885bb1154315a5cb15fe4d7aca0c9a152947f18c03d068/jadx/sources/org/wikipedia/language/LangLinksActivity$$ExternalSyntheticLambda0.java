package org.wikipedia.language;

import android.content.Intent;
import android.os.Build;
import android.view.Window;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.TabUtil;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LangLinksActivity$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LangLinksActivity f$0;

    public /* synthetic */ LangLinksActivity$$ExternalSyntheticLambda0(LangLinksActivity langLinksActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = langLinksActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final LangLinksActivity langLinksActivity = this.f$0;
        final int i2 = 2;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        final int i3 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i4 = LangLinksActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-302534921, new LangLinksActivity$$ExternalSyntheticLambda0(langLinksActivity, i3), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                int i5 = LangLinksActivity.$r8$clinit;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    MutableState collectAsState = Updater.collectAsState(((LangLinksViewModel) langLinksActivity.viewModel$delegate.getValue()).uiState, gapComposer2);
                    Modifier imePadding = OffsetKt.imePadding(OffsetKt.safeDrawingPadding(Modifier.Companion.$$INSTANCE));
                    UiState uiState = (UiState) collectAsState.getValue();
                    boolean changedInstance = gapComposer2.changedInstance(langLinksActivity);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        final Object[] objArr3 = objArr == true ? 1 : 0;
                        rememberedValue = new Function0() { // from class: org.wikipedia.language.LangLinksActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = objArr3;
                                Unit unit2 = Unit.INSTANCE;
                                LangLinksActivity langLinksActivity2 = langLinksActivity;
                                switch (i6) {
                                    case 0:
                                        int i7 = LangLinksActivity.$r8$clinit;
                                        ((LangLinksViewModel) langLinksActivity2.viewModel$delegate.getValue()).fetchAllData();
                                        break;
                                    case 1:
                                        int i8 = LangLinksActivity.$r8$clinit;
                                        langLinksActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                    default:
                                        int i9 = LangLinksActivity.$r8$clinit;
                                        langLinksActivity2.finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changedInstance2 = gapComposer2.changedInstance(langLinksActivity);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new Function0() { // from class: org.wikipedia.language.LangLinksActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = i3;
                                Unit unit2 = Unit.INSTANCE;
                                LangLinksActivity langLinksActivity2 = langLinksActivity;
                                switch (i6) {
                                    case 0:
                                        int i7 = LangLinksActivity.$r8$clinit;
                                        ((LangLinksViewModel) langLinksActivity2.viewModel$delegate.getValue()).fetchAllData();
                                        break;
                                    case 1:
                                        int i8 = LangLinksActivity.$r8$clinit;
                                        langLinksActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                    default:
                                        int i9 = LangLinksActivity.$r8$clinit;
                                        langLinksActivity2.finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    WikiErrorClickEvents wikiErrorClickEvents = new WikiErrorClickEvents(function0, (Function0) rememberedValue2, null, 12);
                    boolean changedInstance3 = gapComposer2.changedInstance(langLinksActivity);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changedInstance3 || rememberedValue3 == neverEqualPolicy) {
                        final Object[] objArr4 = objArr2 == true ? 1 : 0;
                        rememberedValue3 = new Function1() { // from class: org.wikipedia.language.LangLinksActivity$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                int i6 = objArr4;
                                Unit unit2 = Unit.INSTANCE;
                                LangLinksActivity langLinksActivity2 = langLinksActivity;
                                switch (i6) {
                                    case 0:
                                        LangLinksItem langLinksItem = (LangLinksItem) obj3;
                                        int i7 = LangLinksActivity.$r8$clinit;
                                        langLinksItem.getClass();
                                        PageTitle pageTitle = langLinksItem.pageTitle;
                                        if (pageTitle != null) {
                                            WikipediaApp wikipediaApp = WikipediaApp.instance;
                                            AppLanguageState languageState = Jsoup.getInstance().getLanguageState();
                                            String str = langLinksItem.languageCode;
                                            languageState.getClass();
                                            ArrayList arrayList = languageState._mruLanguageCodes;
                                            arrayList.remove(str);
                                            arrayList.add(0, str);
                                            Prefs prefs = Prefs.INSTANCE;
                                            arrayList.getClass();
                                            StringUtil stringUtil = StringUtil.INSTANCE;
                                            PrefsIoUtil.setString(R.string.preference_key_language_mru, CollectionsKt.joinToString$default(arrayList, ",", null, null, null, 62));
                                            HistoryEntry historyEntry = new HistoryEntry(6, pageTitle);
                                            historyEntry.prevId = ((LangLinksViewModel) langLinksActivity2.viewModel$delegate.getValue()).historyEntryId;
                                            Intent putExtra = new Intent("org.wikipedia.load_in_current_tab").setClass(langLinksActivity2, PageActivity.class).putExtra("org.wikipedia.history.historyentry", historyEntry).putExtra("title", pageTitle);
                                            putExtra.getClass();
                                            langLinksActivity2.setResult(1, putExtra);
                                            Window window = langLinksActivity2.getWindow();
                                            window.getClass();
                                            HintHandler hintHandler = new HintHandler(window.getDecorView());
                                            int i8 = Build.VERSION.SDK_INT;
                                            (i8 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i8 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i8 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                                            langLinksActivity2.finish();
                                            break;
                                        }
                                        break;
                                    default:
                                        String str2 = (String) obj3;
                                        int i9 = LangLinksActivity.$r8$clinit;
                                        str2.getClass();
                                        ((LangLinksViewModel) langLinksActivity2.viewModel$delegate.getValue()).updateLanguageItems(str2);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    Function1 function1 = (Function1) rememberedValue3;
                    boolean changedInstance4 = gapComposer2.changedInstance(langLinksActivity);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (changedInstance4 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new Function0() { // from class: org.wikipedia.language.LangLinksActivity$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i6 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                LangLinksActivity langLinksActivity2 = langLinksActivity;
                                switch (i6) {
                                    case 0:
                                        int i7 = LangLinksActivity.$r8$clinit;
                                        ((LangLinksViewModel) langLinksActivity2.viewModel$delegate.getValue()).fetchAllData();
                                        break;
                                    case 1:
                                        int i8 = LangLinksActivity.$r8$clinit;
                                        langLinksActivity2.getOnBackPressedDispatcher().onBackPressed();
                                        break;
                                    default:
                                        int i9 = LangLinksActivity.$r8$clinit;
                                        langLinksActivity2.finish();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    Function0 function02 = (Function0) rememberedValue4;
                    boolean changedInstance5 = gapComposer2.changedInstance(langLinksActivity);
                    Object rememberedValue5 = gapComposer2.rememberedValue();
                    if (changedInstance5 || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new Function1() { // from class: org.wikipedia.language.LangLinksActivity$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                int i6 = i3;
                                Unit unit2 = Unit.INSTANCE;
                                LangLinksActivity langLinksActivity2 = langLinksActivity;
                                switch (i6) {
                                    case 0:
                                        LangLinksItem langLinksItem = (LangLinksItem) obj3;
                                        int i7 = LangLinksActivity.$r8$clinit;
                                        langLinksItem.getClass();
                                        PageTitle pageTitle = langLinksItem.pageTitle;
                                        if (pageTitle != null) {
                                            WikipediaApp wikipediaApp = WikipediaApp.instance;
                                            AppLanguageState languageState = Jsoup.getInstance().getLanguageState();
                                            String str = langLinksItem.languageCode;
                                            languageState.getClass();
                                            ArrayList arrayList = languageState._mruLanguageCodes;
                                            arrayList.remove(str);
                                            arrayList.add(0, str);
                                            Prefs prefs = Prefs.INSTANCE;
                                            arrayList.getClass();
                                            StringUtil stringUtil = StringUtil.INSTANCE;
                                            PrefsIoUtil.setString(R.string.preference_key_language_mru, CollectionsKt.joinToString$default(arrayList, ",", null, null, null, 62));
                                            HistoryEntry historyEntry = new HistoryEntry(6, pageTitle);
                                            historyEntry.prevId = ((LangLinksViewModel) langLinksActivity2.viewModel$delegate.getValue()).historyEntryId;
                                            Intent putExtra = new Intent("org.wikipedia.load_in_current_tab").setClass(langLinksActivity2, PageActivity.class).putExtra("org.wikipedia.history.historyentry", historyEntry).putExtra("title", pageTitle);
                                            putExtra.getClass();
                                            langLinksActivity2.setResult(1, putExtra);
                                            Window window = langLinksActivity2.getWindow();
                                            window.getClass();
                                            HintHandler hintHandler = new HintHandler(window.getDecorView());
                                            int i8 = Build.VERSION.SDK_INT;
                                            (i8 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i8 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i8 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                                            langLinksActivity2.finish();
                                            break;
                                        }
                                        break;
                                    default:
                                        String str2 = (String) obj3;
                                        int i9 = LangLinksActivity.$r8$clinit;
                                        str2.getClass();
                                        ((LangLinksViewModel) langLinksActivity2.viewModel$delegate.getValue()).updateLanguageItems(str2);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue5);
                    }
                    TabUtil.ComposeLangLinksScreen(imePadding, uiState, function1, wikiErrorClickEvents, function02, (Function1) rememberedValue5, gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
