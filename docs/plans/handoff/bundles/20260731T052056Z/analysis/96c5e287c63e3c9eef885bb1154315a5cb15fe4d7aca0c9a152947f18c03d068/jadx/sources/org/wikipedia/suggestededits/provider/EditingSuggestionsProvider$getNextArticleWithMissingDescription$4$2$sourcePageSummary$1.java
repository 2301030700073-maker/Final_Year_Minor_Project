package org.wikipedia.suggestededits.provider;

import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.RestService;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Pair $it;
    public final /* synthetic */ int $r8$classId;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1(Pair pair, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$it = pair;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Pair pair = this.$it;
        switch (i) {
            case 0:
                return new EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1(pair, continuation, 0);
            default:
                return new EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1(pair, continuation, 1);
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
        return ((EditingSuggestionsProvider$getNextArticleWithMissingDescription$4$2$sourcePageSummary$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object pageSummary;
        int i = this.$r8$classId;
        Pair pair = this.$it;
        switch (i) {
            case 0:
                Object obj2 = pair.first;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
                    RestService rest = ServiceFactory.getRest(((PageTitle) obj2).wikiSite);
                    String prefixedText = ((PageTitle) obj2).getPrefixedText();
                    this.label = 1;
                    obj = rest.getPageSummary(prefixedText, null, (r16 & 4) != 0 ? null : null, (r16 & 8) != 0 ? null : "save", (r16 & 16) != 0 ? null : null, (r16 & 32) != 0 ? null : null, this);
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
                PageSummary pageSummary2 = (PageSummary) obj;
                String str = pageSummary2.description;
                if (str == null || str.length() == 0) {
                    pageSummary2.description = ((PageTitle) obj2).description;
                }
                return obj;
            default:
                Object obj3 = pair.second;
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
                RestService rest2 = ServiceFactory.getRest(((PageTitle) obj3).wikiSite);
                String prefixedText2 = ((PageTitle) obj3).getPrefixedText();
                this.label = 1;
                pageSummary = rest2.getPageSummary(prefixedText2, null, (r16 & 4) != 0 ? null : null, (r16 & 8) != 0 ? null : "save", (r16 & 16) != 0 ? null : null, (r16 & 32) != 0 ? null : null, this);
                return pageSummary == coroutineSingletons2 ? coroutineSingletons2 : pageSummary;
        }
    }
}
