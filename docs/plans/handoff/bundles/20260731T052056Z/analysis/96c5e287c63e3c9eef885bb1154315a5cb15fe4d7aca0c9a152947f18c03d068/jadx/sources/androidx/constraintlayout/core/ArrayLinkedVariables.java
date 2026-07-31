package androidx.constraintlayout.core;

import androidx.recyclerview.widget.RecyclerView;
import com.caverock.androidsvg.SVG;
import java.util.Arrays;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArrayLinkedVariables {
    public final SVG mCache;
    public final ArrayRow mRow;
    public int mCurrentSize = 0;
    public int mRowSize = 8;
    public int[] mArrayIndices = new int[8];
    public int[] mArrayNextIndices = new int[8];
    public float[] mArrayValues = new float[8];
    public int mHead = -1;
    public int mLast = -1;
    public boolean mDidFillOnce = false;

    public ArrayLinkedVariables(ArrayRow arrayRow, SVG svg) {
        this.mRow = arrayRow;
        this.mCache = svg;
    }

    public final void add(SolverVariable solverVariable, float f, boolean z) {
        int[] iArr;
        if (f <= -0.001f || f >= 0.001f) {
            int i = this.mHead;
            ArrayRow arrayRow = this.mRow;
            if (i == -1) {
                this.mHead = 0;
                this.mArrayValues[0] = f;
                this.mArrayIndices[0] = solverVariable.id;
                this.mArrayNextIndices[0] = -1;
                solverVariable.usageInRowCount++;
                solverVariable.addToRow(arrayRow);
                this.mCurrentSize++;
                if (this.mDidFillOnce) {
                    return;
                }
                int i2 = this.mLast + 1;
                this.mLast = i2;
                int[] iArr2 = this.mArrayIndices;
                if (i2 >= iArr2.length) {
                    this.mDidFillOnce = true;
                    this.mLast = iArr2.length - 1;
                    return;
                }
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.mCurrentSize; i4++) {
                int i5 = this.mArrayIndices[i];
                int i6 = solverVariable.id;
                if (i5 == i6) {
                    float[] fArr = this.mArrayValues;
                    float f2 = fArr[i] + f;
                    if (f2 > -0.001f && f2 < 0.001f) {
                        f2 = 0.0f;
                    }
                    fArr[i] = f2;
                    if (f2 == RecyclerView.DECELERATION_RATE) {
                        int i7 = this.mHead;
                        int[] iArr3 = this.mArrayNextIndices;
                        if (i == i7) {
                            this.mHead = iArr3[i];
                        } else {
                            iArr3[i3] = iArr3[i];
                        }
                        if (z) {
                            solverVariable.removeFromRow(arrayRow);
                        }
                        if (this.mDidFillOnce) {
                            this.mLast = i;
                        }
                        solverVariable.usageInRowCount--;
                        this.mCurrentSize--;
                        return;
                    }
                    return;
                }
                if (i5 < i6) {
                    i3 = i;
                }
                i = this.mArrayNextIndices[i];
            }
            int i8 = this.mLast;
            int i9 = i8 + 1;
            if (this.mDidFillOnce) {
                int[] iArr4 = this.mArrayIndices;
                if (iArr4[i8] != -1) {
                    i8 = iArr4.length;
                }
            } else {
                i8 = i9;
            }
            int[] iArr5 = this.mArrayIndices;
            if (i8 >= iArr5.length && this.mCurrentSize < iArr5.length) {
                int i10 = 0;
                while (true) {
                    iArr = this.mArrayIndices;
                    if (i10 >= iArr.length) {
                        iArr5 = iArr;
                        break;
                    } else {
                        if (iArr[i10] == -1) {
                            i8 = i10;
                            break;
                        }
                        i10++;
                    }
                }
            }
            iArr = iArr5;
            if (i8 >= iArr.length) {
                i8 = iArr.length;
                int i11 = this.mRowSize * 2;
                this.mRowSize = i11;
                this.mDidFillOnce = false;
                this.mLast = i8 - 1;
                this.mArrayValues = Arrays.copyOf(this.mArrayValues, i11);
                this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.mRowSize);
                this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.mRowSize);
            }
            this.mArrayIndices[i8] = solverVariable.id;
            this.mArrayValues[i8] = f;
            int[] iArr6 = this.mArrayNextIndices;
            if (i3 != -1) {
                iArr6[i8] = iArr6[i3];
                iArr6[i3] = i8;
            } else {
                iArr6[i8] = this.mHead;
                this.mHead = i8;
            }
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(arrayRow);
            this.mCurrentSize++;
            if (!this.mDidFillOnce) {
                this.mLast++;
            }
            int i12 = this.mLast;
            int[] iArr7 = this.mArrayIndices;
            if (i12 >= iArr7.length) {
                this.mDidFillOnce = true;
                this.mLast = iArr7.length - 1;
            }
        }
    }

    public final void clear() {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.mCurrentSize; i2++) {
            SolverVariable solverVariable = ((SolverVariable[]) this.mCache.idToElementMap)[this.mArrayIndices[i]];
            if (solverVariable != null) {
                solverVariable.removeFromRow(this.mRow);
            }
            i = this.mArrayNextIndices[i];
        }
        this.mHead = -1;
        this.mLast = -1;
        this.mDidFillOnce = false;
        this.mCurrentSize = 0;
    }

    public final float get(SolverVariable solverVariable) {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.mCurrentSize; i2++) {
            if (this.mArrayIndices[i] == solverVariable.id) {
                return this.mArrayValues[i];
            }
            i = this.mArrayNextIndices[i];
        }
        return RecyclerView.DECELERATION_RATE;
    }

    public final int getCurrentSize() {
        return this.mCurrentSize;
    }

    public final SolverVariable getVariable(int i) {
        int i2 = this.mHead;
        for (int i3 = 0; i2 != -1 && i3 < this.mCurrentSize; i3++) {
            if (i3 == i) {
                return ((SolverVariable[]) this.mCache.idToElementMap)[this.mArrayIndices[i2]];
            }
            i2 = this.mArrayNextIndices[i2];
        }
        return null;
    }

    public final float getVariableValue(int i) {
        int i2 = this.mHead;
        for (int i3 = 0; i2 != -1 && i3 < this.mCurrentSize; i3++) {
            if (i3 == i) {
                return this.mArrayValues[i2];
            }
            i2 = this.mArrayNextIndices[i2];
        }
        return RecyclerView.DECELERATION_RATE;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void put(androidx.constraintlayout.core.SolverVariable r10, float r11) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.ArrayLinkedVariables.put(androidx.constraintlayout.core.SolverVariable, float):void");
    }

    public final float remove(SolverVariable solverVariable, boolean z) {
        int i = this.mHead;
        if (i == -1) {
            return RecyclerView.DECELERATION_RATE;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.mCurrentSize) {
            if (this.mArrayIndices[i] == solverVariable.id) {
                int i4 = this.mHead;
                int[] iArr = this.mArrayNextIndices;
                if (i == i4) {
                    this.mHead = iArr[i];
                } else {
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    solverVariable.removeFromRow(this.mRow);
                }
                solverVariable.usageInRowCount--;
                this.mCurrentSize--;
                this.mArrayIndices[i] = -1;
                if (this.mDidFillOnce) {
                    this.mLast = i;
                }
                return this.mArrayValues[i];
            }
            i2++;
            i3 = i;
            i = this.mArrayNextIndices[i];
        }
        return RecyclerView.DECELERATION_RATE;
    }

    public final String toString() {
        int i = this.mHead;
        String str = "";
        for (int i2 = 0; i != -1 && i2 < this.mCurrentSize; i2++) {
            StringBuilder sb = new StringBuilder(str.concat(" -> ") + this.mArrayValues[i] + " : ");
            sb.append(((SolverVariable[]) this.mCache.idToElementMap)[this.mArrayIndices[i]]);
            str = sb.toString();
            i = this.mArrayNextIndices[i];
        }
        return str;
    }
}
