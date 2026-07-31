package androidx.compose.ui.text.font;

import androidx.paging.HintHandler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LoadedFontFamily extends FontFamily {
    public final HintHandler typeface;

    public LoadedFontFamily(HintHandler hintHandler) {
        this.typeface = hintHandler;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LoadedFontFamily) {
            return this.typeface == ((LoadedFontFamily) obj).typeface;
        }
        return false;
    }

    public final int hashCode() {
        return this.typeface.hashCode();
    }

    public final String toString() {
        return "LoadedFontFamily(typeface=" + this.typeface + ')';
    }
}
