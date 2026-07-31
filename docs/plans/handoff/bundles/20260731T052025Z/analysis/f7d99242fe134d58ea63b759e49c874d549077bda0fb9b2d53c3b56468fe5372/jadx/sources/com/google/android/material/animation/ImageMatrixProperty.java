package com.google.android.material.animation;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
import com.takisoft.datetimepicker.widget.RadialTimePickerView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageMatrixProperty extends Property {
    public final /* synthetic */ int $r8$classId = 0;
    public final Object matrix;

    public ImageMatrixProperty() {
        super(Matrix.class, "imageMatrixProperty");
        this.matrix = new Matrix();
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.matrix;
        switch (i) {
            case 0:
                Matrix matrix = (Matrix) obj2;
                matrix.set(((ImageView) obj).getImageMatrix());
                return matrix;
            default:
                ((RadialTimePickerView) obj2).HOURS_TO_MINUTES.getClass();
                return Float.valueOf(((RadialTimePickerView) obj).mHoursToMinutes);
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                ((ImageView) obj).setImageMatrix((Matrix) obj2);
                break;
            default:
                ((RadialTimePickerView) this.matrix).HOURS_TO_MINUTES.setValue((RadialTimePickerView) obj, ((Float) obj2).floatValue());
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageMatrixProperty(RadialTimePickerView radialTimePickerView) {
        super(Float.class, "hoursToMinutes");
        this.matrix = radialTimePickerView;
    }
}
