package com.google.android.material.carousel;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.material.carousel.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif {

    /* renamed from: do, reason: not valid java name */
    public final float f10745do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int f10746do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<C0067if> f10747do;

    /* renamed from: if, reason: not valid java name */
    public final int f10748if;

    /* renamed from: com.google.android.material.carousel.if$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final float f10749do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0067if f10751do;

        /* renamed from: if, reason: not valid java name */
        public final float f10755if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public C0067if f10757if;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList f10752do = new ArrayList();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f10750do = -1;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public int f10756if = -1;

        /* renamed from: for, reason: not valid java name */
        public float f10753for = 0.0f;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public int f10754for = -1;

        public Cdo(float f, float f2) {
            this.f10749do = f;
            this.f10755if = f2;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m5734do(float f, float f2, float f3, boolean z, boolean z2) {
            float f4;
            float abs;
            float f5 = f3 / 2.0f;
            float f6 = f - f5;
            float f7 = f5 + f;
            float f8 = this.f10755if;
            if (f7 > f8) {
                abs = Math.abs(f7 - Math.max(f7 - f3, f8));
            } else {
                if (f6 >= 0.0f) {
                    f4 = 0.0f;
                    m5736if(f, f2, f3, z, z2, f4, 0.0f, 0.0f);
                }
                abs = Math.abs(f6 - Math.min(f6 + f3, 0.0f));
            }
            f4 = abs;
            m5736if(f, f2, f3, z, z2, f4, 0.0f, 0.0f);
        }

        /* renamed from: for, reason: not valid java name */
        public final void m5735for(float f, float f2, int i, boolean z, float f3) {
            if (i <= 0 || f3 <= 0.0f) {
                return;
            }
            for (int i2 = 0; i2 < i; i2++) {
                m5734do((i2 * f3) + f, f2, f3, z, false);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final void m5736if(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5, float f6) {
            if (f3 <= 0.0f) {
                return;
            }
            ArrayList arrayList = this.f10752do;
            if (z2) {
                if (z) {
                    throw new IllegalArgumentException("Anchor keylines cannot be focal.");
                }
                int i = this.f10754for;
                if (i != -1 && i != 0) {
                    throw new IllegalArgumentException("Anchor keylines must be either the first or last keyline.");
                }
                this.f10754for = arrayList.size();
            }
            C0067if c0067if = new C0067if(Float.MIN_VALUE, f, f2, f3, z2, f4, f5, f6);
            if (z) {
                if (this.f10751do == null) {
                    this.f10751do = c0067if;
                    this.f10750do = arrayList.size();
                }
                if (this.f10756if != -1 && arrayList.size() - this.f10756if > 1) {
                    throw new IllegalArgumentException("Keylines marked as focal must be placed next to each other. There cannot be non-focal keylines between focal keylines.");
                }
                if (f3 != this.f10751do.f10764new) {
                    throw new IllegalArgumentException("Keylines that are marked as focal must all have the same masked item size.");
                }
                this.f10757if = c0067if;
                this.f10756if = arrayList.size();
            } else {
                if (this.f10751do == null && f3 < this.f10753for) {
                    throw new IllegalArgumentException("Keylines before the first focal keyline must be ordered by incrementing masked item size.");
                }
                if (this.f10757if != null && f3 > this.f10753for) {
                    throw new IllegalArgumentException("Keylines after the last focal keyline must be ordered by decreasing masked item size.");
                }
            }
            this.f10753for = f3;
            arrayList.add(c0067if);
        }

        /* renamed from: new, reason: not valid java name */
        public final Cif m5737new() {
            if (this.f10751do == null) {
                throw new IllegalStateException("There must be a keyline marked as focal.");
            }
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                ArrayList arrayList2 = this.f10752do;
                int size = arrayList2.size();
                float f = this.f10749do;
                if (i >= size) {
                    return new Cif(f, arrayList, this.f10750do, this.f10756if);
                }
                C0067if c0067if = (C0067if) arrayList2.get(i);
                arrayList.add(new C0067if((i * f) + (this.f10751do.f10763if - (this.f10750do * f)), c0067if.f10763if, c0067if.f10762for, c0067if.f10764new, c0067if.f10760do, c0067if.f10765try, c0067if.f10758case, c0067if.f10761else));
                i++;
            }
        }
    }

    /* renamed from: com.google.android.material.carousel.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0067if {

        /* renamed from: case, reason: not valid java name */
        public final float f10758case;

        /* renamed from: do, reason: not valid java name */
        public final float f10759do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f10760do;

        /* renamed from: else, reason: not valid java name */
        public final float f10761else;

        /* renamed from: for, reason: not valid java name */
        public final float f10762for;

        /* renamed from: if, reason: not valid java name */
        public final float f10763if;

        /* renamed from: new, reason: not valid java name */
        public final float f10764new;

        /* renamed from: try, reason: not valid java name */
        public final float f10765try;

        public C0067if(float f, float f2, float f3, float f4, boolean z, float f5, float f6, float f7) {
            this.f10759do = f;
            this.f10763if = f2;
            this.f10762for = f3;
            this.f10764new = f4;
            this.f10760do = z;
            this.f10765try = f5;
            this.f10758case = f6;
            this.f10761else = f7;
        }
    }

    public Cif(float f, ArrayList arrayList, int i, int i2) {
        this.f10745do = f;
        this.f10747do = DesugarCollections.unmodifiableList(arrayList);
        this.f10746do = i;
        this.f10748if = i2;
    }

    /* renamed from: do, reason: not valid java name */
    public final C0067if m5730do() {
        return this.f10747do.get(this.f10746do);
    }

    /* renamed from: for, reason: not valid java name */
    public final C0067if m5731for() {
        return this.f10747do.get(this.f10748if);
    }

    /* renamed from: if, reason: not valid java name */
    public final C0067if m5732if() {
        return this.f10747do.get(0);
    }

    /* renamed from: new, reason: not valid java name */
    public final C0067if m5733new() {
        return this.f10747do.get(r0.size() - 1);
    }
}
