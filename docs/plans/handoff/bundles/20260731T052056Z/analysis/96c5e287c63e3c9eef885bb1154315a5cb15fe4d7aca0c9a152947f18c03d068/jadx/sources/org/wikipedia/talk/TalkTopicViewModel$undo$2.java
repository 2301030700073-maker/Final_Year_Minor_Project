package org.wikipedia.talk;

import androidx.compose.animation.core.Animatable;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.readinglist.ReadingListFragmentViewModel;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsFragmentViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTopicViewModel$undo$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long $undoRevId;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkTopicViewModel$undo$2(long j, Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$undoRevId = j;
        this.this$0 = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new TalkTopicViewModel$undo$2((TalkTopicViewModel) obj2, this.$undoRevId, continuation, 0);
            case 1:
                return new TalkTopicViewModel$undo$2((Animatable) obj2, this.$undoRevId, continuation, 1);
            case 2:
                return new TalkTopicViewModel$undo$2(this.$undoRevId, (SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj2, continuation, 2);
            case 3:
                return new TalkTopicViewModel$undo$2((AndroidViewHolder) obj2, this.$undoRevId, continuation, 3);
            case 4:
                return new TalkTopicViewModel$undo$2((SyntaxHighlighter) obj2, this.$undoRevId, continuation, 4);
            case 5:
                return new TalkTopicViewModel$undo$2(this.$undoRevId, (ReadingListFragmentViewModel) obj2, continuation, 5);
            default:
                return new TalkTopicViewModel$undo$2((SuggestedEditsImageRecsFragmentViewModel) obj2, this.$undoRevId, continuation, 6);
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
        return ((TalkTopicViewModel$undo$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x01cd, code lost:
    
        if (r0 == r11) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:?, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01a5, code lost:
    
        if (r2 == r11) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0079, code lost:
    
        if (r2 == r0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x012f, code lost:
    
        if (kotlinx.coroutines.AwaitKt.delay(8, r17) == r0) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0126, code lost:
    
        if (kotlinx.coroutines.AwaitKt.delay(r2 - 8, r17) == r0) goto L70;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.talk.TalkTopicViewModel$undo$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkTopicViewModel$undo$2(Object obj, long j, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$undoRevId = j;
    }
}
