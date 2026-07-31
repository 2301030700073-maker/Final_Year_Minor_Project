package androidx.compose.foundation.text.contextmenu.data;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.util.ListUtilsKt;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextContextMenuData {
    public static final TextContextMenuData Empty = new TextContextMenuData(EmptyList.INSTANCE);
    public final List components;

    public TextContextMenuData(List list) {
        this.components = list;
    }

    public final String toString() {
        return Animation.CC.m(')', "TextContextMenuData(components=", ListUtilsKt.fastJoinToString$default(this.components, "\n\t", null, 56));
    }
}
