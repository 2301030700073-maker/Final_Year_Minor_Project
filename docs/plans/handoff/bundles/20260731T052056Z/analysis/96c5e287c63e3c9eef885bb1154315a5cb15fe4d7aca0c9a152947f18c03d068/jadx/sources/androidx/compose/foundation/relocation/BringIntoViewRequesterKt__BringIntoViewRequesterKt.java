package androidx.compose.foundation.relocation;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract /* synthetic */ class BringIntoViewRequesterKt__BringIntoViewRequesterKt {
    public static final Modifier bringIntoViewRequester(Modifier modifier, BringIntoViewRequesterImpl bringIntoViewRequesterImpl) {
        return modifier.then(new BringIntoViewRequesterElement(bringIntoViewRequesterImpl));
    }
}
