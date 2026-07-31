package androidx.compose.foundation.text.selection;

import android.view.textclassifier.TextClassification;
import androidx.compose.ui.text.TextRange;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextClassificationResult {
    public final long selection;
    public final CharSequence text;
    public final TextClassification textClassification;

    public TextClassificationResult(CharSequence charSequence, long j, TextClassification textClassification) {
        this.text = charSequence;
        this.selection = j;
        this.textClassification = textClassification;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextClassificationResult)) {
            return false;
        }
        TextClassificationResult textClassificationResult = (TextClassificationResult) obj;
        return Intrinsics.areEqual(this.text, textClassificationResult.text) && TextRange.m640equalsimpl0(this.selection, textClassificationResult.selection) && Intrinsics.areEqual(this.textClassification, textClassificationResult.textClassification);
    }

    public final int hashCode() {
        int hashCode = this.text.hashCode() * 31;
        int i = TextRange.$r8$clinit;
        long j = this.selection;
        return this.textClassification.hashCode() + ((((int) (j ^ (j >>> 32))) + hashCode) * 31);
    }

    public final String toString() {
        return "TextClassificationResult(text=" + ((Object) this.text) + ", selection=" + ((Object) TextRange.m646toStringimpl(this.selection)) + ", textClassification=" + this.textClassification + ')';
    }
}
