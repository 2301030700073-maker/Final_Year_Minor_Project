package androidx.compose.foundation.text.contextmenu.builder;

import androidx.collection.MutableObjectList;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextContextMenuBuilderScope {
    public final MutableObjectList components = new MutableObjectList();
    public final MutableObjectList filters = new MutableObjectList();

    public final void separator() {
        this.components.add(TextContextMenuSeparator.INSTANCE);
    }
}
