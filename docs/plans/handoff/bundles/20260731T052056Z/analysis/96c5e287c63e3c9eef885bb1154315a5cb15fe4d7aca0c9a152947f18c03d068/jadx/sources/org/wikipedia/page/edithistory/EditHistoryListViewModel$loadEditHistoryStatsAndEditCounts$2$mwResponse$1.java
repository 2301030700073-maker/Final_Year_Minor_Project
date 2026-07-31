package org.wikipedia.page.edithistory;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.CoreRestService;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ EditHistoryListViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1(EditHistoryListViewModel editHistoryListViewModel, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = editHistoryListViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        EditHistoryListViewModel editHistoryListViewModel = this.this$0;
        switch (i) {
            case 0:
                return new EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1(editHistoryListViewModel, continuation, 0);
            case 1:
                return new EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1(editHistoryListViewModel, continuation, 1);
            case 2:
                return new EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1(editHistoryListViewModel, continuation, 2);
            case 3:
                return new EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1(editHistoryListViewModel, continuation, 3);
            default:
                return new EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1(editHistoryListViewModel, continuation, 4);
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
        return ((EditHistoryListViewModel$loadEditHistoryStatsAndEditCounts$2$mwResponse$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        EditHistoryListViewModel editHistoryListViewModel = this.this$0;
        switch (i) {
            case 0:
                PageTitle pageTitle = editHistoryListViewModel.pageTitle;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 != 0) {
                    if (i2 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
                Service service = ServiceFactory.get(pageTitle.wikiSite);
                String prefixedText = pageTitle.getPrefixedText();
                this.label = 1;
                Object revisionDetailsAscending = service.getRevisionDetailsAscending(prefixedText, null, 1, null, this);
                return revisionDetailsAscending == coroutineSingletons ? coroutineSingletons : revisionDetailsAscending;
            case 1:
                PageTitle pageTitle2 = editHistoryListViewModel.pageTitle;
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
                CoreRestService coreRest = ServiceFactory.getCoreRest(pageTitle2.wikiSite);
                String prefixedText2 = pageTitle2.getPrefixedText();
                this.label = 1;
                Object editCount = coreRest.getEditCount(prefixedText2, "anonymous", this);
                return editCount == coroutineSingletons2 ? coroutineSingletons2 : editCount;
            case 2:
                PageTitle pageTitle3 = editHistoryListViewModel.pageTitle;
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ServiceFactory serviceFactory3 = ServiceFactory.INSTANCE;
                CoreRestService coreRest2 = ServiceFactory.getCoreRest(pageTitle3.wikiSite);
                String prefixedText3 = pageTitle3.getPrefixedText();
                this.label = 1;
                Object editCount2 = coreRest2.getEditCount(prefixedText3, "bot", this);
                return editCount2 == coroutineSingletons3 ? coroutineSingletons3 : editCount2;
            case 3:
                PageTitle pageTitle4 = editHistoryListViewModel.pageTitle;
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i5 = this.label;
                if (i5 != 0) {
                    if (i5 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ServiceFactory serviceFactory4 = ServiceFactory.INSTANCE;
                CoreRestService coreRest3 = ServiceFactory.getCoreRest(pageTitle4.wikiSite);
                String prefixedText4 = pageTitle4.getPrefixedText();
                this.label = 1;
                Object editCount3 = coreRest3.getEditCount(prefixedText4, "edits", this);
                return editCount3 == coroutineSingletons4 ? coroutineSingletons4 : editCount3;
            default:
                PageTitle pageTitle5 = editHistoryListViewModel.pageTitle;
                CoroutineSingletons coroutineSingletons5 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 != 0) {
                    if (i6 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ServiceFactory serviceFactory5 = ServiceFactory.INSTANCE;
                CoreRestService coreRest4 = ServiceFactory.getCoreRest(pageTitle5.wikiSite);
                String prefixedText5 = pageTitle5.getPrefixedText();
                this.label = 1;
                Object editCount4 = coreRest4.getEditCount(prefixedText5, "editors", this);
                return editCount4 == coroutineSingletons5 ? coroutineSingletons5 : editCount4;
        }
    }
}
