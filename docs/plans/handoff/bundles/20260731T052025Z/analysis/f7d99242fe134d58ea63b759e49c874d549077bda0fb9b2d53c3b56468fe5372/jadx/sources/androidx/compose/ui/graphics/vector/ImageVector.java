package androidx.compose.ui.graphics.vector;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Dp;
import com.jcraft.jzlib.Adler32;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageVector {
    public static int imageVectorCount;
    public static final Adler32 lock = new Adler32(4);
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

        public Builder(String str, float f, float f2, float f3, float f4, long j, int i, boolean z, int i2) {
            str = (i2 & 1) != 0 ? "" : str;
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
            GroupParams groupParams = new GroupParams(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, 1023);
            this.root = groupParams;
            arrayList.add(groupParams);
        }

        public final void addGroup(String str, float f, float f2, float f3, float f4, float f5, float f6, float f7, List list) {
            if (this.isConsumed) {
                InlineClassHelperKt.throwIllegalStateException("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
            this.nodes.add(new GroupParams(str, f, f2, f3, f4, f5, f6, f7, list, 512));
        }

        /* renamed from: addPath-oIyEayM, reason: not valid java name */
        public final void m554addPathoIyEayM(float f, float f2, float f3, float f4, float f5, float f6, float f7, int i, int i2, int i3, Brush brush, Brush brush2, String str, List list) {
            if (this.isConsumed) {
                InlineClassHelperKt.throwIllegalStateException("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
            ((GroupParams) this.nodes.get(r0.size() - 1)).children.add(new VectorPath(f, f2, f3, f4, f5, f6, f7, i, i2, i3, brush, brush2, str, list));
        }

        public final ImageVector build() {
            if (this.isConsumed) {
                InlineClassHelperKt.throwIllegalStateException("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
            while (this.nodes.size() > 1) {
                clearGroup();
            }
            GroupParams groupParams = this.root;
            ImageVector imageVector = new ImageVector(this.name, this.defaultWidth, this.defaultHeight, this.viewportWidth, this.viewportHeight, new VectorGroup(groupParams.name, groupParams.rotate, groupParams.pivotX, groupParams.pivotY, groupParams.scaleX, groupParams.scaleY, groupParams.translationX, groupParams.translationY, groupParams.clipPathData, groupParams.children), this.tintColor, this.tintBlendMode, this.autoMirror);
            this.isConsumed = true;
            return imageVector;
        }

        public final void clearGroup() {
            if (this.isConsumed) {
                InlineClassHelperKt.throwIllegalStateException("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
            ArrayList arrayList = this.nodes;
            GroupParams groupParams = (GroupParams) Modifier.CC.m(1, arrayList);
            ((GroupParams) arrayList.get(arrayList.size() - 1)).children.add(new VectorGroup(groupParams.name, groupParams.rotate, groupParams.pivotX, groupParams.pivotY, groupParams.scaleX, groupParams.scaleY, groupParams.translationX, groupParams.translationY, groupParams.clipPathData, groupParams.children));
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
        return Intrinsics.areEqual(this.name, imageVector.name) && Dp.m745equalsimpl0(this.defaultWidth, imageVector.defaultWidth) && Dp.m745equalsimpl0(this.defaultHeight, imageVector.defaultHeight) && this.viewportWidth == imageVector.viewportWidth && this.viewportHeight == imageVector.viewportHeight && this.root.equals(imageVector.root) && Color.m482equalsimpl0(this.tintColor, imageVector.tintColor) && this.tintBlendMode == imageVector.tintBlendMode && this.autoMirror == imageVector.autoMirror;
    }

    public final int hashCode() {
        int hashCode = (this.root.hashCode() + CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(this.name.hashCode() * 31, this.defaultWidth, 31), this.defaultHeight, 31), this.viewportWidth, 31), this.viewportHeight, 31)) * 31;
        int i = Color.$r8$clinit;
        return ((Config.CC.m(hashCode, 31, this.tintColor) + this.tintBlendMode) * 31) + (this.autoMirror ? 1231 : 1237);
    }
}
