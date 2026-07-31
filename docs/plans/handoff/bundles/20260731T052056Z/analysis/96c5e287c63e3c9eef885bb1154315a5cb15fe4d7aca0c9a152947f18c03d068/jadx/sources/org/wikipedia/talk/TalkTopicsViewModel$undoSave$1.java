package org.wikipedia.talk;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGestureNode;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import androidx.compose.runtime.MutableState;
import androidx.glance.session.InteractiveFrameClock;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$LongRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import org.wikipedia.activitytab.ActivityTabViewModel;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;
import org.wikipedia.diff.ArticleEditDetailsViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TalkTopicsViewModel$undoSave$1 extends SuspendLambda implements Function2 {
    public long $newRevisionId;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $undoneBody;
    public Object $undoneSubject;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TalkTopicsViewModel$undoSave$1(Ref$LongRef ref$LongRef, Ref$LongRef ref$LongRef2, InteractiveFrameClock interactiveFrameClock, long j, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 6;
        this.this$0 = ref$LongRef;
        this.$undoneSubject = ref$LongRef2;
        this.$undoneBody = interactiveFrameClock;
        this.$newRevisionId = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$undoneBody;
        switch (i) {
            case 0:
                return new TalkTopicsViewModel$undoSave$1((TalkTopicsViewModel) this.this$0, this.$newRevisionId, (CharSequence) this.$undoneSubject, (CharSequence) obj2, continuation, 0);
            case 1:
                return new TalkTopicsViewModel$undoSave$1((Job) this.$undoneSubject, this.$newRevisionId, (MutableInteractionSourceImpl) obj2, continuation, 1);
            case 2:
                TalkTopicsViewModel$undoSave$1 talkTopicsViewModel$undoSave$1 = new TalkTopicsViewModel$undoSave$1((ScrollingLogic) this.$undoneSubject, this.$newRevisionId, (Ref$FloatRef) obj2, continuation, 2);
                talkTopicsViewModel$undoSave$1.this$0 = obj;
                return talkTopicsViewModel$undoSave$1;
            case 3:
                return new TalkTopicsViewModel$undoSave$1((LazyLayoutItemAnimation) this.$undoneSubject, (FiniteAnimationSpec) obj2, this.$newRevisionId, continuation, 3);
            case 4:
                return new TalkTopicsViewModel$undoSave$1((MutableState) this.$undoneSubject, this.$newRevisionId, (MutableInteractionSourceImpl) obj2, continuation, 4);
            case 5:
                return new TalkTopicsViewModel$undoSave$1((TextContextMenuGestureNode) this.this$0, this.$newRevisionId, (TextContextMenuProvider) this.$undoneSubject, (TextContextMenuGestureNode.ClickTextContextMenuDataProvider) obj2, continuation, 5);
            case 6:
                return new TalkTopicsViewModel$undoSave$1((Ref$LongRef) this.this$0, (Ref$LongRef) this.$undoneSubject, (InteractiveFrameClock) obj2, this.$newRevisionId, continuation);
            case 7:
                return new TalkTopicsViewModel$undoSave$1((ActivityTabViewModel) obj2, continuation);
            case 8:
                return new TalkTopicsViewModel$undoSave$1((WikiSite) this.$undoneSubject, (ArticleEditDetailsViewModel) obj2, this.$newRevisionId, continuation, 8);
            default:
                return new TalkTopicsViewModel$undoSave$1((WikiSite) this.$undoneSubject, (MwQueryResponse) obj2, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((TalkTopicsViewModel$undoSave$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x02d2, code lost:
    
        if (r2 != r13) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x026b, code lost:
    
        if (r0 == r13) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x038f, code lost:
    
        if (kotlinx.coroutines.AwaitKt.yield(r4) == r1) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x03b7, code lost:
    
        if (kotlinx.coroutines.AwaitKt.delay((r5 - r2) / 1000000, r4) == r1) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0406, code lost:
    
        if (r1.showTextContextMenu(r2, r4) == r0) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x03f5, code lost:
    
        if (r1.invoke(r5, r4) == r0) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x044f, code lost:
    
        if (r0.emit(r5, r4) == r2) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x04ef, code lost:
    
        if (androidx.compose.animation.core.Animatable.animateTo$default(r2, r5, r2, r3, r4, 4) != r7) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0594, code lost:
    
        if (r0.emit(r2, r4) != r1) goto L270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x0571, code lost:
    
        if (r2.join(r4) == r1) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x05ec, code lost:
    
        if (r0 == r7) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:?, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x05cb, code lost:
    
        if (r0 == r7) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0151, code lost:
    
        if (r0 == r1) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x012b, code lost:
    
        if (r2 == r1) goto L69;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x045f  */
    /* JADX WARN: Type inference failed for: r0v19, types: [androidx.compose.foundation.interaction.MutableInteractionSourceImpl] */
    /* JADX WARN: Type inference failed for: r2v40, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r2v42, types: [java.util.Map] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 1568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.talk.TalkTopicsViewModel$undoSave$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkTopicsViewModel$undoSave$1(Object obj, long j, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$undoneSubject = obj;
        this.$newRevisionId = j;
        this.$undoneBody = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkTopicsViewModel$undoSave$1(Object obj, Object obj2, long j, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$undoneSubject = obj;
        this.$undoneBody = obj2;
        this.$newRevisionId = j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TalkTopicsViewModel$undoSave$1(Object obj, long j, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$newRevisionId = j;
        this.$undoneSubject = obj2;
        this.$undoneBody = obj3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TalkTopicsViewModel$undoSave$1(ActivityTabViewModel activityTabViewModel, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 7;
        this.$undoneBody = activityTabViewModel;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TalkTopicsViewModel$undoSave$1(WikiSite wikiSite, MwQueryResponse mwQueryResponse, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 9;
        this.$undoneSubject = wikiSite;
        this.$undoneBody = mwQueryResponse;
    }
}
