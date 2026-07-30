package com.facebook.appevents.ml;

import defpackage.C0173Do;
import defpackage.C2819gd;

/* loaded from: classes.dex */
public final class MTensor {
    public static final Companion Companion = new Companion(null);
    private int capacity;
    private float[] data;
    private int[] shape;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int getCapacity(int[] iArr) {
            int i = 1;
            if (iArr.length == 0) {
                throw new UnsupportedOperationException("Empty array can't be reduced.");
            }
            int i2 = iArr[0];
            int length = iArr.length - 1;
            if (1 <= length) {
                while (true) {
                    i2 *= iArr[i];
                    if (i == length) {
                        break;
                    }
                    i++;
                }
            }
            return i2;
        }
    }

    public MTensor(int[] iArr) {
        C0173Do.m401try(iArr, "shape");
        this.shape = iArr;
        int capacity = Companion.getCapacity(iArr);
        this.capacity = capacity;
        this.data = new float[capacity];
    }

    public final float[] getData() {
        return this.data;
    }

    public final int getShape(int i) {
        return this.shape[i];
    }

    public final int getShapeSize() {
        return this.shape.length;
    }

    public final void reshape(int[] iArr) {
        C0173Do.m401try(iArr, "shape");
        this.shape = iArr;
        int capacity = Companion.getCapacity(iArr);
        float[] fArr = new float[capacity];
        System.arraycopy(this.data, 0, fArr, 0, Math.min(this.capacity, capacity));
        this.data = fArr;
        this.capacity = capacity;
    }
}
