package com.facebook.appevents.ml;

import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;

/* loaded from: classes.dex */
public final class Operator {
    public static final Operator INSTANCE = new Operator();

    private Operator() {
    }

    public static final void addmv(MTensor mTensor, MTensor mTensor2) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            C0173Do.m401try(mTensor, "x");
            C0173Do.m401try(mTensor2, "b");
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            int shape3 = mTensor.getShape(2);
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            if (shape <= 0) {
                return;
            }
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (shape2 > 0) {
                    int i3 = 0;
                    while (true) {
                        int i4 = i3 + 1;
                        if (shape3 > 0) {
                            int i5 = 0;
                            while (true) {
                                int i6 = i5 + 1;
                                int i7 = (i3 * shape3) + (i * shape2 * shape3) + i5;
                                data[i7] = data[i7] + data2[i5];
                                if (i6 >= shape3) {
                                    break;
                                } else {
                                    i5 = i6;
                                }
                            }
                        }
                        if (i4 >= shape2) {
                            break;
                        } else {
                            i3 = i4;
                        }
                    }
                }
                if (i2 >= shape) {
                    return;
                } else {
                    i = i2;
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static final MTensor concatenate(MTensor[] mTensorArr) {
        int i;
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            C0173Do.m401try(mTensorArr, "tensors");
            int shape = mTensorArr[0].getShape(0);
            int length = mTensorArr.length - 1;
            if (length >= 0) {
                int i2 = 0;
                i = 0;
                while (true) {
                    int i3 = i2 + 1;
                    i += mTensorArr[i2].getShape(1);
                    if (i3 > length) {
                        break;
                    }
                    i2 = i3;
                }
            } else {
                i = 0;
            }
            MTensor mTensor = new MTensor(new int[]{shape, i});
            float[] data = mTensor.getData();
            if (shape > 0) {
                int i4 = 0;
                while (true) {
                    int i5 = i4 + 1;
                    int i6 = i4 * i;
                    int length2 = mTensorArr.length - 1;
                    if (length2 >= 0) {
                        int i7 = 0;
                        while (true) {
                            int i8 = i7 + 1;
                            float[] data2 = mTensorArr[i7].getData();
                            int shape2 = mTensorArr[i7].getShape(1);
                            System.arraycopy(data2, i4 * shape2, data, i6, shape2);
                            i6 += shape2;
                            if (i8 > length2) {
                                break;
                            }
                            i7 = i8;
                        }
                    }
                    if (i5 >= shape) {
                        break;
                    }
                    i4 = i5;
                }
            }
            return mTensor;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final MTensor conv1D(MTensor mTensor, MTensor mTensor2) {
        Class<Operator> cls;
        Class<Operator> cls2;
        MTensor mTensor3;
        Class<Operator> cls3 = Operator.class;
        if (CrashShieldHandler.isObjectCrashing(cls3)) {
            return null;
        }
        try {
            C0173Do.m401try(mTensor, "x");
            C0173Do.m401try(mTensor2, "w");
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            int shape3 = mTensor.getShape(2);
            int shape4 = mTensor2.getShape(0);
            int i = (shape2 - shape4) + 1;
            int shape5 = mTensor2.getShape(2);
            MTensor mTensor4 = new MTensor(new int[]{shape, i, shape5});
            float[] data = mTensor.getData();
            float[] data2 = mTensor4.getData();
            float[] data3 = mTensor2.getData();
            if (shape <= 0) {
                return mTensor4;
            }
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (shape5 > 0) {
                    int i4 = 0;
                    while (true) {
                        int i5 = i4 + 1;
                        if (i > 0) {
                            int i6 = 0;
                            while (true) {
                                int i7 = i6 + 1;
                                float f = 0.0f;
                                if (shape4 > 0) {
                                    int i8 = 0;
                                    while (true) {
                                        cls2 = cls3;
                                        int i9 = i8 + 1;
                                        if (shape3 > 0) {
                                            int i10 = 0;
                                            while (true) {
                                                mTensor3 = mTensor4;
                                                int i11 = i10 + 1;
                                                try {
                                                    f = (data[((i8 + i6) * shape3) + (shape2 * shape3 * i2) + i10] * data3[(((i8 * shape3) + i10) * shape5) + i4]) + f;
                                                    if (i11 >= shape3) {
                                                        break;
                                                    }
                                                    i10 = i11;
                                                    mTensor4 = mTensor3;
                                                } catch (Throwable th) {
                                                    th = th;
                                                    cls = cls2;
                                                    CrashShieldHandler.handleThrowable(th, cls);
                                                    return null;
                                                }
                                            }
                                        } else {
                                            mTensor3 = mTensor4;
                                        }
                                        if (i9 >= shape4) {
                                            break;
                                        }
                                        i8 = i9;
                                        cls3 = cls2;
                                        mTensor4 = mTensor3;
                                    }
                                } else {
                                    cls2 = cls3;
                                    mTensor3 = mTensor4;
                                }
                                data2[(i6 * shape5) + (i * shape5 * i2) + i4] = f;
                                if (i7 >= i) {
                                    break;
                                }
                                i6 = i7;
                                cls3 = cls2;
                                mTensor4 = mTensor3;
                            }
                        } else {
                            cls2 = cls3;
                            mTensor3 = mTensor4;
                        }
                        if (i5 >= shape5) {
                            break;
                        }
                        i4 = i5;
                        cls3 = cls2;
                        mTensor4 = mTensor3;
                    }
                } else {
                    cls2 = cls3;
                    mTensor3 = mTensor4;
                }
                if (i3 >= shape) {
                    return mTensor3;
                }
                i2 = i3;
                cls3 = cls2;
                mTensor4 = mTensor3;
            }
        } catch (Throwable th2) {
            th = th2;
            cls = cls3;
        }
    }

    public static final MTensor dense(MTensor mTensor, MTensor mTensor2, MTensor mTensor3) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            C0173Do.m401try(mTensor, "x");
            C0173Do.m401try(mTensor2, "w");
            C0173Do.m401try(mTensor3, "b");
            int shape = mTensor.getShape(0);
            int shape2 = mTensor3.getShape(0);
            MTensor mul = mul(mTensor, mTensor2);
            float[] data = mTensor3.getData();
            float[] data2 = mul.getData();
            if (shape > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (shape2 > 0) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            int i5 = (i * shape2) + i3;
                            data2[i5] = data2[i5] + data[i3];
                            if (i4 >= shape2) {
                                break;
                            }
                            i3 = i4;
                        }
                    }
                    if (i2 >= shape) {
                        break;
                    }
                    i = i2;
                }
            }
            return mul;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final MTensor embedding(String[] strArr, int i, MTensor mTensor) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            C0173Do.m401try(strArr, "texts");
            C0173Do.m401try(mTensor, "w");
            int length = strArr.length;
            int shape = mTensor.getShape(1);
            MTensor mTensor2 = new MTensor(new int[]{length, i, shape});
            float[] data = mTensor2.getData();
            float[] data2 = mTensor.getData();
            if (length > 0) {
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    int[] vectorize = Utils.INSTANCE.vectorize(strArr[i2], i);
                    if (i > 0) {
                        int i4 = 0;
                        while (true) {
                            int i5 = i4 + 1;
                            System.arraycopy(data2, vectorize[i4] * shape, data, (i4 * shape) + (shape * i * i2), shape);
                            if (i5 >= i) {
                                break;
                            }
                            i4 = i5;
                        }
                    }
                    if (i3 >= length) {
                        break;
                    }
                    i2 = i3;
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final void flatten(MTensor mTensor, int i) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            C0173Do.m401try(mTensor, "x");
            if (i >= mTensor.getShapeSize()) {
                return;
            }
            int shapeSize = mTensor.getShapeSize();
            int i2 = 1;
            if (i < shapeSize) {
                int i3 = i;
                while (true) {
                    int i4 = i3 + 1;
                    i2 *= mTensor.getShape(i3);
                    if (i4 >= shapeSize) {
                        break;
                    } else {
                        i3 = i4;
                    }
                }
            }
            int[] iArr = new int[i + 1];
            if (i > 0) {
                int i5 = 0;
                while (true) {
                    int i6 = i5 + 1;
                    iArr[i5] = mTensor.getShape(i5);
                    if (i6 >= i) {
                        break;
                    } else {
                        i5 = i6;
                    }
                }
            }
            iArr[i] = i2;
            mTensor.reshape(iArr);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static final MTensor maxPool1D(MTensor mTensor, int i) {
        int i2;
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            C0173Do.m401try(mTensor, "x");
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            int shape3 = mTensor.getShape(2);
            int i3 = (shape2 - i) + 1;
            MTensor mTensor2 = new MTensor(new int[]{shape, i3, shape3});
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            if (shape > 0) {
                int i4 = 0;
                while (true) {
                    int i5 = i4 + 1;
                    if (shape3 > 0) {
                        int i6 = 0;
                        while (true) {
                            int i7 = i6 + 1;
                            if (i3 > 0) {
                                int i8 = 0;
                                while (true) {
                                    int i9 = i8 + 1;
                                    int i10 = i8 * shape3;
                                    int i11 = (i4 * i3 * shape3) + i10 + i6;
                                    int i12 = (i4 * shape2 * shape3) + i10 + i6;
                                    data2[i11] = Float.MIN_VALUE;
                                    if (i > 0) {
                                        int i13 = 0;
                                        while (true) {
                                            int i14 = i13 + 1;
                                            i2 = shape2;
                                            data2[i11] = Math.max(data2[i11], data[(i13 * shape3) + i12]);
                                            if (i14 >= i) {
                                                break;
                                            }
                                            i13 = i14;
                                            shape2 = i2;
                                        }
                                    } else {
                                        i2 = shape2;
                                    }
                                    if (i9 >= i3) {
                                        break;
                                    }
                                    i8 = i9;
                                    shape2 = i2;
                                }
                            } else {
                                i2 = shape2;
                            }
                            if (i7 >= shape3) {
                                break;
                            }
                            i6 = i7;
                            shape2 = i2;
                        }
                    } else {
                        i2 = shape2;
                    }
                    if (i5 >= shape) {
                        break;
                    }
                    i4 = i5;
                    shape2 = i2;
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final MTensor mul(MTensor mTensor, MTensor mTensor2) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            C0173Do.m401try(mTensor, "x");
            C0173Do.m401try(mTensor2, "w");
            int shape = mTensor.getShape(0);
            int shape2 = mTensor2.getShape(0);
            int shape3 = mTensor2.getShape(1);
            MTensor mTensor3 = new MTensor(new int[]{shape, shape3});
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            float[] data3 = mTensor3.getData();
            if (shape > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (shape3 > 0) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            int i5 = (i * shape3) + i3;
                            data3[i5] = 0.0f;
                            if (shape2 > 0) {
                                int i6 = 0;
                                while (true) {
                                    int i7 = i6 + 1;
                                    data3[i5] = (data[(i * shape2) + i6] * data2[(i6 * shape3) + i3]) + data3[i5];
                                    if (i7 >= shape2) {
                                        break;
                                    }
                                    i6 = i7;
                                }
                            }
                            if (i4 >= shape3) {
                                break;
                            }
                            i3 = i4;
                        }
                    }
                    if (i2 >= shape) {
                        break;
                    }
                    i = i2;
                }
            }
            return mTensor3;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final void relu(MTensor mTensor) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            C0173Do.m401try(mTensor, "x");
            float[] data = mTensor.getData();
            int length = data.length - 1;
            if (length < 0) {
                return;
            }
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (data[i] < 0.0f) {
                    data[i] = 0.0f;
                }
                if (i2 > length) {
                    return;
                } else {
                    i = i2;
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static final void softmax(MTensor mTensor) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            C0173Do.m401try(mTensor, "x");
            int i = 0;
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            float[] data = mTensor.getData();
            if (shape <= 0) {
                return;
            }
            while (true) {
                int i2 = i + 1;
                int i3 = i * shape2;
                int i4 = i3 + shape2;
                float f = Float.MIN_VALUE;
                if (i3 < i4) {
                    int i5 = i3;
                    while (true) {
                        int i6 = i5 + 1;
                        float f2 = data[i5];
                        if (f2 > f) {
                            f = f2;
                        }
                        if (i6 >= i4) {
                            break;
                        } else {
                            i5 = i6;
                        }
                    }
                }
                float f3 = 0.0f;
                if (i3 < i4) {
                    int i7 = i3;
                    while (true) {
                        int i8 = i7 + 1;
                        float exp = (float) Math.exp(data[i7] - f);
                        data[i7] = exp;
                        f3 += exp;
                        if (i8 >= i4) {
                            break;
                        } else {
                            i7 = i8;
                        }
                    }
                }
                if (i3 < i4) {
                    while (true) {
                        int i9 = i3 + 1;
                        data[i3] = data[i3] / f3;
                        if (i9 >= i4) {
                            break;
                        } else {
                            i3 = i9;
                        }
                    }
                }
                if (i2 >= shape) {
                    return;
                } else {
                    i = i2;
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static final MTensor transpose2D(MTensor mTensor) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            C0173Do.m401try(mTensor, "x");
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            MTensor mTensor2 = new MTensor(new int[]{shape2, shape});
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            if (shape > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (shape2 > 0) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            data2[(i3 * shape) + i] = data[(i * shape2) + i3];
                            if (i4 >= shape2) {
                                break;
                            }
                            i3 = i4;
                        }
                    }
                    if (i2 >= shape) {
                        break;
                    }
                    i = i2;
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final MTensor transpose3D(MTensor mTensor) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            C0173Do.m401try(mTensor, "x");
            int shape = mTensor.getShape(0);
            int shape2 = mTensor.getShape(1);
            int shape3 = mTensor.getShape(2);
            MTensor mTensor2 = new MTensor(new int[]{shape3, shape2, shape});
            float[] data = mTensor.getData();
            float[] data2 = mTensor2.getData();
            if (shape > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (shape2 > 0) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            if (shape3 > 0) {
                                int i5 = 0;
                                while (true) {
                                    int i6 = i5 + 1;
                                    data2[(i3 * shape) + (i5 * shape * shape2) + i] = data[(i3 * shape3) + (i * shape2 * shape3) + i5];
                                    if (i6 >= shape3) {
                                        break;
                                    }
                                    i5 = i6;
                                }
                            }
                            if (i4 >= shape2) {
                                break;
                            }
                            i3 = i4;
                        }
                    }
                    if (i2 >= shape) {
                        break;
                    }
                    i = i2;
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }
}
