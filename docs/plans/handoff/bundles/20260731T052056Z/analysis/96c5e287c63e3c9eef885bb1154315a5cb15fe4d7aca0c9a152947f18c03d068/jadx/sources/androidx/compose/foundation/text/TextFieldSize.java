package androidx.compose.foundation.text;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextFieldSize {
    public Density density;
    public final ParcelableSnapshotMutableState dirty$delegate = Updater.mutableStateOf$default(Boolean.TRUE);
    public FontFamily.Resolver fontFamilyResolver;
    public LayoutDirection layoutDirection;
    public long minSize;
    public TextStyle resolvedStyle;
    public Object typeface;

    public TextFieldSize(LayoutDirection layoutDirection, Density density, FontFamily.Resolver resolver, TextStyle textStyle, Object obj) {
        long computeSizeForDefaultText;
        this.layoutDirection = layoutDirection;
        this.density = density;
        this.fontFamilyResolver = resolver;
        this.resolvedStyle = textStyle;
        this.typeface = obj;
        computeSizeForDefaultText = TextFieldDelegateKt.computeSizeForDefaultText(this.resolvedStyle, this.density, this.fontFamilyResolver, TextFieldDelegateKt.EmptyTextReplacement, 1);
        this.minSize = computeSizeForDefaultText;
    }

    public static void update$default(TextFieldSize textFieldSize, LayoutDirection layoutDirection, Density density, TextStyle textStyle, int i) {
        if ((i & 1) != 0) {
            layoutDirection = textFieldSize.layoutDirection;
        }
        if ((i & 2) != 0) {
            density = textFieldSize.density;
        }
        FontFamily.Resolver resolver = textFieldSize.fontFamilyResolver;
        if ((i & 8) != 0) {
            textStyle = textFieldSize.resolvedStyle;
        }
        Object obj = textFieldSize.typeface;
        LayoutDirection layoutDirection2 = textFieldSize.layoutDirection;
        ParcelableSnapshotMutableState parcelableSnapshotMutableState = textFieldSize.dirty$delegate;
        if (layoutDirection == layoutDirection2 && Intrinsics.areEqual(density, textFieldSize.density) && Intrinsics.areEqual(resolver, textFieldSize.fontFamilyResolver) && Intrinsics.areEqual(textStyle, textFieldSize.resolvedStyle)) {
            if (Intrinsics.areEqual(obj, textFieldSize.typeface)) {
                return;
            }
            textFieldSize.typeface = obj;
            parcelableSnapshotMutableState.setValue(Boolean.TRUE);
            return;
        }
        textFieldSize.layoutDirection = layoutDirection;
        textFieldSize.density = density;
        textFieldSize.fontFamilyResolver = resolver;
        textFieldSize.resolvedStyle = textStyle;
        parcelableSnapshotMutableState.setValue(Boolean.TRUE);
    }
}
