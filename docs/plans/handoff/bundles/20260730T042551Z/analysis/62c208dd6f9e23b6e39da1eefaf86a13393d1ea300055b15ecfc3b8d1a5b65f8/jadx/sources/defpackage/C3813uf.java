package defpackage;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.EdgeEffect;

/* renamed from: uf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3813uf {

    /* renamed from: uf$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m8391do(EdgeEffect edgeEffect, float f, float f2) {
            edgeEffect.onPull(f, f2);
        }
    }

    /* renamed from: uf$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static EdgeEffect m8392do(Context context, AttributeSet attributeSet) {
            try {
                return new EdgeEffect(context, attributeSet);
            } catch (Throwable unused) {
                return new EdgeEffect(context);
            }
        }

        /* renamed from: for, reason: not valid java name */
        public static float m8393for(EdgeEffect edgeEffect, float f, float f2) {
            float onPullDistance;
            try {
                onPullDistance = edgeEffect.onPullDistance(f, f2);
                return onPullDistance;
            } catch (Throwable unused) {
                edgeEffect.onPull(f, f2);
                return 0.0f;
            }
        }

        /* renamed from: if, reason: not valid java name */
        public static float m8394if(EdgeEffect edgeEffect) {
            float distance;
            try {
                distance = edgeEffect.getDistance();
                return distance;
            } catch (Throwable unused) {
                return 0.0f;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static float m8389do(EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Cif.m8394if(edgeEffect);
        }
        return 0.0f;
    }

    /* renamed from: if, reason: not valid java name */
    public static float m8390if(EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Cif.m8393for(edgeEffect, f, f2);
        }
        Cdo.m8391do(edgeEffect, f, f2);
        return f;
    }
}
