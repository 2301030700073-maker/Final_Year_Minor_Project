package defpackage;

import android.os.Build;
import android.view.ViewGroup;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class ZK {

    /* renamed from: do, reason: not valid java name */
    public static Method f4802do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f4803do = true;

    /* renamed from: if, reason: not valid java name */
    public static boolean f4804if;

    /* renamed from: ZK$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static int m2989do(ViewGroup viewGroup, int i) {
            int childDrawingOrder;
            childDrawingOrder = viewGroup.getChildDrawingOrder(i);
            return childDrawingOrder;
        }

        /* renamed from: if, reason: not valid java name */
        public static void m2990if(ViewGroup viewGroup, boolean z) {
            viewGroup.suppressLayout(z);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m2988do(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            Cdo.m2990if(viewGroup, z);
        } else if (f4803do) {
            try {
                Cdo.m2990if(viewGroup, z);
            } catch (NoSuchMethodError unused) {
                f4803do = false;
            }
        }
    }
}
