package androidx.compose.ui.text.font;

import android.graphics.Typeface;
import androidx.compose.runtime.State;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypefaceResult$Immutable implements State {
    public final boolean cacheable = true;
    public final Object value;

    public TypefaceResult$Immutable(Typeface typeface) {
        this.value = typeface;
    }

    @Override // androidx.compose.runtime.State
    public final Object getValue() {
        return this.value;
    }
}
