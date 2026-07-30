package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import defpackage.X4;

/* renamed from: bf, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC0763bf<S extends X4> {

    /* renamed from: do, reason: not valid java name */
    public final S f8424do;

    /* renamed from: bf$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public float f8425do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f8426do;

        /* renamed from: if, reason: not valid java name */
        public float f8427if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public int f8428if;
    }

    public AbstractC0763bf(S s) {
        this.f8424do = s;
    }

    /* renamed from: case */
    public abstract int mo574case();

    /* renamed from: do */
    public abstract void mo575do(Canvas canvas, Rect rect, float f, boolean z, boolean z2);

    /* renamed from: for */
    public abstract void mo577for(Canvas canvas, Paint paint, Cdo cdo, int i);

    /* renamed from: if */
    public abstract void mo579if(Canvas canvas, Paint paint, int i, int i2);

    /* renamed from: new */
    public abstract void mo580new(Canvas canvas, Paint paint, float f, float f2, int i, int i2, int i3);

    /* renamed from: try */
    public abstract int mo582try();
}
