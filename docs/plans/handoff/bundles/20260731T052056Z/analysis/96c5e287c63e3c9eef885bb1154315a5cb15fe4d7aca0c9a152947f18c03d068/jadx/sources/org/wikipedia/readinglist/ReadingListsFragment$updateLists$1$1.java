package org.wikipedia.readinglist;

import androidx.recyclerview.widget.DiffUtil;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListsFragment$updateLists$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ boolean $invalidateAll;
    public final /* synthetic */ List $lists;
    public final /* synthetic */ DiffUtil.DiffResult $result;
    public final /* synthetic */ String $searchQuery;
    public /* synthetic */ Object L$0;
    public List L$1;
    public int label;
    public final /* synthetic */ ReadingListsFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingListsFragment$updateLists$1$1(ReadingListsFragment readingListsFragment, List list, boolean z, DiffUtil.DiffResult diffResult, String str, Continuation continuation) {
        super(2, continuation);
        this.this$0 = readingListsFragment;
        this.$lists = list;
        this.$invalidateAll = z;
        this.$result = diffResult;
        this.$searchQuery = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ReadingListsFragment$updateLists$1$1 readingListsFragment$updateLists$1$1 = new ReadingListsFragment$updateLists$1$1(this.this$0, this.$lists, this.$invalidateAll, this.$result, this.$searchQuery, continuation);
        readingListsFragment$updateLists$1$1.L$0 = obj;
        return readingListsFragment$updateLists$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ReadingListsFragment$updateLists$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x0214, code lost:
    
        if (r2 == r3) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0226, code lost:
    
        if (r0 == r3) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0228, code lost:
    
        return r3;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 623
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.ReadingListsFragment$updateLists$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
