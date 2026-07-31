package org.wikipedia.edit.richtext;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SyntaxHighlighter$1$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SyntaxHighlighter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SyntaxHighlighter$1$1(SyntaxHighlighter syntaxHighlighter, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = syntaxHighlighter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        SyntaxHighlighter syntaxHighlighter = this.this$0;
        switch (i) {
            case 0:
                return new SyntaxHighlighter$1$1(syntaxHighlighter, continuation, 0);
            case 1:
                return new SyntaxHighlighter$1$1(syntaxHighlighter, continuation, 1);
            default:
                return new SyntaxHighlighter$1$1(syntaxHighlighter, continuation, 2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((SyntaxHighlighter$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 1:
                ((SyntaxHighlighter$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            default:
                ((SyntaxHighlighter$1$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SyntaxHighlighter syntaxHighlighter = this.this$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                syntaxHighlighter.performHighlight(syntaxHighlighter.highlightDelayMillis * 2);
                break;
            case 1:
                ResultKt.throwOnFailure(obj);
                syntaxHighlighter.performHighlight(syntaxHighlighter.highlightDelayMillis);
                break;
            default:
                ResultKt.throwOnFailure(obj);
                syntaxHighlighter.performHighlight(0L);
                break;
        }
        return unit;
    }
}
