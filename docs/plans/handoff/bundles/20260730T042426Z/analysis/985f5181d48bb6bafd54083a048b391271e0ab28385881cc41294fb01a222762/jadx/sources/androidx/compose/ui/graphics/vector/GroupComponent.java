package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawTransform;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: Vector.kt */
/* loaded from: classes.dex */
public final class GroupComponent extends VNode {
    private final List children;
    private Path clipPath;
    private List clipPathData;
    private float[] groupMatrix;
    private Function1 invalidateListener;
    private boolean isClipPathDirty;
    private boolean isMatrixDirty;
    private boolean isTintable;
    private String name;
    private float pivotX;
    private float pivotY;
    private float rotation;
    private float scaleX;
    private float scaleY;
    private long tintColor;
    private float translationX;
    private float translationY;
    private final Function1 wrappedListener;

    public GroupComponent() {
        super(null);
        this.children = new ArrayList();
        this.isTintable = true;
        this.tintColor = Color.Companion.m1317getUnspecified0d7_KjU();
        this.clipPathData = VectorKt.getEmptyPath();
        this.isClipPathDirty = true;
        this.wrappedListener = new Function1() { // from class: androidx.compose.ui.graphics.vector.GroupComponent$wrappedListener$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((VNode) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(VNode vNode) {
                GroupComponent.this.markTintForVNode(vNode);
                Function1 invalidateListener$ui_release = GroupComponent.this.getInvalidateListener$ui_release();
                if (invalidateListener$ui_release != null) {
                    invalidateListener$ui_release.invoke(vNode);
                }
            }
        };
        this.name = "";
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.isMatrixDirty = true;
    }

    public final boolean isTintable() {
        return this.isTintable;
    }

    /* renamed from: getTintColor-0d7_KjU, reason: not valid java name */
    public final long m1560getTintColor0d7_KjU() {
        return this.tintColor;
    }

    private final void markTintForBrush(Brush brush) {
        if (this.isTintable && brush != null) {
            if (brush instanceof SolidColor) {
                m1559markTintForColor8_81llA(((SolidColor) brush).m1418getValue0d7_KjU());
            } else {
                markNotTintable();
            }
        }
    }

    /* renamed from: markTintForColor-8_81llA, reason: not valid java name */
    private final void m1559markTintForColor8_81llA(long j) {
        if (this.isTintable && j != 16) {
            long j2 = this.tintColor;
            if (j2 == 16) {
                this.tintColor = j;
            } else {
                if (VectorKt.m1574rgbEqualOWjLjI(j2, j)) {
                    return;
                }
                markNotTintable();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void markTintForVNode(VNode vNode) {
        if (vNode instanceof PathComponent) {
            PathComponent pathComponent = (PathComponent) vNode;
            markTintForBrush(pathComponent.getFill());
            markTintForBrush(pathComponent.getStroke());
        } else if (vNode instanceof GroupComponent) {
            GroupComponent groupComponent = (GroupComponent) vNode;
            if (groupComponent.isTintable && this.isTintable) {
                m1559markTintForColor8_81llA(groupComponent.tintColor);
            } else {
                markNotTintable();
            }
        }
    }

    private final void markNotTintable() {
        this.isTintable = false;
        this.tintColor = Color.Companion.m1317getUnspecified0d7_KjU();
    }

    public final void setClipPathData(List list) {
        this.clipPathData = list;
        this.isClipPathDirty = true;
        invalidate();
    }

    private final boolean getWillClipPath() {
        return !this.clipPathData.isEmpty();
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public Function1 getInvalidateListener$ui_release() {
        return this.invalidateListener;
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public void setInvalidateListener$ui_release(Function1 function1) {
        this.invalidateListener = function1;
    }

    private final void updateClipPath() {
        if (getWillClipPath()) {
            Path path = this.clipPath;
            if (path == null) {
                path = AndroidPath_androidKt.Path();
                this.clipPath = path;
            }
            PathParserKt.toPath(this.clipPathData, path);
        }
    }

    public final void setName(String str) {
        this.name = str;
        invalidate();
    }

    public final void setRotation(float f) {
        this.rotation = f;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setPivotX(float f) {
        this.pivotX = f;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setPivotY(float f) {
        this.pivotY = f;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setScaleX(float f) {
        this.scaleX = f;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setScaleY(float f) {
        this.scaleY = f;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setTranslationX(float f) {
        this.translationX = f;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final void setTranslationY(float f) {
        this.translationY = f;
        this.isMatrixDirty = true;
        invalidate();
    }

    public final int getNumChildren() {
        return this.children.size();
    }

    private final void updateMatrix() {
        float[] fArr = this.groupMatrix;
        if (fArr == null) {
            fArr = Matrix.m1364constructorimpl$default(null, 1, null);
            this.groupMatrix = fArr;
        } else {
            Matrix.m1369resetimpl(fArr);
        }
        Matrix.m1378translateimpl$default(fArr, this.pivotX + this.translationX, this.pivotY + this.translationY, 0.0f, 4, null);
        Matrix.m1372rotateZimpl(fArr, this.rotation);
        Matrix.m1373scaleimpl(fArr, this.scaleX, this.scaleY, 1.0f);
        Matrix.m1378translateimpl$default(fArr, -this.pivotX, -this.pivotY, 0.0f, 4, null);
    }

    public final void insertAt(int i, VNode vNode) {
        if (i < getNumChildren()) {
            this.children.set(i, vNode);
        } else {
            this.children.add(vNode);
        }
        markTintForVNode(vNode);
        vNode.setInvalidateListener$ui_release(this.wrappedListener);
        invalidate();
    }

    @Override // androidx.compose.ui.graphics.vector.VNode
    public void draw(DrawScope drawScope) {
        if (this.isMatrixDirty) {
            updateMatrix();
            this.isMatrixDirty = false;
        }
        if (this.isClipPathDirty) {
            updateClipPath();
            this.isClipPathDirty = false;
        }
        DrawContext drawContext = drawScope.getDrawContext();
        long mo1495getSizeNHjbRc = drawContext.mo1495getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            DrawTransform transform = drawContext.getTransform();
            float[] fArr = this.groupMatrix;
            if (fArr != null) {
                transform.mo1502transform58bKbWc(Matrix.m1362boximpl(fArr).m1379unboximpl());
            }
            Path path = this.clipPath;
            if (getWillClipPath() && path != null) {
                DrawTransform.CC.m1518clipPathmtrdDE$default(transform, path, 0, 2, null);
            }
            List list = this.children;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ((VNode) list.get(i)).draw(drawScope);
            }
            drawContext.getCanvas().restore();
            drawContext.mo1496setSizeuvyYCjk(mo1495getSizeNHjbRc);
        } catch (Throwable th) {
            drawContext.getCanvas().restore();
            drawContext.mo1496setSizeuvyYCjk(mo1495getSizeNHjbRc);
            throw th;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("VGroup: ");
        sb.append(this.name);
        List list = this.children;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            VNode vNode = (VNode) list.get(i);
            sb.append("\t");
            sb.append(vNode.toString());
            sb.append("\n");
        }
        return sb.toString();
    }
}
