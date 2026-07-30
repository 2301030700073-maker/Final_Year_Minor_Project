package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import defpackage.Cw;
import defpackage.HF;
import defpackage.KI;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class PatternPathMotion extends PathMotion {

    /* renamed from: do, reason: not valid java name */
    public final Matrix f7856do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Path f7857do;

    public PatternPathMotion() {
        Path path = new Path();
        this.f7857do = path;
        this.f7856do = new Matrix();
        path.lineTo(1.0f, 0.0f);
    }

    @Override // androidx.transition.PathMotion
    /* renamed from: do */
    public final Path mo4601do(float f, float f2, float f3, float f4) {
        float f5 = f4 - f2;
        float sqrt = (float) Math.sqrt((f5 * f5) + (r6 * r6));
        double atan2 = Math.atan2(f5, f3 - f);
        Matrix matrix = this.f7856do;
        matrix.setScale(sqrt, sqrt);
        matrix.postRotate((float) Math.toDegrees(atan2));
        matrix.postTranslate(f, f2);
        Path path = new Path();
        this.f7857do.transform(matrix, path);
        return path;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m4618if(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float[] fArr = new float[2];
        pathMeasure.getPosTan(pathMeasure.getLength(), fArr, null);
        float f = fArr[0];
        float f2 = fArr[1];
        pathMeasure.getPosTan(0.0f, fArr, null);
        float f3 = fArr[0];
        float f4 = fArr[1];
        if (f3 == f && f4 == f2) {
            throw new IllegalArgumentException("pattern must not end at the starting point");
        }
        Matrix matrix = this.f7856do;
        matrix.setTranslate(-f3, -f4);
        float f5 = f2 - f4;
        float sqrt = 1.0f / ((float) Math.sqrt((f5 * f5) + (r2 * r2)));
        matrix.postScale(sqrt, sqrt);
        matrix.postRotate((float) Math.toDegrees(-Math.atan2(f5, f - f3)));
        path.transform(matrix, this.f7857do);
    }

    public PatternPathMotion(Context context, AttributeSet attributeSet) {
        this.f7857do = new Path();
        this.f7856do = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, HF.f1333this);
        try {
            String m1137new = KI.m1137new(obtainStyledAttributes, (XmlPullParser) attributeSet, "patternPathData", 0);
            if (m1137new != null) {
                m4618if(Cw.m320new(m1137new));
                return;
            }
            throw new RuntimeException("pathData must be supplied for patternPathMotion");
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
