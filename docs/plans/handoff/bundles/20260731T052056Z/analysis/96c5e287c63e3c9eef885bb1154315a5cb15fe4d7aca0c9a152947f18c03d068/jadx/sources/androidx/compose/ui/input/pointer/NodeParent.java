package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.LayoutCoordinates;
import com.caverock.androidsvg.CSSParser;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class NodeParent {
    public final MutableVector children = new MutableVector(new Node[16]);
    public final MutableObjectList removeMatchingPointerInputModifierNodeList = new MutableObjectList(10);

    public boolean buildCache(LongSparseArray longSparseArray, LayoutCoordinates layoutCoordinates, CSSParser cSSParser, boolean z) {
        MutableVector mutableVector = this.children;
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        boolean z2 = false;
        for (int i2 = 0; i2 < i; i2++) {
            z2 = ((Node) objArr[i2]).buildCache(longSparseArray, layoutCoordinates, cSSParser, z) || z2;
        }
        return z2;
    }

    public void cleanUpHits(CSSParser cSSParser) {
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
