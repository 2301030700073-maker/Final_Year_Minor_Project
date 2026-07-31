package org.wikipedia.readinglist;

import androidx.appcompat.app.AppCompatActivity;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.database.ReadingList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListBehaviorsUtil$deleteReadingList$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ AppCompatActivity $activity;
    public final /* synthetic */ ReadingListBehaviorsUtil.Callback $callback;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingList $readingList;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingListBehaviorsUtil$deleteReadingList$2(AppCompatActivity appCompatActivity, ReadingList readingList, ReadingListBehaviorsUtil.Callback callback, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 2;
        this.$activity = appCompatActivity;
        this.$readingList = readingList;
        this.$callback = callback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                return new ReadingListBehaviorsUtil$deleteReadingList$2(this.$readingList, this.$activity, this.$callback, continuation, 0);
            case 1:
                return new ReadingListBehaviorsUtil$deleteReadingList$2(this.$readingList, this.$activity, this.$callback, continuation, 1);
            default:
                return new ReadingListBehaviorsUtil$deleteReadingList$2(this.$activity, this.$readingList, this.$callback, continuation);
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
        return ((ReadingListBehaviorsUtil$deleteReadingList$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00df, code lost:
    
        if (r12.markPagesForDeletion(r6, r4, false, r11) == r0) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ca, code lost:
    
        if (org.wikipedia.dataclient.Service.CC.deleteList$default(r12, r6, r11) == r0) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x012e, code lost:
    
        if (r12.markPagesForDeletion(r6, r4, false, r11) == r0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0119, code lost:
    
        if (org.wikipedia.dataclient.Service.CC.deleteList$default(r12, r6, r11) == r0) goto L57;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.ReadingListBehaviorsUtil$deleteReadingList$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ReadingListBehaviorsUtil$deleteReadingList$2(ReadingList readingList, AppCompatActivity appCompatActivity, ReadingListBehaviorsUtil.Callback callback, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$readingList = readingList;
        this.$activity = appCompatActivity;
        this.$callback = callback;
    }
}
