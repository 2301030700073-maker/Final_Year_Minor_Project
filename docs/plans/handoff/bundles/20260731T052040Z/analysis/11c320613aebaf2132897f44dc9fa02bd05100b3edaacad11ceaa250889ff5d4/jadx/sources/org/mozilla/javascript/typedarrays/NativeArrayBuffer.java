package org.mozilla.javascript.typedarrays;

import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.mozilla.javascript.AbstractEcmaObjectOperations;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.LambdaConstructor;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Undefined;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class NativeArrayBuffer extends ScriptableObject {
    public static final String CLASS_NAME = "ArrayBuffer";
    private static final byte[] EMPTY_BUF = new byte[0];
    private static final long serialVersionUID = 3110411773054879549L;
    final byte[] buffer;

    public NativeArrayBuffer(double d) {
        if (d >= 2.147483647E9d) {
            throw ScriptRuntime.rangeError("length parameter (" + d + ") is too large ");
        }
        if (d == Double.NEGATIVE_INFINITY) {
            throw ScriptRuntime.rangeError("Negative array length " + d);
        }
        if (d <= -1.0d) {
            throw ScriptRuntime.rangeError("Negative array length " + d);
        }
        int int32 = ScriptRuntime.toInt32(d);
        if (int32 < 0) {
            throw ScriptRuntime.rangeError("Negative array length " + d);
        }
        if (int32 == 0) {
            this.buffer = EMPTY_BUF;
        } else {
            this.buffer = new byte[int32];
        }
    }

    private static NativeArrayBuffer getSelf(Scriptable scriptable) {
        return (NativeArrayBuffer) LambdaConstructor.convertThisObject(scriptable, NativeArrayBuffer.class);
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        LambdaConstructor lambdaConstructor = new LambdaConstructor(scriptable, CLASS_NAME, 1, 2, new NativeDataView$$ExternalSyntheticLambda0(1));
        lambdaConstructor.setPrototypePropertyAttributes(7);
        lambdaConstructor.defineConstructorMethod(scriptable, "isView", 1, new NativeDataView$$ExternalSyntheticLambda1(1), 2, 3);
        lambdaConstructor.definePrototypeMethod(scriptable, "slice", 2, new NativeArrayBuffer$$ExternalSyntheticLambda2(lambdaConstructor, 0), 2, 3);
        lambdaConstructor.definePrototypeProperty(context, "byteLength", new Nodes$$ExternalSyntheticLambda0(12), 3);
        ScriptableObject.defineProperty(scriptable, CLASS_NAME, lambdaConstructor, 2);
        if (z) {
            lambdaConstructor.sealObject();
        }
    }

    private static boolean isArg(Object[] objArr, int i) {
        return objArr.length > i && !Undefined.instance.equals(objArr[i]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object js_byteLength(Scriptable scriptable) {
        return Integer.valueOf(getSelf(scriptable).getLength());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static NativeArrayBuffer js_constructor(Context context, Scriptable scriptable, Object[] objArr) {
        return new NativeArrayBuffer(isArg(objArr, 0) ? ScriptRuntime.toNumber(objArr[0]) : 0.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Boolean js_isView(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        boolean z = false;
        if (isArg(objArr, 0) && (objArr[0] instanceof NativeArrayBufferView)) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    private static NativeArrayBuffer js_slice(Context context, Scriptable scriptable, Scriptable scriptable2, LambdaConstructor lambdaConstructor, Object[] objArr) {
        NativeArrayBuffer self = getSelf(scriptable2);
        double number = isArg(objArr, 0) ? ScriptRuntime.toNumber(objArr[0]) : 0.0d;
        double number2 = isArg(objArr, 1) ? ScriptRuntime.toNumber(objArr[1]) : self.getLength();
        double length = self.getLength();
        if (number2 < 0.0d) {
            number2 += self.getLength();
        }
        int int32 = ScriptRuntime.toInt32(Math.max(0.0d, Math.min(length, number2)));
        double d = int32;
        if (number < 0.0d) {
            number += self.getLength();
        }
        int int322 = ScriptRuntime.toInt32(Math.min(d, Math.max(0.0d, number)));
        int i = int32 - int322;
        Scriptable construct = AbstractEcmaObjectOperations.speciesConstructor(context, scriptable2, lambdaConstructor).construct(context, scriptable, new Object[]{Integer.valueOf(i)});
        if (!(construct instanceof NativeArrayBuffer)) {
            throw ScriptRuntime.typeErrorById("msg.species.invalid.ctor", new Object[0]);
        }
        NativeArrayBuffer nativeArrayBuffer = (NativeArrayBuffer) construct;
        if (nativeArrayBuffer == self) {
            throw ScriptRuntime.typeErrorById("msg.arraybuf.same", new Object[0]);
        }
        int length2 = nativeArrayBuffer.getLength();
        if (length2 < i) {
            throw ScriptRuntime.typeErrorById("msg.arraybuf.smaller.len", Integer.valueOf(i), Integer.valueOf(length2));
        }
        System.arraycopy(self.buffer, int322, nativeArrayBuffer.buffer, 0, i);
        return nativeArrayBuffer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$init$0(LambdaConstructor lambdaConstructor, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return js_slice(context, scriptable, scriptable2, lambdaConstructor, objArr);
    }

    public byte[] getBuffer() {
        return this.buffer;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return CLASS_NAME;
    }

    public int getLength() {
        return this.buffer.length;
    }

    public NativeArrayBuffer slice(double d, double d2) {
        double length = this.buffer.length;
        if (d2 < 0.0d) {
            d2 += r0.length;
        }
        int int32 = ScriptRuntime.toInt32(Math.max(0.0d, Math.min(length, d2)));
        double d3 = int32;
        if (d < 0.0d) {
            d += this.buffer.length;
        }
        int int322 = ScriptRuntime.toInt32(Math.min(d3, Math.max(0.0d, d)));
        int i = int32 - int322;
        NativeArrayBuffer nativeArrayBuffer = new NativeArrayBuffer(i);
        System.arraycopy(this.buffer, int322, nativeArrayBuffer.buffer, 0, i);
        return nativeArrayBuffer;
    }

    public NativeArrayBuffer() {
        this.buffer = EMPTY_BUF;
    }
}
