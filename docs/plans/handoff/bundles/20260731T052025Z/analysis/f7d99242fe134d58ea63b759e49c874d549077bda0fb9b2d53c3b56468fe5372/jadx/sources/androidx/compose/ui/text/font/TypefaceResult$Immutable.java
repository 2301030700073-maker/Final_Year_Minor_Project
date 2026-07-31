package androidx.compose.ui.text.font;

import android.graphics.Typeface;
import androidx.compose.runtime.State;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
