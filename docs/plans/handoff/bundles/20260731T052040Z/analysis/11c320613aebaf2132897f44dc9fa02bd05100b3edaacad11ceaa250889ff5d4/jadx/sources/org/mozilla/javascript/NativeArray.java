package org.mozilla.javascript;

import androidx.compose.foundation.layout.Arrangement$$ExternalSyntheticLambda0;
import androidx.compose.ui.Modifier;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.TopLevel;
import org.mozilla.javascript.xml.XMLObject;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class NativeArray extends IdScriptableObject implements List {
    private static final int ConstructorId_concat = -13;
    private static final int ConstructorId_every = -17;
    private static final int ConstructorId_filter = -18;
    private static final int ConstructorId_find = -22;
    private static final int ConstructorId_findIndex = -23;
    private static final int ConstructorId_findLast = -24;
    private static final int ConstructorId_findLastIndex = -25;
    private static final int ConstructorId_forEach = -19;
    private static final int ConstructorId_from = -30;
    private static final int ConstructorId_indexOf = -15;
    private static final int ConstructorId_isArray = -28;
    private static final int ConstructorId_join = -5;
    private static final int ConstructorId_lastIndexOf = -16;
    private static final int ConstructorId_map = -20;
    private static final int ConstructorId_of = -29;
    private static final int ConstructorId_pop = -9;
    private static final int ConstructorId_push = -8;
    private static final int ConstructorId_reduce = -26;
    private static final int ConstructorId_reduceRight = -27;
    private static final int ConstructorId_reverse = -6;
    private static final int ConstructorId_shift = -10;
    private static final int ConstructorId_slice = -14;
    private static final int ConstructorId_some = -21;
    private static final int ConstructorId_sort = -7;
    private static final int ConstructorId_splice = -12;
    private static final int ConstructorId_unshift = -11;
    private static final int DEFAULT_INITIAL_CAPACITY = 10;
    private static final double GROW_FACTOR = 1.5d;
    private static final int Id_at = 34;
    private static final int Id_concat = 13;
    private static final int Id_constructor = 1;
    private static final int Id_copyWithin = 33;
    private static final int Id_entries = 31;
    private static final int Id_every = 17;
    private static final int Id_fill = 28;
    private static final int Id_filter = 18;
    private static final int Id_find = 22;
    private static final int Id_findIndex = 23;
    private static final int Id_findLast = 24;
    private static final int Id_findLastIndex = 25;
    private static final int Id_flat = 35;
    private static final int Id_flatMap = 36;
    private static final int Id_forEach = 19;
    private static final int Id_includes = 32;
    private static final int Id_indexOf = 15;
    private static final int Id_join = 5;
    private static final int Id_keys = 29;
    private static final int Id_lastIndexOf = 16;
    private static final int Id_length = 1;
    private static final int Id_map = 20;
    private static final int Id_pop = 9;
    private static final int Id_push = 8;
    private static final int Id_reduce = 26;
    private static final int Id_reduceRight = 27;
    private static final int Id_reverse = 6;
    private static final int Id_shift = 10;
    private static final int Id_slice = 14;
    private static final int Id_some = 21;
    private static final int Id_sort = 7;
    private static final int Id_splice = 12;
    private static final int Id_toLocaleString = 3;
    private static final int Id_toReversed = 37;
    private static final int Id_toSorted = 38;
    private static final int Id_toSource = 4;
    private static final int Id_toSpliced = 39;
    private static final int Id_toString = 2;
    private static final int Id_unshift = 11;
    private static final int Id_values = 30;
    private static final int Id_with = 40;
    private static final int MAX_INSTANCE_ID = 1;
    private static final int MAX_PRE_GROW_SIZE = 1431655764;
    private static final int MAX_PROTOTYPE_ID = 41;
    private static final int SymbolId_unscopables = 41;
    private static final long serialVersionUID = 7331366857676127338L;
    private Object[] dense;
    private boolean denseOnly;
    private long length;
    private int lengthAttr;
    private transient int modCount;
    private static final Object ARRAY_TAG = "Array";
    private static final Long NEGATIVE_ONE = -1L;
    private static final String[] UNSCOPABLES = {"at", "copyWithin", "entries", "fill", "find", "findIndex", "findLast", "findLastIndex", "flat", "flatMap", "includes", "keys", "toReversed", "toSorted", "toSpliced", "values"};
    private static int maximumInitialCapacity = 10000;

    public NativeArray(long j) {
        this.lengthAttr = 6;
        boolean z = j <= ((long) maximumInitialCapacity);
        this.denseOnly = z;
        if (z) {
            int i = (int) j;
            Object[] objArr = new Object[i < 10 ? 10 : i];
            this.dense = objArr;
            Arrays.fill(objArr, Scriptable.NOT_FOUND);
        }
        this.length = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.mozilla.javascript.Scriptable callConstructorOrCreateArray(org.mozilla.javascript.Context r4, org.mozilla.javascript.Scriptable r5, org.mozilla.javascript.Scriptable r6, long r7, boolean r9) {
        /*
            boolean r0 = r6 instanceof org.mozilla.javascript.Constructable
            r1 = 0
            if (r0 == 0) goto L32
            if (r9 != 0) goto L13
            r2 = 0
            int r9 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r9 <= 0) goto Le
            goto L13
        Le:
            java.lang.Object[] r9 = org.mozilla.javascript.ScriptRuntime.emptyArgs     // Catch: org.mozilla.javascript.EcmaError -> L11
            goto L1d
        L11:
            r6 = move-exception
            goto L24
        L13:
            java.lang.Long r9 = java.lang.Long.valueOf(r7)     // Catch: org.mozilla.javascript.EcmaError -> L11
            r0 = 1
            java.lang.Object[] r0 = new java.lang.Object[r0]     // Catch: org.mozilla.javascript.EcmaError -> L11
            r0[r1] = r9     // Catch: org.mozilla.javascript.EcmaError -> L11
            r9 = r0
        L1d:
            org.mozilla.javascript.Constructable r6 = (org.mozilla.javascript.Constructable) r6     // Catch: org.mozilla.javascript.EcmaError -> L11
            org.mozilla.javascript.Scriptable r6 = r6.construct(r4, r5, r9)     // Catch: org.mozilla.javascript.EcmaError -> L11
            goto L33
        L24:
            java.lang.String r9 = "TypeError"
            java.lang.String r0 = r6.getName()
            boolean r9 = r9.equals(r0)
            if (r9 == 0) goto L31
            goto L32
        L31:
            throw r6
        L32:
            r6 = 0
        L33:
            if (r6 != 0) goto L42
            r2 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r6 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r6 <= 0) goto L3d
            goto L3e
        L3d:
            int r1 = (int) r7
        L3e:
            org.mozilla.javascript.Scriptable r6 = r4.newArray(r5, r1)
        L42:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.callConstructorOrCreateArray(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, long, boolean):org.mozilla.javascript.Scriptable");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkModCount(int i) {
        if (this.modCount == i) {
            return;
        }
        Arrangement$$ExternalSyntheticLambda0.m();
    }

    private static long concatSpreadArg(Context context, Scriptable scriptable, Scriptable scriptable2, long j) {
        long lengthProperty = getLengthProperty(context, scriptable2);
        long j2 = lengthProperty + j;
        if (j2 > 9.007199254740991E15d) {
            throw ScriptRuntime.typeErrorById("msg.arraylength.too.big", Long.valueOf(j2));
        }
        if (j2 <= 2147483647L && (scriptable instanceof NativeArray)) {
            NativeArray nativeArray = (NativeArray) scriptable;
            if (nativeArray.denseOnly && (scriptable2 instanceof NativeArray)) {
                NativeArray nativeArray2 = (NativeArray) scriptable2;
                if (nativeArray2.denseOnly) {
                    nativeArray.ensureCapacity((int) j2);
                    System.arraycopy(nativeArray2.dense, 0, nativeArray.dense, (int) j, (int) lengthProperty);
                    return j2;
                }
            }
        }
        long j3 = 0;
        while (j3 < lengthProperty) {
            Object rawElem = ArrayLikeAbstractOperations.getRawElem(scriptable2, j3);
            if (rawElem != Scriptable.NOT_FOUND) {
                ArrayLikeAbstractOperations.defineElem(context, scriptable, j, rawElem);
            }
            j3++;
            j++;
        }
        return j2;
    }

    private ScriptableObject defaultIndexPropertyDescriptor(Object obj) {
        Scriptable parentScope = getParentScope();
        if (parentScope != null) {
            this = parentScope;
        }
        NativeObject nativeObject = new NativeObject();
        ScriptRuntime.setBuiltinProtoAndParent(nativeObject, this, TopLevel.Builtins.Object);
        nativeObject.defineProperty(ES6Iterator.VALUE_PROPERTY, obj, 0);
        Boolean bool = Boolean.TRUE;
        nativeObject.defineProperty("writable", bool, 0);
        nativeObject.defineProperty("enumerable", bool, 0);
        nativeObject.defineProperty("configurable", bool, 0);
        return nativeObject;
    }

    private static void defineElemOrThrow(Context context, Scriptable scriptable, long j, Object obj) {
        if (j > 9.007199254740991E15d) {
            throw ScriptRuntime.typeErrorById("msg.arraylength.too.big", String.valueOf(j));
        }
        ArrayLikeAbstractOperations.defineElem(context, scriptable, j, obj);
    }

    private static void deleteElem(Scriptable scriptable, long j) {
        int i = (int) j;
        if (i == j) {
            scriptable.delete(i);
        } else {
            scriptable.delete(Long.toString(j));
        }
    }

    private static long doConcat(Context context, Scriptable scriptable, Scriptable scriptable2, Object obj, long j) {
        if (isConcatSpreadable(context, scriptable, obj)) {
            return concatSpreadArg(context, scriptable2, (Scriptable) obj, j);
        }
        ArrayLikeAbstractOperations.defineElem(context, scriptable2, j, obj);
        return j + 1;
    }

    private boolean ensureCapacity(int i) {
        if (i <= this.dense.length) {
            return true;
        }
        if (i > MAX_PRE_GROW_SIZE) {
            this.denseOnly = false;
            return false;
        }
        int max = Math.max(i, (int) (r0.length * GROW_FACTOR));
        Object[] objArr = new Object[max];
        Object[] objArr2 = this.dense;
        System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
        Arrays.fill(objArr, this.dense.length, max, Scriptable.NOT_FOUND);
        this.dense = objArr;
        return true;
    }

    private static Scriptable flat(Context context, Scriptable scriptable, Scriptable scriptable2, double d) {
        long j;
        long lengthProperty = getLengthProperty(context, scriptable2);
        Scriptable newArray = context.newArray(scriptable, 0);
        long j2 = 0;
        long j3 = 0;
        while (j2 < lengthProperty) {
            Object rawElem = ArrayLikeAbstractOperations.getRawElem(scriptable2, j2);
            if (rawElem == Scriptable.NOT_FOUND) {
                j = 1;
            } else if (d < 1.0d || !js_isArray(rawElem)) {
                j = 1;
                defineElemOrThrow(context, newArray, j3, rawElem);
                j3++;
            } else {
                Scriptable flat = flat(context, scriptable, (Scriptable) rawElem, d - 1.0d);
                long lengthProperty2 = getLengthProperty(context, flat);
                long j4 = 0;
                j = 1;
                while (j4 < lengthProperty2) {
                    defineElemOrThrow(context, newArray, j3, ArrayLikeAbstractOperations.getRawElem(flat, j4));
                    j4++;
                    j3++;
                }
            }
            j2 += j;
        }
        setLengthProperty(context, newArray, j3);
        return newArray;
    }

    private static Object getElem(Context context, Scriptable scriptable, long j) {
        Object rawElem = ArrayLikeAbstractOperations.getRawElem(scriptable, j);
        return rawElem != Scriptable.NOT_FOUND ? rawElem : Undefined.instance;
    }

    public static long getLengthProperty(Context context, Scriptable scriptable) {
        if (scriptable instanceof NativeString) {
            return ((NativeString) scriptable).getLength();
        }
        if (scriptable instanceof NativeArray) {
            return ((NativeArray) scriptable).getLength();
        }
        if (scriptable instanceof XMLObject) {
            return ((Number) ((Callable) scriptable.get("length", scriptable)).call(context, scriptable, scriptable, ScriptRuntime.emptyArgs)).longValue();
        }
        Object property = ScriptableObject.getProperty(scriptable, "length");
        if (property == Scriptable.NOT_FOUND) {
            return 0L;
        }
        double number = ScriptRuntime.toNumber(property);
        if (number > 9.007199254740991E15d) {
            return 9007199254740991L;
        }
        if (number < 0.0d) {
            return 0L;
        }
        return (long) number;
    }

    public static int getMaximumInitialCapacity() {
        return maximumInitialCapacity;
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        IdFunctionObject exportAsJSClass = new NativeArray(0L).exportAsJSClass(41, scriptable, z);
        ScriptRuntimeES6.addSymbolSpecies(context, scriptable, exportAsJSClass);
        ScriptRuntimeES6.addSymbolUnscopables(context, scriptable, exportAsJSClass);
    }

    private static boolean isConcatSpreadable(Context context, Scriptable scriptable, Object obj) {
        Object property;
        if ((obj instanceof Scriptable) && (property = ScriptableObject.getProperty((Scriptable) obj, SymbolKey.IS_CONCAT_SPREADABLE)) != Scriptable.NOT_FOUND && !Undefined.isUndefined(property)) {
            return ScriptRuntime.toBoolean(property);
        }
        if (context.getLanguageVersion() >= 200 || !ScriptRuntime.instanceOf(obj, ScriptRuntime.getExistingCtor(context, scriptable, "Array"), context)) {
            return js_isArray(obj);
        }
        return true;
    }

    private static Object jsConstructor(Context context, Scriptable scriptable, Object[] objArr) {
        if (objArr.length == 0) {
            return new NativeArray(0L);
        }
        if (context.getLanguageVersion() == 120) {
            return new NativeArray(objArr);
        }
        Object obj = objArr[0];
        if (objArr.length > 1 || !(obj instanceof Number)) {
            return new NativeArray(objArr);
        }
        long uint32 = ScriptRuntime.toUint32(obj);
        if (uint32 == ((Number) obj).doubleValue()) {
            return new NativeArray(uint32);
        }
        throw ScriptRuntime.rangeError(ScriptRuntime.getMessageById("msg.arraylength.bad", new Object[0]));
    }

    private static Object js_at(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        long lengthProperty = getLengthProperty(context, ScriptRuntime.toObject(context, scriptable, scriptable2));
        long integer = objArr.length >= 1 ? (long) ScriptRuntime.toInteger(objArr[0]) : 0L;
        if (integer < 0) {
            integer += lengthProperty;
        }
        return (integer < 0 || integer >= lengthProperty) ? Undefined.instance : getElem(context, scriptable2, integer);
    }

    private static Scriptable js_concat(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        Scriptable newArray = context.newArray(topLevelScope, 0);
        long doConcat = doConcat(context, topLevelScope, newArray, object, 0L);
        for (Object obj : objArr) {
            doConcat = doConcat(context, topLevelScope, newArray, obj, doConcat);
        }
        setLengthProperty(context, newArray, doConcat);
        return newArray;
    }

    private static Object js_copyWithin(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        long lengthProperty = getLengthProperty(context, object);
        int i = 1;
        long integer = (long) ScriptRuntime.toInteger(objArr.length >= 1 ? objArr[0] : Undefined.instance);
        long j = 0;
        long max = integer < 0 ? Math.max(integer + lengthProperty, 0L) : Math.min(integer, lengthProperty);
        long integer2 = (long) ScriptRuntime.toInteger(objArr.length >= 2 ? objArr[1] : Undefined.instance);
        long max2 = integer2 < 0 ? Math.max(integer2 + lengthProperty, 0L) : Math.min(integer2, lengthProperty);
        long integer3 = (objArr.length < 3 || Undefined.isUndefined(objArr[2])) ? lengthProperty : (long) ScriptRuntime.toInteger(objArr[2]);
        long min = Math.min((integer3 < 0 ? Math.max(integer3 + lengthProperty, 0L) : Math.min(integer3, lengthProperty)) - max2, lengthProperty - max);
        if (max2 < max) {
            long j2 = max2 + min;
            if (max < j2) {
                max2 = j2 - 1;
                max = (max + min) - 1;
                i = -1;
            }
        }
        if ((object instanceof NativeArray) && min <= 2147483647L) {
            NativeArray nativeArray = (NativeArray) object;
            if (nativeArray.denseOnly) {
                while (min > j) {
                    Object[] objArr2 = nativeArray.dense;
                    objArr2[(int) max] = objArr2[(int) max2];
                    long j3 = j;
                    long j4 = i;
                    max2 += j4;
                    max += j4;
                    min--;
                    j = j3;
                }
                return scriptable2;
            }
        }
        while (min > 0) {
            Object rawElem = ArrayLikeAbstractOperations.getRawElem(object, max2);
            if (rawElem == Scriptable.NOT_FOUND || Undefined.isUndefined(rawElem)) {
                deleteElem(object, max);
            } else {
                setElem(context, object, max, rawElem);
            }
            long j5 = i;
            max2 += j5;
            max += j5;
            min--;
        }
        return scriptable2;
    }

    private static Object js_fill(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        long lengthProperty = getLengthProperty(context, ScriptRuntime.toObject(context, scriptable, scriptable2));
        long integer = objArr.length >= 2 ? (long) ScriptRuntime.toInteger(objArr[1]) : 0L;
        long integer2 = (objArr.length < 3 || Undefined.isUndefined(objArr[2])) ? lengthProperty : (long) ScriptRuntime.toInteger(objArr[2]);
        long max = integer2 < 0 ? Math.max(lengthProperty + integer2, 0L) : Math.min(integer2, lengthProperty);
        Object obj = objArr.length > 0 ? objArr[0] : Undefined.instance;
        for (long max2 = integer < 0 ? Math.max(integer + lengthProperty, 0L) : Math.min(integer, lengthProperty); max2 < max; max2++) {
            setRawElem(context, scriptable2, max2, obj);
        }
        return scriptable2;
    }

    private static Object js_flat(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return flat(context, scriptable, ScriptRuntime.toObject(context, scriptable, scriptable2), (objArr.length < 1 || Undefined.isUndefined(objArr[0])) ? 1.0d : ScriptRuntime.toInteger(objArr[0]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Object js_flatMap(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable scriptable3;
        Scriptable scriptable4;
        Function function;
        Object obj;
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        boolean z = false;
        Function callbackArg = ArrayLikeAbstractOperations.getCallbackArg(context, objArr.length > 0 ? objArr[0] : Undefined.instance);
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(callbackArg);
        Scriptable object2 = (objArr.length < 2 || (obj = objArr[1]) == null || obj == Undefined.instance) ? topLevelScope : ScriptRuntime.toObject(context, scriptable, obj);
        long lengthProperty = getLengthProperty(context, object);
        Scriptable newArray = context.newArray(scriptable, 0);
        Object[] objArr2 = 2;
        long j = 0;
        long j2 = 0;
        while (j2 < lengthProperty) {
            boolean z2 = z;
            Object rawElem = ArrayLikeAbstractOperations.getRawElem(object, j2);
            Object[] objArr3 = objArr2;
            if (rawElem == Scriptable.NOT_FOUND) {
                scriptable3 = object2;
                scriptable4 = object;
            } else {
                Long valueOf = Long.valueOf(j2);
                Object[] objArr4 = new Object[3];
                objArr4[z2 ? 1 : 0] = rawElem;
                objArr4[1] = valueOf;
                objArr4[objArr3 == true ? 1 : 0] = object;
                Object call = callbackArg.call(context, topLevelScope, object2, objArr4);
                if (js_isArray(call)) {
                    Scriptable scriptable5 = (Scriptable) call;
                    long lengthProperty2 = getLengthProperty(context, scriptable5);
                    scriptable3 = object2;
                    scriptable4 = object;
                    long j3 = 0;
                    while (j3 < lengthProperty2) {
                        defineElemOrThrow(context, newArray, j, ArrayLikeAbstractOperations.getRawElem(scriptable5, j3));
                        j3++;
                        callbackArg = callbackArg;
                        j++;
                    }
                } else {
                    scriptable3 = object2;
                    scriptable4 = object;
                    function = callbackArg;
                    defineElemOrThrow(context, newArray, j, call);
                    j++;
                    j2++;
                    object2 = scriptable3;
                    object = scriptable4;
                    z = z2 ? 1 : 0;
                    callbackArg = function;
                    objArr2 = objArr3 == true ? 1 : 0;
                }
            }
            function = callbackArg;
            j2++;
            object2 = scriptable3;
            object = scriptable4;
            z = z2 ? 1 : 0;
            callbackArg = function;
            objArr2 = objArr3 == true ? 1 : 0;
        }
        setLengthProperty(context, newArray, j);
        return newArray;
    }

    private static Object js_from(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Function function;
        long j;
        char c = 0;
        char c2 = 1;
        Scriptable object = ScriptRuntime.toObject(scriptable, objArr.length >= 1 ? objArr[0] : Undefined.instance);
        Object obj = objArr.length >= 2 ? objArr[1] : Undefined.instance;
        Scriptable scriptable3 = Undefined.SCRIPTABLE_UNDEFINED;
        boolean isUndefined = Undefined.isUndefined(obj);
        if (isUndefined) {
            function = null;
        } else {
            if (!(obj instanceof Function)) {
                throw ScriptRuntime.typeErrorById("msg.map.function.not", new Object[0]);
            }
            function = (Function) obj;
            if (objArr.length >= 3) {
                scriptable3 = ScriptableObject.ensureScriptable(objArr[2]);
            }
        }
        Function function2 = function;
        Scriptable scriptable4 = scriptable3;
        Object property = ScriptableObject.getProperty(object, SymbolKey.ITERATOR);
        long j2 = 1;
        if (!(object instanceof NativeArray) && property != Scriptable.NOT_FOUND && !Undefined.isUndefined(property)) {
            Object callIterator = ScriptRuntime.callIterator(object, context, scriptable);
            if (!Undefined.isUndefined(callIterator)) {
                Scriptable callConstructorOrCreateArray = callConstructorOrCreateArray(context, scriptable, scriptable2, 0L, false);
                IteratorLikeIterable iteratorLikeIterable = new IteratorLikeIterable(context, scriptable, callIterator);
                try {
                    Iterator<Object> it = iteratorLikeIterable.iterator();
                    long j3 = 0;
                    while (it.hasNext()) {
                        Object next = it.next();
                        if (!isUndefined) {
                            Long valueOf = Long.valueOf(j3);
                            Object[] objArr2 = new Object[2];
                            objArr2[c] = next;
                            objArr2[c2] = valueOf;
                            next = function2.call(context, scriptable, scriptable4, objArr2);
                        }
                        char c3 = c;
                        char c4 = c2;
                        long j4 = j3;
                        ArrayLikeAbstractOperations.defineElem(context, callConstructorOrCreateArray, j4, next);
                        j3 = j4 + 1;
                        c2 = c4;
                        c = c3;
                    }
                    iteratorLikeIterable.close();
                    setLengthProperty(context, callConstructorOrCreateArray, j3);
                    return callConstructorOrCreateArray;
                } finally {
                }
            }
        }
        long lengthProperty = getLengthProperty(context, object);
        Scriptable callConstructorOrCreateArray2 = callConstructorOrCreateArray(context, scriptable, scriptable2, lengthProperty, true);
        long j5 = 0;
        while (j5 < lengthProperty) {
            Object elem = getElem(context, object, j5);
            if (isUndefined) {
                j = j2;
            } else {
                j = j2;
                elem = function2.call(context, scriptable, scriptable4, new Object[]{elem, Long.valueOf(j5)});
            }
            ArrayLikeAbstractOperations.defineElem(context, callConstructorOrCreateArray2, j5, elem);
            j5 += j;
            j2 = j;
        }
        setLengthProperty(context, callConstructorOrCreateArray2, lengthProperty);
        return callConstructorOrCreateArray2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
    
        if (r6 < 0) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Boolean js_includes(org.mozilla.javascript.Context r8, org.mozilla.javascript.Scriptable r9, org.mozilla.javascript.Scriptable r10, java.lang.Object[] r11) {
        /*
            org.mozilla.javascript.Scriptable r9 = org.mozilla.javascript.ScriptRuntime.toObject(r8, r9, r10)
            long r0 = getLengthProperty(r8, r9)
            r2 = 0
            int r8 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r8 != 0) goto L11
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            return r8
        L11:
            int r8 = r11.length
            r10 = 2
            r4 = 1
            if (r8 >= r10) goto L18
            goto L34
        L18:
            r8 = 1
            r8 = r11[r8]
            double r6 = org.mozilla.javascript.ScriptRuntime.toInteger(r8)
            long r6 = (long) r6
            int r8 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r8 >= 0) goto L2a
            long r6 = r6 + r0
            int r8 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r8 >= 0) goto L2a
            goto L2b
        L2a:
            r2 = r6
        L2b:
            long r6 = r0 - r4
            int r8 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r8 <= 0) goto L34
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            return r8
        L34:
            int r8 = r11.length
            if (r8 <= 0) goto L3b
            r8 = 0
            r8 = r11[r8]
            goto L3d
        L3b:
            java.lang.Object r8 = org.mozilla.javascript.Undefined.instance
        L3d:
            boolean r10 = r9 instanceof org.mozilla.javascript.NativeArray
            if (r10 == 0) goto L73
            r10 = r9
            org.mozilla.javascript.NativeArray r10 = (org.mozilla.javascript.NativeArray) r10
            boolean r11 = r10.denseOnly
            if (r11 == 0) goto L73
            org.mozilla.javascript.Scriptable r9 = r10.getPrototype()
            int r11 = (int) r2
        L4d:
            long r2 = (long) r11
            int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r2 >= 0) goto L70
            java.lang.Object[] r2 = r10.dense
            r2 = r2[r11]
            java.lang.Object r3 = org.mozilla.javascript.Scriptable.NOT_FOUND
            if (r2 != r3) goto L60
            if (r9 == 0) goto L60
            java.lang.Object r2 = org.mozilla.javascript.ScriptableObject.getProperty(r9, r11)
        L60:
            if (r2 != r3) goto L64
            java.lang.Object r2 = org.mozilla.javascript.Undefined.instance
        L64:
            boolean r2 = org.mozilla.javascript.ScriptRuntime.sameZero(r2, r8)
            if (r2 == 0) goto L6d
            java.lang.Boolean r8 = java.lang.Boolean.TRUE
            return r8
        L6d:
            int r11 = r11 + 1
            goto L4d
        L70:
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            return r8
        L73:
            int r10 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r10 >= 0) goto L8c
            java.lang.Object r10 = org.mozilla.javascript.ArrayLikeAbstractOperations.getRawElem(r9, r2)
            java.lang.Object r11 = org.mozilla.javascript.Scriptable.NOT_FOUND
            if (r10 != r11) goto L81
            java.lang.Object r10 = org.mozilla.javascript.Undefined.instance
        L81:
            boolean r10 = org.mozilla.javascript.ScriptRuntime.sameZero(r10, r8)
            if (r10 == 0) goto L8a
            java.lang.Boolean r8 = java.lang.Boolean.TRUE
            return r8
        L8a:
            long r2 = r2 + r4
            goto L73
        L8c:
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.js_includes(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
    
        if (r9 < 0) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object js_indexOf(org.mozilla.javascript.Context r7, org.mozilla.javascript.Scriptable r8, org.mozilla.javascript.Scriptable r9, java.lang.Object[] r10) {
        /*
            int r0 = r10.length
            if (r0 <= 0) goto L7
            r0 = 0
            r0 = r10[r0]
            goto L9
        L7:
            java.lang.Object r0 = org.mozilla.javascript.Undefined.instance
        L9:
            org.mozilla.javascript.Scriptable r8 = org.mozilla.javascript.ScriptRuntime.toObject(r7, r8, r9)
            long r1 = getLengthProperty(r7, r8)
            int r7 = r10.length
            r9 = 2
            r3 = 1
            r5 = 0
            if (r7 >= r9) goto L1a
            goto L36
        L1a:
            r7 = 1
            r7 = r10[r7]
            double r9 = org.mozilla.javascript.ScriptRuntime.toInteger(r7)
            long r9 = (long) r9
            int r7 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r7 >= 0) goto L2c
            long r9 = r9 + r1
            int r7 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r7 >= 0) goto L2c
            goto L2d
        L2c:
            r5 = r9
        L2d:
            long r9 = r1 - r3
            int r7 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r7 <= 0) goto L36
            java.lang.Long r7 = org.mozilla.javascript.NativeArray.NEGATIVE_ONE
            return r7
        L36:
            boolean r7 = r8 instanceof org.mozilla.javascript.NativeArray
            if (r7 == 0) goto L6c
            r7 = r8
            org.mozilla.javascript.NativeArray r7 = (org.mozilla.javascript.NativeArray) r7
            boolean r9 = r7.denseOnly
            if (r9 == 0) goto L6c
            org.mozilla.javascript.Scriptable r8 = r7.getPrototype()
            int r9 = (int) r5
        L46:
            long r3 = (long) r9
            int r10 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r10 >= 0) goto L69
            java.lang.Object[] r10 = r7.dense
            r10 = r10[r9]
            java.lang.Object r5 = org.mozilla.javascript.Scriptable.NOT_FOUND
            if (r10 != r5) goto L59
            if (r8 == 0) goto L59
            java.lang.Object r10 = org.mozilla.javascript.ScriptableObject.getProperty(r8, r9)
        L59:
            if (r10 == r5) goto L66
            boolean r10 = org.mozilla.javascript.ScriptRuntime.shallowEq(r10, r0)
            if (r10 == 0) goto L66
            java.lang.Long r7 = java.lang.Long.valueOf(r3)
            return r7
        L66:
            int r9 = r9 + 1
            goto L46
        L69:
            java.lang.Long r7 = org.mozilla.javascript.NativeArray.NEGATIVE_ONE
            return r7
        L6c:
            int r7 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r7 >= 0) goto L85
            java.lang.Object r7 = org.mozilla.javascript.ArrayLikeAbstractOperations.getRawElem(r8, r5)
            java.lang.Object r9 = org.mozilla.javascript.Scriptable.NOT_FOUND
            if (r7 == r9) goto L83
            boolean r7 = org.mozilla.javascript.ScriptRuntime.shallowEq(r7, r0)
            if (r7 == 0) goto L83
            java.lang.Long r7 = java.lang.Long.valueOf(r5)
            return r7
        L83:
            long r5 = r5 + r3
            goto L6c
        L85:
            java.lang.Long r7 = org.mozilla.javascript.NativeArray.NEGATIVE_ONE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.js_indexOf(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    private static boolean js_isArray(Object obj) {
        if (obj instanceof Scriptable) {
            return obj instanceof NativeProxy ? js_isArray(((NativeProxy) obj).getTargetThrowIfRevoked()) : "Array".equals(((Scriptable) obj).getClassName());
        }
        return false;
    }

    private static String js_join(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object obj;
        Object obj2;
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        long lengthProperty = getLengthProperty(context, object);
        int i = (int) lengthProperty;
        int i2 = 0;
        if (lengthProperty != i) {
            throw Context.reportRuntimeErrorById("msg.arraylength.too.big", String.valueOf(lengthProperty));
        }
        String scriptRuntime = (objArr.length < 1 || (obj2 = objArr[0]) == Undefined.instance) ? "," : ScriptRuntime.toString(obj2);
        if (object instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) object;
            if (nativeArray.denseOnly) {
                StringBuilder sb = new StringBuilder();
                while (i2 < i) {
                    if (i2 != 0) {
                        sb.append(scriptRuntime);
                    }
                    Object[] objArr2 = nativeArray.dense;
                    if (i2 < objArr2.length && (obj = objArr2[i2]) != null && obj != Undefined.instance && obj != Scriptable.NOT_FOUND) {
                        sb.append(ScriptRuntime.toString(obj));
                    }
                    i2++;
                }
                return sb.toString();
            }
        }
        if (i == 0) {
            return "";
        }
        String[] strArr = new String[i];
        int i3 = 0;
        for (int i4 = 0; i4 != i; i4++) {
            Object elem = getElem(context, object, i4);
            if (elem != null && elem != Undefined.instance) {
                String scriptRuntime2 = ScriptRuntime.toString(elem);
                i3 += scriptRuntime2.length();
                strArr[i4] = scriptRuntime2;
            }
        }
        StringBuilder sb2 = new StringBuilder((scriptRuntime.length() * (i - 1)) + i3);
        while (i2 != i) {
            if (i2 != 0) {
                sb2.append(scriptRuntime);
            }
            String str = strArr[i2];
            if (str != null) {
                sb2.append(str);
            }
            i2++;
        }
        return sb2.toString();
    }

    private static Object js_lastIndexOf(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        long j;
        Object obj = objArr.length > 0 ? objArr[0] : Undefined.instance;
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        long lengthProperty = getLengthProperty(context, object);
        if (objArr.length < 2) {
            j = lengthProperty - 1;
        } else {
            long integer = (long) ScriptRuntime.toInteger(objArr[1]);
            if (integer >= lengthProperty) {
                j = lengthProperty - 1;
            } else {
                if (integer < 0) {
                    integer += lengthProperty;
                }
                j = integer;
            }
            if (j < 0) {
                return NEGATIVE_ONE;
            }
        }
        if (object instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) object;
            if (nativeArray.denseOnly) {
                Scriptable prototype = nativeArray.getPrototype();
                for (int i = (int) j; i >= 0; i--) {
                    Object obj2 = nativeArray.dense[i];
                    Object obj3 = Scriptable.NOT_FOUND;
                    if (obj2 == obj3 && prototype != null) {
                        obj2 = ScriptableObject.getProperty(prototype, i);
                    }
                    if (obj2 != obj3 && ScriptRuntime.shallowEq(obj2, obj)) {
                        return Long.valueOf(i);
                    }
                }
                return NEGATIVE_ONE;
            }
        }
        while (j >= 0) {
            Object rawElem = ArrayLikeAbstractOperations.getRawElem(object, j);
            if (rawElem != Scriptable.NOT_FOUND && ScriptRuntime.shallowEq(rawElem, obj)) {
                return Long.valueOf(j);
            }
            j--;
        }
        return NEGATIVE_ONE;
    }

    private static Object js_of(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable callConstructorOrCreateArray = callConstructorOrCreateArray(context, scriptable, scriptable2, objArr.length, true);
        int i = 0;
        if (context.getLanguageVersion() < 200 || !(callConstructorOrCreateArray instanceof ScriptableObject)) {
            while (i < objArr.length) {
                ArrayLikeAbstractOperations.defineElem(context, callConstructorOrCreateArray, i, objArr[i]);
                i++;
            }
        } else {
            ScriptableObject buildDataDescriptor = ScriptableObject.buildDataDescriptor(callConstructorOrCreateArray, null, 0);
            while (i < objArr.length) {
                buildDataDescriptor.put(ES6Iterator.VALUE_PROPERTY, buildDataDescriptor, objArr[i]);
                ((ScriptableObject) callConstructorOrCreateArray).defineOwnProperty(context, Integer.valueOf(i), buildDataDescriptor);
                i++;
            }
        }
        setLengthProperty(context, callConstructorOrCreateArray, objArr.length);
        return callConstructorOrCreateArray;
    }

    private static Object js_pop(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object obj;
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        if (object instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) object;
            if (nativeArray.denseOnly) {
                long j = nativeArray.length;
                if (j > 0) {
                    long j2 = j - 1;
                    nativeArray.length = j2;
                    nativeArray.modCount++;
                    Object[] objArr2 = nativeArray.dense;
                    Object obj2 = objArr2[(int) j2];
                    objArr2[(int) j2] = Scriptable.NOT_FOUND;
                    return obj2;
                }
            }
        }
        long lengthProperty = getLengthProperty(context, object);
        if (lengthProperty > 0) {
            lengthProperty--;
            obj = getElem(context, object, lengthProperty);
            deleteElem(object, lengthProperty);
        } else {
            obj = Undefined.instance;
        }
        setLengthProperty(context, object, lengthProperty);
        return obj;
    }

    private static Object js_push(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        int i = 0;
        if (object instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) object;
            if (nativeArray.denseOnly && nativeArray.ensureCapacity(((int) nativeArray.length) + objArr.length)) {
                int length = objArr.length;
                while (i < length) {
                    Object obj = objArr[i];
                    Object[] objArr2 = nativeArray.dense;
                    long j = nativeArray.length;
                    nativeArray.length = 1 + j;
                    objArr2[(int) j] = obj;
                    nativeArray.modCount++;
                    i++;
                }
                return ScriptRuntime.wrapNumber(nativeArray.length);
            }
        }
        long lengthProperty = getLengthProperty(context, object);
        while (i < objArr.length) {
            setElem(context, object, i + lengthProperty, objArr[i]);
            i++;
        }
        return context.getLanguageVersion() == 120 ? objArr.length == 0 ? Undefined.instance : objArr[objArr.length - 1] : setLengthProperty(context, object, lengthProperty + objArr.length);
    }

    private static Scriptable js_reverse(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        if (object instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) object;
            if (nativeArray.denseOnly) {
                int i = 0;
                for (int i2 = ((int) nativeArray.length) - 1; i < i2; i2--) {
                    Object[] objArr2 = nativeArray.dense;
                    Object obj = objArr2[i];
                    objArr2[i] = objArr2[i2];
                    objArr2[i2] = obj;
                    i++;
                }
                return object;
            }
        }
        long lengthProperty = getLengthProperty(context, object);
        long j = lengthProperty / 2;
        for (long j2 = 0; j2 < j; j2++) {
            long j3 = (lengthProperty - j2) - 1;
            Object rawElem = ArrayLikeAbstractOperations.getRawElem(object, j2);
            setRawElem(context, object, j2, ArrayLikeAbstractOperations.getRawElem(object, j3));
            setRawElem(context, object, j3, rawElem);
        }
        return object;
    }

    private static Object js_shift(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object obj;
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        if (object instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) object;
            if (nativeArray.denseOnly) {
                long j = nativeArray.length;
                if (j > 0) {
                    long j2 = j - 1;
                    nativeArray.length = j2;
                    nativeArray.modCount++;
                    Object[] objArr2 = nativeArray.dense;
                    Object obj2 = objArr2[0];
                    System.arraycopy(objArr2, 1, objArr2, 0, (int) j2);
                    Object[] objArr3 = nativeArray.dense;
                    int i = (int) nativeArray.length;
                    Object obj3 = Scriptable.NOT_FOUND;
                    objArr3[i] = obj3;
                    return obj2 == obj3 ? Undefined.instance : obj2;
                }
            }
        }
        long lengthProperty = getLengthProperty(context, object);
        if (lengthProperty > 0) {
            lengthProperty--;
            obj = getElem(context, object, 0L);
            if (lengthProperty > 0) {
                for (long j3 = 1; j3 <= lengthProperty; j3++) {
                    setRawElem(context, object, j3 - 1, ArrayLikeAbstractOperations.getRawElem(object, j3));
                }
            }
            deleteElem(object, lengthProperty);
        } else {
            obj = Undefined.instance;
        }
        setLengthProperty(context, object, lengthProperty);
        return obj;
    }

    private static Scriptable js_slice(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        long sliceIndex;
        Object obj;
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        long lengthProperty = getLengthProperty(context, object);
        if (objArr.length == 0) {
            sliceIndex = 0;
        } else {
            sliceIndex = ArrayLikeAbstractOperations.toSliceIndex(ScriptRuntime.toInteger(objArr[0]), lengthProperty);
            if (objArr.length != 1 && (obj = objArr[1]) != Undefined.instance) {
                lengthProperty = ArrayLikeAbstractOperations.toSliceIndex(ScriptRuntime.toInteger(obj), lengthProperty);
            }
        }
        long j = lengthProperty - sliceIndex;
        if (j > 2147483647L) {
            throw ScriptRuntime.rangeError(ScriptRuntime.getMessageById("msg.arraylength.bad", new Object[0]));
        }
        Scriptable newArray = context.newArray(scriptable, 0);
        for (long j2 = sliceIndex; j2 < lengthProperty; j2++) {
            Object rawElem = ArrayLikeAbstractOperations.getRawElem(object, j2);
            if (rawElem != Scriptable.NOT_FOUND) {
                ArrayLikeAbstractOperations.defineElem(context, newArray, j2 - sliceIndex, rawElem);
            }
        }
        setLengthProperty(context, newArray, Math.max(0L, j));
        return newArray;
    }

    private static Scriptable js_sort(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return sort(context, ScriptRuntime.toObject(context, scriptable, scriptable2), ArrayLikeAbstractOperations.getSortComparator(context, scriptable, objArr));
    }

    private static Object js_splice(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        NativeArray nativeArray;
        boolean z;
        int i;
        long j;
        boolean z2;
        long j2;
        Object obj;
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        if (object instanceof NativeArray) {
            nativeArray = (NativeArray) object;
            z = nativeArray.denseOnly;
        } else {
            nativeArray = null;
            z = false;
        }
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        int length = objArr.length;
        if (length == 0) {
            return context.newArray(topLevelScope, 0);
        }
        long lengthProperty = getLengthProperty(context, object);
        long sliceIndex = ArrayLikeAbstractOperations.toSliceIndex(ScriptRuntime.toInteger(objArr[0]), lengthProperty);
        int i2 = length - 1;
        if (objArr.length == 1) {
            i = 1;
            j = lengthProperty - sliceIndex;
            z2 = z;
        } else {
            double integer = ScriptRuntime.toInteger(objArr[1]);
            if (integer < 0.0d) {
                z2 = z;
                i = 1;
                j = 0;
            } else {
                i = 1;
                j = lengthProperty - sliceIndex;
                z2 = z;
                if (integer <= j) {
                    j = (long) integer;
                }
            }
            i2 = length - 2;
        }
        long j3 = sliceIndex + j;
        long j4 = j;
        long j5 = i2;
        long j6 = j5 - j4;
        long j7 = lengthProperty + j6;
        if (j7 > 9.007199254740991E15d) {
            Object[] objArr2 = new Object[i];
            objArr2[0] = Long.valueOf(j7);
            throw ScriptRuntime.typeErrorById("msg.arraylength.too.big", objArr2);
        }
        if (j4 > 2147483647L) {
            throw ScriptRuntime.rangeError(ScriptRuntime.getMessageById("msg.arraylength.bad", new Object[0]));
        }
        if (j4 == 0) {
            j2 = 2147483647L;
            obj = context.getLanguageVersion() == 120 ? Undefined.instance : context.newArray(topLevelScope, 0);
        } else if (j4 == 1 && context.getLanguageVersion() == 120) {
            j2 = 2147483647L;
            obj = getElem(context, object, sliceIndex);
        } else if (z2) {
            j2 = 2147483647L;
            int i3 = (int) (j3 - sliceIndex);
            Object[] objArr3 = new Object[i3];
            System.arraycopy(nativeArray.dense, (int) sliceIndex, objArr3, 0, i3);
            obj = context.newArray(topLevelScope, objArr3);
        } else {
            j2 = 2147483647L;
            Scriptable newArray = context.newArray(topLevelScope, 0);
            long j8 = sliceIndex;
            while (j8 != j3) {
                Object rawElem = ArrayLikeAbstractOperations.getRawElem(object, j8);
                long j9 = j8;
                if (rawElem != Scriptable.NOT_FOUND) {
                    setElem(context, newArray, j9 - sliceIndex, rawElem);
                }
                j8 = j9 + 1;
            }
            setLengthProperty(context, newArray, j3 - sliceIndex);
            obj = newArray;
        }
        if (z2 && j7 < j2) {
            int i4 = (int) j7;
            if (nativeArray.ensureCapacity(i4)) {
                Object[] objArr4 = nativeArray.dense;
                System.arraycopy(objArr4, (int) j3, objArr4, (int) (sliceIndex + j5), (int) (lengthProperty - j3));
                if (i2 > 0) {
                    System.arraycopy(objArr, 2, nativeArray.dense, (int) sliceIndex, i2);
                }
                if (j6 < 0) {
                    Arrays.fill(nativeArray.dense, i4, (int) lengthProperty, Scriptable.NOT_FOUND);
                }
                nativeArray.length = j7;
                nativeArray.modCount++;
                return obj;
            }
        }
        long j10 = lengthProperty;
        if (j6 > 0) {
            long j11 = j10 - 1;
            while (j11 >= j3) {
                setRawElem(context, object, j11 + j6, ArrayLikeAbstractOperations.getRawElem(object, j11));
                j11--;
                j3 = j3;
            }
        } else if (j6 < 0) {
            long j12 = j3;
            while (j12 < j10) {
                long j13 = j12;
                setRawElem(context, object, j13 + j6, ArrayLikeAbstractOperations.getRawElem(object, j12));
                j12 = j13 + 1;
            }
            while (true) {
                j10--;
                if (j10 < j7) {
                    break;
                }
                deleteElem(object, j10);
            }
        }
        int length2 = objArr.length - i2;
        for (int i5 = 0; i5 < i2; i5++) {
            setElem(context, object, i5 + sliceIndex, objArr[i5 + length2]);
        }
        setLengthProperty(context, object, j7);
        return obj;
    }

    private static Object js_toReversed(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        long lengthProperty = getLengthProperty(context, object);
        int i = 0;
        if (lengthProperty > 2147483647L) {
            throw ScriptRuntime.rangeError(ScriptRuntime.getMessageById("msg.arraylength.bad", new Object[0]));
        }
        Scriptable newArray = context.newArray(scriptable, (int) lengthProperty);
        while (true) {
            long j = i;
            if (j >= lengthProperty) {
                return newArray;
            }
            setElem(context, newArray, j, getElem(context, object, (r10 - i) - 1));
            i++;
        }
    }

    private static Object js_toSorted(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Comparator<Object> sortComparator = ArrayLikeAbstractOperations.getSortComparator(context, scriptable, objArr);
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        long lengthProperty = getLengthProperty(context, object);
        int i = 0;
        if (lengthProperty > 2147483647L) {
            throw ScriptRuntime.rangeError(ScriptRuntime.getMessageById("msg.arraylength.bad", new Object[0]));
        }
        Scriptable newArray = context.newArray(scriptable, (int) lengthProperty);
        while (true) {
            long j = i;
            if (j >= lengthProperty) {
                sort(context, newArray, sortComparator);
                return newArray;
            }
            setElem(context, newArray, j, getElem(context, object, j));
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object js_toSpliced(org.mozilla.javascript.Context r19, org.mozilla.javascript.Scriptable r20, org.mozilla.javascript.Scriptable r21, java.lang.Object[] r22) {
        /*
            r0 = r19
            r1 = r22
            org.mozilla.javascript.Scriptable r2 = org.mozilla.javascript.ScriptRuntime.toObject(r19, r20, r21)
            long r3 = getLengthProperty(r0, r2)
            int r5 = r1.length
            r6 = 0
            r7 = 0
            if (r5 <= 0) goto L1d
            r5 = r1[r6]
            double r9 = org.mozilla.javascript.ScriptRuntime.toInteger(r5)
            long r9 = org.mozilla.javascript.ArrayLikeAbstractOperations.toSliceIndex(r9, r3)
            goto L1e
        L1d:
            r9 = r7
        L1e:
            int r5 = r1.length
            r11 = 2
            if (r5 <= r11) goto L26
            int r5 = r1.length
            int r5 = r5 - r11
            long r12 = (long) r5
            goto L27
        L26:
            r12 = r7
        L27:
            int r5 = r1.length
            r14 = 1
            if (r5 != 0) goto L2f
            r15 = r7
        L2c:
            r17 = r12
            goto L46
        L2f:
            int r5 = r1.length
            if (r5 != r14) goto L35
            long r15 = r3 - r9
            goto L2c
        L35:
            r15 = r12
            long r11 = org.mozilla.javascript.ScriptRuntime.toLength(r1, r14)
            r17 = r15
            long r14 = r3 - r9
            long r11 = java.lang.Math.min(r11, r14)
            long r15 = java.lang.Math.max(r7, r11)
        L46:
            long r3 = r3 + r17
            long r3 = r3 - r15
            double r11 = (double) r3
            r13 = 4845873199050653695(0x433fffffffffffff, double:9.007199254740991E15)
            int r11 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r11 > 0) goto L9b
            r11 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r5 = (r3 > r11 ? 1 : (r3 == r11 ? 0 : -1))
            if (r5 > 0) goto L8e
            int r5 = (int) r3
            r6 = r20
            org.mozilla.javascript.Scriptable r5 = r0.newArray(r6, r5)
            long r15 = r15 + r9
        L62:
            int r6 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            r11 = 1
            if (r6 >= 0) goto L71
            java.lang.Object r6 = getElem(r0, r2, r7)
            setElem(r0, r5, r7, r6)
            long r7 = r7 + r11
            goto L62
        L71:
            r6 = 2
        L72:
            int r9 = r1.length
            if (r6 >= r9) goto L7e
            r9 = r1[r6]
            setElem(r0, r5, r7, r9)
            long r7 = r7 + r11
            int r6 = r6 + 1
            goto L72
        L7e:
            r9 = r15
        L7f:
            int r1 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r1 >= 0) goto L8d
            java.lang.Object r1 = getElem(r0, r2, r9)
            setElem(r0, r5, r7, r1)
            long r7 = r7 + r11
            long r9 = r9 + r11
            goto L7f
        L8d:
            return r5
        L8e:
            java.lang.String r0 = "msg.arraylength.bad"
            java.lang.Object[] r1 = new java.lang.Object[r6]
            java.lang.String r0 = org.mozilla.javascript.ScriptRuntime.getMessageById(r0, r1)
            org.mozilla.javascript.EcmaError r0 = org.mozilla.javascript.ScriptRuntime.rangeError(r0)
            throw r0
        L9b:
            java.lang.Long r0 = java.lang.Long.valueOf(r3)
            r5 = 1
            java.lang.Object[] r1 = new java.lang.Object[r5]
            r1[r6] = r0
            java.lang.String r0 = "msg.arraylength.too.big"
            org.mozilla.javascript.EcmaError r0 = org.mozilla.javascript.ScriptRuntime.typeErrorById(r0, r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.js_toSpliced(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    private static Object js_unshift(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        long j;
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        int i = 0;
        if (object instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) object;
            if (nativeArray.denseOnly && nativeArray.ensureCapacity(((int) nativeArray.length) + objArr.length)) {
                Object[] objArr2 = nativeArray.dense;
                System.arraycopy(objArr2, 0, objArr2, objArr.length, (int) nativeArray.length);
                System.arraycopy(objArr, 0, nativeArray.dense, 0, objArr.length);
                long length = nativeArray.length + objArr.length;
                nativeArray.length = length;
                nativeArray.modCount++;
                return ScriptRuntime.wrapNumber(length);
            }
        }
        long lengthProperty = getLengthProperty(context, object);
        int length2 = objArr.length;
        if (length2 > 0) {
            long j2 = length2;
            long j3 = lengthProperty + j2;
            if (j3 > 9.007199254740991E15d) {
                throw ScriptRuntime.typeErrorById("msg.arraylength.too.big", Long.valueOf(j3));
            }
            if (lengthProperty > 0) {
                long j4 = lengthProperty - 1;
                while (j4 >= 0) {
                    setRawElem(context, object, j4 + j2, ArrayLikeAbstractOperations.getRawElem(object, j4));
                    j4--;
                    i = i;
                    lengthProperty = lengthProperty;
                }
            }
            j = lengthProperty;
            for (int i2 = i; i2 < objArr.length; i2++) {
                setElem(context, object, i2, objArr[i2]);
            }
        } else {
            j = lengthProperty;
        }
        return setLengthProperty(context, object, j + length2);
    }

    private static Object js_with(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Scriptable object = ScriptRuntime.toObject(context, scriptable, scriptable2);
        long lengthProperty = getLengthProperty(context, object);
        long j = 0;
        long integer = objArr.length > 0 ? (int) ScriptRuntime.toInteger(objArr[0]) : 0L;
        if (integer < 0) {
            integer += lengthProperty;
        }
        if (integer < 0 || integer >= lengthProperty) {
            throw ScriptRuntime.rangeError("index out of range");
        }
        if (lengthProperty > 2147483647L) {
            throw ScriptRuntime.rangeError(ScriptRuntime.getMessageById("msg.arraylength.bad", new Object[0]));
        }
        Scriptable newArray = context.newArray(scriptable, (int) lengthProperty);
        while (j < lengthProperty) {
            setElem(context, newArray, j, j == integer ? objArr.length > 1 ? objArr[1] : Undefined.instance : getElem(context, object, j));
            j++;
        }
        return newArray;
    }

    private Object makeUnscopables() {
        Context currentContext = Context.getCurrentContext();
        NativeObject nativeObject = currentContext != null ? (NativeObject) currentContext.newObject(getParentScope()) : new NativeObject();
        ScriptableObject buildDataDescriptor = ScriptableObject.buildDataDescriptor(nativeObject, Boolean.TRUE, 0);
        for (String str : UNSCOPABLES) {
            nativeObject.defineOwnProperty(currentContext, str, buildDataDescriptor);
        }
        nativeObject.setPrototype(null);
        return nativeObject;
    }

    private static void setElem(Context context, Scriptable scriptable, long j, Object obj) {
        if (j > 2147483647L) {
            ScriptableObject.putProperty(scriptable, Long.toString(j), obj);
        } else {
            ScriptableObject.putProperty(scriptable, (int) j, obj);
        }
    }

    private void setLength(Object obj) {
        if ((this.lengthAttr & 1) != 0) {
            return;
        }
        double number = ScriptRuntime.toNumber(obj);
        long uint32 = ScriptRuntime.toUint32(number);
        double d = uint32;
        if (d != number) {
            throw ScriptRuntime.rangeError(ScriptRuntime.getMessageById("msg.arraylength.bad", new Object[0]));
        }
        if (this.denseOnly) {
            long j = this.length;
            if (uint32 < j) {
                Object[] objArr = this.dense;
                Arrays.fill(objArr, (int) uint32, objArr.length, Scriptable.NOT_FOUND);
                this.length = uint32;
                this.modCount++;
                return;
            }
            if (uint32 < 1431655764 && d < j * GROW_FACTOR && ensureCapacity((int) uint32)) {
                this.length = uint32;
                this.modCount++;
                return;
            }
            this.denseOnly = false;
        }
        long j2 = this.length;
        if (uint32 < j2) {
            if (j2 - uint32 > 4096) {
                for (Object obj2 : getIds()) {
                    if (obj2 instanceof String) {
                        String str = (String) obj2;
                        if (toArrayIndex(str) >= uint32) {
                            delete(str);
                        }
                    } else {
                        int intValue = ((Integer) obj2).intValue();
                        if (intValue >= uint32) {
                            delete(intValue);
                        }
                    }
                }
            } else {
                for (long j3 = uint32; j3 < this.length; j3++) {
                    deleteElem(this, j3);
                }
            }
        }
        this.length = uint32;
        this.modCount++;
    }

    private static Object setLengthProperty(Context context, Scriptable scriptable, long j) {
        Number wrapNumber = ScriptRuntime.wrapNumber(j);
        ScriptableObject.putProperty(scriptable, "length", wrapNumber);
        return wrapNumber;
    }

    public static void setMaximumInitialCapacity(int i) {
        maximumInitialCapacity = i;
    }

    private static void setRawElem(Context context, Scriptable scriptable, long j, Object obj) {
        if (obj == Scriptable.NOT_FOUND) {
            deleteElem(scriptable, j);
        } else {
            setElem(context, scriptable, j, obj);
        }
    }

    private static Scriptable sort(Context context, Scriptable scriptable, Comparator<Object> comparator) {
        long lengthProperty = getLengthProperty(context, scriptable);
        int i = (int) lengthProperty;
        if (lengthProperty != i) {
            throw Context.reportRuntimeErrorById("msg.arraylength.too.big", String.valueOf(lengthProperty));
        }
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 != i; i2++) {
            objArr[i2] = ArrayLikeAbstractOperations.getRawElem(scriptable, i2);
        }
        try {
            Arrays.sort(objArr, comparator);
            for (int i3 = 0; i3 < i; i3++) {
                setRawElem(context, scriptable, i3, objArr[i3]);
            }
        } catch (IllegalArgumentException unused) {
        }
        return scriptable;
    }

    private static long toArrayIndex(Object obj) {
        if (obj instanceof String) {
            return toArrayIndex((String) obj);
        }
        if (obj instanceof Number) {
            return toArrayIndex(((Number) obj).doubleValue());
        }
        return -1L;
    }

    private static int toDenseIndex(Object obj) {
        long arrayIndex = toArrayIndex(obj);
        if (0 > arrayIndex || arrayIndex >= 2147483647L) {
            return -1;
        }
        return (int) arrayIndex;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String toStringHelper(org.mozilla.javascript.Context r20, org.mozilla.javascript.Scriptable r21, org.mozilla.javascript.Scriptable r22, boolean r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.toStringHelper(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, boolean, boolean):java.lang.String");
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) > -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject
    public boolean defineOwnProperty(Context context, Object obj, ScriptableObject scriptableObject, boolean z) {
        Object[] objArr;
        long arrayIndex = toArrayIndex(obj);
        if (arrayIndex >= this.length) {
            this.length = 1 + arrayIndex;
            this.modCount++;
        }
        if (arrayIndex != -1 && (objArr = this.dense) != null) {
            this.dense = null;
            this.denseOnly = false;
            for (int i = 0; i < objArr.length; i++) {
                if (objArr[i] != Scriptable.NOT_FOUND) {
                    if (!isExtensible()) {
                        setAttributes(i, 0);
                    }
                    put(i, this, objArr[i]);
                }
            }
        }
        super.defineOwnProperty(context, obj, scriptableObject, z);
        if ("length".equals(obj)) {
            this.lengthAttr = getAttributes("length");
        }
        return true;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void delete(int i) {
        Object[] objArr = this.dense;
        if (objArr == null || i < 0 || i >= objArr.length || isSealed() || (!this.denseOnly && isGetterOrSetter(null, i, true))) {
            super.delete(i);
        } else {
            this.dense[i] = Scriptable.NOT_FOUND;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:202)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:61)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:115)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:281)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:100)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public java.lang.Object execIdCall(org.mozilla.javascript.IdFunctionObject r7, org.mozilla.javascript.Context r8, org.mozilla.javascript.Scriptable r9, org.mozilla.javascript.Scriptable r10, java.lang.Object[] r11) {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.execIdCall(org.mozilla.javascript.IdFunctionObject, org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        Object obj = ARRAY_TAG;
        addIdFunctionProperty(idFunctionObject, obj, -5, "join", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_reverse, "reverse", 0);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_sort, "sort", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_push, "push", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_pop, "pop", 0);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_shift, "shift", 0);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_unshift, "unshift", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_splice, "splice", 2);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_concat, "concat", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_slice, "slice", 2);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_indexOf, "indexOf", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_lastIndexOf, "lastIndexOf", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_every, "every", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_filter, "filter", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_forEach, "forEach", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_map, "map", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_some, "some", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_find, "find", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_findIndex, "findIndex", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_findLast, "findLast", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_findLastIndex, "findLastIndex", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_reduce, "reduce", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_reduceRight, "reduceRight", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_isArray, "isArray", 1);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_of, "of", 0);
        addIdFunctionProperty(idFunctionObject, obj, ConstructorId_from, "from", 1);
        super.fillConstructorProperties(idFunctionObject);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        return str.equals("length") ? IdScriptableObject.instanceIdInfo(this.lengthAttr, 1) : super.findInstanceIdInfo(str);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(String str) {
        str.getClass();
        switch (str) {
            case "findLastIndex":
                return 25;
            case "toLocaleString":
                return 3;
            case "toSorted":
                return 38;
            case "toSource":
                return 4;
            case "toString":
                return 2;
            case "entries":
                return 31;
            case "constructor":
                return 1;
            case "concat":
                return 13;
            case "filter":
                return 18;
            case "reduce":
                return 26;
            case "splice":
                return 12;
            case "values":
                return 30;
            case "copyWithin":
                return 33;
            case "flatMap":
                return 36;
            case "findLast":
                return 24;
            case "forEach":
                return 19;
            case "lastIndexOf":
                return 16;
            case "toReversed":
                return 37;
            case "unshift":
                return 11;
            case "at":
                return 34;
            case "map":
                return 20;
            case "pop":
                return 9;
            case "fill":
                return 28;
            case "find":
                return 22;
            case "flat":
                return 35;
            case "join":
                return 5;
            case "keys":
                return 29;
            case "push":
                return 8;
            case "some":
                return 21;
            case "sort":
                return 7;
            case "with":
                return 40;
            case "includes":
                return 32;
            case "every":
                return 17;
            case "shift":
                return 10;
            case "slice":
                return 14;
            case "findIndex":
                return 23;
            case "toSpliced":
                return 39;
            case "reduceRight":
                return 27;
            case "reverse":
                return 6;
            case "indexOf":
                return 15;
            default:
                return 0;
        }
    }

    public Object get(long j) {
        if (j < 0 || j >= this.length) {
            throw new IndexOutOfBoundsException();
        }
        Object rawElem = ArrayLikeAbstractOperations.getRawElem(this, j);
        if (rawElem == Scriptable.NOT_FOUND || rawElem == Undefined.instance) {
            return null;
        }
        return rawElem instanceof Wrapper ? ((Wrapper) rawElem).unwrap() : rawElem;
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public int getAttributes(int i) {
        Object[] objArr = this.dense;
        if (objArr == null || i < 0 || i >= objArr.length || objArr[i] == Scriptable.NOT_FOUND) {
            return super.getAttributes(i);
        }
        return 0;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Array";
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        return (cls == ScriptRuntime.NumberClass && Context.getContext().getLanguageVersion() == 120) ? Long.valueOf(this.length) : super.getDefaultValue(cls);
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject
    public Object[] getIds(boolean z, boolean z2) {
        Object[] ids = super.getIds(z, z2);
        Object[] objArr = this.dense;
        if (objArr != null) {
            int length = objArr.length;
            long j = this.length;
            if (length > j) {
                length = (int) j;
            }
            if (length != 0) {
                int length2 = ids.length;
                Object[] objArr2 = new Object[length + length2];
                int i = 0;
                for (int i2 = 0; i2 != length; i2++) {
                    if (this.dense[i2] != Scriptable.NOT_FOUND) {
                        objArr2[i] = Integer.valueOf(i2);
                        i++;
                    }
                }
                if (i != length) {
                    Object[] objArr3 = new Object[i + length2];
                    System.arraycopy(objArr2, 0, objArr3, 0, i);
                    objArr2 = objArr3;
                }
                System.arraycopy(ids, 0, objArr2, i, length2);
                return objArr2;
            }
        }
        return ids;
    }

    public List<Integer> getIndexIds() {
        Object[] ids = getIds();
        ArrayList arrayList = new ArrayList(ids.length);
        for (Object obj : ids) {
            int int32 = ScriptRuntime.toInt32(obj);
            if (int32 >= 0 && ScriptRuntime.toString(int32).equals(ScriptRuntime.toString(obj))) {
                arrayList.add(Integer.valueOf(int32));
            }
        }
        return arrayList;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        return i == 1 ? "length" : super.getInstanceIdName(i);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        return i == 1 ? ScriptRuntime.wrapNumber(this.length) : super.getInstanceIdValue(i);
    }

    public long getLength() {
        return this.length;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 1;
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject
    public ScriptableObject getOwnPropertyDescriptor(Context context, Object obj) {
        int denseIndex;
        Object obj2;
        if (this.dense != null && (denseIndex = toDenseIndex(obj)) >= 0) {
            Object[] objArr = this.dense;
            if (denseIndex < objArr.length && (obj2 = objArr[denseIndex]) != Scriptable.NOT_FOUND) {
                return defaultIndexPropertyDescriptor(obj2);
            }
        }
        return super.getOwnPropertyDescriptor(context, obj);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        if (!this.denseOnly && isGetterOrSetter(null, i, false)) {
            return super.has(i, scriptable);
        }
        Object[] objArr = this.dense;
        return (objArr == null || i < 0 || i >= objArr.length) ? super.has(i, scriptable) : objArr[i] != Scriptable.NOT_FOUND;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        int size = size();
        int i = 0;
        if (obj == null) {
            while (i < size) {
                if (get(i) == null) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        while (i < size) {
            if (obj.equals(get(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        String str;
        String str2;
        String str3;
        String str4;
        int i2;
        if (i == 41) {
            initPrototypeValue(i, SymbolKey.UNSCOPABLES, makeUnscopables(), 3);
        }
        switch (i) {
            case 1:
                str = "constructor";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 2:
                str2 = "toString";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 3:
                str2 = "toLocaleString";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 4:
                str2 = "toSource";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 5:
                str = "join";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 6:
                str2 = "reverse";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 7:
                str = "sort";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 8:
                str = "push";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 9:
                str2 = "pop";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 10:
                str2 = "shift";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 11:
                str = "unshift";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 12:
                str3 = "splice";
                i2 = 2;
                str4 = str3;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 13:
                str = "concat";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 14:
                str3 = "slice";
                i2 = 2;
                str4 = str3;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 15:
                str = "indexOf";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 16:
                str = "lastIndexOf";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 17:
                str = "every";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 18:
                str = "filter";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 19:
                str = "forEach";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 20:
                str = "map";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 21:
                str = "some";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 22:
                str = "find";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 23:
                str = "findIndex";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 24:
                str = "findLast";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 25:
                str = "findLastIndex";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 26:
                str = "reduce";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 27:
                str = "reduceRight";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 28:
                str = "fill";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 29:
                str2 = "keys";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 30:
                str2 = "values";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 31:
                str2 = "entries";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 32:
                str = "includes";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 33:
                str3 = "copyWithin";
                i2 = 2;
                str4 = str3;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 34:
                str = "at";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 35:
                str2 = "flat";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 36:
                str = "flatMap";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 37:
                str2 = "toReversed";
                str4 = str2;
                i2 = 0;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 38:
                str = "toSorted";
                str4 = str;
                i2 = 1;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 39:
                str3 = "toSpliced";
                i2 = 2;
                str4 = str3;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            case 40:
                str3 = "with";
                i2 = 2;
                str4 = str3;
                initPrototypeMethod(ARRAY_TAG, i, str4, (String) null, i2);
                break;
            default:
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(String.valueOf(i));
                break;
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.length == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return listIterator(0);
    }

    @Deprecated
    public long jsGet_length() {
        return getLength();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        int size = size();
        if (obj == null) {
            for (int i = size - 1; i >= 0; i--) {
                if (get(i) == null) {
                    return i;
                }
            }
            return -1;
        }
        for (int i2 = size - 1; i2 >= 0; i2--) {
            if (obj.equals(get(i2))) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public ListIterator listIterator(int i) {
        int size = size();
        if (i >= 0 && i <= size) {
            return new ListIterator(i, size) { // from class: org.mozilla.javascript.NativeArray.1
                int cursor;
                int modCount;
                final /* synthetic */ int val$len;
                final /* synthetic */ int val$start;

                {
                    this.val$start = i;
                    this.val$len = size;
                    this.cursor = i;
                    this.modCount = NativeArray.this.modCount;
                }

                @Override // java.util.ListIterator
                public void add(Object obj) {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public boolean hasNext() {
                    return this.cursor < this.val$len;
                }

                @Override // java.util.ListIterator
                public boolean hasPrevious() {
                    return this.cursor > 0;
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public Object next() {
                    NativeArray.this.checkModCount(this.modCount);
                    int i2 = this.cursor;
                    if (i2 == this.val$len) {
                        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                        return null;
                    }
                    NativeArray nativeArray = NativeArray.this;
                    this.cursor = i2 + 1;
                    return nativeArray.get(i2);
                }

                @Override // java.util.ListIterator
                public int nextIndex() {
                    return this.cursor;
                }

                @Override // java.util.ListIterator
                public Object previous() {
                    NativeArray.this.checkModCount(this.modCount);
                    int i2 = this.cursor;
                    if (i2 == 0) {
                        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                        return null;
                    }
                    NativeArray nativeArray = NativeArray.this;
                    int i3 = i2 - 1;
                    this.cursor = i3;
                    return nativeArray.get(i3);
                }

                @Override // java.util.ListIterator
                public int previousIndex() {
                    return this.cursor - 1;
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public void remove() {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.ListIterator
                public void set(Object obj) {
                    throw new UnsupportedOperationException();
                }
            };
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(Modifier.CC.m(i, "Index: "));
        return null;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        if (scriptable == this && !isSealed() && this.dense != null && i >= 0 && (this.denseOnly || !isGetterOrSetter(null, i, true))) {
            if (!isExtensible() && this.length <= i) {
                return;
            }
            Object[] objArr = this.dense;
            if (i < objArr.length) {
                objArr[i] = obj;
                long j = i;
                if (this.length <= j) {
                    this.length = j + 1;
                    this.modCount++;
                    return;
                }
                return;
            }
            if (this.denseOnly && i < objArr.length * GROW_FACTOR && ensureCapacity(i + 1)) {
                this.dense[i] = obj;
                this.length = i + 1;
                this.modCount++;
                return;
            }
            this.denseOnly = false;
        }
        super.put(i, scriptable, obj);
        if (scriptable == this && (this.lengthAttr & 1) == 0) {
            long j2 = i;
            if (this.length <= j2) {
                this.length = j2 + 1;
                this.modCount++;
            }
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    public void setDenseOnly(boolean z) {
        if (!z || this.denseOnly) {
            this.denseOnly = z;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdAttributes(int i, int i2) {
        if (i == 1) {
            this.lengthAttr = i2;
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdValue(int i, Object obj) {
        if (i == 1) {
            setLength(obj);
        } else {
            super.setInstanceIdValue(i, obj);
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void setPrototype(Scriptable scriptable) {
        super.setPrototype(scriptable);
        if (scriptable instanceof NativeArray) {
            return;
        }
        setDenseOnly(false);
    }

    @Override // org.mozilla.javascript.ScriptableObject, java.util.List, java.util.Collection
    public int size() {
        long j = this.length;
        if (j <= 2147483647L) {
            return (int) j;
        }
        throw new IllegalStateException("list.length (" + j + ") exceeds Integer.MAX_VALUE");
    }

    @Override // java.util.List
    public List subList(final int i, final int i2) {
        if (i < 0) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(Modifier.CC.m(i, "fromIndex = "));
            return null;
        }
        if (i2 > size()) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(Modifier.CC.m(i2, "toIndex = "));
            return null;
        }
        if (i <= i2) {
            return new AbstractList() { // from class: org.mozilla.javascript.NativeArray.2
                private int mc;

                {
                    this.mc = NativeArray.this.modCount;
                }

                @Override // java.util.AbstractList, java.util.List
                public Object get(int i3) {
                    NativeArray.this.checkModCount(this.mc);
                    return NativeArray.this.get(i3 + i);
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    NativeArray.this.checkModCount(this.mc);
                    return i2 - i;
                }
            };
        }
        throw new IllegalArgumentException("fromIndex(" + i + ") > toIndex(" + i2 + ")");
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray(Object[] objArr) {
        int size = size();
        if (objArr.length < size) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), size);
        }
        for (int i = 0; i < size; i++) {
            objArr[i] = get(i);
        }
        return objArr;
    }

    @Override // java.util.List
    public void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }

    private static long toArrayIndex(String str) {
        long arrayIndex = toArrayIndex(ScriptRuntime.toNumber(str));
        if (Long.toString(arrayIndex).equals(str)) {
            return arrayIndex;
        }
        return -1L;
    }

    private static long toArrayIndex(double d) {
        if (Double.isNaN(d)) {
            return -1L;
        }
        long uint32 = ScriptRuntime.toUint32(d);
        if (uint32 != d || uint32 == 4294967295L) {
            return -1L;
        }
        return uint32;
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return toArray(ScriptRuntime.emptyArgs);
    }

    public NativeArray(Object[] objArr) {
        this.lengthAttr = 6;
        this.denseOnly = true;
        this.dense = objArr;
        this.length = objArr.length;
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.SymbolScriptable
    public void delete(Symbol symbol) {
        if (SymbolKey.ITERATOR.equals(symbol)) {
            super.delete("values");
        }
        super.delete(symbol);
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.SymbolScriptable
    public boolean has(Symbol symbol, Scriptable scriptable) {
        if (SymbolKey.ITERATOR.equals(symbol)) {
            return super.has("values", scriptable);
        }
        return super.has(symbol, scriptable);
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.SymbolScriptable
    public Object get(Symbol symbol, Scriptable scriptable) {
        if (SymbolKey.ITERATOR.equals(symbol)) {
            return super.get("values", scriptable);
        }
        return super.get(symbol, scriptable);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        if (!this.denseOnly && isGetterOrSetter(null, i, false)) {
            return super.get(i, scriptable);
        }
        Object[] objArr = this.dense;
        return (objArr == null || i < 0 || i >= objArr.length) ? super.get(i, scriptable) : objArr[i];
    }

    @Override // java.util.List
    public Object get(int i) {
        return get(i);
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
        super.put(str, scriptable, obj);
        if (scriptable == this) {
            long arrayIndex = toArrayIndex(str);
            if (arrayIndex >= this.length) {
                this.length = arrayIndex + 1;
                this.modCount++;
                this.denseOnly = false;
            }
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.SymbolScriptable
    public void put(Symbol symbol, Scriptable scriptable, Object obj) {
        if (SymbolKey.ITERATOR.equals(symbol)) {
            super.put("values", scriptable, obj);
        }
        super.put(symbol, scriptable, obj);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(Symbol symbol) {
        if (SymbolKey.ITERATOR.equals(symbol)) {
            return 30;
        }
        return SymbolKey.UNSCOPABLES.equals(symbol) ? 41 : 0;
    }
}
