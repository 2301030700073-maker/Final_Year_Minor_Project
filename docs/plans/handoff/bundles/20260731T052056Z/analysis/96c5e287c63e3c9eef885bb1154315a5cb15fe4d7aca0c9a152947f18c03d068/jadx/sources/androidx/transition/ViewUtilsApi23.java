package androidx.transition;

import android.graphics.Matrix;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import kotlin.text.RegexKt;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ViewUtilsApi23 extends RegexKt {
    public static boolean sTryHiddenSetLeftTopRightBottom = true;
    public static boolean sTryHiddenSetTransitionVisibility = true;
    public static boolean sTryHiddenTransformMatrixToGlobal = true;
    public static boolean sTryHiddenTransformMatrixToLocal = true;

    public void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4) {
        if (sTryHiddenSetLeftTopRightBottom) {
            try {
                FileUtil.setLeftTopRightBottom(view, i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSetLeftTopRightBottom = false;
            }
        }
    }

    public void setTransitionVisibility(View view, int i) {
        if (Build.VERSION.SDK_INT != 28) {
            if (sTryHiddenSetTransitionVisibility) {
                try {
                    FileUtil.setTransitionVisibility(view, i);
                    return;
                } catch (NoSuchMethodError unused) {
                    sTryHiddenSetTransitionVisibility = false;
                    return;
                }
            }
            return;
        }
        if (!RegexKt.sViewFlagsFieldFetched) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                RegexKt.sViewFlagsField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused2) {
                Log.i("ViewUtilsApi19", "fetchViewFlagsField: ");
            }
            RegexKt.sViewFlagsFieldFetched = true;
        }
        Field field = RegexKt.sViewFlagsField;
        if (field != null) {
            try {
                RegexKt.sViewFlagsField.setInt(view, (field.getInt(view) & (-13)) | i);
            } catch (IllegalAccessException unused3) {
            }
        }
    }

    public void transformMatrixToGlobal(View view, Matrix matrix) {
        if (sTryHiddenTransformMatrixToGlobal) {
            try {
                FileUtil.transformMatrixToGlobal(view, matrix);
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransformMatrixToGlobal = false;
            }
        }
    }

    public void transformMatrixToLocal(ViewGroup viewGroup, Matrix matrix) {
        if (sTryHiddenTransformMatrixToLocal) {
            try {
                FileUtil.transformMatrixToLocal(viewGroup, matrix);
            } catch (NoSuchMethodError unused) {
                sTryHiddenTransformMatrixToLocal = false;
            }
        }
    }
}
