package org.wikipedia.random;

import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsModifierNode;
import androidx.compose.foundation.pager.PagerState;
import androidx.lifecycle.ViewModel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceViewModel;
import org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RandomViewModel$loadMore$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int I$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RandomViewModel$loadMore$2(int i, CategoryDeveloperPlayGroundViewModel categoryDeveloperPlayGroundViewModel, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 6;
        this.label = i;
        this.this$0 = categoryDeveloperPlayGroundViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new RandomViewModel$loadMore$2((RandomViewModel) obj2, continuation, 0);
            case 1:
                return new RandomViewModel$loadMore$2((LazyLayoutSemanticsModifierNode) obj2, this.label, continuation, 1);
            case 2:
                return new RandomViewModel$loadMore$2((PagerState) obj2, this.label, continuation, 2);
            case 3:
                return new RandomViewModel$loadMore$2((String) obj2, this.label, continuation, 3);
            case 4:
                return new RandomViewModel$loadMore$2((HistoryEntry) obj2, this.label, continuation, 4);
            case 5:
                return new RandomViewModel$loadMore$2((RecommendedReadingListSourceViewModel) obj2, continuation, 5);
            default:
                return new RandomViewModel$loadMore$2(this.label, (CategoryDeveloperPlayGroundViewModel) obj2, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((RandomViewModel$loadMore$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x01fa, code lost:
    
        if (r15 == r0) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0257, code lost:
    
        if (r4 == r0) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x01d7, code lost:
    
        if (r15 != r0) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a1, code lost:
    
        if (r15 == r9) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e2  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 628
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.random.RandomViewModel$loadMore$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RandomViewModel$loadMore$2(ViewModel viewModel, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = viewModel;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RandomViewModel$loadMore$2(Object obj, int i, Continuation continuation, int i2) {
        super(2, continuation);
        this.$r8$classId = i2;
        this.this$0 = obj;
        this.label = i;
    }
}
