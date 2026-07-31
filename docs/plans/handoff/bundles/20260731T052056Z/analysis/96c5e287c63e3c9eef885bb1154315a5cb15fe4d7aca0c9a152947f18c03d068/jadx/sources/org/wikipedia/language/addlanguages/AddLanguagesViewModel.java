package org.wikipedia.language.addlanguages;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.dataclient.mwapi.SiteMatrix;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AddLanguagesViewModel extends ViewModel {
    public final StateFlowImpl _siteInfoList;
    public final StateFlowImpl _uiState;
    public StandaloneCoroutine fetchJob;
    public final LoginClient$login$$inlined$CoroutineExceptionHandler$1 handler;
    public final ArrayList nonSuggestedLanguageCodes;
    public final ArrayList suggestedLanguageCodes;
    public final ReadonlyStateFlow uiState;

    public AddLanguagesViewModel() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.suggestedLanguageCodes = Jsoup.getInstance().getLanguageState().getRemainingSuggestedLanguageCodes();
        AppLanguageState languageState = Jsoup.getInstance().getLanguageState();
        ArrayList mutableList = CollectionsKt.toMutableList((Collection) ((SynchronizedLazyImpl) languageState.appLanguageLookUpTable.document).getValue());
        Iterator it = languageState._mruLanguageCodes.iterator();
        char c = 0;
        int i = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (mutableList.contains(str)) {
                mutableList.remove(str);
                mutableList.add(i, str);
                i++;
            }
        }
        Prefs prefs = Prefs.INSTANCE;
        if (!Prefs.isShowDeveloperSettingsEnabled()) {
            if (StringsKt.contains("org.wikipedia", "beta", false)) {
                c = 1;
            } else if (StringsKt.contains("org.wikipedia", "alpha", false)) {
                c = 2;
            } else if (StringsKt.contains("org.wikipedia", "dev", false)) {
                c = 3;
            }
            if (c == 0 || c == 1) {
                CollectionsKt.removeAll(mutableList, new ForYouCardKt$$ExternalSyntheticLambda1(25));
            }
        }
        if (!Prefs.isShowDeveloperSettingsEnabled()) {
            mutableList.remove("zh-hant");
            mutableList.remove("zh-hans");
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = mutableList.iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            String str2 = (String) next;
            if (!this.suggestedLanguageCodes.contains(str2)) {
                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                if (!((ArrayList) ViewSizeResolver$CC.m785m()).contains(str2)) {
                    arrayList.add(next);
                }
            }
        }
        this.nonSuggestedLanguageCodes = arrayList;
        this._siteInfoList = StateFlowKt.MutableStateFlow(EmptyList.INSTANCE);
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(UiState.Loading.INSTANCE);
        this._uiState = MutableStateFlow;
        this.uiState = new ReadonlyStateFlow(MutableStateFlow);
        this.handler = new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this);
        fetchAllData();
    }

    public final void addFilteredLanguageListItems(String str, ArrayList arrayList, String str2, ArrayList arrayList2) {
        Object obj;
        String str3;
        Iterator it = arrayList.iterator();
        boolean z = true;
        while (it.hasNext()) {
            String str4 = (String) it.next();
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String appLanguageLocalizedName = Jsoup.getInstance().getLanguageState().getAppLanguageLocalizedName(str4);
            String str5 = appLanguageLocalizedName == null ? "" : appLanguageLocalizedName;
            Iterator it2 = ((Iterable) this._siteInfoList.getValue()).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                } else {
                    obj = it2.next();
                    if (Intrinsics.areEqual(((SiteMatrix.SiteInfo) obj).code, str4)) {
                        break;
                    }
                }
            }
            SiteMatrix.SiteInfo siteInfo = (SiteMatrix.SiteInfo) obj;
            String str6 = siteInfo != null ? siteInfo.localname : null;
            if (str6 == null) {
                str6 = "";
            }
            if (str6.length() == 0) {
                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                String appLanguageCanonicalName = Jsoup.getInstance().getLanguageState().getAppLanguageCanonicalName(str4);
                str3 = appLanguageCanonicalName == null ? "" : appLanguageCanonicalName;
            } else {
                str3 = str6;
            }
            if (str.length() != 0 && !StringsKt.contains(str4, str, true)) {
                String stripAccents = StringUtils.stripAccents(str5);
                stripAccents.getClass();
                if (!StringsKt.contains(stripAccents, str, true)) {
                    String stripAccents2 = StringUtils.stripAccents(str3);
                    stripAccents2.getClass();
                    if (StringsKt.contains(stripAccents2, str, true)) {
                    }
                }
            }
            if (z) {
                arrayList2.add(new LanguageListItem(6, "", null, null, str2));
                z = false;
            }
            arrayList2.add(new LanguageListItem(8, str4, str5, str3, null));
        }
    }

    public final void fetchAllData() {
        StandaloneCoroutine standaloneCoroutine = this.fetchJob;
        Continuation continuation = null;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        StateFlowImpl stateFlowImpl = this._uiState;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, UiState.Loading.INSTANCE);
        this.fetchJob = AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), this.handler, null, new PageActivity$onCreate$1$1$1(18, this, continuation), 2);
    }
}
