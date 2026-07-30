package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import com.joeykrim.rootcheck.R;
import java.util.ArrayList;

/* renamed from: bK, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0745bK {
    /* renamed from: do, reason: not valid java name */
    public static ArrayList m4828do() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C2888hn(R.drawable.heart_on, R.drawable.heart_off, 1));
        arrayList.add(new C2888hn(R.drawable.star_on, R.drawable.star_off, 3));
        arrayList.add(new C2888hn(R.drawable.thumb_on, R.drawable.thumb_off, 2));
        return arrayList;
    }

    /* renamed from: for, reason: not valid java name */
    public static BitmapDrawable m4829for(Context context, Drawable drawable, int i, int i2) {
        Bitmap createBitmap;
        Bitmap bitmap;
        if (drawable instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) drawable).getBitmap();
        } else {
            if (drawable instanceof C2804gK) {
                C2804gK c2804gK = (C2804gK) drawable;
                createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                c2804gK.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                c2804gK.draw(canvas);
            } else {
                if (!(drawable instanceof VectorDrawable)) {
                    throw new IllegalArgumentException("Unsupported drawable type");
                }
                VectorDrawable vectorDrawable = (VectorDrawable) drawable;
                createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap);
                vectorDrawable.setBounds(0, 0, canvas2.getWidth(), canvas2.getHeight());
                vectorDrawable.draw(canvas2);
            }
            bitmap = createBitmap;
        }
        return new BitmapDrawable(context.getResources(), Bitmap.createScaledBitmap(bitmap, i, i2, true));
    }

    /* renamed from: if, reason: not valid java name */
    public static double m4830if(double d, double d2, double d3, double d4, double d5) {
        return ((d5 - d4) * ((d - d2) / (d3 - d2))) + d4;
    }
}
