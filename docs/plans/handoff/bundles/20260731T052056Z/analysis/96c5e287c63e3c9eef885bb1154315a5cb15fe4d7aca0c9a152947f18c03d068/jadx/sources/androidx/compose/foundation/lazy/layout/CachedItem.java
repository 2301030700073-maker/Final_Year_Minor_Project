package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CachedItem {
    public static final NoKey NoKey = new NoKey();
    public Object key;
    public int mainAxisSize;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NoKey {
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CachedItem(key=");
        sb.append(this.key);
        sb.append(", mainAxisSize=");
        return Animation.CC.m(sb, this.mainAxisSize, ')');
    }
}
