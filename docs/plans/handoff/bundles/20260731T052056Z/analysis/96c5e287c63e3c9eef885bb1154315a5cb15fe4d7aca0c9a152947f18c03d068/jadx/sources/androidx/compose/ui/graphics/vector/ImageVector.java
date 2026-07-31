package androidx.compose.ui.graphics.vector;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.List;
import kotlin.ULong;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImageVector {
    public static int imageVectorCount;
    public static final Transition.AnonymousClass1 lock = new Transition.AnonymousClass1(3, false);
    public final boolean autoMirror;
    public final float defaultHeight;
    public final float defaultWidth;
    public final int genId;
    public final String name;
    public final VectorGroup root;
    public final int tintBlendMode;
    public final long tintColor;
    public final float viewportHeight;
    public final float viewportWidth;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder {
        public final boolean autoMirror;
        public final float defaultHeight;
        public final float defaultWidth;
        public boolean isConsumed;
        public final String name;
        public final ArrayList nodes;
        public final GroupParams root;
        public final int tintBlendMode;
        public final long tintColor;
        public final float viewportHeight;
        public final float viewportWidth;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class GroupParams {
            public final ArrayList children;
            public final List clipPathData;
            public final String name;
            public final float pivotX;
            public final float pivotY;
            public final float rotate;
            public final float scaleX;
            public final float scaleY;
            public final float translationX;
            public final float translationY;

            public GroupParams(String str, float f, float f2, float f3, float f4, float f5, float f6, float f7, List list, int i) {
                str = (i & 1) != 0 ? "" : str;
                f = (i & 2) != 0 ? 0.0f : f;
                f2 = (i & 4) != 0 ? 0.0f : f2;
                f3 = (i & 8) != 0 ? 0.0f : f3;
                f4 = (i & 16) != 0 ? 1.0f : f4;
                f5 = (i & 32) != 0 ? 1.0f : f5;
                f6 = (i & 64) != 0 ? 0.0f : f6;
                f7 = (i & 128) != 0 ? 0.0f : f7;
                if ((i & 256) != 0) {
                    int i2 = VectorKt.$r8$clinit;
                    list = EmptyList.INSTANCE;
                }
                ArrayList arrayList = new ArrayList();
                this.name = str;
                this.rotate = f;
                this.pivotX = f2;
                this.pivotY = f3;
                this.scaleX = f4;
                this.scaleY = f5;
                this.translationX = f6;
                this.translationY = f7;
                this.clipPathData = list;
                this.children = arrayList;
            }
        }

        public Builder(float f, float f2, float f3, float f4, long j, int i, boolean z, int i2) {
            String str = (i2 & 1) != 0 ? "" : "Filled.Close";
            long j2 = (i2 & 32) != 0 ? Color.Unspecified : j;
            int i3 = (i2 & 64) != 0 ? 5 : i;
            boolean z2 = (i2 & 128) != 0 ? false : z;
            this.name = str;
            this.defaultWidth = f;
            this.defaultHeight = f2;
            this.viewportWidth = f3;
            this.viewportHeight = f4;
            this.tintColor = j2;
            this.tintBlendMode = i3;
            this.autoMirror = z2;
            ArrayList arrayList = new ArrayList();
            this.nodes = arrayList;
            GroupParams groupParams = new GroupParams(null, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, null, 1023);
            this.root = groupParams;
            arrayList.add(groupParams);
        }
    }

    public ImageVector(String str, float f, float f2, float f3, float f4, VectorGroup vectorGroup, long j, int i, boolean z) {
        int i2;
        synchronized (lock) {
            i2 = imageVectorCount;
            imageVectorCount = i2 + 1;
        }
        this.name = str;
        this.defaultWidth = f;
        this.defaultHeight = f2;
        this.viewportWidth = f3;
        this.viewportHeight = f4;
        this.root = vectorGroup;
        this.tintColor = j;
        this.tintBlendMode = i;
        this.autoMirror = z;
        this.genId = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageVector)) {
            return false;
        }
        ImageVector imageVector = (ImageVector) obj;
        if (!Intrinsics.areEqual(this.name, imageVector.name) || !Dp.m693equalsimpl0(this.defaultWidth, imageVector.defaultWidth) || !Dp.m693equalsimpl0(this.defaultHeight, imageVector.defaultHeight) || this.viewportWidth != imageVector.viewportWidth || this.viewportHeight != imageVector.viewportHeight || !this.root.equals(imageVector.root)) {
            return false;
        }
        long j = imageVector.tintColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.tintColor, j) && this.tintBlendMode == imageVector.tintBlendMode && this.autoMirror == imageVector.autoMirror;
    }

    public final int hashCode() {
        int hashCode = (this.root.hashCode() + Animation.CC.m(Animation.CC.m(Animation.CC.m(Animation.CC.m(this.name.hashCode() * 31, this.defaultWidth, 31), this.defaultHeight, 31), this.viewportWidth, 31), this.viewportHeight, 31)) * 31;
        int i = Color.$r8$clinit;
        return ((Animation.CC.m(hashCode, 31, this.tintColor) + this.tintBlendMode) * 31) + (this.autoMirror ? 1231 : 1237);
    }
}
