package org.wikipedia.page;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.WikipediaApp;
import org.wikipedia.dataclient.RestService;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.dataclient.okhttp.OkHttpConnectionFactory;
import org.wikipedia.page.tabs.Tab;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageFragment$openInNewTab$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PageTitle $title;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PageFragment$openInNewTab$2(PageTitle pageTitle, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$title = pageTitle;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        PageTitle pageTitle = this.$title;
        switch (i) {
            case 0:
                return new PageFragment$openInNewTab$2(pageTitle, continuation, 0);
            case 1:
                return new PageFragment$openInNewTab$2(pageTitle, continuation, 1);
            case 2:
                return new PageFragment$openInNewTab$2(pageTitle, continuation, 2);
            case 3:
                return new PageFragment$openInNewTab$2(pageTitle, continuation, 3);
            default:
                return new PageFragment$openInNewTab$2(pageTitle, continuation, 4);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((PageFragment$openInNewTab$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object infoByPageIdsOrTitles;
        MwQueryPage firstPage;
        PageTitle backStackPositionTitle;
        Object entitiesByTitleSuspend;
        Object pageSummary;
        int i = this.$r8$classId;
        PageTitle pageTitle = this.$title;
        Object obj2 = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
                    Service service = ServiceFactory.get(pageTitle.wikiSite);
                    String prefixedText = pageTitle.getPrefixedText();
                    this.label = 1;
                    infoByPageIdsOrTitles = service.getInfoByPageIdsOrTitles(null, prefixedText, this);
                    if (infoByPageIdsOrTitles == coroutineSingletons) {
                        break;
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    infoByPageIdsOrTitles = obj;
                }
                MwQueryResult mwQueryResult = ((MwQueryResponse) infoByPageIdsOrTitles).query;
                if (mwQueryResult != null && (firstPage = mwQueryResult.firstPage()) != null) {
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    Iterator it = Jsoup.getInstance().tabList.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            Object next = it.next();
                            if (Intrinsics.areEqual(((Tab) next).getBackStackPositionTitle(), pageTitle)) {
                                obj2 = next;
                            }
                        }
                    }
                    Tab tab = (Tab) obj2;
                    if (tab != null && (backStackPositionTitle = tab.getBackStackPositionTitle()) != null) {
                        backStackPositionTitle.thumbUrl = firstPage.thumbUrl();
                        backStackPositionTitle.description = firstPage.description;
                    }
                }
                break;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ServiceFactory serviceFactory2 = ServiceFactory.INSTANCE;
                    Service service2 = ServiceFactory.get(Constants.commonsWikiSite);
                    String prefixedText2 = pageTitle.getPrefixedText();
                    this.label = 1;
                    entitiesByTitleSuspend = service2.getEntitiesByTitleSuspend(prefixedText2, "commonswiki", this);
                    if (entitiesByTitleSuspend == coroutineSingletons2) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    entitiesByTitleSuspend = obj;
                }
                break;
            case 2:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ServiceFactory serviceFactory3 = ServiceFactory.INSTANCE;
                    Service service3 = ServiceFactory.get(Constants.commonsWikiSite);
                    String prefixedText3 = pageTitle.getPrefixedText();
                    this.label = 1;
                    Object protectionWithUserInfo = service3.getProtectionWithUserInfo(prefixedText3, this);
                    if (protectionWithUserInfo != coroutineSingletons3) {
                        break;
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            case 3:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ServiceFactory serviceFactory4 = ServiceFactory.INSTANCE;
                    RestService rest = ServiceFactory.getRest(pageTitle.wikiSite);
                    String prefixedText4 = pageTitle.getPrefixedText();
                    String cacheControl = OkHttpConnectionFactory.CACHE_CONTROL_FORCE_NETWORK.toString();
                    String str = pageTitle.wikiSite.languageCode;
                    try {
                        String encode = URLEncoder.encode(pageTitle.getPrefixedText(), "UTF-8");
                        encode.getClass();
                        String replace$default = StringsKt__StringsJVMKt.replace$default(encode, "+", "%20");
                        this.label = 1;
                        Object mediaList = rest.getMediaList(prefixedText4, cacheControl, "save", str, replace$default, this);
                        if (mediaList != coroutineSingletons4) {
                            break;
                        } else {
                            break;
                        }
                    } catch (UnsupportedEncodingException e) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                        return null;
                    }
                } else if (i5 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
            default:
                CoroutineSingletons coroutineSingletons5 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ServiceFactory serviceFactory5 = ServiceFactory.INSTANCE;
                    RestService rest2 = ServiceFactory.getRest(pageTitle.wikiSite);
                    String prefixedText5 = pageTitle.getPrefixedText();
                    String cacheControl2 = OkHttpConnectionFactory.CACHE_CONTROL_FORCE_NETWORK.toString();
                    String str2 = pageTitle.wikiSite.languageCode;
                    try {
                        String encode2 = URLEncoder.encode(pageTitle.getPrefixedText(), "UTF-8");
                        encode2.getClass();
                        String replace$default2 = StringsKt__StringsJVMKt.replace$default(encode2, "+", "%20");
                        this.label = 1;
                        pageSummary = rest2.getPageSummary(prefixedText5, null, (r16 & 4) != 0 ? null : cacheControl2, (r16 & 8) != 0 ? null : "save", (r16 & 16) != 0 ? null : str2, (r16 & 32) != 0 ? null : replace$default2, this);
                        if (pageSummary != coroutineSingletons5) {
                            break;
                        } else {
                            break;
                        }
                    } catch (UnsupportedEncodingException e2) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                        return null;
                    }
                } else if (i6 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
        }
        return null;
    }
}
