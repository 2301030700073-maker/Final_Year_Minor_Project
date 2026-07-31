package org.mozilla.javascript;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import java.lang.reflect.Array;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class NativeJavaClass extends NativeJavaObject implements Function {
    static final String javaClassPropertyName = "__javaObject__";
    private static final long serialVersionUID = -6460763940409461664L;
    private Map<String, FieldAndMethods> staticFieldAndMethods;

    public NativeJavaClass(Scriptable scriptable, Class<?> cls) {
        this(scriptable, cls, false);
    }

    public static Object constructInternal(Object[] objArr, MemberBox memberBox) {
        Object[] objArr2;
        Object obj;
        Class<?>[] clsArr = memberBox.argTypes;
        int i = 0;
        if (memberBox.vararg) {
            objArr2 = new Object[clsArr.length];
            for (int i2 = 0; i2 < clsArr.length - 1; i2++) {
                objArr2[i2] = Context.jsToJava(objArr[i2], clsArr[i2]);
            }
            if (objArr.length == clsArr.length && (objArr[objArr.length - 1] == null || (objArr[objArr.length - 1] instanceof NativeArray) || (objArr[objArr.length - 1] instanceof NativeJavaArray))) {
                obj = Context.jsToJava(objArr[objArr.length - 1], clsArr[clsArr.length - 1]);
            } else {
                Class<?> componentType = clsArr[clsArr.length - 1].getComponentType();
                Object newInstance = Array.newInstance(componentType, (objArr.length - clsArr.length) + 1);
                while (i < Array.getLength(newInstance)) {
                    Array.set(newInstance, i, Context.jsToJava(objArr[(clsArr.length - 1) + i], componentType));
                    i++;
                }
                obj = newInstance;
            }
            objArr2[clsArr.length - 1] = obj;
        } else {
            objArr2 = objArr;
            while (i < objArr2.length) {
                Object obj2 = objArr2[i];
                Object jsToJava = Context.jsToJava(obj2, clsArr[i]);
                if (jsToJava != obj2) {
                    if (objArr2 == objArr) {
                        objArr2 = (Object[]) objArr.clone();
                    }
                    objArr2[i] = jsToJava;
                }
                i++;
            }
        }
        return memberBox.newInstance(objArr2);
    }

    public static Scriptable constructSpecific(Context context, Scriptable scriptable, Object[] objArr, MemberBox memberBox) {
        Object constructInternal = constructInternal(objArr, memberBox);
        return context.getWrapFactory().wrapNewObject(context, ScriptableObject.getTopLevelScope(scriptable), constructInternal);
    }

    private static Class<?> findNestedClass(Class<?> cls, String str) {
        String m = Owner.CC.m(cls.getName(), "$", str);
        ClassLoader classLoader = cls.getClassLoader();
        return classLoader == null ? Kit.classOrNull(m) : Kit.classOrNull(classLoader, m);
    }

    @Override // org.mozilla.javascript.Function, org.mozilla.javascript.Callable
    public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (objArr.length == 1 && (objArr[0] instanceof Scriptable)) {
            Class<?> classObject = getClassObject();
            Scriptable scriptable3 = (Scriptable) objArr[0];
            do {
                if ((scriptable3 instanceof Wrapper) && classObject.isInstance(((Wrapper) scriptable3).unwrap())) {
                    return scriptable3;
                }
                scriptable3 = scriptable3.getPrototype();
            } while (scriptable3 != null);
        }
        return construct(context, scriptable, objArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x008d, code lost:
    
        if (r7 == null) goto L30;
     */
    @Override // org.mozilla.javascript.Function, org.mozilla.javascript.Constructable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.mozilla.javascript.Scriptable construct(org.mozilla.javascript.Context r8, org.mozilla.javascript.Scriptable r9, java.lang.Object[] r10) {
        /*
            r7 = this;
            java.lang.Class r0 = r7.getClassObject()
            int r1 = r0.getModifiers()
            boolean r2 = java.lang.reflect.Modifier.isInterface(r1)
            r3 = 1
            r4 = 2
            r5 = 0
            if (r2 != 0) goto L3f
            boolean r1 = java.lang.reflect.Modifier.isAbstract(r1)
            if (r1 != 0) goto L3f
            org.mozilla.javascript.JavaMembers r7 = r7.members
            org.mozilla.javascript.NativeJavaMethod r7 = r7.ctors
            int r1 = r7.findCachedFunction(r8, r10)
            if (r1 < 0) goto L2a
            org.mozilla.javascript.MemberBox[] r7 = r7.methods
            r7 = r7[r1]
            org.mozilla.javascript.Scriptable r7 = constructSpecific(r8, r9, r10, r7)
            return r7
        L2a:
            java.lang.String r7 = org.mozilla.javascript.NativeJavaMethod.scriptSignature(r10)
            java.lang.String r8 = r0.getName()
            java.lang.Object[] r9 = new java.lang.Object[r4]
            r9[r5] = r8
            r9[r3] = r7
            java.lang.String r7 = "msg.no.java.ctor"
            org.mozilla.javascript.EvaluatorException r7 = org.mozilla.javascript.Context.reportRuntimeErrorById(r7, r9)
            throw r7
        L3f:
            int r1 = r10.length
            if (r1 == 0) goto La3
            org.mozilla.javascript.Scriptable r1 = org.mozilla.javascript.ScriptableObject.getTopLevelScope(r7)
            java.lang.String r2 = "Dalvik"
            java.lang.String r6 = "java.vm.name"
            java.lang.String r6 = java.lang.System.getProperty(r6)     // Catch: java.lang.Exception -> L6e
            boolean r2 = r2.equals(r6)     // Catch: java.lang.Exception -> L6e
            if (r2 == 0) goto L70
            boolean r2 = r0.isInterface()     // Catch: java.lang.Exception -> L6e
            if (r2 == 0) goto L70
            r7 = r10[r5]     // Catch: java.lang.Exception -> L6e
            org.mozilla.javascript.ScriptableObject r7 = org.mozilla.javascript.ScriptableObject.ensureScriptableObject(r7)     // Catch: java.lang.Exception -> L6e
            java.lang.Object r7 = org.mozilla.javascript.NativeJavaObject.createInterfaceAdapter(r0, r7)     // Catch: java.lang.Exception -> L6e
            org.mozilla.javascript.WrapFactory r10 = r8.getWrapFactory()     // Catch: java.lang.Exception -> L6e
            r1 = 0
            org.mozilla.javascript.Scriptable r7 = r10.wrapAsJavaObject(r8, r9, r7, r1)     // Catch: java.lang.Exception -> L6e
            return r7
        L6e:
            r7 = move-exception
            goto L89
        L70:
            java.lang.String r9 = "JavaAdapter"
            java.lang.Object r9 = r1.get(r9, r1)     // Catch: java.lang.Exception -> L6e
            java.lang.Object r2 = org.mozilla.javascript.Scriptable.NOT_FOUND     // Catch: java.lang.Exception -> L6e
            if (r9 == r2) goto L90
            r10 = r10[r5]     // Catch: java.lang.Exception -> L6e
            java.lang.Object[] r2 = new java.lang.Object[r4]     // Catch: java.lang.Exception -> L6e
            r2[r5] = r7     // Catch: java.lang.Exception -> L6e
            r2[r3] = r10     // Catch: java.lang.Exception -> L6e
            org.mozilla.javascript.Constructable r9 = (org.mozilla.javascript.Constructable) r9     // Catch: java.lang.Exception -> L6e
            org.mozilla.javascript.Scriptable r7 = r9.construct(r8, r1, r2)     // Catch: java.lang.Exception -> L6e
            return r7
        L89:
            java.lang.String r7 = r7.getMessage()
            if (r7 == 0) goto L90
            goto L92
        L90:
            java.lang.String r7 = ""
        L92:
            java.lang.String r8 = r0.getName()
            java.lang.Object[] r9 = new java.lang.Object[r4]
            r9[r5] = r7
            r9[r3] = r8
            java.lang.String r7 = "msg.cant.instantiate"
            org.mozilla.javascript.EvaluatorException r7 = org.mozilla.javascript.Context.reportRuntimeErrorById(r7, r9)
            throw r7
        La3:
            java.lang.String r7 = "msg.adapter.zero.args"
            java.lang.Object[] r8 = new java.lang.Object[r5]
            org.mozilla.javascript.EvaluatorException r7 = org.mozilla.javascript.Context.reportRuntimeErrorById(r7, r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeJavaClass.construct(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.Object[]):org.mozilla.javascript.Scriptable");
    }

    @Override // org.mozilla.javascript.NativeJavaObject
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // org.mozilla.javascript.NativeJavaObject, org.mozilla.javascript.Scriptable
    public Object get(String str, Scriptable scriptable) {
        FieldAndMethods fieldAndMethods;
        if (str.equals("prototype")) {
            return null;
        }
        Map<String, FieldAndMethods> map = this.staticFieldAndMethods;
        if (map != null && (fieldAndMethods = map.get(str)) != null) {
            return fieldAndMethods;
        }
        if (this.members.has(str, true)) {
            return this.members.get(this, str, this.javaObject, true);
        }
        Context context = Context.getContext();
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        WrapFactory wrapFactory = context.getWrapFactory();
        if (javaClassPropertyName.equals(str)) {
            return wrapFactory.wrap(context, topLevelScope, this.javaObject, ScriptRuntime.ClassClass);
        }
        Class<?> findNestedClass = findNestedClass(getClassObject(), str);
        if (findNestedClass == null) {
            throw this.members.reportMemberNotFound(str);
        }
        Scriptable wrapJavaClass = wrapFactory.wrapJavaClass(context, topLevelScope, findNestedClass);
        wrapJavaClass.setParentScope(this);
        return wrapJavaClass;
    }

    @Override // org.mozilla.javascript.NativeJavaObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "JavaClass";
    }

    public Class<?> getClassObject() {
        return (Class) super.unwrap();
    }

    @Override // org.mozilla.javascript.NativeJavaObject, org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        return (cls == null || cls == ScriptRuntime.StringClass) ? toString() : cls == ScriptRuntime.BooleanClass ? Boolean.TRUE : cls == ScriptRuntime.NumberClass ? ScriptRuntime.NaNobj : this;
    }

    @Override // org.mozilla.javascript.NativeJavaObject, org.mozilla.javascript.Scriptable
    public Object[] getIds() {
        return this.members.getIds(true);
    }

    @Override // org.mozilla.javascript.NativeJavaObject, org.mozilla.javascript.Scriptable
    public boolean has(String str, Scriptable scriptable) {
        return this.members.has(str, true) || javaClassPropertyName.equals(str);
    }

    @Override // org.mozilla.javascript.NativeJavaObject, org.mozilla.javascript.Scriptable
    public boolean hasInstance(Scriptable scriptable) {
        if (!(scriptable instanceof Wrapper) || (scriptable instanceof NativeJavaClass)) {
            return false;
        }
        return getClassObject().isInstance(((Wrapper) scriptable).unwrap());
    }

    @Override // org.mozilla.javascript.NativeJavaObject
    public int hashCode() {
        return super.hashCode();
    }

    @Override // org.mozilla.javascript.NativeJavaObject
    public void initMembers() {
        Class cls = (Class) this.javaObject;
        JavaMembers lookupClass = JavaMembers.lookupClass(this.parent, cls, cls, this.isAdapter);
        this.members = lookupClass;
        this.staticFieldAndMethods = lookupClass.getFieldAndMethodsObjects(this, cls, true);
    }

    @Override // org.mozilla.javascript.NativeJavaObject, org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
        this.members.put(this, str, this.javaObject, obj, true);
    }

    public String toString() {
        return Modifier.CC.m("[JavaClass ", getClassObject().getName(), "]");
    }

    public NativeJavaClass() {
    }

    public NativeJavaClass(Scriptable scriptable, Class<?> cls, boolean z) {
        super(scriptable, cls, null, z);
    }
}
