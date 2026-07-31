package org.mozilla.javascript.typedarrays;

import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.LambdaConstructor;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Undefined;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class NativeDataView extends NativeArrayBufferView {
    public static final String CLASS_NAME = "DataView";
    private static final long serialVersionUID = 1427967607557438968L;

    public NativeDataView() {
    }

    private static int determinePos(Object[] objArr) {
        if (!NativeArrayBufferView.isArg(objArr, 0)) {
            return 0;
        }
        double number = ScriptRuntime.toNumber(objArr[0]);
        if (Double.isInfinite(number)) {
            throw ScriptRuntime.rangeError("offset out of range");
        }
        return ScriptRuntime.toInt32(number);
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        LambdaConstructor lambdaConstructor = new LambdaConstructor(scriptable, CLASS_NAME, 1, 2, new NativeDataView$$ExternalSyntheticLambda0(0));
        lambdaConstructor.setPrototypePropertyAttributes(7);
        lambdaConstructor.definePrototypeProperty(context, "buffer", new Nodes$$ExternalSyntheticLambda0(13), 3);
        lambdaConstructor.definePrototypeProperty(context, "byteLength", new Nodes$$ExternalSyntheticLambda0(14), 3);
        lambdaConstructor.definePrototypeProperty(context, "byteOffset", new Nodes$$ExternalSyntheticLambda0(15), 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "getFloat32", 1, new NativeDataView$$ExternalSyntheticLambda1(3), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "getFloat64", 1, new NativeDataView$$ExternalSyntheticLambda1(4), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "getInt8", 1, new NativeDataView$$ExternalSyntheticLambda1(5), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "getInt16", 1, new NativeDataView$$ExternalSyntheticLambda1(6), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "getInt32", 1, new NativeDataView$$ExternalSyntheticLambda1(7), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "getUint8", 1, new NativeDataView$$ExternalSyntheticLambda1(8), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "getUint16", 1, new NativeDataView$$ExternalSyntheticLambda1(0), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "getUint32", 1, new NativeDataView$$ExternalSyntheticLambda1(9), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "setFloat32", 2, new NativeDataView$$ExternalSyntheticLambda1(10), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "setFloat64", 2, new NativeDataView$$ExternalSyntheticLambda1(11), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "setInt8", 2, new NativeDataView$$ExternalSyntheticLambda1(12), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "setInt16", 2, new NativeDataView$$ExternalSyntheticLambda1(13), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "setInt32", 2, new NativeDataView$$ExternalSyntheticLambda1(14), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "setUint8", 2, new NativeDataView$$ExternalSyntheticLambda1(15), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "setUint16", 2, new NativeDataView$$ExternalSyntheticLambda1(16), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "setUint32", 2, new NativeDataView$$ExternalSyntheticLambda1(2), 2, 3);
        ScriptableObject.defineProperty(scriptable, CLASS_NAME, lambdaConstructor, 2);
        if (z) {
            lambdaConstructor.sealObject();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static NativeDataView js_constructor(Context context, Scriptable scriptable, Object[] objArr) {
        int length;
        int i = 0;
        if (NativeArrayBufferView.isArg(objArr, 0)) {
            Object obj = objArr[0];
            if (obj instanceof NativeArrayBuffer) {
                NativeArrayBuffer nativeArrayBuffer = (NativeArrayBuffer) obj;
                if (NativeArrayBufferView.isArg(objArr, 1)) {
                    double number = ScriptRuntime.toNumber(objArr[1]);
                    if (Double.isInfinite(number)) {
                        throw ScriptRuntime.rangeError("offset out of range");
                    }
                    i = ScriptRuntime.toInt32(number);
                }
                if (NativeArrayBufferView.isArg(objArr, 2)) {
                    double number2 = ScriptRuntime.toNumber(objArr[2]);
                    if (Double.isInfinite(number2)) {
                        throw ScriptRuntime.rangeError("offset out of range");
                    }
                    length = ScriptRuntime.toInt32(number2);
                } else {
                    length = nativeArrayBuffer.getLength() - i;
                }
                if (length < 0) {
                    throw ScriptRuntime.rangeError("length out of range");
                }
                if (i < 0 || i + length > nativeArrayBuffer.getLength()) {
                    throw ScriptRuntime.rangeError("offset out of range");
                }
                return new NativeDataView(nativeArrayBuffer, i, length);
            }
        }
        throw ScriptRuntime.constructError("TypeError", "Missing parameters");
    }

    private Object js_getFloat(int i, Object[] objArr) {
        int determinePos = determinePos(objArr);
        rangeCheck(determinePos, i);
        boolean z = NativeArrayBufferView.isArg(objArr, 1) && i > 1 && ScriptRuntime.toBoolean(objArr[1]);
        if (i == 4) {
            return ByteIo.readFloat32(this.arrayBuffer.buffer, this.offset + determinePos, z);
        }
        if (i == 8) {
            return ByteIo.readFloat64(this.arrayBuffer.buffer, this.offset + determinePos, z);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m();
        return null;
    }

    private Object js_getInt(int i, boolean z, Object[] objArr) {
        int determinePos = determinePos(objArr);
        rangeCheck(determinePos, i);
        boolean z2 = NativeArrayBufferView.isArg(objArr, 1) && i > 1 && ScriptRuntime.toBoolean(objArr[1]);
        if (i == 1) {
            NativeArrayBuffer nativeArrayBuffer = this.arrayBuffer;
            return z ? ByteIo.readInt8(nativeArrayBuffer.buffer, this.offset + determinePos) : ByteIo.readUint8(nativeArrayBuffer.buffer, this.offset + determinePos);
        }
        if (i == 2) {
            NativeArrayBuffer nativeArrayBuffer2 = this.arrayBuffer;
            return z ? ByteIo.readInt16(nativeArrayBuffer2.buffer, this.offset + determinePos, z2) : ByteIo.readUint16(nativeArrayBuffer2.buffer, this.offset + determinePos, z2);
        }
        if (i == 4) {
            NativeArrayBuffer nativeArrayBuffer3 = this.arrayBuffer;
            return z ? ByteIo.readInt32(nativeArrayBuffer3.buffer, this.offset + determinePos, z2) : ByteIo.readUint32(nativeArrayBuffer3.buffer, this.offset + determinePos, z2);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m();
        return null;
    }

    private void js_setFloat(int i, Object[] objArr) {
        int determinePos = determinePos(objArr);
        if (determinePos < 0) {
            throw ScriptRuntime.rangeError("offset out of range");
        }
        boolean z = NativeArrayBufferView.isArg(objArr, 2) && i > 1 && ScriptRuntime.toBoolean(objArr[2]);
        double number = objArr.length > 1 ? ScriptRuntime.toNumber(objArr[1]) : Double.NaN;
        if (determinePos + i > this.byteLength) {
            throw ScriptRuntime.rangeError("offset out of range");
        }
        if (i == 4) {
            ByteIo.writeFloat32(this.arrayBuffer.buffer, this.offset + determinePos, number, z);
        } else if (i == 8) {
            ByteIo.writeFloat64(this.arrayBuffer.buffer, this.offset + determinePos, number, z);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m();
        }
    }

    private void js_setInt(int i, boolean z, Object[] objArr) {
        int determinePos = determinePos(objArr);
        if (determinePos < 0) {
            throw ScriptRuntime.rangeError("offset out of range");
        }
        boolean z2 = NativeArrayBufferView.isArg(objArr, 2) && i > 1 && ScriptRuntime.toBoolean(objArr[2]);
        Object obj = ScriptRuntime.zeroObj;
        if (objArr.length > 1) {
            obj = objArr[1];
        }
        if (i == 1) {
            if (z) {
                int int8 = Conversions.toInt8(obj);
                if (i + determinePos > this.byteLength) {
                    throw ScriptRuntime.rangeError("offset out of range");
                }
                ByteIo.writeInt8(this.arrayBuffer.buffer, this.offset + determinePos, int8);
                return;
            }
            int uint8 = Conversions.toUint8(obj);
            if (i + determinePos > this.byteLength) {
                throw ScriptRuntime.rangeError("offset out of range");
            }
            ByteIo.writeUint8(this.arrayBuffer.buffer, this.offset + determinePos, uint8);
            return;
        }
        if (i == 2) {
            if (z) {
                int int16 = Conversions.toInt16(obj);
                if (i + determinePos > this.byteLength) {
                    throw ScriptRuntime.rangeError("offset out of range");
                }
                ByteIo.writeInt16(this.arrayBuffer.buffer, this.offset + determinePos, int16, z2);
                return;
            }
            int uint16 = Conversions.toUint16(obj);
            if (i + determinePos > this.byteLength) {
                throw ScriptRuntime.rangeError("offset out of range");
            }
            ByteIo.writeUint16(this.arrayBuffer.buffer, this.offset + determinePos, uint16, z2);
            return;
        }
        if (i != 4) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m();
            return;
        }
        if (z) {
            int int32 = Conversions.toInt32(obj);
            if (i + determinePos > this.byteLength) {
                throw ScriptRuntime.rangeError("offset out of range");
            }
            ByteIo.writeInt32(this.arrayBuffer.buffer, this.offset + determinePos, int32, z2);
            return;
        }
        long uint32 = Conversions.toUint32(obj);
        if (i + determinePos > this.byteLength) {
            throw ScriptRuntime.rangeError("offset out of range");
        }
        ByteIo.writeUint32(this.arrayBuffer.buffer, this.offset + determinePos, uint32, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$0(Scriptable scriptable) {
        return realThis(scriptable).arrayBuffer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$1(Scriptable scriptable) {
        return Integer.valueOf(realThis(scriptable).byteLength);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$10(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return realThis(scriptable2).js_getInt(4, false, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$11(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        realThis(scriptable2).js_setFloat(4, objArr);
        return Undefined.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$12(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        realThis(scriptable2).js_setFloat(8, objArr);
        return Undefined.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$13(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        realThis(scriptable2).js_setInt(1, true, objArr);
        return Undefined.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$14(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        realThis(scriptable2).js_setInt(2, true, objArr);
        return Undefined.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$15(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        realThis(scriptable2).js_setInt(4, true, objArr);
        return Undefined.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$16(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        realThis(scriptable2).js_setInt(1, false, objArr);
        return Undefined.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$17(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        realThis(scriptable2).js_setInt(2, false, objArr);
        return Undefined.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$18(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        realThis(scriptable2).js_setInt(4, false, objArr);
        return Undefined.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$2(Scriptable scriptable) {
        return Integer.valueOf(realThis(scriptable).offset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$3(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return realThis(scriptable2).js_getFloat(4, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$4(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return realThis(scriptable2).js_getFloat(8, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$5(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return realThis(scriptable2).js_getInt(1, true, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$6(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return realThis(scriptable2).js_getInt(2, true, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$7(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return realThis(scriptable2).js_getInt(4, true, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$8(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return realThis(scriptable2).js_getInt(1, false, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$9(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return realThis(scriptable2).js_getInt(2, false, objArr);
    }

    private void rangeCheck(int i, int i2) {
        if (i < 0 || i + i2 > this.byteLength) {
            throw ScriptRuntime.rangeError("offset out of range");
        }
    }

    private static NativeDataView realThis(Scriptable scriptable) {
        return (NativeDataView) LambdaConstructor.convertThisObject(scriptable, NativeDataView.class);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return CLASS_NAME;
    }

    public NativeDataView(NativeArrayBuffer nativeArrayBuffer, int i, int i2) {
        super(nativeArrayBuffer, i, i2);
    }
}
