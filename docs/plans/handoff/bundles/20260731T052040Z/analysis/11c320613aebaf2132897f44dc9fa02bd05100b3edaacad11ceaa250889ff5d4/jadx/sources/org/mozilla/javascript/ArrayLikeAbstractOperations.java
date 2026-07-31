package org.mozilla.javascript;

import java.io.Serializable;
import java.util.Comparator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ArrayLikeAbstractOperations {
    private static final Comparator<Object> STRING_COMPARATOR = new StringLikeComparator();
    private static final Comparator<Object> DEFAULT_COMPARATOR = new ElementComparator();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public enum IterativeOperation {
        EVERY,
        FILTER,
        FOR_EACH,
        MAP,
        SOME,
        FIND,
        FIND_INDEX,
        FIND_LAST,
        FIND_LAST_INDEX
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public enum ReduceOperation {
        REDUCE,
        REDUCE_RIGHT
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class StringLikeComparator implements Comparator<Object>, Serializable {
        private static final long serialVersionUID = 5299017659728190979L;

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ScriptRuntime.toString(obj).compareTo(ScriptRuntime.toString(obj2));
        }
    }

    public static void defineElem(Context context, Scriptable scriptable, long j, Object obj) {
        if (j > 2147483647L) {
            scriptable.put(Long.toString(j), scriptable, obj);
        } else {
            scriptable.put((int) j, scriptable, obj);
        }
    }

    public static Function getCallbackArg(Context context, Object obj) {
        RegExpProxy regExpProxy;
        if (!(obj instanceof Function)) {
            throw ScriptRuntime.notFunctionError(obj);
        }
        Function function = (Function) obj;
        if (context.getLanguageVersion() < 200 || (regExpProxy = ScriptRuntime.getRegExpProxy(context)) == null || !regExpProxy.isRegExp(function)) {
            return function;
        }
        throw ScriptRuntime.notFunctionError(obj);
    }

    public static Object getRawElem(Scriptable scriptable, long j) {
        return j > 2147483647L ? ScriptableObject.getProperty(scriptable, Long.toString(j)) : ScriptableObject.getProperty(scriptable, (int) j);
    }

    public static Comparator<Object> getSortComparator(Context context, Scriptable scriptable, Object[] objArr) {
        return (objArr.length <= 0 || Undefined.instance == objArr[0]) ? DEFAULT_COMPARATOR : getSortComparatorFromArguments(context, scriptable, objArr);
    }

    public static ElementComparator getSortComparatorFromArguments(final Context context, final Scriptable scriptable, Object[] objArr) {
        final Callable valueFunctionAndThis = ScriptRuntime.getValueFunctionAndThis(objArr[0], context);
        final Scriptable lastStoredScriptable = ScriptRuntime.lastStoredScriptable(context);
        final Object[] objArr2 = new Object[2];
        return new ElementComparator(new Comparator<Object>() { // from class: org.mozilla.javascript.ArrayLikeAbstractOperations.1
            @Override // java.util.Comparator
            public int compare(Object obj, Object obj2) {
                Object[] objArr3 = objArr2;
                objArr3[0] = obj;
                objArr3[1] = obj2;
                int compare = Double.compare(ScriptRuntime.toNumber(valueFunctionAndThis.call(context, scriptable, lastStoredScriptable, objArr3)), 0.0d);
                if (compare < 0) {
                    return -1;
                }
                return compare > 0 ? 1 : 0;
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:94:0x0115, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object iterativeMethod(org.mozilla.javascript.Context r22, org.mozilla.javascript.IdFunctionObject r23, org.mozilla.javascript.ArrayLikeAbstractOperations.IterativeOperation r24, org.mozilla.javascript.Scriptable r25, org.mozilla.javascript.Scriptable r26, java.lang.Object[] r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ArrayLikeAbstractOperations.iterativeMethod(org.mozilla.javascript.Context, org.mozilla.javascript.IdFunctionObject, org.mozilla.javascript.ArrayLikeAbstractOperations$IterativeOperation, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[], boolean):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object reduceMethod(Context context, ReduceOperation reduceOperation, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        long lengthProperty = NativeArray.getLengthProperty(context, object);
        Object obj = objArr.length > 0 ? objArr[0] : Undefined.instance;
        if (obj == null || !(obj instanceof Function)) {
            throw ScriptRuntime.notFunctionError(obj);
        }
        Function function = (Function) obj;
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(function);
        boolean z = true;
        Object[] objArr2 = reduceOperation == ReduceOperation.REDUCE;
        Object obj2 = objArr.length > 1 ? objArr[1] : Scriptable.NOT_FOUND;
        long j = 0;
        while (j < lengthProperty) {
            long j2 = objArr2 != false ? j : (lengthProperty - 1) - j;
            boolean z2 = z;
            Object rawElem = getRawElem(object, j2);
            Object obj3 = Scriptable.NOT_FOUND;
            if (rawElem != obj3) {
                if (obj2 == obj3) {
                    obj2 = rawElem;
                } else {
                    Long valueOf = Long.valueOf(j2);
                    Object[] objArr3 = new Object[4];
                    objArr3[0] = obj2;
                    objArr3[z2 ? 1 : 0] = rawElem;
                    objArr3[2] = valueOf;
                    objArr3[3] = object;
                    obj2 = function.call(context, topLevelScope, topLevelScope, objArr3);
                }
            }
            j++;
            z = z2 ? 1 : 0;
        }
        if (obj2 != Scriptable.NOT_FOUND) {
            return obj2;
        }
        throw ScriptRuntime.typeErrorById("msg.empty.array.reduce", new Object[0]);
    }

    public static long toSliceIndex(double d, long j) {
        if (d >= 0.0d) {
            return d > ((double) j) ? j : (long) d;
        }
        double d2 = d + j;
        if (d2 < 0.0d) {
            return 0L;
        }
        return (long) d2;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class ElementComparator implements Comparator<Object>, Serializable {
        private static final long serialVersionUID = -1189948017688708858L;
        private final Comparator<Object> child;

        public ElementComparator() {
            this.child = ArrayLikeAbstractOperations.STRING_COMPARATOR;
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            Object obj3 = Undefined.instance;
            if (obj == obj3) {
                if (obj2 == obj3) {
                    return 0;
                }
                return obj2 == Scriptable.NOT_FOUND ? -1 : 1;
            }
            Object obj4 = Scriptable.NOT_FOUND;
            if (obj == obj4) {
                return obj2 == obj4 ? 0 : 1;
            }
            if (obj2 == obj4 || obj2 == obj3) {
                return -1;
            }
            return this.child.compare(obj, obj2);
        }

        public ElementComparator(Comparator<Object> comparator) {
            this.child = comparator;
        }
    }

    public static Object iterativeMethod(Context context, IdFunctionObject idFunctionObject, IterativeOperation iterativeOperation, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return iterativeMethod(context, idFunctionObject, iterativeOperation, scriptable, scriptable2, objArr, false);
    }

    public static Object iterativeMethod(Context context, IterativeOperation iterativeOperation, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return iterativeMethod(context, null, iterativeOperation, scriptable, scriptable2, objArr, true);
    }
}
