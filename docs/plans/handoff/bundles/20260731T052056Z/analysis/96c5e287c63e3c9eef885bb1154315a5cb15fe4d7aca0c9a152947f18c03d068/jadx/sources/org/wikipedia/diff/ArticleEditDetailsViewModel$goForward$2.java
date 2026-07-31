package org.wikipedia.diff;

import androidx.lifecycle.MutableLiveData;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArticleEditDetailsViewModel$goForward$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long $revisionIdFrom;
    public int label;
    public final /* synthetic */ ArticleEditDetailsViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ArticleEditDetailsViewModel$goForward$2(ArticleEditDetailsViewModel articleEditDetailsViewModel, long j, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = articleEditDetailsViewModel;
        this.$revisionIdFrom = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new ArticleEditDetailsViewModel$goForward$2(this.this$0, this.$revisionIdFrom, continuation, 0);
            default:
                return new ArticleEditDetailsViewModel$goForward$2(this.this$0, this.$revisionIdFrom, continuation, 1);
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
        return ((ArticleEditDetailsViewModel$goForward$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        long j;
        int i = this.$r8$classId;
        ArticleEditDetailsViewModel articleEditDetailsViewModel = this.this$0;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
                    Service service = ServiceFactory.get(articleEditDetailsViewModel.pageTitle.wikiSite);
                    String valueOf = String.valueOf(articleEditDetailsViewModel.pageId);
                    Long l = new Long(this.$revisionIdFrom);
                    this.label = 1;
                    obj = service.getRevisionDetailsAscending(null, valueOf, 2, l, this);
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
                MwQueryResult mwQueryResult = ((MwQueryResponse) obj).query;
                MwQueryPage firstPage = mwQueryResult != null ? mwQueryResult.firstPage() : null;
                firstPage.getClass();
                List list = firstPage.revisions;
                articleEditDetailsViewModel.revisionFrom = (MwQueryPage.Revision) list.get(0);
                articleEditDetailsViewModel.revisionTo = (MwQueryPage.Revision) (1 < list.size() ? list.get(1) : (MwQueryPage.Revision) CollectionsKt.first(list));
                articleEditDetailsViewModel.canGoForward = list.size() > 1 && ((MwQueryPage.Revision) list.get(1)).revId < firstPage.lastrevid;
                MwQueryPage.Revision revision = articleEditDetailsViewModel.revisionTo;
                revision.getClass();
                articleEditDetailsViewModel.revisionToId = revision.revId;
                MwQueryPage.Revision revision2 = articleEditDetailsViewModel.revisionFrom;
                if (revision2 != null) {
                    j = revision2.revId;
                } else {
                    MwQueryPage.Revision revision3 = articleEditDetailsViewModel.revisionTo;
                    revision3.getClass();
                    j = revision3.parentRevId;
                }
                articleEditDetailsViewModel.revisionFromId = j;
                MutableLiveData mutableLiveData = articleEditDetailsViewModel.revisionDetails;
                Unit unit = Unit.INSTANCE;
                mutableLiveData.postValue(new Resource.Success(unit));
                articleEditDetailsViewModel.getDiffText(articleEditDetailsViewModel.revisionFromId, articleEditDetailsViewModel.revisionToId);
                return unit;
            default:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ServiceFactory serviceFactory2 = ServiceFactory.INSTANCE;
                Service service2 = ServiceFactory.get(articleEditDetailsViewModel.pageTitle.wikiSite);
                String valueOf2 = String.valueOf(articleEditDetailsViewModel.pageId);
                this.label = 1;
                Object revisionDetailsWithInfo = service2.getRevisionDetailsWithInfo(valueOf2, 2, this.$revisionIdFrom, this);
                return revisionDetailsWithInfo == coroutineSingletons2 ? coroutineSingletons2 : revisionDetailsWithInfo;
        }
    }
}
