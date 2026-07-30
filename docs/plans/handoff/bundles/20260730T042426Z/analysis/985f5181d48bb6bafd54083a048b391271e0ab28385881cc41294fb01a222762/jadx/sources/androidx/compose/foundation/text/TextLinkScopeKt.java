package androidx.compose.foundation.text;

import androidx.compose.ui.text.TextLinkStyles;

/* compiled from: TextLinkScope.kt */
/* loaded from: classes.dex */
public abstract class TextLinkScopeKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isNullOrEmpty(TextLinkStyles textLinkStyles) {
        return textLinkStyles == null || (textLinkStyles.getStyle() == null && textLinkStyles.getFocusedStyle() == null && textLinkStyles.getHoveredStyle() == null && textLinkStyles.getPressedStyle() == null);
    }
}
