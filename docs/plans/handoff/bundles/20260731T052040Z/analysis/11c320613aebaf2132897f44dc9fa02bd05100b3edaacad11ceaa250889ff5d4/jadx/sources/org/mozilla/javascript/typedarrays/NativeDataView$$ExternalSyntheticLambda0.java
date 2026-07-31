package org.mozilla.javascript.typedarrays;

import org.mozilla.javascript.Constructable;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Scriptable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NativeDataView$$ExternalSyntheticLambda0 implements Constructable {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ NativeDataView$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // org.mozilla.javascript.Constructable
    public final Scriptable construct(Context context, Scriptable scriptable, Object[] objArr) {
        NativeDataView js_constructor;
        NativeArrayBuffer js_constructor2;
        Scriptable lambda$init$0;
        Scriptable lambda$init$02;
        Scriptable lambda$init$03;
        Scriptable lambda$init$04;
        Scriptable lambda$init$05;
        Scriptable lambda$init$06;
        Scriptable lambda$init$07;
        Scriptable lambda$init$08;
        Scriptable lambda$init$09;
        switch (this.$r8$classId) {
            case 0:
                js_constructor = NativeDataView.js_constructor(context, scriptable, objArr);
                return js_constructor;
            case 1:
                js_constructor2 = NativeArrayBuffer.js_constructor(context, scriptable, objArr);
                return js_constructor2;
            case 2:
                lambda$init$0 = NativeFloat32Array.lambda$init$0(context, scriptable, objArr);
                return lambda$init$0;
            case 3:
                lambda$init$02 = NativeFloat64Array.lambda$init$0(context, scriptable, objArr);
                return lambda$init$02;
            case 4:
                lambda$init$03 = NativeInt16Array.lambda$init$0(context, scriptable, objArr);
                return lambda$init$03;
            case 5:
                lambda$init$04 = NativeInt32Array.lambda$init$0(context, scriptable, objArr);
                return lambda$init$04;
            case 6:
                lambda$init$05 = NativeInt8Array.lambda$init$0(context, scriptable, objArr);
                return lambda$init$05;
            case 7:
                lambda$init$06 = NativeUint16Array.lambda$init$0(context, scriptable, objArr);
                return lambda$init$06;
            case 8:
                lambda$init$07 = NativeUint32Array.lambda$init$0(context, scriptable, objArr);
                return lambda$init$07;
            case 9:
                lambda$init$08 = NativeUint8Array.lambda$init$0(context, scriptable, objArr);
                return lambda$init$08;
            default:
                lambda$init$09 = NativeUint8ClampedArray.lambda$init$0(context, scriptable, objArr);
                return lambda$init$09;
        }
    }
}
