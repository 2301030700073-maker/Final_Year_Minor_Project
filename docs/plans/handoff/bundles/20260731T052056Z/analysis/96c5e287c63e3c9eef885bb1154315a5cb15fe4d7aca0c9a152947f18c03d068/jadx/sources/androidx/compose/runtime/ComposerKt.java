package androidx.compose.runtime;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ComposerKt {
    public static final OpaqueKey invocation = new OpaqueKey("provider");
    public static final OpaqueKey provider = new OpaqueKey("provider");
    public static final OpaqueKey compositionLocalMap = new OpaqueKey("compositionLocalMap");
    public static final OpaqueKey providerMaps = new OpaqueKey("providers");
    public static final OpaqueKey reference = new OpaqueKey("reference");

    public static final void composeImmediateRuntimeError(String str) {
        throw new ComposeRuntimeError(Animation.CC.m("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (", str, "). Please report to Google or use https://goo.gle/compose-feedback"));
    }

    public static final Void composeRuntimeError(String str) {
        throw new ComposeRuntimeError(Animation.CC.m("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (", str, "). Please report to Google or use https://goo.gle/compose-feedback"));
    }
}
