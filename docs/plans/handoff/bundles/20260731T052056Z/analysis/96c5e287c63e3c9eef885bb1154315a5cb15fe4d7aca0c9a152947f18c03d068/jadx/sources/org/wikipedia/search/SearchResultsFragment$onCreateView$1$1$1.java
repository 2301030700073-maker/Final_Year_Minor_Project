package org.wikipedia.search;

import android.content.Context;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonImpl;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.util.UiState;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SearchResultsFragment$onCreateView$1$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public final /* synthetic */ SearchResultsFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SearchResultsFragment$onCreateView$1$1$1(SearchResultsFragment searchResultsFragment, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = searchResultsFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        SearchResultsFragment searchResultsFragment = this.this$0;
        switch (i) {
            case 0:
                SearchResultsFragment$onCreateView$1$1$1 searchResultsFragment$onCreateView$1$1$1 = new SearchResultsFragment$onCreateView$1$1$1(searchResultsFragment, continuation, 0);
                searchResultsFragment$onCreateView$1$1$1.L$0 = obj;
                return searchResultsFragment$onCreateView$1$1$1;
            case 1:
                SearchResultsFragment$onCreateView$1$1$1 searchResultsFragment$onCreateView$1$1$12 = new SearchResultsFragment$onCreateView$1$1$1(searchResultsFragment, continuation, 1);
                searchResultsFragment$onCreateView$1$1$12.L$0 = obj;
                return searchResultsFragment$onCreateView$1$1$12;
            default:
                SearchResultsFragment$onCreateView$1$1$1 searchResultsFragment$onCreateView$1$1$13 = new SearchResultsFragment$onCreateView$1$1$1(searchResultsFragment, continuation, 2);
                searchResultsFragment$onCreateView$1$1$13.L$0 = obj;
                return searchResultsFragment$onCreateView$1$1$13;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((SearchResultsFragment$onCreateView$1$1$1) create((String) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 1:
                ((SearchResultsFragment$onCreateView$1$1$1) create((List) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            default:
                ((SearchResultsFragment$onCreateView$1$1$1) create((UiState) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SVGAndroidRenderer instrument;
        SVGAndroidRenderer instrument2;
        int i = this.$r8$classId;
        String str = null;
        Unit unit = Unit.INSTANCE;
        SearchResultsFragment searchResultsFragment = this.this$0;
        Object obj2 = this.L$0;
        switch (i) {
            case 0:
                String str2 = (String) obj2;
                ResultKt.throwOnFailure(obj);
                if (str2 != null && str2.length() != 0 && (instrument = ContextKt.getInstrument(searchResultsFragment.requireActivity())) != null) {
                    Map singletonMap = Collections.singletonMap("query", str2);
                    singletonMap.getClass();
                    SVGAndroidRenderer.submitInteraction$default(instrument, "search_init", null, null, null, null, singletonMap, 126);
                    break;
                }
                break;
            case 1:
                List list = (List) obj2;
                ResultKt.throwOnFailure(obj);
                if (list != null && (instrument2 = ContextKt.getInstrument(searchResultsFragment.requireActivity())) != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument2, "show_search_result", null, null, null, null, searchResultsFragment.getViewModel().getStandardEventActionContext(null), 126);
                    break;
                }
                break;
            default:
                ResultKt.throwOnFailure(obj);
                if (((UiState) obj2) instanceof UiState.Success) {
                    SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment.requireActivity());
                    if (instrument3 != null) {
                        SVGAndroidRenderer.submitInteraction$default(instrument3, "show_hybrid_result", null, null, null, null, searchResultsFragment.getViewModel().getHybridEventActionContext(null), 126);
                    }
                    if (Intrinsics.areEqual(searchResultsFragment.getViewModel().languageCode.$$delegate_0.getValue(), "el")) {
                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                        Context requireContext = searchResultsFragment.requireContext();
                        SearchResultsViewModel viewModel = searchResultsFragment.getViewModel();
                        Pair pair = new Pair("search_id_sem", viewModel.lastXSearchIdSemantic);
                        Pair pair2 = new Pair("lexical", viewModel.lexicalResultsTitlesForEvent);
                        Pair pair3 = new Pair("semantic", viewModel.semanticResultsTitlesForEvent);
                        String str3 = (String) viewModel.searchTerm.$$delegate_0.getValue();
                        if (str3 == null) {
                            str3 = "";
                        }
                        Map mapOf = MapsKt__MapsKt.mapOf(pair, pair2, pair3, new Pair("query", str3));
                        companion.getClass();
                        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                        String readableScreenName = WikiGamesEvent.getReadableScreenName(requireContext, null);
                        try {
                            JsonImpl jsonImpl = JsonUtil.json;
                            jsonImpl.getClass();
                            StringSerializer stringSerializer = StringSerializer.INSTANCE;
                            str = jsonImpl.encodeToString(new HashMapSerializer(stringSerializer, stringSerializer, 1), mapOf);
                        } catch (Exception e) {
                            L.w(e);
                        }
                        EventPlatformClient.submit(new BreadCrumbLogEvent(readableScreenName, str != null ? str : ""));
                        break;
                    }
                }
                break;
        }
        return unit;
    }
}
