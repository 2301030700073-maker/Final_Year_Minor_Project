package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.ParcelableSnapshotMutableState;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ButtonDefaults {
    public static final float MinHeight;
    public static final float MinWidth;
    public static final PaddingValuesImpl TextButtonContentPadding;

    static {
        float f = ListTokens.LeadingSpace;
        float f2 = ListTokens.TrailingSpace;
        new PaddingValuesImpl(f, 8.0f, f2, 8.0f);
        SpacerKt.m94PaddingValuesa9UjIt4(16.0f, 8.0f, f2, 8.0f);
        TextButtonContentPadding = new PaddingValuesImpl(12.0f, 8.0f, 12.0f, 8.0f);
        SpacerKt.m94PaddingValuesa9UjIt4(12.0f, 8.0f, 16.0f, 8.0f);
        MinWidth = 58.0f;
        ParcelableSnapshotMutableState parcelableSnapshotMutableState = PrecisionPointer.shouldUsePrecisionPointerComponentSizing;
        MinHeight = ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue() ? 36.0f : 40.0f;
        ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
        ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
        ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
        ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
        ((Boolean) parcelableSnapshotMutableState.getValue()).getClass();
        ((Boolean) parcelableSnapshotMutableState.getValue()).getClass();
        ((Boolean) parcelableSnapshotMutableState.getValue()).getClass();
        ((Boolean) parcelableSnapshotMutableState.getValue()).getClass();
        ((Boolean) parcelableSnapshotMutableState.getValue()).getClass();
        ((Boolean) parcelableSnapshotMutableState.getValue()).getClass();
        ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
        ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
        ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
        ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue();
    }
}
