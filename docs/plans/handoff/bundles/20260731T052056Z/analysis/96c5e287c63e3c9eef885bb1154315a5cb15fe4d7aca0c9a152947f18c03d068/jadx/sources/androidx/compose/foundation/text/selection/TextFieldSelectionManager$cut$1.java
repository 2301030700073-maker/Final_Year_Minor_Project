package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextFieldSelectionManager$cut$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ TextFieldSelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TextFieldSelectionManager$cut$1(TextFieldSelectionManager textFieldSelectionManager, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = textFieldSelectionManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        TextFieldSelectionManager textFieldSelectionManager = this.this$0;
        switch (i) {
            case 0:
                return new TextFieldSelectionManager$cut$1(textFieldSelectionManager, continuation, 0);
            case 1:
                return new TextFieldSelectionManager$cut$1(textFieldSelectionManager, continuation, 1);
            default:
                return new TextFieldSelectionManager$cut$1(textFieldSelectionManager, continuation, 2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((TextFieldSelectionManager$cut$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                long j = ((Offset) obj).packedValue;
                return new TextFieldSelectionManager$cut$1(this.this$0, (Continuation) obj2, 1).invokeSuspend(unit);
            default:
                return ((TextFieldSelectionManager$cut$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:192:0x004a, code lost:
    
        if (r8 == r1) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x0371, code lost:
    
        if (r4.updateClipboardEntry$foundation(r46) == r1) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x02d6, code lost:
    
        if (r0 == r1) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return r1;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r47) {
        /*
            Method dump skipped, instructions count: 1088
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextFieldSelectionManager$cut$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
