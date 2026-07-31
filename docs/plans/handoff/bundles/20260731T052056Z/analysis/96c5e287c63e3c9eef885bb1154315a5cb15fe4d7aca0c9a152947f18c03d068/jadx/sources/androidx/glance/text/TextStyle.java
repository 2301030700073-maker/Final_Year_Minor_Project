package androidx.glance.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.TextUnit;
import androidx.glance.unit.ColorProvider;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextStyle {
    public final ColorProvider color;
    public final TextUnit fontSize;
    public final FontWeight fontWeight;

    public TextStyle(ColorProvider colorProvider, TextUnit textUnit, FontWeight fontWeight, int i) {
        textUnit = (i & 2) != 0 ? null : textUnit;
        fontWeight = (i & 4) != 0 ? null : fontWeight;
        this.color = colorProvider;
        this.fontSize = textUnit;
        this.fontWeight = fontWeight;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextStyle)) {
            return false;
        }
        TextStyle textStyle = (TextStyle) obj;
        return Intrinsics.areEqual(this.color, textStyle.color) && Intrinsics.areEqual(this.fontSize, textStyle.fontSize) && Intrinsics.areEqual(this.fontWeight, textStyle.fontWeight);
    }

    public final int hashCode() {
        int hashCode = this.color.hashCode() * 31;
        TextUnit textUnit = this.fontSize;
        return (((hashCode + (textUnit != null ? Modifier.CC.m(textUnit.packedValue) : 0)) * 31) + (this.fontWeight != null ? 500 : 0)) * 923521;
    }

    public final String toString() {
        return "TextStyle(color=" + this.color + ", fontSize=" + this.fontSize + ", fontWeight=" + this.fontWeight + ", fontStyle=null, textDecoration=null, textAlign=null, fontFamily=null)";
    }
}
