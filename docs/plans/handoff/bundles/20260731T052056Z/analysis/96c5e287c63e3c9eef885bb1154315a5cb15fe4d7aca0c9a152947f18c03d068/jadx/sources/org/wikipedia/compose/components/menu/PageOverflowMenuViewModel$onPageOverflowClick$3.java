package org.wikipedia.compose.components.menu;

import android.content.Context;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.readinglist.db.ReadingListDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageOverflowMenuViewModel$onPageOverflowClick$3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Context $context;
    public final /* synthetic */ String $menuKey;
    public final /* synthetic */ Function2 $onAddRequest;
    public final /* synthetic */ Function1 $onLinkCopyRequest;
    public final /* synthetic */ Function2 $onMoveRequest;
    public final /* synthetic */ Function1 $onOpenInNewTab;
    public final /* synthetic */ Function1 $onOpenPage;
    public final /* synthetic */ Function2 $onRemoveRequest;
    public final /* synthetic */ Function1 $onShareRequest;
    public final /* synthetic */ PageSummary $pageSummary;
    public final /* synthetic */ int $source;
    public final /* synthetic */ WikiSite $wikiSite;
    public HistoryEntry L$0;
    public ReadingListDao_Impl L$1;
    public int label;
    public final /* synthetic */ PageOverflowMenuViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageOverflowMenuViewModel$onPageOverflowClick$3(PageSummary pageSummary, WikiSite wikiSite, int i, PageOverflowMenuViewModel pageOverflowMenuViewModel, Context context, Function1 function1, Function1 function12, Function2 function2, Function2 function22, Function2 function23, Function1 function13, Function1 function14, String str, Continuation continuation) {
        super(2, continuation);
        this.$pageSummary = pageSummary;
        this.$wikiSite = wikiSite;
        this.$source = i;
        this.this$0 = pageOverflowMenuViewModel;
        this.$context = context;
        this.$onOpenPage = function1;
        this.$onOpenInNewTab = function12;
        this.$onAddRequest = function2;
        this.$onMoveRequest = function22;
        this.$onRemoveRequest = function23;
        this.$onShareRequest = function13;
        this.$onLinkCopyRequest = function14;
        this.$menuKey = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PageOverflowMenuViewModel$onPageOverflowClick$3(this.$pageSummary, this.$wikiSite, this.$source, this.this$0, this.$context, this.$onOpenPage, this.$onOpenInNewTab, this.$onAddRequest, this.$onMoveRequest, this.$onRemoveRequest, this.$onShareRequest, this.$onLinkCopyRequest, this.$menuKey, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PageOverflowMenuViewModel$onPageOverflowClick$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00a6  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.compose.components.menu.PageOverflowMenuViewModel$onPageOverflowClick$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
