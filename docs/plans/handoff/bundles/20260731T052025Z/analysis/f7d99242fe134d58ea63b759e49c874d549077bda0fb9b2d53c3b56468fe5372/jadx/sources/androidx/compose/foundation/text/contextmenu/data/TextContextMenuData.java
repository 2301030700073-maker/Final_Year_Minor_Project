package androidx.compose.foundation.text.contextmenu.data;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.util.ListUtilsKt;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextContextMenuData {
    public static final TextContextMenuData Empty = new TextContextMenuData(EmptyList.INSTANCE);
    public final List components;

    public TextContextMenuData(List list) {
        this.components = list;
    }

    public final String toString() {
        return CameraDevices$CC.m(')', "TextContextMenuData(components=", ListUtilsKt.fastJoinToString$default(this.components, "\n\t", null, 56));
    }
}
