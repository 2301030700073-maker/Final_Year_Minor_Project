package com.fasterxml.jackson.core.json;

import androidx.compose.ui.input.pointer.util.DataPointAtTime;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D$Strategy;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D$WhenMappings;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import coil3.ImageLoader$Builder;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.fasterxml.jackson.core.io.CharTypes;
import java.io.Serializable;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JsonWriteContext {
    public final /* synthetic */ int $r8$classId;
    public Object _child;
    public Serializable _currentName;
    public Object _currentValue;
    public Object _dups;
    public boolean _gotName;
    public int _index;
    public final Object _parent;
    public int _type;

    /* JADX WARN: Type inference failed for: r4v4, types: [float[], java.io.Serializable] */
    public JsonWriteContext(boolean z, VelocityTracker1D$Strategy velocityTracker1D$Strategy) {
        this.$r8$classId = 1;
        this._gotName = z;
        this._parent = velocityTracker1D$Strategy;
        if (z && velocityTracker1D$Strategy.equals(VelocityTracker1D$Strategy.Lsq2)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Lsq2 not (yet) supported for differential axes");
            throw null;
        }
        int i = VelocityTracker1D$WhenMappings.$EnumSwitchMapping$0[velocityTracker1D$Strategy.ordinal()];
        int i2 = 2;
        if (i != 1) {
            if (i != 2) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                throw null;
            }
            i2 = 3;
        }
        this._type = i2;
        this._child = new DataPointAtTime[20];
        this._dups = new float[20];
        this._currentName = new float[20];
        this._currentValue = new float[3];
    }

    public void addDataPoint(float f, long j) {
        int i = (this._index + 1) % 20;
        this._index = i;
        DataPointAtTime[] dataPointAtTimeArr = (DataPointAtTime[]) this._child;
        DataPointAtTime dataPointAtTime = dataPointAtTimeArr[i];
        if (dataPointAtTime != null) {
            dataPointAtTime.time = j;
            dataPointAtTime.dataPoint = f;
        } else {
            DataPointAtTime dataPointAtTime2 = new DataPointAtTime();
            dataPointAtTime2.time = j;
            dataPointAtTime2.dataPoint = f;
            dataPointAtTimeArr[i] = dataPointAtTime2;
        }
    }

    public float calculateVelocity(float f) {
        float f2;
        boolean z;
        int i;
        float f3;
        float signum;
        float f4 = RecyclerView.DECELERATION_RATE;
        if (f <= RecyclerView.DECELERATION_RATE) {
            InlineClassHelperKt.throwIllegalStateException("maximumVelocity should be a positive value. You specified=" + f);
        }
        boolean z2 = this._gotName;
        VelocityTracker1D$Strategy velocityTracker1D$Strategy = (VelocityTracker1D$Strategy) this._parent;
        float[] fArr = (float[]) this._dups;
        float[] fArr2 = (float[]) this._currentName;
        int i2 = this._index;
        DataPointAtTime[] dataPointAtTimeArr = (DataPointAtTime[]) this._child;
        DataPointAtTime dataPointAtTime = dataPointAtTimeArr[i2];
        if (dataPointAtTime == null) {
            f3 = 0.0f;
            f2 = 0.0f;
        } else {
            int i3 = 0;
            DataPointAtTime dataPointAtTime2 = dataPointAtTime;
            while (true) {
                DataPointAtTime dataPointAtTime3 = dataPointAtTimeArr[i2];
                if (dataPointAtTime3 != null) {
                    long j = dataPointAtTime.time;
                    f2 = f4;
                    z = z2;
                    long j2 = dataPointAtTime3.time;
                    float f5 = j - j2;
                    i = 1;
                    float abs = Math.abs(j2 - dataPointAtTime2.time);
                    dataPointAtTime2 = (velocityTracker1D$Strategy == VelocityTracker1D$Strategy.Lsq2 || z) ? dataPointAtTime3 : dataPointAtTime;
                    if (f5 > 100.0f || abs > 40.0f) {
                        break;
                    }
                    fArr[i3] = dataPointAtTime3.dataPoint;
                    fArr2[i3] = -f5;
                    if (i2 == 0) {
                        i2 = 20;
                    }
                    i2--;
                    i3++;
                    if (i3 >= 20) {
                        break;
                    }
                    f4 = f2;
                    z2 = z;
                } else {
                    f2 = f4;
                    z = z2;
                    i = 1;
                    break;
                }
            }
            if (i3 >= this._type) {
                int i4 = VelocityTracker1D$WhenMappings.$EnumSwitchMapping$0[velocityTracker1D$Strategy.ordinal()];
                if (i4 == i) {
                    int i5 = i3 - i;
                    float f6 = fArr2[i5];
                    int i6 = i5;
                    float f7 = f2;
                    while (i6 > 0) {
                        int i7 = i6 - 1;
                        float f8 = fArr2[i7];
                        if (f6 != f8) {
                            float f9 = (z ? -fArr[i7] : fArr[i6] - fArr[i7]) / (f6 - f8);
                            f7 += Math.abs(f9) * (f9 - (Math.signum(f7) * ((float) Math.sqrt(Math.abs(f7) * 2.0f))));
                            if (i6 == i5) {
                                f7 *= 0.5f;
                            }
                        }
                        i6--;
                        f6 = f8;
                    }
                    signum = Math.signum(f7) * ((float) Math.sqrt(Math.abs(f7) * 2.0f));
                } else {
                    if (i4 != 2) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return f2;
                    }
                    try {
                        float[] fArr3 = (float[]) this._currentValue;
                        Operation$State.polyFitLeastSquares(fArr2, fArr, i3, fArr3);
                        signum = fArr3[i];
                    } catch (IllegalArgumentException unused) {
                        signum = f2;
                    }
                }
                f3 = signum * 1000.0f;
            } else {
                f3 = f2;
            }
        }
        if (f3 == f2 || Float.isNaN(f3)) {
            return f2;
        }
        if (f3 <= f2) {
            float f10 = -f;
            if (f3 < f10) {
                return f10;
            }
        } else if (f3 > f) {
            f3 = f;
        }
        return f3;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                StringBuilder sb = new StringBuilder(64);
                int i = this._type;
                if (i != 0) {
                    if (i != 1) {
                        sb.append('{');
                        String str = (String) this._currentName;
                        if (str != null) {
                            sb.append('\"');
                            int[] iArr = CharTypes.sOutputEscapes128;
                            int length = iArr.length;
                            int length2 = str.length();
                            while (r2 < length2) {
                                char charAt = str.charAt(r2);
                                if (charAt >= length || iArr[charAt] == 0) {
                                    sb.append(charAt);
                                } else {
                                    sb.append('\\');
                                    int i2 = iArr[charAt];
                                    if (i2 < 0) {
                                        sb.append("u00");
                                        char[] cArr = CharTypes.HC;
                                        sb.append(cArr[charAt >> 4]);
                                        sb.append(cArr[charAt & 15]);
                                    } else {
                                        sb.append((char) i2);
                                    }
                                }
                                r2++;
                            }
                            sb.append('\"');
                        } else {
                            sb.append('?');
                        }
                        sb.append('}');
                    } else {
                        sb.append('[');
                        int i3 = this._index;
                        sb.append(i3 >= 0 ? i3 : 0);
                        sb.append(']');
                    }
                } else {
                    sb.append("/");
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public String typeDesc() {
        int i = this._type;
        return i != 0 ? i != 1 ? i != 2 ? "?" : "Object" : "Array" : "root";
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int writeFieldName(java.lang.String r6) {
        /*
            r5 = this;
            int r0 = r5._type
            r1 = 2
            if (r0 != r1) goto L7e
            boolean r0 = r5._gotName
            if (r0 == 0) goto Lb
            goto L7e
        Lb:
            r0 = 1
            r5._gotName = r0
            r5._currentName = r6
            java.lang.Object r1 = r5._dups
            coil3.ImageLoader$Builder r1 = (coil3.ImageLoader$Builder) r1
            r2 = 0
            if (r1 == 0) goto L78
            java.lang.Object r3 = r1.defaults
            java.lang.String r3 = (java.lang.String) r3
            if (r3 != 0) goto L21
            r1.defaults = r6
        L1f:
            r3 = r2
            goto L63
        L21:
            boolean r3 = r6.equals(r3)
            if (r3 == 0) goto L29
        L27:
            r3 = r0
            goto L63
        L29:
            java.lang.Object r3 = r1.componentRegistry
            java.lang.String r3 = (java.lang.String) r3
            if (r3 != 0) goto L32
            r1.componentRegistry = r6
            goto L1f
        L32:
            boolean r3 = r6.equals(r3)
            if (r3 == 0) goto L39
            goto L27
        L39:
            java.lang.Object r3 = r1.extras
            java.util.HashSet r3 = (java.util.HashSet) r3
            if (r3 != 0) goto L5a
            java.util.HashSet r3 = new java.util.HashSet
            r4 = 16
            r3.<init>(r4)
            r1.extras = r3
            java.lang.Object r4 = r1.defaults
            java.lang.String r4 = (java.lang.String) r4
            r3.add(r4)
            java.lang.Object r3 = r1.extras
            java.util.HashSet r3 = (java.util.HashSet) r3
            java.lang.Object r4 = r1.componentRegistry
            java.lang.String r4 = (java.lang.String) r4
            r3.add(r4)
        L5a:
            java.lang.Object r3 = r1.extras
            java.util.HashSet r3 = (java.util.HashSet) r3
            boolean r3 = r3.add(r6)
            r3 = r3 ^ r0
        L63:
            if (r3 != 0) goto L66
            goto L78
        L66:
            java.lang.Object r5 = r1.application
            com.fasterxml.jackson.core.json.JsonGeneratorImpl r5 = (com.fasterxml.jackson.core.json.JsonGeneratorImpl) r5
            com.fasterxml.jackson.core.JsonGenerationException r0 = new com.fasterxml.jackson.core.JsonGenerationException
            java.lang.String r1 = "Duplicate field '"
            java.lang.String r2 = "'"
            java.lang.String r6 = androidx.compose.animation.core.Animation.CC.m(r1, r6, r2)
            r0.<init>(r6, r5)
            throw r0
        L78:
            int r5 = r5._index
            if (r5 >= 0) goto L7d
            return r2
        L7d:
            return r0
        L7e:
            r5 = 4
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.JsonWriteContext.writeFieldName(java.lang.String):int");
    }

    public JsonWriteContext(int i, JsonWriteContext jsonWriteContext, ImageLoader$Builder imageLoader$Builder, Object obj) {
        this.$r8$classId = 0;
        this._type = i;
        this._parent = jsonWriteContext;
        this._dups = imageLoader$Builder;
        this._index = -1;
        this._currentValue = obj;
    }

    public JsonWriteContext(int i, JsonWriteContext jsonWriteContext, ImageLoader$Builder imageLoader$Builder) {
        this.$r8$classId = 0;
        this._type = i;
        this._parent = jsonWriteContext;
        this._dups = imageLoader$Builder;
        this._index = -1;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public JsonWriteContext() {
        this(true, VelocityTracker1D$Strategy.Impulse);
        this.$r8$classId = 1;
    }
}
