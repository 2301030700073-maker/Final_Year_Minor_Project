package androidx.compose.material3;

import android.view.View;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FabPlacement {
    public final /* synthetic */ int $r8$classId;
    public int height;
    public int left;

    public FabPlacement(int i) {
        this.$r8$classId = 4;
        if (!(i >= 0)) {
            UriKt$$ExternalSyntheticBUOutline0.m("lowerBound cannot be greater than upperBound");
            throw null;
        }
        this.left = i;
        this.height = 0;
    }

    public boolean atEnd() {
        return this.height >= this.left;
    }

    public void setFrom(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        this.left = view.getLeft();
        this.height = view.getTop();
        view.getRight();
        view.getBottom();
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 4:
                StringBuilder sb = new StringBuilder("[0>");
                sb.append(this.height);
                sb.append('>');
                return CameraDevices$CC.m(sb, this.left, ']');
            default:
                return super.toString();
        }
    }

    public void updatePos(int i) {
        int i2 = this.left;
        if (!(i >= 0)) {
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(i, "pos: ", " < lowerBound: 0"));
            return;
        }
        if (i <= i2) {
            this.height = i;
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m(Modifier.CC.m(i, i2, "pos: ", " > upperBound: "));
        }
    }

    public /* synthetic */ FabPlacement(int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.left = i;
        this.height = i2;
    }

    public /* synthetic */ FabPlacement(int i, byte b) {
        this.$r8$classId = i;
    }
}
