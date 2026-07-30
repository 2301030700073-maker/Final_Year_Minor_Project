package com.android.launcher3.graphics;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.FloatArrayEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import android.view.ViewOutlineProvider;
import c.a.c.a.a;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.RoundedRectRevealOutlineProvider;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconNormalizer;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.views.ClipPathView;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class IconShape {
    public static IconShape sInstance = new Circle();
    public static float sNormalizationScale = 0.92f;
    public static Path sShapePath;
    public SparseArray mAttrs;

    public final class Circle extends SimpleRectShape {
        public Circle() {
            super(null);
        }

        @Override // com.android.launcher3.graphics.IconShape
        public void addToPath(Path path, float f, float f2, float f3) {
            path.addCircle(f + f3, f2 + f3, f3, Path.Direction.CW);
        }

        @Override // com.android.launcher3.graphics.IconShape
        public void drawShape(Canvas canvas, float f, float f2, float f3, Paint paint) {
            canvas.drawCircle(f + f3, f2 + f3, f3, paint);
        }

        @Override // com.android.launcher3.graphics.IconShape
        public boolean enableShapeDetection() {
            return true;
        }

        @Override // com.android.launcher3.graphics.IconShape.SimpleRectShape
        public float getStartRadius(Rect rect) {
            return rect.width() / 2.0f;
        }
    }

    public abstract class PathShape extends IconShape {
        public final Path mTmpPath = new Path();

        public PathShape(AnonymousClass1 anonymousClass1) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void a(Path path, ValueAnimator.AnimatorUpdateListener animatorUpdateListener, View view, ValueAnimator valueAnimator) {
            path.reset();
            animatorUpdateListener.onAnimationUpdate(valueAnimator);
            ((ClipPathView) view).setClipPath(path);
        }

        @Override // com.android.launcher3.graphics.IconShape
        public final Animator createRevealAnimator(final View view, Rect rect, Rect rect2, float f, boolean z) {
            final Path path = new Path();
            final ValueAnimator.AnimatorUpdateListener newUpdateListener = newUpdateListener(rect, rect2, f, path);
            float[] fArr = {RecentsState.NO_OFFSET, 1.0f};
            if (z) {
                // fill-array-data instruction
                fArr[0] = 1.0f;
                fArr[1] = 0.0f;
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            ofFloat.addListener(new AnimatorListenerAdapter(this) { // from class: com.android.launcher3.graphics.IconShape.PathShape.1
                public ViewOutlineProvider mOldOutlineProvider;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    view.setTranslationZ(RecentsState.NO_OFFSET);
                    ((ClipPathView) view).setClipPath(null);
                    view.setOutlineProvider(this.mOldOutlineProvider);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    this.mOldOutlineProvider = view.getOutlineProvider();
                    view.setOutlineProvider(null);
                    View view2 = view;
                    view2.setTranslationZ(-view2.getElevation());
                }
            });
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.a.J0.a
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    IconShape.PathShape.a(path, newUpdateListener, view, valueAnimator);
                }
            });
            return ofFloat;
        }

        @Override // com.android.launcher3.graphics.IconShape
        public final void drawShape(Canvas canvas, float f, float f2, float f3, Paint paint) {
            this.mTmpPath.reset();
            addToPath(this.mTmpPath, f, f2, f3);
            canvas.drawPath(this.mTmpPath, paint);
        }

        public abstract ValueAnimator.AnimatorUpdateListener newUpdateListener(Rect rect, Rect rect2, float f, Path path);
    }

    public class RoundedSquare extends SimpleRectShape {
        public final float mRadiusRatio;

        public RoundedSquare(float f) {
            super(null);
            this.mRadiusRatio = f;
        }

        @Override // com.android.launcher3.graphics.IconShape
        public void addToPath(Path path, float f, float f2, float f3) {
            float f4 = f + f3;
            float f5 = f2 + f3;
            float f6 = f3 * this.mRadiusRatio;
            path.addRoundRect(f4 - f3, f5 - f3, f4 + f3, f5 + f3, f6, f6, Path.Direction.CW);
        }

        @Override // com.android.launcher3.graphics.IconShape
        public void drawShape(Canvas canvas, float f, float f2, float f3, Paint paint) {
            float f4 = f + f3;
            float f5 = f2 + f3;
            float f6 = f3 * this.mRadiusRatio;
            canvas.drawRoundRect(f4 - f3, f5 - f3, f4 + f3, f5 + f3, f6, f6, paint);
        }

        @Override // com.android.launcher3.graphics.IconShape.SimpleRectShape
        public float getStartRadius(Rect rect) {
            return (rect.width() / 2.0f) * this.mRadiusRatio;
        }
    }

    public abstract class SimpleRectShape extends IconShape {
        public SimpleRectShape(AnonymousClass1 anonymousClass1) {
        }

        @Override // com.android.launcher3.graphics.IconShape
        public final Animator createRevealAnimator(View view, Rect rect, Rect rect2, float f, boolean z) {
            return new RoundedRectRevealOutlineProvider(this, getStartRadius(rect), f, rect, rect2) { // from class: com.android.launcher3.graphics.IconShape.SimpleRectShape.1
                @Override // com.android.launcher3.anim.RoundedRectRevealOutlineProvider, com.android.launcher3.anim.RevealOutlineAnimation
                public boolean shouldRemoveElevationDuringAnimation() {
                    return true;
                }
            }.createRevealAnimator(view, z);
        }

        public abstract float getStartRadius(Rect rect);
    }

    public class Squircle extends PathShape {
        public final float mRadiusRatio;

        public Squircle(float f) {
            super(null);
            this.mRadiusRatio = f;
        }

        public final void addLeftCurve(float f, float f2, float f3, float f4, Path path) {
            float f5 = f - f3;
            path.cubicTo(f - f4, f2 - f3, f5, f2 - f4, f5, f2);
        }

        public final void addRightCurve(float f, float f2, float f3, float f4, Path path) {
            float f5 = f2 + f3;
            path.cubicTo(f - f3, f2 + f4, f - f4, f5, f, f5);
        }

        @Override // com.android.launcher3.graphics.IconShape
        public void addToPath(Path path, float f, float f2, float f3) {
            float f4 = f + f3;
            float f5 = f2 + f3;
            float f6 = f3 - (this.mRadiusRatio * f3);
            path.moveTo(f4, f5 - f3);
            addLeftCurve(f4, f5, f3, f6, path);
            addRightCurve(f4, f5, f3, f6, path);
            float f7 = -f3;
            float f8 = -f6;
            addLeftCurve(f4, f5, f7, f8, path);
            addRightCurve(f4, f5, f7, f8, path);
            path.close();
        }

        @Override // com.android.launcher3.graphics.IconShape.PathShape
        public ValueAnimator.AnimatorUpdateListener newUpdateListener(Rect rect, Rect rect2, final float f, final Path path) {
            final float exactCenterX = rect.exactCenterX();
            final float exactCenterY = rect.exactCenterY();
            final float width = rect.width() / 2.0f;
            final float f2 = width - (this.mRadiusRatio * width);
            final float exactCenterX2 = rect2.exactCenterX();
            final float exactCenterY2 = rect2.exactCenterY();
            final float f3 = f * 0.55191505f;
            final float width2 = (rect2.width() / 2.0f) - f;
            final float height = (rect2.height() / 2.0f) - f;
            final float f4 = RecentsState.NO_OFFSET;
            final float f5 = RecentsState.NO_OFFSET;
            return new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.a.J0.b
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    IconShape.Squircle squircle = IconShape.Squircle.this;
                    float f6 = exactCenterX;
                    float f7 = exactCenterX2;
                    float f8 = exactCenterY;
                    float f9 = exactCenterY2;
                    float f10 = width;
                    float f11 = f;
                    float f12 = f2;
                    float f13 = f3;
                    float f14 = f4;
                    float f15 = width2;
                    float f16 = f5;
                    float f17 = height;
                    Path path2 = path;
                    Objects.requireNonNull(squircle);
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    float f18 = 1.0f - floatValue;
                    float f19 = (f7 * floatValue) + (f6 * f18);
                    float f20 = (f9 * floatValue) + (f8 * f18);
                    float f21 = (f11 * floatValue) + (f10 * f18);
                    float f22 = (f13 * floatValue) + (f12 * f18);
                    float f23 = (f15 * floatValue) + (f14 * f18);
                    float f24 = (floatValue * f17) + (f18 * f16);
                    float f25 = f20 - f24;
                    path2.moveTo(f19, f25 - f21);
                    path2.rLineTo(-f23, RecentsState.NO_OFFSET);
                    float f26 = f19 - f23;
                    squircle.addLeftCurve(f26, f25, f21, f22, path2);
                    path2.rLineTo(RecentsState.NO_OFFSET, f24 + f24);
                    float f27 = f20 + f24;
                    squircle.addRightCurve(f26, f27, f21, f22, path2);
                    path2.rLineTo(f23 + f23, RecentsState.NO_OFFSET);
                    float f28 = f23 + f19;
                    float f29 = -f21;
                    float f30 = -f22;
                    squircle.addLeftCurve(f28, f27, f29, f30, path2);
                    path2.rLineTo(RecentsState.NO_OFFSET, (-f24) - f24);
                    squircle.addRightCurve(f28, f25, f29, f30, path2);
                    path2.close();
                }
            };
        }
    }

    public class TearDrop extends PathShape {
        public final float mRadiusRatio;
        public final float[] mTempRadii;

        public TearDrop(float f) {
            super(null);
            this.mTempRadii = new float[8];
            this.mRadiusRatio = f;
        }

        @Override // com.android.launcher3.graphics.IconShape
        public void addToPath(Path path, float f, float f2, float f3) {
            float f4 = f + f3;
            float f5 = f2 + f3;
            path.addRoundRect(f4 - f3, f5 - f3, f4 + f3, f5 + f3, getRadiiArray(f3, this.mRadiusRatio * f3), Path.Direction.CW);
        }

        public final float[] getRadiiArray(float f, float f2) {
            float[] fArr = this.mTempRadii;
            fArr[7] = f;
            fArr[6] = f;
            fArr[3] = f;
            fArr[2] = f;
            fArr[1] = f;
            fArr[0] = f;
            fArr[5] = f2;
            fArr[4] = f2;
            return fArr;
        }

        @Override // com.android.launcher3.graphics.IconShape.PathShape
        public ValueAnimator.AnimatorUpdateListener newUpdateListener(Rect rect, Rect rect2, float f, final Path path) {
            float width = rect.width() / 2.0f;
            final float[] fArr = {rect.left, rect.top, rect.right, rect.bottom, width, this.mRadiusRatio * width};
            final float[] fArr2 = {rect2.left, rect2.top, rect2.right, rect2.bottom, f, f};
            final FloatArrayEvaluator floatArrayEvaluator = new FloatArrayEvaluator(new float[6]);
            return new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.a.J0.c
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    IconShape.TearDrop tearDrop = IconShape.TearDrop.this;
                    FloatArrayEvaluator floatArrayEvaluator2 = floatArrayEvaluator;
                    float[] fArr3 = fArr;
                    float[] fArr4 = fArr2;
                    Path path2 = path;
                    Objects.requireNonNull(tearDrop);
                    float[] evaluate = floatArrayEvaluator2.evaluate(((Float) valueAnimator.getAnimatedValue()).floatValue(), fArr3, fArr4);
                    path2.addRoundRect(evaluate[0], evaluate[1], evaluate[2], evaluate[3], tearDrop.getRadiiArray(evaluate[4], evaluate[5]), Path.Direction.CW);
                }
            };
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconShape getShapeDefinition(String str, float f) {
        char c2;
        switch (str.hashCode()) {
            case -1599780719:
                if (str.equals("TearDrop")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -716854276:
                if (str.equals("Squircle")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -458911222:
                if (str.equals("RoundedSquare")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 2018617584:
                if (str.equals("Circle")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            return new Circle();
        }
        if (c2 == 1) {
            return new RoundedSquare(f);
        }
        if (c2 == 2) {
            return new TearDrop(f);
        }
        if (c2 == 3) {
            return new Squircle(f);
        }
        throw new IllegalArgumentException(a.e("Invalid shape type: ", str));
    }

    public static Path getShapePath() {
        if (sShapePath == null) {
            Path path = new Path();
            sInstance.addToPath(path, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, 50.0f);
            sShapePath = path;
        }
        return sShapePath;
    }

    public static void init(Context context) {
        int i;
        int i2;
        int[] iArr;
        int i3;
        int[] iArr2;
        int[] iArr3;
        if (Utilities.ATLEAST_OREO) {
            int[] iArr4 = IntArray.EMPTY_INT;
            int i4 = 0;
            Region region = new Region(0, 0, 200, 200);
            Region region2 = new Region();
            AdaptiveIconDrawable adaptiveIconDrawable = new AdaptiveIconDrawable(new ColorDrawable(-16777216), new ColorDrawable(-16777216));
            adaptiveIconDrawable.setBounds(0, 0, 200, 200);
            region2.setPath(adaptiveIconDrawable.getIconMask(), region);
            Path path = new Path();
            Region region3 = new Region();
            ArrayList arrayList = new ArrayList();
            try {
                XmlResourceParser xml = context.getResources().getXml(R.xml.folder_shapes);
                do {
                    try {
                        int next = xml.next();
                        i = 3;
                        i2 = 1;
                        if (next == 3 || next == 1) {
                            break;
                        }
                    } finally {
                    }
                } while (!"shapes".equals(xml.getName()));
                int depth = xml.getDepth();
                int[] iArr5 = {R.attr.folderIconRadius};
                while (true) {
                    int next2 = xml.next();
                    if ((next2 != i || xml.getDepth() > depth) && next2 != i2) {
                        if (next2 == 2) {
                            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(asAttributeSet, iArr5);
                            IconShape shapeDefinition = getShapeDefinition(xml.getName(), obtainStyledAttributes.getFloat(i4, 1.0f));
                            obtainStyledAttributes.recycle();
                            int attributeCount = asAttributeSet.getAttributeCount();
                            int[] iArr6 = attributeCount == 0 ? iArr4 : new int[attributeCount];
                            iArr = iArr4;
                            int i5 = i4;
                            while (i4 < attributeCount) {
                                int attributeNameResource = asAttributeSet.getAttributeNameResource(i4);
                                int i6 = depth;
                                int i7 = i5 + 1;
                                int i8 = attributeCount;
                                if (i7 >= iArr6.length) {
                                    int i9 = (i5 < 6 ? 12 : i5 >> 1) + i5;
                                    if (i9 <= i7) {
                                        i9 = i7;
                                    }
                                    int[] iArr7 = new int[i9];
                                    iArr3 = iArr5;
                                    System.arraycopy(iArr6, 0, iArr7, 0, i5);
                                    iArr6 = iArr7;
                                } else {
                                    iArr3 = iArr5;
                                }
                                int i10 = i5 - i5;
                                IntArray.checkBounds(i7, i5);
                                if (i10 != 0) {
                                    System.arraycopy(iArr6, i5, iArr6, i7, i10);
                                }
                                iArr6[i5] = attributeNameResource;
                                i4++;
                                i5 = i7;
                                depth = i6;
                                attributeCount = i8;
                                iArr5 = iArr3;
                            }
                            i3 = depth;
                            iArr2 = iArr5;
                            int[] copyOf = i5 == 0 ? iArr : Arrays.copyOf(iArr6, i5);
                            SparseArray sparseArray = new SparseArray(copyOf.length);
                            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(asAttributeSet, copyOf);
                            for (int i11 = 0; i11 < copyOf.length; i11++) {
                                TypedValue typedValue = new TypedValue();
                                obtainStyledAttributes2.getValue(i11, typedValue);
                                sparseArray.put(copyOf[i11], typedValue);
                            }
                            shapeDefinition.mAttrs = sparseArray;
                            arrayList.add(shapeDefinition);
                        } else {
                            iArr = iArr4;
                            i3 = depth;
                            iArr2 = iArr5;
                        }
                        iArr4 = iArr;
                        depth = i3;
                        iArr5 = iArr2;
                        i4 = 0;
                        i = 3;
                        i2 = 1;
                    }
                }
                xml.close();
                Iterator it = arrayList.iterator();
                int i12 = Integer.MAX_VALUE;
                IconShape iconShape = null;
                while (it.hasNext()) {
                    IconShape iconShape2 = (IconShape) it.next();
                    path.reset();
                    iconShape2.addToPath(path, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, 100.0f);
                    region3.setPath(path, region);
                    region3.op(region2, Region.Op.XOR);
                    int area = GraphicsUtils.getArea(region3);
                    if (area < i12) {
                        iconShape = iconShape2;
                        i12 = area;
                    }
                }
                if (iconShape != null) {
                    sInstance = iconShape;
                }
                adaptiveIconDrawable.setBounds(0, 0, 100, 100);
                sShapePath = new Path(adaptiveIconDrawable.getIconMask());
                sNormalizationScale = IconNormalizer.normalizeAdaptiveIcon(adaptiveIconDrawable, 200, null);
            } catch (IOException | XmlPullParserException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public abstract void addToPath(Path path, float f, float f2, float f3);

    public abstract Animator createRevealAnimator(View view, Rect rect, Rect rect2, float f, boolean z);

    public abstract void drawShape(Canvas canvas, float f, float f2, float f3, Paint paint);

    public boolean enableShapeDetection() {
        return false;
    }
}
