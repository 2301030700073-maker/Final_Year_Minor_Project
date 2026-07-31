package androidx.compose.ui.graphics.vector;

import androidx.camera.core.impl.Config;
import androidx.camera.view.PreviewView;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.core.view.MenuHostHelper;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GroupComponent extends VNode {
    public AndroidPath clipPath;
    public List clipPathData;
    public float[] groupMatrix;
    public Function1 invalidateListener;
    public boolean isClipPathDirty;
    public boolean isMatrixDirty;
    public String name;
    public float pivotX;
    public float pivotY;
    public float rotation;
    public float scaleX;
    public float scaleY;
    public float translationX;
    public float translationY;
    public final NodeChainKt$fillVector$1 wrappedListener;
    public final ArrayList children = new ArrayList();
    public boolean isTintable = true;
    public long tintColor = Color.Unspecified;

    public GroupComponent() {
        int i = VectorKt.$r8$clinit;
        this.clipPathData = EmptyList.INSTANCE;
        this.isClipPathDirty = true;
        this.wrappedListener = new NodeChainKt$fillVector$1(10, this);
        this.name = "";
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.isMatrixDirty = true;
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final void draw(DrawScope drawScope) {
        if (this.isMatrixDirty) {
            float[] fArr = this.groupMatrix;
            if (fArr == null) {
                fArr = Matrix.m503constructorimpl$default();
                this.groupMatrix = fArr;
            } else {
                Matrix.m506resetimpl(fArr);
            }
            Matrix.m508translateimpl(fArr, this.translationX + this.pivotX, this.translationY + this.pivotY);
            float f = this.rotation;
            if (fArr.length >= 16) {
                double d = f * 0.017453292519943295d;
                float sin = (float) Math.sin(d);
                float cos = (float) Math.cos(d);
                float f2 = fArr[0];
                float f3 = fArr[4];
                float f4 = (sin * f3) + (cos * f2);
                float f5 = -sin;
                float f6 = (f3 * cos) + (f2 * f5);
                float f7 = fArr[1];
                float f8 = fArr[5];
                float f9 = (sin * f8) + (cos * f7);
                float f10 = (f8 * cos) + (f7 * f5);
                float f11 = fArr[2];
                float f12 = fArr[6];
                float f13 = (sin * f12) + (cos * f11);
                float f14 = (f12 * cos) + (f11 * f5);
                float f15 = fArr[3];
                float f16 = fArr[7];
                fArr[0] = f4;
                fArr[1] = f9;
                fArr[2] = f13;
                fArr[3] = (sin * f16) + (cos * f15);
                fArr[4] = f6;
                fArr[5] = f10;
                fArr[6] = f14;
                fArr[7] = (cos * f16) + (f5 * f15);
            }
            float f17 = this.scaleX;
            float f18 = this.scaleY;
            if (fArr.length >= 16) {
                fArr[0] = fArr[0] * f17;
                fArr[1] = fArr[1] * f17;
                fArr[2] = fArr[2] * f17;
                fArr[3] = fArr[3] * f17;
                fArr[4] = fArr[4] * f18;
                fArr[5] = fArr[5] * f18;
                fArr[6] = fArr[6] * f18;
                fArr[7] = fArr[7] * f18;
                fArr[8] = fArr[8] * 1.0f;
                fArr[9] = fArr[9] * 1.0f;
                fArr[10] = fArr[10] * 1.0f;
                fArr[11] = fArr[11] * 1.0f;
            }
            Matrix.m508translateimpl(fArr, -this.pivotX, -this.pivotY);
            this.isMatrixDirty = false;
        }
        if (this.isClipPathDirty) {
            if (!this.clipPathData.isEmpty()) {
                AndroidPath androidPath = this.clipPath;
                if (androidPath == null) {
                    androidPath = AndroidPath_androidKt.Path();
                    this.clipPath = androidPath;
                }
                PathParserKt.toPath(this.clipPathData, androidPath);
            }
            this.isClipPathDirty = false;
        }
        MenuHostHelper drawContext = drawScope.getDrawContext();
        long m795getSizeNHjbRc = drawContext.m795getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            MenuHostHelper menuHostHelper = (MenuHostHelper) ((PreviewView.AnonymousClass1) drawContext.mOnInvalidateMenuCallback).this$0;
            float[] fArr2 = this.groupMatrix;
            if (fArr2 != null) {
                menuHostHelper.getCanvas().mo456concat58bKbWc(fArr2);
            }
            AndroidPath androidPath2 = this.clipPath;
            if (!this.clipPathData.isEmpty() && androidPath2 != null) {
                menuHostHelper.getCanvas().mo453clipPathmtrdDE(androidPath2);
            }
            ArrayList arrayList = this.children;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((VNode) arrayList.get(i)).draw(drawScope);
            }
        } finally {
            Config.CC.m(drawContext, m795getSizeNHjbRc);
        }
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final Function1 getInvalidateListener$ui() {
        return this.invalidateListener;
    }

    public final void insertAt(int i, VNode vNode) {
        ArrayList arrayList = this.children;
        if (i < arrayList.size()) {
            arrayList.set(i, vNode);
        } else {
            arrayList.add(vNode);
        }
        markTintForVNode(vNode);
        vNode.setInvalidateListener$ui(this.wrappedListener);
        invalidate();
    }

    /* renamed from: markTintForColor-8_81llA, reason: not valid java name */
    public final void m552markTintForColor8_81llA(long j) {
        if (this.isTintable && j != 16) {
            long j2 = this.tintColor;
            if (j2 == 16) {
                this.tintColor = j;
                return;
            }
            int i = VectorKt.$r8$clinit;
            if (Color.m487getRedimpl(j2) == Color.m487getRedimpl(j) && Color.m486getGreenimpl(j2) == Color.m486getGreenimpl(j) && Color.m484getBlueimpl(j2) == Color.m484getBlueimpl(j)) {
                return;
            }
            this.isTintable = false;
            this.tintColor = Color.Unspecified;
        }
    }

    public final void markTintForVNode(VNode vNode) {
        if (!(vNode instanceof PathComponent)) {
            if (vNode instanceof GroupComponent) {
                GroupComponent groupComponent = (GroupComponent) vNode;
                if (groupComponent.isTintable && this.isTintable) {
                    m552markTintForColor8_81llA(groupComponent.tintColor);
                    return;
                } else {
                    this.isTintable = false;
                    this.tintColor = Color.Unspecified;
                    return;
                }
            }
            return;
        }
        PathComponent pathComponent = (PathComponent) vNode;
        Brush brush = pathComponent.fill;
        if (this.isTintable && brush != null) {
            if (brush instanceof SolidColor) {
                m552markTintForColor8_81llA(((SolidColor) brush).value);
            } else {
                this.isTintable = false;
                this.tintColor = Color.Unspecified;
            }
        }
        Brush brush2 = pathComponent.stroke;
        if (this.isTintable && brush2 != null) {
            if (brush2 instanceof SolidColor) {
                m552markTintForColor8_81llA(((SolidColor) brush2).value);
            } else {
                this.isTintable = false;
                this.tintColor = Color.Unspecified;
            }
        }
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public final void setInvalidateListener$ui(NodeChainKt$fillVector$1 nodeChainKt$fillVector$1) {
        this.invalidateListener = nodeChainKt$fillVector$1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("VGroup: ");
        sb.append(this.name);
        ArrayList arrayList = this.children;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            VNode vNode = (VNode) arrayList.get(i);
            sb.append("\t");
            sb.append(vNode.toString());
            sb.append("\n");
        }
        return sb.toString();
    }
}
