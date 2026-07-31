package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.LayoutCoordinates;
import com.fsck.k9.mailstore.LocalFolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class NodeParent {
    public final MutableVector children = new MutableVector(new Node[16]);
    public final MutableObjectList removeMatchingPointerInputModifierNodeList = new MutableObjectList(10);

    public boolean buildCache(LongSparseArray longSparseArray, LayoutCoordinates layoutCoordinates, LocalFolder.AnonymousClass12 anonymousClass12, boolean z) {
        MutableVector mutableVector = this.children;
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        boolean z2 = false;
        for (int i2 = 0; i2 < i; i2++) {
            z2 = ((Node) objArr[i2]).buildCache(longSparseArray, layoutCoordinates, anonymousClass12, z) || z2;
        }
        return z2;
    }

    public void cleanUpHits(LocalFolder.AnonymousClass12 anonymousClass12) {
        MutableVector mutableVector = this.children;
        int i = mutableVector.size;
        while (true) {
            i--;
            if (-1 >= i) {
                return;
            }
            if (((Node) mutableVector.content[i]).pointerIds.size == 0) {
                mutableVector.removeAt(i);
            }
        }
    }
}
