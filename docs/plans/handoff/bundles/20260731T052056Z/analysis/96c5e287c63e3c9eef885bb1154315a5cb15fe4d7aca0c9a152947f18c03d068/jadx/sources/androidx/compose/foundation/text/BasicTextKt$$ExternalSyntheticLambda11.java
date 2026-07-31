package androidx.compose.foundation.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BasicTextKt$$ExternalSyntheticLambda11 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TextLinkScope f$0;

    public /* synthetic */ BasicTextKt$$ExternalSyntheticLambda11(TextLinkScope textLinkScope, int i) {
        this.$r8$classId = i;
        this.f$0 = textLinkScope;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        TextLayoutInput textLayoutInput;
        int i = this.$r8$classId;
        int i2 = 2;
        TextLinkScope textLinkScope = this.f$0;
        switch (i) {
            case 0:
                return Boolean.valueOf(textLinkScope != null ? ((Boolean) new BasicTextKt$$ExternalSyntheticLambda11(textLinkScope, i2).invoke()).booleanValue() : false);
            case 1:
                return Boolean.valueOf(textLinkScope != null ? ((Boolean) new BasicTextKt$$ExternalSyntheticLambda11(textLinkScope, i2).invoke()).booleanValue() : false);
            default:
                AnnotatedString annotatedString = textLinkScope.text;
                TextLayoutResult textLayoutResult = (TextLayoutResult) textLinkScope.textLayoutResult$delegate.getValue();
                return Boolean.valueOf(Intrinsics.areEqual(annotatedString, (textLayoutResult == null || (textLayoutInput = textLayoutResult.layoutInput) == null) ? null : textLayoutInput.text));
        }
    }
}
