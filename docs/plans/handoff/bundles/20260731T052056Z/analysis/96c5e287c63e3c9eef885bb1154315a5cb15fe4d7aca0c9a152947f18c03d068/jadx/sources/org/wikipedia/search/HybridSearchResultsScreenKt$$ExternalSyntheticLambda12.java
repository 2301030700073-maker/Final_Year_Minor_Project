package org.wikipedia.search;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.text.TextLayoutResult;
import coil3.compose.AsyncImagePainter;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HybridSearchResultsScreenKt$$ExternalSyntheticLambda12 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;
    public final /* synthetic */ MutableState f$1;

    public /* synthetic */ HybridSearchResultsScreenKt$$ExternalSyntheticLambda12(MutableState mutableState, MutableState mutableState2, int i) {
        this.$r8$classId = i;
        this.f$0 = mutableState;
        this.f$1 = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$1;
        MutableState mutableState2 = this.f$0;
        switch (i) {
            case 0:
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
                textLayoutResult.getClass();
                if (!((Boolean) mutableState2.getValue()).booleanValue()) {
                    boolean z = textLayoutResult.multiParagraph.lineCount > 1;
                    if (z != ((Boolean) mutableState.getValue()).booleanValue()) {
                        mutableState.setValue(Boolean.valueOf(z));
                    }
                    mutableState2.setValue(Boolean.TRUE);
                    break;
                }
                break;
            default:
                ((AsyncImagePainter.State.Loading) obj).getClass();
                Boolean bool = Boolean.FALSE;
                mutableState2.setValue(bool);
                mutableState.setValue(bool);
                break;
        }
        return unit;
    }
}
