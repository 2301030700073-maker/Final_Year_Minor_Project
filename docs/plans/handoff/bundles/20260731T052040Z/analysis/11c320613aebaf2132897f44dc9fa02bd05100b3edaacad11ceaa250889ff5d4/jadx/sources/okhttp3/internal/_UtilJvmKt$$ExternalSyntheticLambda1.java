package okhttp3.internal;

import java.io.FileNotFoundException;
import java.io.IOException;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.typedarrays.NativeArrayBuffer;
import org.mozilla.javascript.typedarrays.NativeFloat32Array;
import org.mozilla.javascript.typedarrays.NativeFloat64Array;
import org.mozilla.javascript.typedarrays.NativeInt16Array;
import org.mozilla.javascript.typedarrays.NativeInt32Array;
import org.mozilla.javascript.typedarrays.NativeTypedArrayView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class _UtilJvmKt$$ExternalSyntheticLambda1 implements NativeTypedArrayView.TypedArrayConstructable, NativeTypedArrayView.RealThis {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ _UtilJvmKt$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalStateException((str + obj + obj2 + obj3 + obj4).toString());
    }

    public static /* synthetic */ void m$1(int i, String str) {
        throw new IllegalStateException((str + i).toString());
    }

    public static /* synthetic */ void m$2(int i, String str) {
        throw new IllegalStateException(str + i);
    }

    public static /* synthetic */ void m$3(Object obj, String str) {
        throw new IOException(str + obj);
    }

    @Override // org.mozilla.javascript.typedarrays.NativeTypedArrayView.TypedArrayConstructable
    public NativeTypedArrayView construct(NativeArrayBuffer nativeArrayBuffer, int i, int i2) {
        switch (this.$r8$classId) {
            case 23:
                return new NativeFloat32Array(nativeArrayBuffer, i, i2);
            case 24:
            case 26:
            default:
                return new NativeInt32Array(nativeArrayBuffer, i, i2);
            case 25:
                return new NativeFloat64Array(nativeArrayBuffer, i, i2);
            case 27:
                return new NativeInt16Array(nativeArrayBuffer, i, i2);
        }
    }

    @Override // org.mozilla.javascript.typedarrays.NativeTypedArrayView.RealThis
    public NativeTypedArrayView realThis(Scriptable scriptable) {
        NativeFloat32Array realThis;
        NativeFloat64Array realThis2;
        NativeInt16Array realThis3;
        switch (this.$r8$classId) {
            case 24:
                realThis = NativeFloat32Array.realThis(scriptable);
                return realThis;
            case 25:
            default:
                realThis3 = NativeInt16Array.realThis(scriptable);
                return realThis3;
            case 26:
                realThis2 = NativeFloat64Array.realThis(scriptable);
                return realThis2;
        }
    }

    public static /* synthetic */ void m$2() {
        throw new ClassCastException();
    }

    public static /* synthetic */ void m$3(String str) {
        throw new IOException(str);
    }

    public static /* synthetic */ void m$2(Object obj, String str) {
        throw new FileNotFoundException(str + obj);
    }

    public static /* synthetic */ void m$2(String str) {
        throw new IllegalStateException(str);
    }

    public static /* synthetic */ void m$1() {
        throw new IllegalArgumentException();
    }

    public static /* synthetic */ void m$1(Object obj) {
        throw new IllegalArgumentException(obj.toString());
    }

    public static /* synthetic */ void m$1(Object obj, String str) {
        throw new IOException(str + obj);
    }

    public static /* synthetic */ void m$1(String str) {
        throw new IllegalArgumentException(str);
    }

    public static /* synthetic */ void m(int i, String str) {
        throw new IllegalStateException((str + i).toString());
    }

    public static /* synthetic */ void m(Object obj) {
        throw new IllegalStateException(obj.toString());
    }

    public static /* synthetic */ void m(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void m(Object obj, String str, int i) {
        throw new IllegalArgumentException((str + obj + ((char) i)).toString());
    }

    public static /* synthetic */ void m(String str) {
        throw new UnsupportedOperationException(str);
    }

    public static /* synthetic */ void m() {
        throw new AssertionError();
    }

    public static /* synthetic */ void m(Throwable th) {
        throw new RuntimeException(th);
    }
}
