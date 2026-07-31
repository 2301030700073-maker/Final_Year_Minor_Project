package androidx.compose.foundation.text.selection;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.text.Handle;
import androidx.compose.ui.geometry.Offset;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return this.handle == selectionHandleInfo.handle && Offset.m437equalsimpl0(this.position, selectionHandleInfo.position) && this.anchor == selectionHandleInfo.anchor && this.visible == selectionHandleInfo.visible;
    }

    public final int hashCode() {
        return ((this.anchor.hashCode() + ((Offset.m439hashCodeimpl(this.position) + (this.handle.hashCode() * 31)) * 31)) * 31) + (this.visible ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SelectionHandleInfo(handle=");
        sb.append(this.handle);
        sb.append(", position=");
        sb.append((Object) Offset.m443toStringimpl(this.position));
        sb.append(", anchor=");
        sb.append(this.anchor);
        sb.append(", visible=");
        return CameraDevices$CC.m(sb, this.visible, ')');
    }
}
