package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.OffsetMapping;

/* compiled from: ValidatingOffsetMapping.kt */
/* loaded from: classes.dex */
final class ValidatingOffsetMapping implements OffsetMapping {
    private final OffsetMapping delegate;
    private final int originalLength;
    private final int transformedLength;

    public ValidatingOffsetMapping(OffsetMapping offsetMapping, int i, int i2) {
        this.delegate = offsetMapping;
        this.originalLength = i;
        this.transformedLength = i2;
    }

    @Override // androidx.compose.ui.text.input.OffsetMapping
    public int originalToTransformed(int i) {
        int originalToTransformed = this.delegate.originalToTransformed(i);
        if (i >= 0 && i <= this.originalLength) {
            ValidatingOffsetMappingKt.validateOriginalToTransformed(originalToTransformed, this.transformedLength, i);
        }
        return originalToTransformed;
    }

    @Override // androidx.compose.ui.text.input.OffsetMapping
    public int transformedToOriginal(int i) {
        int transformedToOriginal = this.delegate.transformedToOriginal(i);
        if (i >= 0 && i <= this.transformedLength) {
            ValidatingOffsetMappingKt.validateTransformedToOriginal(transformedToOriginal, this.originalLength, i);
        }
        return transformedToOriginal;
    }
}
