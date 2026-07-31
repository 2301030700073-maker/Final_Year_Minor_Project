package androidx.compose.ui.spatial;

import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import java.util.Arrays;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RelativeLayoutBounds {
    public final long bottomRight;
    public final AwaitFirstLayoutModifier.Node node;
    public final long screenOffset;
    public final long topLeft;
    public final float[] viewToWindowMatrix;
    public final long windowOffset;
    public final long windowSize;

    public RelativeLayoutBounds(long j, long j2, long j3, long j4, long j5, float[] fArr, AwaitFirstLayoutModifier.Node node) {
        this.topLeft = j;
        this.bottomRight = j2;
        this.windowOffset = j3;
        this.screenOffset = j4;
        this.windowSize = j5;
        this.viewToWindowMatrix = fArr;
        this.node = node;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r6 != r7) goto L4
            return r0
        L4:
            r1 = 0
            if (r7 == 0) goto L61
            java.lang.Class<androidx.compose.ui.spatial.RelativeLayoutBounds> r2 = androidx.compose.ui.spatial.RelativeLayoutBounds.class
            java.lang.Class r3 = r7.getClass()
            if (r2 == r3) goto L10
            goto L61
        L10:
            androidx.compose.ui.spatial.RelativeLayoutBounds r7 = (androidx.compose.ui.spatial.RelativeLayoutBounds) r7
            long r2 = r6.topLeft
            long r4 = r7.topLeft
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 == 0) goto L1b
            goto L61
        L1b:
            long r2 = r6.bottomRight
            long r4 = r7.bottomRight
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 == 0) goto L24
            goto L61
        L24:
            long r2 = r6.windowSize
            long r4 = r7.windowSize
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 == 0) goto L2d
            goto L61
        L2d:
            long r2 = r6.windowOffset
            long r4 = r7.windowOffset
            boolean r2 = androidx.compose.ui.unit.IntOffset.m715equalsimpl0(r2, r4)
            if (r2 != 0) goto L38
            goto L61
        L38:
            long r2 = r6.screenOffset
            long r4 = r7.screenOffset
            boolean r2 = androidx.compose.ui.unit.IntOffset.m715equalsimpl0(r2, r4)
            if (r2 != 0) goto L43
            goto L61
        L43:
            float[] r2 = r7.viewToWindowMatrix
            float[] r3 = r6.viewToWindowMatrix
            if (r3 != 0) goto L4f
            if (r2 != 0) goto L4d
            r2 = r0
            goto L56
        L4d:
            r2 = r1
            goto L56
        L4f:
            if (r2 != 0) goto L52
            goto L4d
        L52:
            boolean r2 = r3.equals(r2)
        L56:
            if (r2 != 0) goto L59
            goto L61
        L59:
            androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier$Node r6 = r6.node
            androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier$Node r7 = r7.node
            if (r6 == r7) goto L60
            return r1
        L60:
            return r0
        L61:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.spatial.RelativeLayoutBounds.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        long j = this.topLeft;
        long j2 = this.bottomRight;
        int i = ((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.windowSize;
        int i2 = (i + ((int) (j3 ^ (j3 >>> 32)))) * 31;
        long j4 = this.windowOffset;
        int i3 = (((int) (j4 ^ (j4 >>> 32))) + i2) * 31;
        long j5 = this.screenOffset;
        int i4 = (((int) (j5 ^ (j5 >>> 32))) + i3) * 31;
        float[] fArr = this.viewToWindowMatrix;
        return this.node.hashCode() + ((i4 + (fArr != null ? Arrays.hashCode(fArr) : 0)) * 31);
    }
}
