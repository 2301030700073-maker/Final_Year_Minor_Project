package org.wikipedia.page;

import androidx.compose.animation.core.Animation;
import com.google.gson.GsonBuilder;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.dataclient.RestService;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.dataclient.okhttp.OkHttpConnectionFactory;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.staticdata.UserTalkAliasData;
import org.wikipedia.util.DateUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageFragmentLoadState$checkAnonNotifications$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PageTitle $title;
    public int label;
    public final /* synthetic */ GsonBuilder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PageFragmentLoadState$checkAnonNotifications$2(PageTitle pageTitle, GsonBuilder gsonBuilder, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$title = pageTitle;
        this.this$0 = gsonBuilder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        GsonBuilder gsonBuilder = this.this$0;
        PageTitle pageTitle = this.$title;
        switch (i) {
            case 0:
                return new PageFragmentLoadState$checkAnonNotifications$2(pageTitle, gsonBuilder, continuation, 0);
            default:
                return new PageFragmentLoadState$checkAnonNotifications$2(pageTitle, gsonBuilder, continuation, 1);
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
        return ((PageFragmentLoadState$checkAnonNotifications$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MwQueryPage firstPage;
        List list;
        MwQueryPage.Revision revision;
        String str;
        int i = this.$r8$classId;
        PageTitle pageTitle = this.$title;
        GsonBuilder gsonBuilder = this.this$0;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
                    Service service = ServiceFactory.get(pageTitle.wikiSite);
                    String valueFor = UserTalkAliasData.valueFor(pageTitle.wikiSite.languageCode);
                    Prefs prefs = Prefs.INSTANCE;
                    String m = Animation.CC.m(valueFor, ":", PrefsIoUtil.getString(R.string.preference_key_last_anon_user_with_messages, ""));
                    this.label = 1;
                    obj = service.getLastModified(m, this);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                MwQueryResponse mwQueryResponse = (MwQueryResponse) obj;
                mwQueryResponse.getClass();
                pageTitle.getClass();
                MwQueryResult mwQueryResult = mwQueryResponse.query;
                if (mwQueryResult != null && (firstPage = mwQueryResult.firstPage()) != null && (list = firstPage.revisions) != null && (revision = (MwQueryPage.Revision) CollectionsKt.firstOrNull(list)) != null && (str = revision.timeStamp) != null) {
                    long time = new Date().getTime();
                    ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                    if (time - DateUtil.iso8601DateParse(str).getTime() < 604800000) {
                        Prefs prefs2 = Prefs.INSTANCE;
                        PrefsIoUtil.setBoolean(R.string.preference_key_anon_user_has_notification, true);
                        PrefsIoUtil.setLong(new Date().getTime(), R.string.preference_key_last_anon_notification_time);
                        PrefsIoUtil.setString(R.string.preference_key_last_anon_notification_lang, pageTitle.wikiSite.languageCode);
                        ((PageActivity) ((PageFragment) gsonBuilder.longSerializationPolicy).requireActivity()).updateNotificationsButton(true);
                    }
                }
                return Unit.INSTANCE;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ServiceFactory serviceFactory2 = ServiceFactory.INSTANCE;
                    RestService rest = ServiceFactory.getRest(pageTitle.wikiSite);
                    String prefixedText = pageTitle.getPrefixedText();
                    String cacheControl = (((PageViewModel) gsonBuilder.excluder).forceNetwork ? OkHttpConnectionFactory.CACHE_CONTROL_FORCE_NETWORK : OkHttpConnectionFactory.CACHE_CONTROL_NONE).toString();
                    String str2 = ((ReadingListPage) ((PageViewModel) gsonBuilder.excluder).readingListPage) != null ? "save" : null;
                    String str3 = pageTitle.wikiSite.languageCode;
                    try {
                        String encode = URLEncoder.encode(pageTitle.getPrefixedText(), "UTF-8");
                        encode.getClass();
                        String replace$default = StringsKt__StringsJVMKt.replace$default(encode, "+", "%20");
                        this.label = 1;
                        Object summaryResponse$default = Service.CC.getSummaryResponse$default(rest, prefixedText, cacheControl, str2, str3, replace$default, this, 2);
                        return summaryResponse$default == coroutineSingletons2 ? coroutineSingletons2 : summaryResponse$default;
                    } catch (UnsupportedEncodingException e) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                    }
                } else {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                }
                return null;
        }
    }
}
