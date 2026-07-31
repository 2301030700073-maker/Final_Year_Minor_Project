package org.wikipedia.diff;

import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArticleEditDetailsViewModel$undoEdit$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $comment;
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ long $revisionId;
    public final /* synthetic */ Object $title;
    public final /* synthetic */ Object $user;
    public Object L$2;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArticleEditDetailsViewModel$undoEdit$2(PlatformSelectionBehaviors platformSelectionBehaviors, String str, long j, TextRange textRange, TextFieldSelectionManager textFieldSelectionManager, OffsetMapping offsetMapping, Continuation continuation) {
        super(2, continuation);
        this.$user = platformSelectionBehaviors;
        this.L$2 = str;
        this.$revisionId = j;
        this.$comment = textRange;
        this.$title = textFieldSelectionManager;
        this.this$0 = offsetMapping;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        Object obj3 = this.$title;
        Object obj4 = this.$comment;
        Object obj5 = this.$user;
        switch (i) {
            case 0:
                return new ArticleEditDetailsViewModel$undoEdit$2((PageTitle) obj3, this.$revisionId, (String) obj5, (String) obj4, (ArticleEditDetailsViewModel) obj2, continuation);
            case 1:
                ArticleEditDetailsViewModel$undoEdit$2 articleEditDetailsViewModel$undoEdit$2 = new ArticleEditDetailsViewModel$undoEdit$2((UpdatableAnimationState) obj5, (ContentInViewNode) obj4, (BringIntoViewSpec) obj3, this.$revisionId, (Job) obj2, continuation);
                articleEditDetailsViewModel$undoEdit$2.L$2 = obj;
                return articleEditDetailsViewModel$undoEdit$2;
            default:
                return new ArticleEditDetailsViewModel$undoEdit$2((PlatformSelectionBehaviors) obj5, (String) this.L$2, this.$revisionId, (TextRange) obj4, (TextFieldSelectionManager) obj3, (OffsetMapping) obj2, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((ArticleEditDetailsViewModel$undoEdit$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((ArticleEditDetailsViewModel$undoEdit$2) create((ScrollingLogic$nestedScrollScope$1) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((ArticleEditDetailsViewModel$undoEdit$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x01d5, code lost:
    
        if (r0 == r13) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:?, code lost:
    
        return r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01a6, code lost:
    
        if (r1 != r13) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0157, code lost:
    
        if (r0 == r13) goto L74;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0193  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.diff.ArticleEditDetailsViewModel$undoEdit$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArticleEditDetailsViewModel$undoEdit$2(UpdatableAnimationState updatableAnimationState, ContentInViewNode contentInViewNode, BringIntoViewSpec bringIntoViewSpec, long j, Job job, Continuation continuation) {
        super(2, continuation);
        this.$user = updatableAnimationState;
        this.$comment = contentInViewNode;
        this.$title = bringIntoViewSpec;
        this.$revisionId = j;
        this.this$0 = job;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArticleEditDetailsViewModel$undoEdit$2(PageTitle pageTitle, long j, String str, String str2, ArticleEditDetailsViewModel articleEditDetailsViewModel, Continuation continuation) {
        super(2, continuation);
        this.$title = pageTitle;
        this.$revisionId = j;
        this.$user = str;
        this.$comment = str2;
        this.this$0 = articleEditDetailsViewModel;
    }
}
