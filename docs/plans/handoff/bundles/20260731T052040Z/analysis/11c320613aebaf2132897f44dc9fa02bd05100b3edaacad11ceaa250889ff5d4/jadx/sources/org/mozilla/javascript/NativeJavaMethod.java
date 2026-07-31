package org.mozilla.javascript;

import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class NativeJavaMethod extends BaseFunction {
    private static final int PREFERENCE_AMBIGUOUS = 3;
    private static final int PREFERENCE_EQUAL = 0;
    private static final int PREFERENCE_FIRST_ARG = 1;
    private static final int PREFERENCE_SECOND_ARG = 2;
    private static final boolean debug = false;
    private static final long serialVersionUID = -3440381785576412928L;
    private String functionName;
    MemberBox[] methods;
    private final transient CopyOnWriteArrayList<ResolvedOverload> overloadCache;

    public NativeJavaMethod(MemberBox[] memberBoxArr) {
        this.overloadCache = new CopyOnWriteArrayList<>();
        this.functionName = memberBoxArr[0].getName();
        this.methods = memberBoxArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x00f1, code lost:
    
        r2 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00f3, code lost:
    
        if (r13 != r2) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00f5, code lost:
    
        r7 = r6;
        r8 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00f9, code lost:
    
        if (r14 != r2) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00fc, code lost:
    
        if (r19 != null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00fe, code lost:
    
        r3 = new int[r21.length - 1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0108, code lost:
    
        r3[r8] = r6;
        r8 = r2;
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0106, code lost:
    
        r3 = r19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int findFunction(org.mozilla.javascript.Context r20, org.mozilla.javascript.MemberBox[] r21, java.lang.Object[] r22) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeJavaMethod.findFunction(org.mozilla.javascript.Context, org.mozilla.javascript.MemberBox[], java.lang.Object[]):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0041, code lost:
    
        if (r4.isAssignableFrom(r3) != false) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int preferSignature(java.lang.Object[] r9, java.lang.Class<?>[] r10, boolean r11, java.lang.Class<?>[] r12, boolean r13) {
        /*
            r0 = 0
            r1 = r0
        L2:
            int r2 = r9.length
            if (r0 >= r2) goto L4c
            r2 = 1
            if (r11 == 0) goto L10
            int r3 = r10.length
            if (r0 < r3) goto L10
            int r3 = r10.length
            int r3 = r3 - r2
            r3 = r10[r3]
            goto L12
        L10:
            r3 = r10[r0]
        L12:
            if (r13 == 0) goto L1c
            int r4 = r12.length
            if (r0 < r4) goto L1c
            int r4 = r12.length
            int r4 = r4 - r2
            r4 = r12[r4]
            goto L1e
        L1c:
            r4 = r12[r0]
        L1e:
            if (r3 != r4) goto L21
            goto L49
        L21:
            r5 = r9[r0]
            int r6 = org.mozilla.javascript.NativeJavaObject.getConversionWeight(r5, r3)
            int r5 = org.mozilla.javascript.NativeJavaObject.getConversionWeight(r5, r4)
            r7 = 3
            if (r6 >= r5) goto L2f
            goto L45
        L2f:
            r8 = 2
            if (r6 <= r5) goto L34
        L32:
            r2 = r8
            goto L45
        L34:
            if (r6 != 0) goto L44
            boolean r5 = r3.isAssignableFrom(r4)
            if (r5 == 0) goto L3d
            goto L32
        L3d:
            boolean r3 = r4.isAssignableFrom(r3)
            if (r3 == 0) goto L44
            goto L45
        L44:
            r2 = r7
        L45:
            r1 = r1 | r2
            if (r1 != r7) goto L49
            return r1
        L49:
            int r0 = r0 + 1
            goto L2
        L4c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeJavaMethod.preferSignature(java.lang.Object[], java.lang.Class[], boolean, java.lang.Class[], boolean):int");
    }

    public static String scriptSignature(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i != objArr.length; i++) {
            Object obj = objArr[i];
            String name = obj == null ? "null" : obj instanceof Boolean ? "boolean" : obj instanceof String ? "string" : obj instanceof Number ? "number" : obj instanceof Scriptable ? obj instanceof Undefined ? "undefined" : obj instanceof Wrapper ? ((Wrapper) obj).unwrap().getClass().getName() : obj instanceof Function ? "function" : "object" : JavaMembers.javaSignature(obj.getClass());
            if (i != 0) {
                sb.append(',');
            }
            sb.append(name);
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object[] objArr2;
        Object obj;
        Object obj2 = null;
        if (this.methods.length == 0) {
            Node$$ExternalSyntheticBUOutline0.m811m("No methods defined for call");
            return null;
        }
        int findCachedFunction = findCachedFunction(context, objArr);
        MemberBox[] memberBoxArr = this.methods;
        if (findCachedFunction < 0) {
            throw Context.reportRuntimeErrorById("msg.java.no_such_method", memberBoxArr[0].method().getDeclaringClass().getName() + "." + getFunctionName() + "(" + scriptSignature(objArr) + ")");
        }
        MemberBox memberBox = memberBoxArr[findCachedFunction];
        Class<?>[] clsArr = memberBox.argTypes;
        if (memberBox.vararg) {
            objArr2 = new Object[clsArr.length];
            for (int i = 0; i < clsArr.length - 1; i++) {
                objArr2[i] = Context.jsToJava(objArr[i], clsArr[i]);
            }
            if (objArr.length == clsArr.length && (objArr[objArr.length - 1] == null || (objArr[objArr.length - 1] instanceof NativeArray) || (objArr[objArr.length - 1] instanceof NativeJavaArray))) {
                obj = Context.jsToJava(objArr[objArr.length - 1], clsArr[clsArr.length - 1]);
            } else {
                Class<?> componentType = clsArr[clsArr.length - 1].getComponentType();
                Object newInstance = Array.newInstance(componentType, (objArr.length - clsArr.length) + 1);
                for (int i2 = 0; i2 < Array.getLength(newInstance); i2++) {
                    Array.set(newInstance, i2, Context.jsToJava(objArr[(clsArr.length - 1) + i2], componentType));
                }
                obj = newInstance;
            }
            objArr2[clsArr.length - 1] = obj;
        } else {
            objArr2 = objArr;
            for (int i3 = 0; i3 < objArr2.length; i3++) {
                Object obj3 = objArr2[i3];
                Object jsToJava = Context.jsToJava(obj3, clsArr[i3]);
                if (jsToJava != obj3) {
                    if (objArr == objArr2) {
                        objArr2 = (Object[]) objArr2.clone();
                    }
                    objArr2[i3] = jsToJava;
                }
            }
        }
        if (!memberBox.isStatic()) {
            Class<?> declaringClass = memberBox.getDeclaringClass();
            for (Scriptable scriptable3 = scriptable2; scriptable3 != null; scriptable3 = scriptable3.getPrototype()) {
                if (scriptable3 instanceof Wrapper) {
                    Object unwrap = ((Wrapper) scriptable3).unwrap();
                    if (declaringClass.isInstance(unwrap)) {
                        obj2 = unwrap;
                    }
                }
            }
            throw Context.reportRuntimeErrorById("msg.nonjava.method", getFunctionName(), ScriptRuntime.toString(scriptable2), declaringClass.getName());
        }
        Object invoke = memberBox.invoke(obj2, objArr2);
        Class<?> returnType = memberBox.method().getReturnType();
        Object wrap = context.getWrapFactory().wrap(context, scriptable, invoke, returnType);
        return (wrap == null && returnType == Void.TYPE) ? Undefined.instance : wrap;
    }

    @Override // org.mozilla.javascript.BaseFunction
    public String decompile(int i, EnumSet<DecompilerFlag> enumSet) {
        StringBuilder sb = new StringBuilder();
        boolean contains = enumSet.contains(DecompilerFlag.ONLY_BODY);
        if (!contains) {
            sb.append("function ");
            sb.append(getFunctionName());
            sb.append("() {");
        }
        sb.append("/*\n");
        sb.append(toString());
        sb.append(contains ? "*/\n" : "*/}\n");
        return sb.toString();
    }

    public int findCachedFunction(Context context, Object[] objArr) {
        MemberBox[] memberBoxArr = this.methods;
        if (memberBoxArr.length <= 1) {
            return findFunction(context, memberBoxArr, objArr);
        }
        Iterator<ResolvedOverload> it = this.overloadCache.iterator();
        while (it.hasNext()) {
            ResolvedOverload next = it.next();
            if (next.matches(objArr)) {
                return next.index;
            }
        }
        int findFunction = findFunction(context, this.methods, objArr);
        if (this.overloadCache.size() < this.methods.length * 2) {
            this.overloadCache.addIfAbsent(new ResolvedOverload(objArr, findFunction));
        }
        return findFunction;
    }

    @Override // org.mozilla.javascript.BaseFunction
    public String getFunctionName() {
        return this.functionName;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int length = this.methods.length;
        for (int i = 0; i != length; i++) {
            boolean isMethod = this.methods[i].isMethod();
            MemberBox[] memberBoxArr = this.methods;
            if (isMethod) {
                Method method = memberBoxArr[i].method();
                sb.append(JavaMembers.javaSignature(method.getReturnType()));
                sb.append(' ');
                sb.append(method.getName());
            } else {
                sb.append(memberBoxArr[i].getName());
            }
            sb.append(JavaMembers.liveConnectSignature(this.methods[i].argTypes));
            sb.append('\n');
        }
        return sb.toString();
    }

    public NativeJavaMethod(MemberBox[] memberBoxArr, String str) {
        this.overloadCache = new CopyOnWriteArrayList<>();
        this.functionName = str;
        this.methods = memberBoxArr;
    }

    public NativeJavaMethod(MemberBox memberBox, String str) {
        this.overloadCache = new CopyOnWriteArrayList<>();
        this.functionName = str;
        this.methods = new MemberBox[]{memberBox};
    }

    public NativeJavaMethod(Method method, String str) {
        this(new MemberBox(method), str);
    }

    private static void printDebug(String str, MemberBox memberBox, Object[] objArr) {
    }
}
