package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.widget.ImageView;

/* renamed from: rn, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3644rn {
    /* renamed from: do, reason: not valid java name */
    public static ColorStateList m7985do(ImageView imageView) {
        return imageView.getImageTintList();
    }

    /* renamed from: for, reason: not valid java name */
    public static void m7986for(ImageView imageView, ColorStateList colorStateList) {
        imageView.setImageTintList(colorStateList);
    }

    /* renamed from: if, reason: not valid java name */
    public static PorterDuff.Mode m7987if(ImageView imageView) {
        return imageView.getImageTintMode();
    }

    /* renamed from: new, reason: not valid java name */
    public static void m7988new(ImageView imageView, PorterDuff.Mode mode) {
        imageView.setImageTintMode(mode);
    }
}
