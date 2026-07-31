package androidx.compose.foundation.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ParentDataModifier;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextRangeLayoutModifier implements ParentDataModifier {
    public final TextLinkScope$$ExternalSyntheticLambda3 measurePolicy;

    public TextRangeLayoutModifier(TextLinkScope$$ExternalSyntheticLambda3 textLinkScope$$ExternalSyntheticLambda3) {
        this.measurePolicy = textLinkScope$$ExternalSyntheticLambda3;
    }

    @Override // androidx.compose.ui.Modifier
    public final boolean all(Function1 function1) {
        return ((Boolean) function1.invoke(this)).booleanValue();
    }

    @Override // androidx.compose.ui.Modifier
    public final Object foldIn(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    @Override // androidx.compose.ui.Modifier
    public final /* synthetic */ Modifier then(Modifier modifier) {
        return Modifier.CC.$default$then(this, modifier);
    }

    @Override // androidx.compose.ui.layout.ParentDataModifier
    public final Object modifyParentData() {
        return this;
    }
}
