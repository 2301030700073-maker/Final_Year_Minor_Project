package org.wikipedia.language;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.work.OperationKt;
import coil3.RealImageLoader$execute$result$1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.dataclient.mwapi.SiteMatrix;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LangLinksViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final WikipediaApp app;
    public List appLanguageEntries;
    public final long historyEntryId;
    public List originalLanguageEntries;
    public final PageTitle pageTitle;
    public List siteInfoList;
    public final ReadonlyStateFlow uiState;
    public Set variantLangToUpdate;

    public LangLinksViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        Object obj = savedStateHandle.get("title");
        obj.getClass();
        this.pageTitle = (PageTitle) obj;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.app = Jsoup.getInstance();
        EmptyList emptyList = EmptyList.INSTANCE;
        this.siteInfoList = emptyList;
        this.originalLanguageEntries = emptyList;
        this.appLanguageEntries = emptyList;
        this.variantLangToUpdate = new LinkedHashSet();
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(UiState.Loading.INSTANCE);
        this._uiState = MutableStateFlow;
        this.uiState = new ReadonlyStateFlow(MutableStateFlow);
        Long l = (Long) savedStateHandle.get("number");
        this.historyEntryId = l != null ? l.longValue() : -1L;
        fetchAllData();
    }

    public final LangLinksItem createLangLinksItem(PageTitle pageTitle) {
        String str = pageTitle.wikiSite.languageCode;
        StringUtil stringUtil = StringUtil.INSTANCE;
        String capitalize = StringUtil.capitalize(this.app.getLanguageState().getAppLanguageLocalizedName(str));
        return new LangLinksItem(pageTitle, pageTitle.getDisplayText(), str, capitalize == null ? str : capitalize, getCanonicalName(str), null, 96);
    }

    public final void fetchAllData() {
        StateFlowImpl stateFlowImpl = this._uiState;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, UiState.Loading.INSTANCE);
        CloseableCoroutineScope viewModelScope = ViewModelKt.getViewModelScope(this);
        LoginClient$login$$inlined$CoroutineExceptionHandler$1 loginClient$login$$inlined$CoroutineExceptionHandler$1 = new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this);
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        AwaitKt.launch$default(viewModelScope, OperationKt.plus(loginClient$login$$inlined$CoroutineExceptionHandler$1, DefaultIoScheduler.INSTANCE), null, new RealImageLoader$execute$result$1(14, this, (Continuation) null), 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object fetchLangVariantLinks(java.lang.String r6, java.lang.String r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof org.wikipedia.language.LangLinksViewModel$fetchLangVariantLinks$1
            if (r0 == 0) goto L13
            r0 = r8
            org.wikipedia.language.LangLinksViewModel$fetchLangVariantLinks$1 r0 = (org.wikipedia.language.LangLinksViewModel$fetchLangVariantLinks$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.language.LangLinksViewModel$fetchLangVariantLinks$1 r0 = new org.wikipedia.language.LangLinksViewModel$fetchLangVariantLinks$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2e
            if (r2 != r4) goto L28
            kotlin.ResultKt.throwOnFailure(r8)
            goto L49
        L28:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L2e:
            kotlin.ResultKt.throwOnFailure(r8)
            org.wikipedia.dataclient.ServiceFactory r8 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.dataclient.WikiSite$Companion r8 = org.wikipedia.dataclient.WikiSite.Companion
            r8.getClass()
            org.wikipedia.dataclient.WikiSite r6 = org.wikipedia.dataclient.WikiSite.Companion.forLanguageCode(r6)
            org.wikipedia.dataclient.Service r6 = org.wikipedia.dataclient.ServiceFactory.get(r6)
            r0.label = r4
            java.lang.Object r8 = org.wikipedia.dataclient.Service.CC.getInfoByPageIdsOrTitles$default(r6, r3, r7, r0, r4)
            if (r8 != r1) goto L49
            return r1
        L49:
            org.wikipedia.dataclient.mwapi.MwQueryResponse r8 = (org.wikipedia.dataclient.mwapi.MwQueryResponse) r8
            org.wikipedia.dataclient.mwapi.MwQueryResult r6 = r8.query
            if (r6 == 0) goto L80
            org.wikipedia.dataclient.mwapi.MwQueryPage r6 = r6.firstPage()
            if (r6 == 0) goto L80
            java.util.Map r6 = r6.varianttitles
            if (r6 == 0) goto L80
            java.util.List r7 = r5.originalLanguageEntries
            java.util.ArrayList r7 = kotlin.collections.CollectionsKt.toMutableList(r7)
            java.util.Iterator r8 = r7.iterator()
        L63:
            boolean r0 = r8.hasNext()
            if (r0 == 0) goto L7e
            java.lang.Object r0 = r8.next()
            org.wikipedia.page.PageTitle r0 = (org.wikipedia.page.PageTitle) r0
            org.wikipedia.dataclient.WikiSite r1 = r0.wikiSite
            java.lang.String r1 = r1.languageCode
            java.lang.Object r1 = r6.get(r1)
            java.lang.String r1 = (java.lang.String) r1
            if (r1 == 0) goto L63
            r0._displayText = r1
            goto L63
        L7e:
            r5.originalLanguageEntries = r7
        L80:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.language.LangLinksViewModel.fetchLangVariantLinks(java.lang.String, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final String getCanonicalName(String str) {
        Object obj;
        Iterator it = this.siteInfoList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((SiteMatrix.SiteInfo) obj).code, str)) {
                break;
            }
        }
        SiteMatrix.SiteInfo siteInfo = (SiteMatrix.SiteInfo) obj;
        String str2 = siteInfo != null ? siteInfo.localname : null;
        if (str2 == null) {
            str2 = "";
        }
        if (str2.length() != 0) {
            return str2;
        }
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        return Jsoup.getInstance().getLanguageState().getAppLanguageCanonicalName(str);
    }

    public final void updateLanguageItems(String str) {
        List list = this.appLanguageEntries;
        List list2 = this.originalLanguageEntries;
        ArrayList mutableList = CollectionsKt.toMutableList((Collection) list2);
        mutableList.removeAll(list);
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        WikipediaApp wikipediaApp = this.app;
        if (length > 0) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list2) {
                String str2 = ((PageTitle) obj).wikiSite.languageCode;
                String canonicalName = getCanonicalName(str2);
                if (canonicalName == null && (canonicalName = wikipediaApp.getLanguageState().getAppLanguageCanonicalName(str2)) == null) {
                    canonicalName = "";
                }
                String appLanguageLocalizedName = wikipediaApp.getLanguageState().getAppLanguageLocalizedName(str2);
                String str3 = appLanguageLocalizedName != null ? appLanguageLocalizedName : "";
                if (StringsKt.contains(canonicalName, str, true) || StringsKt.contains(str3, str, true)) {
                    arrayList2.add(obj);
                }
            }
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(createLangLinksItem((PageTitle) it.next()));
            }
            arrayList.addAll(arrayList3);
        } else {
            if (!list.isEmpty()) {
                String string = wikipediaApp.getString(R.string.langlinks_your_wikipedia_languages);
                string.getClass();
                arrayList.add(new LangLinksItem(null, null, null, null, null, string, 63));
                ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList4.add(createLangLinksItem((PageTitle) it2.next()));
                }
                arrayList.addAll(arrayList4);
            }
            if (!mutableList.isEmpty()) {
                String string2 = wikipediaApp.getString(R.string.languages_list_all_text);
                string2.getClass();
                arrayList.add(new LangLinksItem(null, null, null, null, null, string2, 63));
                ArrayList arrayList5 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(mutableList, 10));
                Iterator it3 = mutableList.iterator();
                while (it3.hasNext()) {
                    arrayList5.add(createLangLinksItem((PageTitle) it3.next()));
                }
                arrayList.addAll(arrayList5);
            }
        }
        UiState.Success success = new UiState.Success(arrayList);
        StateFlowImpl stateFlowImpl = this._uiState;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, success);
    }
}
