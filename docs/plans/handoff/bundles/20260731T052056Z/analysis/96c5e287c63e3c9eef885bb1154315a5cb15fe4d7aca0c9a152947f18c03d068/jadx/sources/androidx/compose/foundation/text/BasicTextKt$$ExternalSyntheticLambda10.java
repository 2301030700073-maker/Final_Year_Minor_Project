package androidx.compose.foundation.text;

import androidx.activity.compose.BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BasicTextKt$$ExternalSyntheticLambda10 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TextLinkScope f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ BasicTextKt$$ExternalSyntheticLambda10(TextLinkScope textLinkScope, Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = textLinkScope;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Function1 function1 = this.f$1;
        TextLinkScope textLinkScope = this.f$0;
        switch (i) {
            case 0:
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
                if (textLinkScope != null) {
                    textLinkScope.textLayoutResult$delegate.setValue(textLayoutResult);
                }
                if (function1 != null) {
                    function1.invoke(textLayoutResult);
                }
                return Unit.INSTANCE;
            default:
                textLinkScope.annotators.add(function1);
                return new BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1(9, textLinkScope, function1);
        }
    }
}
