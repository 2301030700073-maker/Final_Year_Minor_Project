package androidx.transition;

import android.graphics.Matrix;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import coil3.decode.StaticImageDecoderKt;
import java.lang.reflect.Field;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ViewUtilsApi23 extends Okio {
    public static boolean sTryHiddenSetLeftTopRightBottom = true;
    public static boolean sTryHiddenSetTransitionVisibility = true;
    public static boolean sTryHiddenTransformMatrixToGlobal = true;
    public static boolean sTryHiddenTransformMatrixToLocal = true;

    public void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4) {
        if (sTryHiddenSetLeftTopRightBottom) {
            try {
                StaticImageDecoderKt.setLeftTopRightBottom(view, i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSetLeftTopRightBottom = false;
            }
        }
    }

    public void setTransitionVisibility(int i, View view) {
        if (Build.VERSION.SDK_INT != 28) {
            if (sTryHiddenSetTransitionVisibility) {
                try {
                    StaticImageDecoderKt.setTransitionVisibility(i, view);
                    return;
                } catch (NoSuchMethodError unused) {
                    sTryHiddenSetTransitionVisibility = false;
                    return;
                }
            }
            return;
        }
        if (!Okio.sViewFlagsFieldFetched) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                Okio.sViewFlagsField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused2) {
                Log.i("ViewUtilsApi19", "fetchViewFlagsField: ");
            }
            Okio.sViewFlagsFieldFetched = true;
        }
        Field field = Okio.sViewFlagsField;
        if (field != null) {
            try {
                Okio.sViewFlagsField.setInt(view, (field.getInt(view) & (-13)) | i);
            } catch (IllegalAccessException unused3) {
            }
        }
    }

    public void transformMatrixToGlobal(View view, Matrix matrix) {
        if (sTryHiddenTransformMatrixToGlobal) {
            try {
                StaticImageDecoderKt.transformMatrixToGlobal(view, matrix);
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransformMatrixToGlobal = false;
            }
        }
    }

    public void transformMatrixToLocal(ViewGroup viewGroup, Matrix matrix) {
        if (sTryHiddenTransformMatrixToLocal) {
            try {
                StaticImageDecoderKt.transformMatrixToLocal(viewGroup, matrix);
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransformMatrixToLocal = false;
            }
        }
    }
}
