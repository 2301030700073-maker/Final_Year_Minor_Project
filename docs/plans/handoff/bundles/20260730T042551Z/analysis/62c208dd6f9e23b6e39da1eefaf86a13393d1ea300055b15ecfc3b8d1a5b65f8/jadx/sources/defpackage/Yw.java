package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.PointerIcon;

/* loaded from: classes.dex */
public final class Yw {

    /* renamed from: do, reason: not valid java name */
    public final PointerIcon f4770do;

    /* renamed from: Yw$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static PointerIcon m2973do(Bitmap bitmap, float f, float f2) {
            PointerIcon create;
            create = PointerIcon.create(bitmap, f, f2);
            return create;
        }

        /* renamed from: for, reason: not valid java name */
        public static PointerIcon m2974for(Resources resources, int i) {
            PointerIcon load;
            load = PointerIcon.load(resources, i);
            return load;
        }

        /* renamed from: if, reason: not valid java name */
        public static PointerIcon m2975if(Context context, int i) {
            PointerIcon systemIcon;
            systemIcon = PointerIcon.getSystemIcon(context, i);
            return systemIcon;
        }
    }

    public Yw(PointerIcon pointerIcon) {
        this.f4770do = pointerIcon;
    }
}
