package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Dp;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import io.noties.markwon.BlockHandlerDef;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ImageVector {
    public static int imageVectorCount;
    public static final BlockHandlerDef lock = new BlockHandlerDef(4);
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

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

        public Builder(float f, float f2, float f3, float f4, boolean z, int i) {
            String str = (i & 1) != 0 ? "" : "emptyImageVector";
            long j = Color.Unspecified;
            boolean z2 = (i & 128) != 0 ? false : z;
            this.name = str;
            this.defaultWidth = f;
            this.defaultHeight = f2;
            this.viewportWidth = f3;
            this.viewportHeight = f4;
            this.tintColor = j;
            this.tintBlendMode = 5;
            this.autoMirror = z2;
            ArrayList arrayList = new ArrayList();
            this.nodes = arrayList;
            GroupParams groupParams = new GroupParams(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, AnalyticsListener.EVENT_DRM_KEYS_LOADED);
            this.root = groupParams;
            arrayList.add(groupParams);
        }

        public final ImageVector build() {
            if (this.isConsumed) {
                InlineClassHelperKt.throwIllegalStateException("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
            while (true) {
                ArrayList arrayList = this.nodes;
                if (arrayList.size() <= 1) {
                    GroupParams groupParams = this.root;
                    ImageVector imageVector = new ImageVector(this.name, this.defaultWidth, this.defaultHeight, this.viewportWidth, this.viewportHeight, new VectorGroup(groupParams.name, groupParams.rotate, groupParams.pivotX, groupParams.pivotY, groupParams.scaleX, groupParams.scaleY, groupParams.translationX, groupParams.translationY, groupParams.clipPathData, groupParams.children), this.tintColor, this.tintBlendMode, this.autoMirror);
                    this.isConsumed = true;
                    return imageVector;
                }
                if (this.isConsumed) {
                    InlineClassHelperKt.throwIllegalStateException("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
                }
                GroupParams groupParams2 = (GroupParams) arrayList.remove(arrayList.size() - 1);
                ((GroupParams) Modifier.CC.m(1, arrayList)).children.add(new VectorGroup(groupParams2.name, groupParams2.rotate, groupParams2.pivotX, groupParams2.pivotY, groupParams2.scaleX, groupParams2.scaleY, groupParams2.translationX, groupParams2.translationY, groupParams2.clipPathData, groupParams2.children));
            }
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
        return Intrinsics.areEqual(this.name, imageVector.name) && Dp.m443equalsimpl0(this.defaultWidth, imageVector.defaultWidth) && Dp.m443equalsimpl0(this.defaultHeight, imageVector.defaultHeight) && this.viewportWidth == imageVector.viewportWidth && this.viewportHeight == imageVector.viewportHeight && this.root.equals(imageVector.root) && Color.m244equalsimpl0(this.tintColor, imageVector.tintColor) && this.tintBlendMode == imageVector.tintBlendMode && this.autoMirror == imageVector.autoMirror;
    }

    public final int hashCode() {
        int hashCode = (this.root.hashCode() + Modifier.CC.m(this.viewportHeight, Modifier.CC.m(this.viewportWidth, Modifier.CC.m(this.defaultHeight, Modifier.CC.m(this.defaultWidth, this.name.hashCode() * 31, 31), 31), 31), 31)) * 31;
        int i = Color.$r8$clinit;
        return ((Modifier.CC.m(hashCode, this.tintColor, 31) + this.tintBlendMode) * 31) + (this.autoMirror ? 1231 : 1237);
    }
}
