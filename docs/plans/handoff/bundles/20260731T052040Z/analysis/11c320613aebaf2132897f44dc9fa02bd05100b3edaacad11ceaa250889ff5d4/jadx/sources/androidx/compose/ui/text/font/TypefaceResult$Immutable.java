package androidx.compose.ui.text.font;

import android.graphics.Typeface;
import androidx.compose.runtime.State;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
