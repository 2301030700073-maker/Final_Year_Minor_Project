package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Looper;
import com.google.android.material.shadow.ShadowRenderer;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapePath;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ShapeAppearancePathProvider {
    public final ShapePath[] cornerPaths = new ShapePath[4];
    public final Matrix[] cornerTransforms = new Matrix[4];
    public final Matrix[] edgeTransforms = new Matrix[4];
    public final PointF pointF = new PointF();
    public final Path overlappedEdgePath = new Path();
    public final Path boundsPath = new Path();
    public final ShapePath shapePath = new ShapePath();
    public final float[] scratch = new float[2];
    public final float[] scratch2 = new float[2];
    public final Path edgePath = new Path();
    public final Path cornerPath = new Path();
    public final boolean edgeIntersectionCheckEnabled = true;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Lazy {
        public static final ShapeAppearancePathProvider INSTANCE = new ShapeAppearancePathProvider();
    }

    public ShapeAppearancePathProvider() {
        for (int i = 0; i < 4; i++) {
            this.cornerPaths[i] = new ShapePath();
            this.cornerTransforms[i] = new Matrix();
            this.edgeTransforms[i] = new Matrix();
        }
    }

    public static ShapeAppearancePathProvider getInstanceOrCreate() {
        return Looper.getMainLooper().getThread() == Thread.currentThread() ? Lazy.INSTANCE : new ShapeAppearancePathProvider();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v5 */
    public final void calculatePath(ShapeAppearanceModel shapeAppearanceModel, float[] fArr, float f, RectF rectF, MaterialShapeDrawable.AnonymousClass1 anonymousClass1, Path path) {
        Matrix[] matrixArr;
        float[] fArr2;
        int i;
        ShapePath[] shapePathArr;
        Matrix[] matrixArr2;
        boolean z;
        float f2;
        boolean z2;
        int i2;
        path.rewind();
        Path path2 = this.overlappedEdgePath;
        path2.rewind();
        Path path3 = this.boundsPath;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        int i3 = 0;
        while (true) {
            matrixArr = this.edgeTransforms;
            fArr2 = this.scratch;
            shapePathArr = this.cornerPaths;
            matrixArr2 = this.cornerTransforms;
            z = 0;
            if (i3 >= 4) {
                break;
            }
            CornerSize clampedCornerSize = fArr == null ? i3 != 1 ? i3 != 2 ? i3 != 3 ? shapeAppearanceModel.topRightCornerSize : shapeAppearanceModel.topLeftCornerSize : shapeAppearanceModel.bottomLeftCornerSize : shapeAppearanceModel.bottomRightCornerSize : new ClampedCornerSize(fArr[i3]);
            Validate validate = i3 != 1 ? i3 != 2 ? i3 != 3 ? shapeAppearanceModel.topRightCorner : shapeAppearanceModel.topLeftCorner : shapeAppearanceModel.bottomLeftCorner : shapeAppearanceModel.bottomRightCorner;
            ShapePath shapePath = shapePathArr[i3];
            validate.getClass();
            validate.getCornerPath(shapePath, f, clampedCornerSize.getCornerSize(rectF));
            int i4 = i3 + 1;
            float f3 = (i4 % 4) * 90;
            matrixArr2[i3].reset();
            PointF pointF = this.pointF;
            if (i3 == 1) {
                i2 = i3;
                pointF.set(rectF.right, rectF.bottom);
            } else if (i3 == 2) {
                i2 = i3;
                pointF.set(rectF.left, rectF.bottom);
            } else if (i3 != 3) {
                i2 = i3;
                pointF.set(rectF.right, rectF.top);
            } else {
                i2 = i3;
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i2].setTranslate(pointF.x, pointF.y);
            matrixArr2[i2].preRotate(f3);
            ShapePath shapePath2 = shapePathArr[i2];
            fArr2[0] = shapePath2.endX;
            fArr2[1] = shapePath2.endY;
            matrixArr2[i2].mapPoints(fArr2);
            matrixArr[i2].reset();
            matrixArr[i2].setTranslate(fArr2[0], fArr2[1]);
            matrixArr[i2].preRotate(f3);
            i3 = i4;
        }
        int i5 = 0;
        for (i = 4; i5 < i; i = 4) {
            ShapePath shapePath3 = shapePathArr[i5];
            shapePath3.getClass();
            fArr2[z] = 0.0f;
            fArr2[1] = shapePath3.startY;
            matrixArr2[i5].mapPoints(fArr2);
            if (i5 == 0) {
                path.moveTo(fArr2[z], fArr2[1]);
            } else {
                path.lineTo(fArr2[z], fArr2[1]);
            }
            shapePathArr[i5].applyToPath(matrixArr2[i5], path);
            if (anonymousClass1 != null) {
                ShapePath shapePath4 = shapePathArr[i5];
                Matrix matrix = matrixArr2[i5];
                MaterialShapeDrawable materialShapeDrawable = MaterialShapeDrawable.this;
                f2 = 0.0f;
                BitSet bitSet = materialShapeDrawable.containsIncompatibleShadowOp;
                shapePath4.getClass();
                bitSet.set(i5, z);
                ShapePath.ShadowCompatOperation[] shadowCompatOperationArr = materialShapeDrawable.cornerShadowOperation;
                shapePath4.addConnectingShadowIfNecessary(shapePath4.endShadowAngle);
                shadowCompatOperationArr[i5] = new ShapePath.ShadowCompatOperation() { // from class: com.google.android.material.shape.ShapePath.1
                    public final /* synthetic */ ArrayList val$operations;
                    public final /* synthetic */ Matrix val$transformCopy;

                    public AnonymousClass1(ArrayList arrayList, Matrix matrix2) {
                        r1 = arrayList;
                        r2 = matrix2;
                    }

                    @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
                    public final void draw(Matrix matrix2, ShadowRenderer shadowRenderer, int i6, Canvas canvas) {
                        Iterator it = r1.iterator();
                        while (it.hasNext()) {
                            ((ShadowCompatOperation) it.next()).draw(r2, shadowRenderer, i6, canvas);
                        }
                    }
                };
            } else {
                f2 = 0.0f;
            }
            int i6 = i5 + 1;
            int i7 = i6 % 4;
            ShapePath shapePath5 = shapePathArr[i5];
            fArr2[0] = shapePath5.endX;
            fArr2[1] = shapePath5.endY;
            matrixArr2[i5].mapPoints(fArr2);
            ShapePath shapePath6 = shapePathArr[i7];
            shapePath6.getClass();
            float[] fArr3 = this.scratch2;
            fArr3[0] = f2;
            fArr3[1] = shapePath6.startY;
            matrixArr2[i7].mapPoints(fArr3);
            Matrix[] matrixArr3 = matrixArr;
            ShapePath[] shapePathArr2 = shapePathArr;
            float max = Math.max(((float) Math.hypot(fArr2[0] - fArr3[0], fArr2[1] - fArr3[1])) - 0.001f, f2);
            ShapePath shapePath7 = shapePathArr2[i5];
            fArr2[0] = shapePath7.endX;
            fArr2[1] = shapePath7.endY;
            matrixArr2[i5].mapPoints(fArr2);
            if (i5 == 1 || i5 == 3) {
                Math.abs(rectF.centerX() - fArr2[0]);
            } else {
                Math.abs(rectF.centerY() - fArr2[1]);
            }
            ShapePath shapePath8 = this.shapePath;
            shapePath8.reset(0.0f, 270.0f, 0.0f);
            (i5 != 1 ? i5 != 2 ? i5 != 3 ? shapeAppearanceModel.rightEdge : shapeAppearanceModel.topEdge : shapeAppearanceModel.leftEdge : shapeAppearanceModel.bottomEdge).getClass();
            shapePath8.lineTo(max, 0.0f);
            Path path4 = this.edgePath;
            path4.reset();
            shapePath8.applyToPath(matrixArr3[i5], path4);
            if (this.edgeIntersectionCheckEnabled && (pathOverlapsCorner(path4, i5) || pathOverlapsCorner(path4, i7))) {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr2[0] = 0.0f;
                fArr2[1] = shapePath8.startY;
                matrixArr3[i5].mapPoints(fArr2);
                path2.moveTo(fArr2[0], fArr2[1]);
                shapePath8.applyToPath(matrixArr3[i5], path2);
            } else {
                shapePath8.applyToPath(matrixArr3[i5], path);
            }
            if (anonymousClass1 != null) {
                Matrix matrix2 = matrixArr3[i5];
                MaterialShapeDrawable materialShapeDrawable2 = MaterialShapeDrawable.this;
                z2 = false;
                materialShapeDrawable2.containsIncompatibleShadowOp.set(i5 + 4, false);
                ShapePath.ShadowCompatOperation[] shadowCompatOperationArr2 = materialShapeDrawable2.edgeShadowOperation;
                shapePath8.addConnectingShadowIfNecessary(shapePath8.endShadowAngle);
                shadowCompatOperationArr2[i5] = new ShapePath.ShadowCompatOperation() { // from class: com.google.android.material.shape.ShapePath.1
                    public final /* synthetic */ ArrayList val$operations;
                    public final /* synthetic */ Matrix val$transformCopy;

                    public AnonymousClass1(ArrayList arrayList, Matrix matrix22) {
                        r1 = arrayList;
                        r2 = matrix22;
                    }

                    @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
                    public final void draw(Matrix matrix22, ShadowRenderer shadowRenderer, int i62, Canvas canvas) {
                        Iterator it = r1.iterator();
                        while (it.hasNext()) {
                            ((ShadowCompatOperation) it.next()).draw(r2, shadowRenderer, i62, canvas);
                        }
                    }
                };
            } else {
                z2 = false;
            }
            matrixArr = matrixArr3;
            i5 = i6;
            z = z2;
            shapePathArr = shapePathArr2;
        }
        path.close();
        path2.close();
        if (path2.isEmpty()) {
            return;
        }
        path.op(path2, Path.Op.UNION);
    }

    public final boolean pathOverlapsCorner(Path path, int i) {
        Path path2 = this.cornerPath;
        path2.reset();
        this.cornerPaths[i].applyToPath(this.cornerTransforms[i], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        return !rectF.isEmpty() || (rectF.width() > 1.0f && rectF.height() > 1.0f);
    }
}
