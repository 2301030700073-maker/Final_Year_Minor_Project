package defpackage;

import android.content.res.ColorStateList;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.ColorStateListDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import defpackage.C0426Pe;
import java.util.Arrays;

/* renamed from: Se, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0492Se {

    /* renamed from: Se$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m2178do(Outline outline, Path path) {
            outline.setConvexPath(path);
        }
    }

    /* renamed from: Se$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static void m2179do(Outline outline, Path path) {
            outline.setPath(path);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Drawable m2173do(Drawable drawable, Drawable drawable2, int i, int i2) {
        Drawable drawable3 = drawable2;
        int i3 = i;
        int i4 = i2;
        if (drawable == null) {
            return drawable3;
        }
        if (drawable3 == null) {
            return drawable;
        }
        boolean z = (i3 == -1 || i4 == -1) ? false : true;
        if (i3 == -1 && (i3 = drawable2.getIntrinsicWidth()) == -1) {
            i3 = drawable.getIntrinsicWidth();
        }
        if (i4 == -1 && (i4 = drawable2.getIntrinsicHeight()) == -1) {
            i4 = drawable.getIntrinsicHeight();
        }
        if (i3 > drawable.getIntrinsicWidth() || i4 > drawable.getIntrinsicHeight()) {
            float f = i3 / i4;
            if (f >= drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight()) {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                i4 = (int) (intrinsicWidth / f);
                i3 = intrinsicWidth;
            } else {
                i4 = drawable.getIntrinsicHeight();
                i3 = (int) (f * i4);
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable, drawable3});
            layerDrawable.setLayerSize(1, i3, i4);
            layerDrawable.setLayerGravity(1, 17);
            return layerDrawable;
        }
        if (z) {
            drawable3 = new C3669sB(drawable3, i3, i4);
        }
        LayerDrawable layerDrawable2 = new LayerDrawable(new Drawable[]{drawable, drawable3});
        int max = Math.max((drawable.getIntrinsicWidth() - i3) / 2, 0);
        int max2 = Math.max((drawable.getIntrinsicHeight() - i4) / 2, 0);
        layerDrawable2.setLayerInset(1, max, max2, max, max2);
        return layerDrawable2;
    }

    /* renamed from: for, reason: not valid java name */
    public static int[] m2174for(int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr[i];
            if (i2 == 16842912) {
                return iArr;
            }
            if (i2 == 0) {
                int[] iArr2 = (int[]) iArr.clone();
                iArr2[i] = 16842912;
                return iArr2;
            }
        }
        int[] copyOf = Arrays.copyOf(iArr, iArr.length + 1);
        copyOf[iArr.length] = 16842912;
        return copyOf;
    }

    /* renamed from: if, reason: not valid java name */
    public static Drawable m2175if(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode, boolean z) {
        if (drawable == null) {
            return null;
        }
        if (colorStateList != null) {
            drawable = C0426Pe.m1779goto(drawable).mutate();
            if (mode != null) {
                C0426Pe.Cdo.m1790this(drawable, mode);
            }
        } else if (z) {
            drawable.mutate();
        }
        return drawable;
    }

    /* renamed from: new, reason: not valid java name */
    public static ColorStateList m2176new(Drawable drawable) {
        ColorStateList colorStateList;
        if (drawable instanceof ColorDrawable) {
            return ColorStateList.valueOf(((ColorDrawable) drawable).getColor());
        }
        if (Build.VERSION.SDK_INT < 29 || !(drawable instanceof ColorStateListDrawable)) {
            return null;
        }
        colorStateList = ((ColorStateListDrawable) drawable).getColorStateList();
        return colorStateList;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m2177try(Drawable drawable, int i) {
        boolean z = i != 0;
        if (Build.VERSION.SDK_INT == 21) {
            if (z) {
                drawable.setColorFilter(i, PorterDuff.Mode.SRC_IN);
                return;
            } else {
                drawable.setColorFilter(null);
                return;
            }
        }
        if (z) {
            C0426Pe.Cdo.m1785else(drawable, i);
        } else {
            C0426Pe.Cdo.m1787goto(drawable, null);
        }
    }
}
