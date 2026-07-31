package org.wikipedia.talk;

import androidx.lifecycle.ViewModel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.page.PageTitle;
import org.wikipedia.watchlist.WatchlistExpiry;
import org.wikipedia.watchlist.WatchlistExpiryDialogViewModel;
import org.wikipedia.wiktionary.WiktionaryViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTopicViewModel$loadTopic$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public Object L$1;
    public Object L$2;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TalkTopicViewModel$loadTopic$2(PageTitle pageTitle, Ref$ObjectRef ref$ObjectRef, WatchlistExpiry watchlistExpiry, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 3;
        this.L$1 = pageTitle;
        this.L$2 = ref$ObjectRef;
        this.this$0 = watchlistExpiry;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new TalkTopicViewModel$loadTopic$2((TalkTopicViewModel) obj2, continuation, 0);
            case 1:
                return new TalkTopicViewModel$loadTopic$2((Ref$BooleanRef) this.L$2, (TalkTopicsViewModel) obj2, continuation, 1);
            case 2:
                TalkTopicViewModel$loadTopic$2 talkTopicViewModel$loadTopic$2 = new TalkTopicViewModel$loadTopic$2((WatchlistExpiryDialogViewModel) this.L$2, (WatchlistExpiry) obj2, continuation, 2);
                talkTopicViewModel$loadTopic$2.L$1 = obj;
                return talkTopicViewModel$loadTopic$2;
            case 3:
                return new TalkTopicViewModel$loadTopic$2((PageTitle) this.L$1, (Ref$ObjectRef) this.L$2, (WatchlistExpiry) obj2, continuation);
            default:
                TalkTopicViewModel$loadTopic$2 talkTopicViewModel$loadTopic$22 = new TalkTopicViewModel$loadTopic$2((WiktionaryViewModel) obj2, continuation, 4);
                talkTopicViewModel$loadTopic$22.L$2 = obj;
                return talkTopicViewModel$loadTopic$22;
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
        return ((TalkTopicViewModel$loadTopic$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:126:0x040b, code lost:
    
        if (r0 == r6) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0349, code lost:
    
        if (r0 != r6) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x02ac, code lost:
    
        if (r0 == r6) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x0614, code lost:
    
        if (r1 == r9) goto L251;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x04d8, code lost:
    
        if (r0 == r9) goto L251;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c1, code lost:
    
        if (r0 != r9) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x016e, code lost:
    
        if (r1 == r7) goto L68;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x042c  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x03d0 A[LOOP:1: B:117:0x03ca->B:119:0x03d0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x061e  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0626  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0641  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x064d  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0695  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x069c  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x06a4  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0698  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0623  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x059b  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x05e5  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0619  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x05e2  */
    /* JADX WARN: Type inference failed for: r0v82, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r4v33, types: [java.util.List] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 1776
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.talk.TalkTopicViewModel$loadTopic$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkTopicViewModel$loadTopic$2(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$2 = obj;
        this.this$0 = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkTopicViewModel$loadTopic$2(ViewModel viewModel, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = viewModel;
    }
}
