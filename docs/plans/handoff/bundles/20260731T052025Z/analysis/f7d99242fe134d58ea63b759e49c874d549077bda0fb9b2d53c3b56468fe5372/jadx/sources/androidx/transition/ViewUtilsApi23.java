package androidx.transition;

import android.graphics.Matrix;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.room.util.RelationUtil;
import androidx.tracing.TraceApi29Impl;
import java.lang.reflect.Field;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ViewUtilsApi23 extends RelationUtil {
    public static boolean sTryHiddenSetLeftTopRightBottom = true;
    public static boolean sTryHiddenSetTransitionVisibility = true;
    public static boolean sTryHiddenTransformMatrixToGlobal = true;
    public static boolean sTryHiddenTransformMatrixToLocal = true;

    public void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4) {
        if (sTryHiddenSetLeftTopRightBottom) {
            try {
                TraceApi29Impl.setLeftTopRightBottom(view, i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSetLeftTopRightBottom = false;
            }
        }
    }

    public void setTransitionVisibility(View view, int i) {
        if (Build.VERSION.SDK_INT != 28) {
            if (sTryHiddenSetTransitionVisibility) {
                try {
                    TraceApi29Impl.setTransitionVisibility(view, i);
                    return;
                } catch (NoSuchMethodError unused) {
                    sTryHiddenSetTransitionVisibility = false;
                    return;
                }
            }
            return;
        }
        if (!RelationUtil.sViewFlagsFieldFetched) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                RelationUtil.sViewFlagsField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused2) {
                Log.i("ViewUtilsApi19", "fetchViewFlagsField: ");
            }
            RelationUtil.sViewFlagsFieldFetched = true;
        }
        Field field = RelationUtil.sViewFlagsField;
        if (field != null) {
            try {
                RelationUtil.sViewFlagsField.setInt(view, (field.getInt(view) & (-13)) | i);
            } catch (IllegalAccessException unused3) {
            }
        }
    }

    public void transformMatrixToGlobal(View view, Matrix matrix) {
        if (sTryHiddenTransformMatrixToGlobal) {
            try {
                TraceApi29Impl.transformMatrixToGlobal(view, matrix);
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransformMatrixToGlobal = false;
            }
        }
    }

    public void transformMatrixToLocal(ViewGroup viewGroup, Matrix matrix) {
        if (sTryHiddenTransformMatrixToLocal) {
            try {
                TraceApi29Impl.transformMatrixToLocal(viewGroup, matrix);
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransformMatrixToLocal = false;
            }
        }
    }
}
