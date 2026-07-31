package androidx.navigation;

import androidx.navigation.NavOptions;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavOptionsBuilder {
    public final NavOptions.Builder builder;
    public int popUpToId;
    public boolean saveState;

    public NavOptionsBuilder() {
        NavOptions.Builder builder = new NavOptions.Builder();
        builder.enterAnim = -1;
        builder.exitAnim = -1;
        this.builder = builder;
        this.popUpToId = -1;
    }
}
