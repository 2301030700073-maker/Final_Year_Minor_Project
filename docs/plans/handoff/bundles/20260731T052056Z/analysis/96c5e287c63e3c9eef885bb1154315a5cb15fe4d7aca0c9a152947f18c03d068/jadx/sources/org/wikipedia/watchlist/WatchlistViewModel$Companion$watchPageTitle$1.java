package org.wikipedia.watchlist;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.DeferredCoroutine;
import okio.Path;
import org.wikipedia.dataclient.watch.Watch;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WatchlistViewModel$Companion$watchPageTitle$1 extends ContinuationImpl {
    public PageTitle L$1;
    public DeferredCoroutine L$7;
    public Watch L$8;
    public StringUtil L$9;
    public boolean Z$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ Path.Companion this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchlistViewModel$Companion$watchPageTitle$1(Path.Companion companion, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.watchPageTitle(null, null, false, null, null, null, this);
    }
}
