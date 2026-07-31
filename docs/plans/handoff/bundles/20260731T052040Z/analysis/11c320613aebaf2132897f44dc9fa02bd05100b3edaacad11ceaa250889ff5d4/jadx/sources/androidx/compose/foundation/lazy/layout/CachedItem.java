package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CachedItem {
    public static final NoKey NoKey = new NoKey();
    public Object key;
    public int mainAxisSize;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NoKey {
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CachedItem(key=");
        sb.append(this.key);
        sb.append(", mainAxisSize=");
        return Modifier.CC.m(sb, this.mainAxisSize, ')');
    }
}
