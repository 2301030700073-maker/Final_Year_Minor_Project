package org.wikipedia.talk;

import android.content.Context;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationDirectReplyHelper$waitForUpdatedRevision$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public long J$0;
    public Context L$0;
    public WikiSite L$1;
    public PageTitle L$2;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ UserTalkPopupHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationDirectReplyHelper$waitForUpdatedRevision$1(UserTalkPopupHelper userTalkPopupHelper, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = userTalkPopupHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.waitForUpdatedRevision(null, null, null, 0L, 0, this);
    }
}
