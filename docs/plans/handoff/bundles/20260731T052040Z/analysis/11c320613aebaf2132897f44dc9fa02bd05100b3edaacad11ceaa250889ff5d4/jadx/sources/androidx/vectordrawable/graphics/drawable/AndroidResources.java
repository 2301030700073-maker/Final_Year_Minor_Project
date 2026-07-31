package androidx.vectordrawable.graphics.drawable;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.InflateException;
import android.view.animation.AnimationUtils;
import androidx.compose.ui.node.Owner;
import androidx.core.content.res.CamUtils;
import androidx.core.graphics.PathParser$PathDataNode;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.material.floatingactionbutton.FloatingActionButtonImpl;
import java.util.ArrayList;
import okio.Okio;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AndroidResources {
    public static final int[] STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY = {R.attr.name, R.attr.tint, R.attr.height, R.attr.width, R.attr.alpha, R.attr.autoMirrored, R.attr.tintMode, R.attr.viewportWidth, R.attr.viewportHeight};
    public static final int[] STYLEABLE_VECTOR_DRAWABLE_GROUP = {R.attr.name, R.attr.pivotX, R.attr.pivotY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.translateX, R.attr.translateY};
    public static final int[] STYLEABLE_VECTOR_DRAWABLE_PATH = {R.attr.name, R.attr.fillColor, R.attr.pathData, R.attr.strokeColor, R.attr.strokeWidth, R.attr.trimPathStart, R.attr.trimPathEnd, R.attr.trimPathOffset, R.attr.strokeLineCap, R.attr.strokeLineJoin, R.attr.strokeMiterLimit, R.attr.strokeAlpha, R.attr.fillAlpha, R.attr.fillType};
    public static final int[] STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH = {R.attr.name, R.attr.pathData, R.attr.fillType};
    public static final int[] STYLEABLE_ANIMATED_VECTOR_DRAWABLE = {R.attr.drawable};
    public static final int[] STYLEABLE_ANIMATED_VECTOR_DRAWABLE_TARGET = {R.attr.name, R.attr.animation};
    public static final int[] STYLEABLE_ANIMATOR = {R.attr.interpolator, R.attr.duration, R.attr.startOffset, R.attr.repeatCount, R.attr.repeatMode, R.attr.valueFrom, R.attr.valueTo, R.attr.valueType};
    public static final int[] STYLEABLE_ANIMATOR_SET = {R.attr.ordering};
    public static final int[] STYLEABLE_PROPERTY_VALUES_HOLDER = {R.attr.valueFrom, R.attr.valueTo, R.attr.valueType, R.attr.propertyName};
    public static final int[] STYLEABLE_KEYFRAME = {R.attr.value, R.attr.interpolator, R.attr.valueType, R.attr.fraction};
    public static final int[] STYLEABLE_PROPERTY_ANIMATOR = {R.attr.propertyName, R.attr.pathData, R.attr.propertyXName, R.attr.propertyYName};

    /* JADX WARN: Code restructure failed: missing block: B:10:0x03b2, code lost:
    
        r2 = new android.animation.Animator[r22.size()];
        r3 = r22.iterator();
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x03c1, code lost:
    
        if (r3.hasNext() == false) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x03c3, code lost:
    
        r2[r11] = (android.animation.Animator) r3.next();
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x03cf, code lost:
    
        if (r33 != 0) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x03d1, code lost:
    
        r32.playTogether(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x03d4, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x03d5, code lost:
    
        r32.playSequentially(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x03d8, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
    
        r22 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x03ae, code lost:
    
        if (r32 == null) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x03b0, code lost:
    
        if (r22 == null) goto L215;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0380 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.animation.Animator createAnimatorFromXml(android.content.Context r27, android.content.res.Resources r28, android.content.res.Resources.Theme r29, org.xmlpull.v1.XmlPullParser r30, android.util.AttributeSet r31, android.animation.AnimatorSet r32, int r33) {
        /*
            Method dump skipped, instructions count: 985
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.AndroidResources.createAnimatorFromXml(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int):android.animation.Animator");
    }

    public static PropertyValuesHolder getPVH(TypedArray typedArray, int i, int i2, int i3, String str) {
        PropertyValuesHolder ofFloat;
        TypedValue peekValue = typedArray.peekValue(i2);
        int i4 = 1;
        boolean z = peekValue != null;
        int i5 = z ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i3);
        boolean z2 = peekValue2 != null;
        int i6 = z2 ? peekValue2.type : 0;
        if (i == 4) {
            i = ((z && isColorType(i5)) || (z2 && isColorType(i6))) ? 3 : 0;
        }
        boolean z3 = i == 0;
        PropertyValuesHolder propertyValuesHolder = null;
        if (i == 2) {
            String string = typedArray.getString(i2);
            String string2 = typedArray.getString(i3);
            PathParser$PathDataNode[] createNodesFromPathData = Okio.createNodesFromPathData(string);
            PathParser$PathDataNode[] createNodesFromPathData2 = Okio.createNodesFromPathData(string2);
            if (createNodesFromPathData != null || createNodesFromPathData2 != null) {
                if (createNodesFromPathData != null) {
                    FloatingActionButtonImpl.AnonymousClass5 anonymousClass5 = new FloatingActionButtonImpl.AnonymousClass5(i4);
                    if (createNodesFromPathData2 == null) {
                        return PropertyValuesHolder.ofObject(str, anonymousClass5, createNodesFromPathData);
                    }
                    if (Okio.canMorph(createNodesFromPathData, createNodesFromPathData2)) {
                        return PropertyValuesHolder.ofObject(str, anonymousClass5, createNodesFromPathData, createNodesFromPathData2);
                    }
                    throw new InflateException(Owner.CC.m(" Can't morph from ", string, " to ", string2));
                }
                if (createNodesFromPathData2 != null) {
                    return PropertyValuesHolder.ofObject(str, new FloatingActionButtonImpl.AnonymousClass5(i4), createNodesFromPathData2);
                }
            }
            return null;
        }
        ArgbEvaluator argbEvaluator = i == 3 ? ArgbEvaluator.sInstance : null;
        if (z3) {
            if (z) {
                float dimension = i5 == 5 ? typedArray.getDimension(i2, 0.0f) : typedArray.getFloat(i2, 0.0f);
                if (z2) {
                    ofFloat = PropertyValuesHolder.ofFloat(str, dimension, i6 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
                } else {
                    ofFloat = PropertyValuesHolder.ofFloat(str, dimension);
                }
            } else {
                ofFloat = PropertyValuesHolder.ofFloat(str, i6 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
            }
            propertyValuesHolder = ofFloat;
        } else if (z) {
            int dimension2 = i5 == 5 ? (int) typedArray.getDimension(i2, 0.0f) : isColorType(i5) ? typedArray.getColor(i2, 0) : typedArray.getInt(i2, 0);
            if (z2) {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, dimension2, i6 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : isColorType(i6) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
            } else {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, dimension2);
            }
        } else if (z2) {
            propertyValuesHolder = PropertyValuesHolder.ofInt(str, i6 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : isColorType(i6) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
        }
        if (propertyValuesHolder != null && argbEvaluator != null) {
            propertyValuesHolder.setEvaluator(argbEvaluator);
        }
        return propertyValuesHolder;
    }

    public static boolean isColorType(int i) {
        return i >= 28 && i <= 31;
    }

    public static ValueAnimator loadAnimator(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ObjectAnimator objectAnimator, XmlPullParser xmlPullParser) {
        int i;
        TypedArray obtainAttributes = CamUtils.obtainAttributes(resources, theme, attributeSet, STYLEABLE_ANIMATOR);
        TypedArray obtainAttributes2 = CamUtils.obtainAttributes(resources, theme, attributeSet, STYLEABLE_PROPERTY_ANIMATOR);
        ValueAnimator valueAnimator = objectAnimator == null ? new ValueAnimator() : objectAnimator;
        long j = CamUtils.hasAttribute(xmlPullParser, "duration") ? obtainAttributes.getInt(1, 300) : 300;
        long j2 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "startOffset") != null ? obtainAttributes.getInt(2, 0) : 0;
        int i2 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueType") != null ? obtainAttributes.getInt(7, 4) : 4;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueFrom") != null && xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueTo") != null) {
            if (i2 == 4) {
                TypedValue peekValue = obtainAttributes.peekValue(5);
                boolean z = peekValue != null;
                int i3 = z ? peekValue.type : 0;
                TypedValue peekValue2 = obtainAttributes.peekValue(6);
                boolean z2 = peekValue2 != null;
                i2 = ((z && isColorType(i3)) || (z2 && isColorType(z2 ? peekValue2.type : 0))) ? 3 : 0;
            }
            PropertyValuesHolder pvh = getPVH(obtainAttributes, i2, 5, 6, "");
            if (pvh != null) {
                valueAnimator.setValues(pvh);
            }
        }
        valueAnimator.setDuration(j);
        valueAnimator.setStartDelay(j2);
        valueAnimator.setRepeatCount(xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "repeatCount") != null ? obtainAttributes.getInt(3, 0) : 0);
        valueAnimator.setRepeatMode(xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "repeatMode") != null ? obtainAttributes.getInt(4, 1) : 1);
        if (obtainAttributes2 != null) {
            ObjectAnimator objectAnimator2 = (ObjectAnimator) valueAnimator;
            String namedString = CamUtils.getNamedString(obtainAttributes2, xmlPullParser, "pathData", 1);
            if (namedString != null) {
                String namedString2 = CamUtils.getNamedString(obtainAttributes2, xmlPullParser, "propertyXName", 2);
                String namedString3 = CamUtils.getNamedString(obtainAttributes2, xmlPullParser, "propertyYName", 3);
                if (i2 != 2) {
                }
                if (namedString2 == null && namedString3 == null) {
                    throw new InflateException(obtainAttributes2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path path = new Path();
                try {
                    PathParser$PathDataNode.nodesToPath(Okio.createNodesFromPathData(namedString), path);
                    PathMeasure pathMeasure = new PathMeasure(path, false);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(Float.valueOf(0.0f));
                    float f = 0.0f;
                    do {
                        f = pathMeasure.getLength() + f;
                        arrayList.add(Float.valueOf(f));
                    } while (pathMeasure.nextContour());
                    PathMeasure pathMeasure2 = new PathMeasure(path, false);
                    int min = Math.min(100, ((int) (f / 0.5f)) + 1);
                    float[] fArr = new float[min];
                    float[] fArr2 = new float[min];
                    float[] fArr3 = new float[2];
                    float f2 = f / (min - 1);
                    int i4 = 0;
                    float f3 = 0.0f;
                    int i5 = 0;
                    while (i4 < min) {
                        int i6 = min;
                        int i7 = i4;
                        pathMeasure2.getPosTan(f3 - ((Float) arrayList.get(i5)).floatValue(), fArr3, null);
                        fArr[i7] = fArr3[0];
                        fArr2[i7] = fArr3[1];
                        int i8 = i5 + 1;
                        f3 += f2;
                        if (i8 < arrayList.size() && f3 > ((Float) arrayList.get(i8)).floatValue()) {
                            pathMeasure2.nextContour();
                            i5 = i8;
                        }
                        i4 = i7 + 1;
                        min = i6;
                    }
                    PropertyValuesHolder ofFloat = namedString2 != null ? PropertyValuesHolder.ofFloat(namedString2, fArr) : null;
                    PropertyValuesHolder ofFloat2 = namedString3 != null ? PropertyValuesHolder.ofFloat(namedString3, fArr2) : null;
                    if (ofFloat == null) {
                        objectAnimator2.setValues(ofFloat2);
                    } else if (ofFloat2 == null) {
                        objectAnimator2.setValues(ofFloat);
                    } else {
                        objectAnimator2.setValues(ofFloat, ofFloat2);
                    }
                    i = 0;
                } catch (RuntimeException e) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m("Error in parsing ".concat(namedString), e);
                    return null;
                }
            } else {
                i = 0;
                objectAnimator2.setPropertyName(CamUtils.getNamedString(obtainAttributes2, xmlPullParser, "propertyName", 0));
            }
        } else {
            i = 0;
        }
        int resourceId = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "interpolator") != null ? obtainAttributes.getResourceId(i, i) : i;
        if (resourceId > 0) {
            valueAnimator.setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
        }
        obtainAttributes.recycle();
        if (obtainAttributes2 != null) {
            obtainAttributes2.recycle();
        }
        return valueAnimator;
    }
}
