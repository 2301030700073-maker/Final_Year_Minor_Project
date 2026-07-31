package androidx.compose.material3.tokens;

import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CheckboxTokens {
    public static final ColorSchemeKeyTokens SelectedContainerColor;
    public static final ColorSchemeKeyTokens SelectedDisabledContainerColor;
    public static final ColorSchemeKeyTokens SelectedIconColor;
    public static final float StateLayerSize;
    public static final ColorSchemeKeyTokens UnselectedDisabledOutlineColor;
    public static final ColorSchemeKeyTokens UnselectedOutlineColor;

    static {
        RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.CircleShape;
        SelectedContainerColor = ColorSchemeKeyTokens.Primary;
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.OnSurface;
        SelectedDisabledContainerColor = colorSchemeKeyTokens;
        SelectedIconColor = ColorSchemeKeyTokens.OnPrimary;
        StateLayerSize = 40.0f;
        UnselectedDisabledOutlineColor = colorSchemeKeyTokens;
        UnselectedOutlineColor = ColorSchemeKeyTokens.OnSurfaceVariant;
    }
}
