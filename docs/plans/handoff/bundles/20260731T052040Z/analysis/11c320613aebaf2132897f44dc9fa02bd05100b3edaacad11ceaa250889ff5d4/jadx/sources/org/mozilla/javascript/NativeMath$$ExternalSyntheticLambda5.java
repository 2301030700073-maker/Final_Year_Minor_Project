package org.mozilla.javascript;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NativeMath$$ExternalSyntheticLambda5 implements Callable {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ NativeMath$$ExternalSyntheticLambda5(int i) {
        this.$r8$classId = i;
    }

    @Override // org.mozilla.javascript.Callable
    public final Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object expm1;
        Object floor;
        Object fround;
        Object hypot;
        Object imul;
        Object revocable;
        Object apply;
        Object has;
        Object isExtensible;
        Scriptable ownKeys;
        Object preventExtensions;
        Object obj;
        Object prototypeOf;
        Scriptable construct;
        Object defineProperty;
        Object deleteProperty;
        Object obj2;
        Scriptable ownPropertyDescriptor;
        Scriptable prototypeOf2;
        Object parse;
        Object stringify;
        Object lambda$static$0;
        Object lambda$static$02;
        Object doCatch;
        Object resolve;
        Object reject;
        Object all;
        Object allSettled;
        Object race;
        Object any;
        switch (this.$r8$classId) {
            case 0:
                expm1 = NativeMath.expm1(context, scriptable, scriptable2, objArr);
                return expm1;
            case 1:
                floor = NativeMath.floor(context, scriptable, scriptable2, objArr);
                return floor;
            case 2:
                fround = NativeMath.fround(context, scriptable, scriptable2, objArr);
                return fround;
            case 3:
                hypot = NativeMath.hypot(context, scriptable, scriptable2, objArr);
                return hypot;
            case 4:
                imul = NativeMath.imul(context, scriptable, scriptable2, objArr);
                return imul;
            case 5:
                revocable = NativeProxy.revocable(context, scriptable, scriptable2, objArr);
                return revocable;
            case 6:
                apply = NativeReflect.apply(context, scriptable, scriptable2, objArr);
                return apply;
            case 7:
                has = NativeReflect.has(context, scriptable, scriptable2, objArr);
                return has;
            case 8:
                isExtensible = NativeReflect.isExtensible(context, scriptable, scriptable2, objArr);
                return isExtensible;
            case 9:
                ownKeys = NativeReflect.ownKeys(context, scriptable, scriptable2, objArr);
                return ownKeys;
            case 10:
                preventExtensions = NativeReflect.preventExtensions(context, scriptable, scriptable2, objArr);
                return preventExtensions;
            case 11:
                obj = NativeReflect.set(context, scriptable, scriptable2, objArr);
                return obj;
            case 12:
                prototypeOf = NativeReflect.setPrototypeOf(context, scriptable, scriptable2, objArr);
                return prototypeOf;
            case 13:
                construct = NativeReflect.construct(context, scriptable, scriptable2, objArr);
                return construct;
            case 14:
                defineProperty = NativeReflect.defineProperty(context, scriptable, scriptable2, objArr);
                return defineProperty;
            case 15:
                deleteProperty = NativeReflect.deleteProperty(context, scriptable, scriptable2, objArr);
                return deleteProperty;
            case 16:
                obj2 = NativeReflect.get(context, scriptable, scriptable2, objArr);
                return obj2;
            case 17:
                ownPropertyDescriptor = NativeReflect.getOwnPropertyDescriptor(context, scriptable, scriptable2, objArr);
                return ownPropertyDescriptor;
            case 18:
                prototypeOf2 = NativeReflect.getPrototypeOf(context, scriptable, scriptable2, objArr);
                return prototypeOf2;
            case 19:
                parse = NativeJSON.parse(context, scriptable, scriptable2, objArr);
                return parse;
            case 20:
                stringify = NativeJSON.stringify(context, scriptable, scriptable2, objArr);
                return stringify;
            case 21:
                lambda$static$0 = NativeJavaMap.lambda$static$0(context, scriptable, scriptable2, objArr);
                return lambda$static$0;
            case 22:
                lambda$static$02 = NativeJavaObject.lambda$static$0(context, scriptable, scriptable2, objArr);
                return lambda$static$02;
            case 23:
                doCatch = NativePromise.doCatch(context, scriptable, scriptable2, objArr);
                return doCatch;
            case 24:
                resolve = NativePromise.resolve(context, scriptable, scriptable2, objArr);
                return resolve;
            case 25:
                reject = NativePromise.reject(context, scriptable, scriptable2, objArr);
                return reject;
            case 26:
                all = NativePromise.all(context, scriptable, scriptable2, objArr);
                return all;
            case 27:
                allSettled = NativePromise.allSettled(context, scriptable, scriptable2, objArr);
                return allSettled;
            case 28:
                race = NativePromise.race(context, scriptable, scriptable2, objArr);
                return race;
            default:
                any = NativePromise.any(context, scriptable, scriptable2, objArr);
                return any;
        }
    }
}
