package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.text.Handle;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SelectionHandleInfo {
    public final SelectionHandleAnchor anchor;
    public final Handle handle;
    public final long position;
    public final boolean visible;

    public SelectionHandleInfo(Handle handle, long j, SelectionHandleAnchor selectionHandleAnchor, boolean z) {
        this.handle = handle;
        this.position = j;
        this.anchor = selectionHandleAnchor;
        this.visible = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionHandleInfo)) {
            return false;
        }
        SelectionHandleInfo selectionHandleInfo = (SelectionHandleInfo) obj;
        return this.handle == selectionHandleInfo.handle && Offset.m383equalsimpl0(this.position, selectionHandleInfo.position) && this.anchor == selectionHandleInfo.anchor && this.visible == selectionHandleInfo.visible;
    }

    public final int hashCode() {
        return ((this.anchor.hashCode() + ((Modifier.CC.m(this.position) + (this.handle.hashCode() * 31)) * 31)) * 31) + (this.visible ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SelectionHandleInfo(handle=");
        sb.append(this.handle);
        sb.append(", position=");
        sb.append((Object) Offset.m388toStringimpl(this.position));
        sb.append(", anchor=");
        sb.append(this.anchor);
        sb.append(", visible=");
        return Animation.CC.m(sb, this.visible, ')');
    }
}
