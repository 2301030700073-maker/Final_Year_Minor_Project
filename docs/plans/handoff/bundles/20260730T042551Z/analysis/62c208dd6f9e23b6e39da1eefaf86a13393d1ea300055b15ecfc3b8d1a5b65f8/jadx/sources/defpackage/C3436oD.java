package defpackage;

import android.graphics.Paint;
import android.graphics.Path;

/* renamed from: oD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3436oD {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f14702do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint f14703do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Path f14704do = new Path();

    /* renamed from: for, reason: not valid java name */
    public int f14705for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Paint f14706for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int f14707if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Paint f14708if;

    /* renamed from: new, reason: not valid java name */
    public final Paint f14709new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f14699do = new int[3];

    /* renamed from: do, reason: not valid java name */
    public static final float[] f14698do = {0.0f, 0.5f, 1.0f};

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final int[] f14701if = new int[4];

    /* renamed from: if, reason: not valid java name */
    public static final float[] f14700if = {0.0f, 0.0f, 0.5f, 1.0f};

    public C3436oD() {
        Paint paint = new Paint();
        this.f14709new = paint;
        this.f14703do = new Paint();
        m7701do(-16777216);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.f14708if = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f14706for = new Paint(paint2);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7701do(int i) {
        this.f14702do = G8.m707case(i, 68);
        this.f14707if = G8.m707case(i, 20);
        this.f14705for = G8.m707case(i, 0);
        this.f14703do.setColor(this.f14702do);
    }
}
