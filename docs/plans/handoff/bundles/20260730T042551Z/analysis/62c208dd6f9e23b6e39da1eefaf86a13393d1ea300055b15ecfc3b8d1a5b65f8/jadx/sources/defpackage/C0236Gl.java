package defpackage;

import java.util.ArrayList;

/* renamed from: Gl, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0236Gl {

    /* renamed from: do, reason: not valid java name */
    public final float[] f1224do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f1225do;

    public C0236Gl(ArrayList arrayList, ArrayList arrayList2) {
        int size = arrayList.size();
        this.f1225do = new int[size];
        this.f1224do = new float[size];
        for (int i = 0; i < size; i++) {
            this.f1225do[i] = ((Integer) arrayList.get(i)).intValue();
            this.f1224do[i] = ((Float) arrayList2.get(i)).floatValue();
        }
    }

    public C0236Gl(int i, int i2) {
        this.f1225do = new int[]{i, i2};
        this.f1224do = new float[]{0.0f, 1.0f};
    }

    public C0236Gl(int i, int i2, int i3) {
        this.f1225do = new int[]{i, i2, i3};
        this.f1224do = new float[]{0.0f, 0.5f, 1.0f};
    }
}
