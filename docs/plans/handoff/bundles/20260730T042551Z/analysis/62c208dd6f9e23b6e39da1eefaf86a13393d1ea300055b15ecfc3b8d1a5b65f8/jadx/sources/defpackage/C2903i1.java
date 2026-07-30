package defpackage;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.InflateException;
import android.view.animation.AnimationUtils;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.Cw;
import java.util.ArrayList;

/* renamed from: i1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2903i1 {

    /* renamed from: i1$do, reason: invalid class name */
    public static class Cdo implements TypeEvaluator<Cw.Cdo[]> {

        /* renamed from: do, reason: not valid java name */
        public Cw.Cdo[] f13419do;

        @Override // android.animation.TypeEvaluator
        public final Cw.Cdo[] evaluate(float f, Cw.Cdo[] cdoArr, Cw.Cdo[] cdoArr2) {
            Cw.Cdo[] cdoArr3 = cdoArr;
            Cw.Cdo[] cdoArr4 = cdoArr2;
            if (!Cw.m317do(cdoArr3, cdoArr4)) {
                throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
            }
            if (!Cw.m317do(this.f13419do, cdoArr3)) {
                this.f13419do = Cw.m321try(cdoArr3);
            }
            for (int i = 0; i < cdoArr3.length; i++) {
                Cw.Cdo cdo = this.f13419do[i];
                Cw.Cdo cdo2 = cdoArr3[i];
                Cw.Cdo cdo3 = cdoArr4[i];
                cdo.getClass();
                cdo.f451do = cdo2.f451do;
                int i2 = 0;
                while (true) {
                    float[] fArr = cdo2.f452do;
                    if (i2 < fArr.length) {
                        cdo.f452do[i2] = (cdo3.f452do[i2] * f) + ((1.0f - f) * fArr[i2]);
                        i2++;
                    }
                }
            }
            return this.f13419do;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0338, code lost:
    
        r1 = new android.animation.Animator[r13.size()];
        r2 = r13.iterator();
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0347, code lost:
    
        if (r2.hasNext() == false) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0349, code lost:
    
        r1[r14] = (android.animation.Animator) r2.next();
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0355, code lost:
    
        if (r33 != 0) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0357, code lost:
    
        r32.playTogether(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x035b, code lost:
    
        r32.playSequentially(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x035e, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0334, code lost:
    
        if (r32 == null) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0336, code lost:
    
        if (r13 == null) goto L177;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x030d  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.animation.Animator m6868do(android.content.Context r27, android.content.res.Resources r28, android.content.res.Resources.Theme r29, android.content.res.XmlResourceParser r30, android.util.AttributeSet r31, android.animation.AnimatorSet r32, int r33) {
        /*
            Method dump skipped, instructions count: 863
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2903i1.m6868do(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, android.content.res.XmlResourceParser, android.util.AttributeSet, android.animation.AnimatorSet, int):android.animation.Animator");
    }

    /* renamed from: for, reason: not valid java name */
    public static PropertyValuesHolder m6869for(TypedArray typedArray, int i, int i2, int i3, String str) {
        PropertyValuesHolder ofInt;
        PropertyValuesHolder ofObject;
        TypedValue peekValue = typedArray.peekValue(i2);
        boolean z = peekValue != null;
        int i4 = z ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i3);
        boolean z2 = peekValue2 != null;
        int i5 = z2 ? peekValue2.type : 0;
        if (i == 4) {
            i = ((z && m6871new(i4)) || (z2 && m6871new(i5))) ? 3 : 0;
        }
        boolean z3 = i == 0;
        PropertyValuesHolder propertyValuesHolder = null;
        if (i == 2) {
            String string = typedArray.getString(i2);
            String string2 = typedArray.getString(i3);
            Cw.Cdo[] m318for = Cw.m318for(string);
            Cw.Cdo[] m318for2 = Cw.m318for(string2);
            if (m318for == null && m318for2 == null) {
                return null;
            }
            if (m318for == null) {
                if (m318for2 != null) {
                    return PropertyValuesHolder.ofObject(str, new Cdo(), m318for2);
                }
                return null;
            }
            Cdo cdo = new Cdo();
            if (m318for2 == null) {
                ofObject = PropertyValuesHolder.ofObject(str, cdo, m318for);
            } else {
                if (!Cw.m317do(m318for, m318for2)) {
                    throw new InflateException(C4122zt.m8827new(" Can't morph from ", string, " to ", string2));
                }
                ofObject = PropertyValuesHolder.ofObject(str, cdo, m318for, m318for2);
            }
            return ofObject;
        }
        C3896w2 c3896w2 = i == 3 ? C3896w2.f16183do : null;
        if (z3) {
            if (z) {
                float dimension = i4 == 5 ? typedArray.getDimension(i2, 0.0f) : typedArray.getFloat(i2, 0.0f);
                if (z2) {
                    ofInt = PropertyValuesHolder.ofFloat(str, dimension, i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
                } else {
                    ofInt = PropertyValuesHolder.ofFloat(str, dimension);
                }
            } else {
                ofInt = PropertyValuesHolder.ofFloat(str, i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
            }
        } else {
            if (!z) {
                if (z2) {
                    ofInt = PropertyValuesHolder.ofInt(str, i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : m6871new(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
                }
                if (propertyValuesHolder == null && c3896w2 != null) {
                    propertyValuesHolder.setEvaluator(c3896w2);
                    return propertyValuesHolder;
                }
            }
            int dimension2 = i4 == 5 ? (int) typedArray.getDimension(i2, 0.0f) : m6871new(i4) ? typedArray.getColor(i2, 0) : typedArray.getInt(i2, 0);
            if (z2) {
                ofInt = PropertyValuesHolder.ofInt(str, dimension2, i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : m6871new(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
            } else {
                ofInt = PropertyValuesHolder.ofInt(str, dimension2);
            }
        }
        propertyValuesHolder = ofInt;
        return propertyValuesHolder == null ? propertyValuesHolder : propertyValuesHolder;
    }

    /* renamed from: if, reason: not valid java name */
    public static Keyframe m6870if(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m6871new(int i) {
        return i >= 28 && i <= 31;
    }

    /* renamed from: try, reason: not valid java name */
    public static ValueAnimator m6872try(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ObjectAnimator objectAnimator, XmlResourceParser xmlResourceParser) {
        ValueAnimator valueAnimator;
        TypedArray typedArray;
        TypedArray typedArray2;
        ValueAnimator valueAnimator2;
        TypedArray m1133case = KI.m1133case(resources, theme, attributeSet, T0.f3574else);
        TypedArray m1133case2 = KI.m1133case(resources, theme, attributeSet, T0.f3572catch);
        ValueAnimator valueAnimator3 = objectAnimator == null ? new ValueAnimator() : objectAnimator;
        long m1135for = KI.m1135for(m1133case, xmlResourceParser, "duration", 1, 300);
        int i = 0;
        long m1135for2 = KI.m1135for(m1133case, xmlResourceParser, "startOffset", 2, 0);
        int m1135for3 = KI.m1135for(m1133case, xmlResourceParser, "valueType", 7, 4);
        if (KI.m1138try(xmlResourceParser, "valueFrom") && KI.m1138try(xmlResourceParser, "valueTo")) {
            if (m1135for3 == 4) {
                TypedValue peekValue = m1133case.peekValue(5);
                boolean z = peekValue != null;
                int i2 = z ? peekValue.type : 0;
                TypedValue peekValue2 = m1133case.peekValue(6);
                boolean z2 = peekValue2 != null;
                m1135for3 = ((z && m6871new(i2)) || (z2 && m6871new(z2 ? peekValue2.type : 0))) ? 3 : 0;
            }
            PropertyValuesHolder m6869for = m6869for(m1133case, m1135for3, 5, 6, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            if (m6869for != null) {
                valueAnimator3.setValues(m6869for);
            }
        }
        valueAnimator3.setDuration(m1135for);
        valueAnimator3.setStartDelay(m1135for2);
        valueAnimator3.setRepeatCount(KI.m1135for(m1133case, xmlResourceParser, "repeatCount", 3, 0));
        valueAnimator3.setRepeatMode(KI.m1135for(m1133case, xmlResourceParser, "repeatMode", 4, 1));
        if (m1133case2 != null) {
            ObjectAnimator objectAnimator2 = (ObjectAnimator) valueAnimator3;
            String m1137new = KI.m1137new(m1133case2, xmlResourceParser, "pathData", 1);
            if (m1137new != null) {
                String m1137new2 = KI.m1137new(m1133case2, xmlResourceParser, "propertyXName", 2);
                String m1137new3 = KI.m1137new(m1133case2, xmlResourceParser, "propertyYName", 3);
                if (m1137new2 == null && m1137new3 == null) {
                    throw new InflateException(m1133case2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path m320new = Cw.m320new(m1137new);
                PathMeasure pathMeasure = new PathMeasure(m320new, false);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Float.valueOf(0.0f));
                float f = 0.0f;
                do {
                    f += pathMeasure.getLength();
                    arrayList.add(Float.valueOf(f));
                } while (pathMeasure.nextContour());
                PathMeasure pathMeasure2 = new PathMeasure(m320new, false);
                int min = Math.min(100, ((int) (f / 0.5f)) + 1);
                float[] fArr = new float[min];
                float[] fArr2 = new float[min];
                float[] fArr3 = new float[2];
                float f2 = f / (min - 1);
                valueAnimator = valueAnimator3;
                typedArray = m1133case;
                int i3 = 0;
                float f3 = 0.0f;
                while (true) {
                    if (i >= min) {
                        break;
                    }
                    int i4 = min;
                    pathMeasure2.getPosTan(f3 - ((Float) arrayList.get(i3)).floatValue(), fArr3, null);
                    fArr[i] = fArr3[0];
                    fArr2[i] = fArr3[1];
                    f3 += f2;
                    int i5 = i3 + 1;
                    if (i5 < arrayList.size() && f3 > ((Float) arrayList.get(i5)).floatValue()) {
                        pathMeasure2.nextContour();
                        i3 = i5;
                    }
                    i++;
                    min = i4;
                }
                PropertyValuesHolder ofFloat = m1137new2 != null ? PropertyValuesHolder.ofFloat(m1137new2, fArr) : null;
                PropertyValuesHolder ofFloat2 = m1137new3 != null ? PropertyValuesHolder.ofFloat(m1137new3, fArr2) : null;
                if (ofFloat == null) {
                    i = 0;
                    objectAnimator2.setValues(ofFloat2);
                } else {
                    i = 0;
                    if (ofFloat2 == null) {
                        objectAnimator2.setValues(ofFloat);
                    } else {
                        objectAnimator2.setValues(ofFloat, ofFloat2);
                    }
                }
            } else {
                valueAnimator = valueAnimator3;
                typedArray = m1133case;
                objectAnimator2.setPropertyName(KI.m1137new(m1133case2, xmlResourceParser, "propertyName", 0));
            }
        } else {
            valueAnimator = valueAnimator3;
            typedArray = m1133case;
        }
        if (KI.m1138try(xmlResourceParser, "interpolator")) {
            typedArray2 = typedArray;
            i = typedArray2.getResourceId(i, i);
        } else {
            typedArray2 = typedArray;
        }
        if (i > 0) {
            valueAnimator2 = valueAnimator;
            valueAnimator2.setInterpolator(AnimationUtils.loadInterpolator(context, i));
        } else {
            valueAnimator2 = valueAnimator;
        }
        typedArray2.recycle();
        if (m1133case2 != null) {
            m1133case2.recycle();
        }
        return valueAnimator2;
    }
}
