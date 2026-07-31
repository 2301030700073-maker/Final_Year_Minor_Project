package org.wikipedia.descriptions;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.RestService;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.dataclient.liftwing.DescriptionSuggestion$Request;
import org.wikipedia.dataclient.liftwing.LiftWingModelService;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DescriptionEditViewModel$loadPageSummary$2$infoResponse$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ DescriptionEditViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DescriptionEditViewModel$loadPageSummary$2$infoResponse$1(DescriptionEditViewModel descriptionEditViewModel, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = descriptionEditViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        DescriptionEditViewModel descriptionEditViewModel = this.this$0;
        switch (i) {
            case 0:
                return new DescriptionEditViewModel$loadPageSummary$2$infoResponse$1(descriptionEditViewModel, continuation, 0);
            case 1:
                return new DescriptionEditViewModel$loadPageSummary$2$infoResponse$1(descriptionEditViewModel, continuation, 1);
            default:
                return new DescriptionEditViewModel$loadPageSummary$2$infoResponse$1(descriptionEditViewModel, continuation, 2);
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
        return ((DescriptionEditViewModel$loadPageSummary$2$infoResponse$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object pageSummary;
        int i = this.$r8$classId;
        DescriptionEditViewModel descriptionEditViewModel = this.this$0;
        switch (i) {
            case 0:
                PageTitle pageTitle = descriptionEditViewModel.pageTitle;
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
                Integer num = new Integer(0);
                this.label = 1;
                Object wikiTextForSectionWithInfo = service.getWikiTextForSectionWithInfo(prefixedText, num, this);
                return wikiTextForSectionWithInfo == coroutineSingletons ? coroutineSingletons : wikiTextForSectionWithInfo;
            case 1:
                PageTitle pageTitle2 = descriptionEditViewModel.pageTitle;
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
                RestService rest = ServiceFactory.getRest(pageTitle2.wikiSite);
                String prefixedText2 = pageTitle2.getPrefixedText();
                this.label = 1;
                pageSummary = rest.getPageSummary(prefixedText2, null, (r16 & 4) != 0 ? null : null, (r16 & 8) != 0 ? null : "save", (r16 & 16) != 0 ? null : null, (r16 & 32) != 0 ? null : null, this);
                return pageSummary == coroutineSingletons2 ? coroutineSingletons2 : pageSummary;
            default:
                PageTitle pageTitle3 = descriptionEditViewModel.pageTitle;
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
                LiftWingModelService liftWingModelService = (LiftWingModelService) ServiceFactory.INSTANCE.get(pageTitle3.wikiSite, "https://api.wikimedia.org/service/lw/inference/v1/", LiftWingModelService.class);
                DescriptionSuggestion$Request descriptionSuggestion$Request = new DescriptionSuggestion$Request(pageTitle3.wikiSite.languageCode, pageTitle3.getPrefixedText());
                this.label = 1;
                Object descriptionSuggestion = liftWingModelService.getDescriptionSuggestion(descriptionSuggestion$Request, this);
                return descriptionSuggestion == coroutineSingletons3 ? coroutineSingletons3 : descriptionSuggestion;
        }
    }
}
