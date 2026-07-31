package org.mozilla.javascript;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import j$.util.Map;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.security.CodeSource;
import java.security.ProtectionDomain;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.mozilla.classfile.ClassFileWriter;
import org.mozilla.javascript.optimizer.Signatures;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JavaAdapter implements IdFunctionCall {
    private static final Object FTAG = "JavaAdapter";
    private static final int Id_JavaAdapter = 1;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class JavaAdapterSignature {
        Class<?>[] interfaces;
        Map<String, Integer> names;
        Class<?> superClass;

        public JavaAdapterSignature(Class<?> cls, Class<?>[] clsArr, Map<String, Integer> map) {
            this.superClass = cls;
            this.interfaces = clsArr;
            this.names = map;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof JavaAdapterSignature)) {
                return false;
            }
            JavaAdapterSignature javaAdapterSignature = (JavaAdapterSignature) obj;
            if (this.superClass != javaAdapterSignature.superClass) {
                return false;
            }
            Class<?>[] clsArr = this.interfaces;
            Class<?>[] clsArr2 = javaAdapterSignature.interfaces;
            if (clsArr != clsArr2) {
                if (clsArr.length != clsArr2.length) {
                    return false;
                }
                int i = 0;
                while (true) {
                    Class<?>[] clsArr3 = this.interfaces;
                    if (i >= clsArr3.length) {
                        break;
                    }
                    if (clsArr3[i] != javaAdapterSignature.interfaces[i]) {
                        return false;
                    }
                    i++;
                }
            }
            if (this.names.size() != javaAdapterSignature.names.size()) {
                return false;
            }
            for (Map.Entry<String, Integer> entry : this.names.entrySet()) {
                String key = entry.getKey();
                int intValue = entry.getValue().intValue();
                if (intValue != ((Integer) Map.EL.getOrDefault(javaAdapterSignature.names, key, Integer.valueOf(intValue + 1))).intValue()) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            return this.names.size() ^ (this.superClass.hashCode() + Arrays.hashCode(this.interfaces));
        }
    }

    public static int appendMethodSignature(Class<?>[] clsArr, Class<?> cls, StringBuilder sb) {
        sb.append('(');
        int length = clsArr.length + 1;
        for (Class<?> cls2 : clsArr) {
            appendTypeString(sb, cls2);
            if (cls2 == Long.TYPE || cls2 == Double.TYPE) {
                length++;
            }
        }
        sb.append(')');
        appendTypeString(sb, cls);
        return length;
    }

    private static void appendOverridableMethods(Class<?> cls, List<Method> list, Set<String> set) {
        for (Method method : cls.isInterface() ? cls.getMethods() : cls.getDeclaredMethods()) {
            String m$1 = Owner.CC.m$1(method.getName(), getMethodSignature(method, method.getParameterTypes()));
            if (!set.contains(m$1)) {
                int modifiers = method.getModifiers();
                if (!Modifier.isStatic(modifiers)) {
                    if (Modifier.isFinal(modifiers)) {
                        set.add(m$1);
                    } else if (Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers)) {
                        list.add(method);
                        set.add(m$1);
                    }
                }
            }
        }
    }

    private static StringBuilder appendTypeString(StringBuilder sb, Class<?> cls) {
        while (cls.isArray()) {
            sb.append('[');
            cls = cls.getComponentType();
        }
        if (cls.isPrimitive()) {
            sb.append(cls == Boolean.TYPE ? 'Z' : cls == Long.TYPE ? 'J' : Character.toUpperCase(cls.getName().charAt(0)));
            return sb;
        }
        sb.append('L');
        sb.append(cls.getName().replace('.', '/'));
        sb.append(';');
        return sb;
    }

    public static Object callMethod(ContextFactory contextFactory, final Scriptable scriptable, final Function function, final Object[] objArr, final long j) {
        if (function == null) {
            return null;
        }
        if (contextFactory == null) {
            contextFactory = ContextFactory.getGlobal();
        }
        final Scriptable parentScope = function.getParentScope();
        if (j == 0) {
            return Context.call(contextFactory, function, parentScope, scriptable, objArr);
        }
        Context currentContext = Context.getCurrentContext();
        return currentContext != null ? doCall(currentContext, parentScope, scriptable, function, objArr, j) : contextFactory.call(new ContextAction() { // from class: org.mozilla.javascript.JavaAdapter$$ExternalSyntheticLambda0
            @Override // org.mozilla.javascript.ContextAction
            public final Object run(Context context) {
                Object lambda$callMethod$0;
                lambda$callMethod$0 = JavaAdapter.lambda$callMethod$0(Scriptable.this, scriptable, function, objArr, j, context);
                return lambda$callMethod$0;
            }
        });
    }

    public static Object convertResult(Object obj, Class<?> cls) {
        if (obj != Undefined.instance || cls == ScriptRuntime.ObjectClass || cls == ScriptRuntime.StringClass) {
            return Context.jsToJava(obj, cls);
        }
        return null;
    }

    public static byte[] createAdapterCode(java.util.Map<String, Integer> map, String str, Class<?> cls, Class<?>[] clsArr, String str2) {
        String str3;
        int i;
        ClassFileWriter classFileWriter;
        int i2;
        java.util.Map<String, Integer> map2 = map;
        String str4 = str;
        Class<?>[] clsArr2 = clsArr;
        int i3 = 0;
        ClassFileWriter classFileWriter2 = new ClassFileWriter(str4, cls.getName(), "<adapter>");
        classFileWriter2.addField("factory", "Lorg/mozilla/javascript/ContextFactory;", (short) 17);
        classFileWriter2.addField("delegee", "Lorg/mozilla/javascript/Scriptable;", (short) 17);
        classFileWriter2.addField("self", "Lorg/mozilla/javascript/Scriptable;", (short) 17);
        int length = clsArr2 == null ? 0 : clsArr2.length;
        for (int i4 = 0; i4 < length; i4++) {
            Class<?> cls2 = clsArr2[i4];
            if (cls2 != null) {
                classFileWriter2.itsInterfaces.add(Short.valueOf(classFileWriter2.itsConstantPool.addClass(cls2.getName())));
            }
        }
        String replace = cls.getName().replace('.', '/');
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            int modifiers = constructor.getModifiers();
            if (Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers)) {
                generateCtor(classFileWriter2, str4, replace, constructor);
            }
        }
        generateSerialCtor(classFileWriter2, str4, replace);
        if (str2 != null) {
            generateEmptyCtor(classFileWriter2, str4, replace, str2);
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        int i5 = 0;
        while (i5 < length) {
            Method[] methods = clsArr2[i5].getMethods();
            int length2 = methods.length;
            int i6 = i3;
            while (i6 < length2) {
                Method method = methods[i6];
                int modifiers2 = method.getModifiers();
                if (Modifier.isStatic(modifiers2) || Modifier.isFinal(modifiers2) || method.isDefault()) {
                    i = length2;
                    classFileWriter = classFileWriter2;
                    i2 = i6;
                } else {
                    int i7 = length2;
                    classFileWriter = classFileWriter2;
                    String name = method.getName();
                    i2 = i6;
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (!map2.containsKey(name)) {
                        try {
                            cls.getMethod(name, parameterTypes);
                        } catch (NoSuchMethodException unused) {
                        }
                        i = i7;
                    }
                    String m$1 = Owner.CC.m$1(name, getMethodSignature(method, parameterTypes));
                    if (hashMap.containsKey(m$1)) {
                        classFileWriter = classFileWriter;
                        i = i7;
                    } else {
                        i = i7;
                        classFileWriter = classFileWriter;
                        generateMethod(classFileWriter, str4, name, parameterTypes, method.getReturnType(), true);
                        hashMap.put(m$1, 0);
                        hashMap2.put(name, 0);
                    }
                }
                i6 = i2 + 1;
                str4 = str;
                classFileWriter2 = classFileWriter;
                length2 = i;
            }
            i5++;
            str4 = str;
            clsArr2 = clsArr;
            i3 = 0;
        }
        ClassFileWriter classFileWriter3 = classFileWriter2;
        Method[] overridableMethods = getOverridableMethods(cls);
        int length3 = overridableMethods.length;
        int i8 = 0;
        while (i8 < length3) {
            Method method2 = overridableMethods[i8];
            boolean isAbstract = Modifier.isAbstract(method2.getModifiers());
            String name2 = method2.getName();
            if (isAbstract || map2.containsKey(name2)) {
                Class<?>[] parameterTypes2 = method2.getParameterTypes();
                String methodSignature = getMethodSignature(method2, parameterTypes2);
                String m$12 = Owner.CC.m$1(name2, methodSignature);
                if (!hashMap.containsKey(m$12)) {
                    generateMethod(classFileWriter3, str, name2, parameterTypes2, method2.getReturnType(), true);
                    hashMap.put(m$12, 0);
                    hashMap2.put(name2, 0);
                    if (!isAbstract) {
                        str3 = replace;
                        generateSuper(classFileWriter3, str, str3, name2, methodSignature, parameterTypes2, method2.getReturnType());
                        i8++;
                        map2 = map;
                        replace = str3;
                    }
                }
            }
            str3 = replace;
            i8++;
            map2 = map;
            replace = str3;
        }
        for (Map.Entry<String, Integer> entry : map.entrySet()) {
            String key = entry.getKey();
            if (!hashMap2.containsKey(key)) {
                int intValue = entry.getValue().intValue();
                Class[] clsArr3 = new Class[intValue];
                for (int i9 = 0; i9 < intValue; i9++) {
                    clsArr3[i9] = ScriptRuntime.ObjectClass;
                }
                ClassFileWriter classFileWriter4 = classFileWriter3;
                generateMethod(classFileWriter4, str, key, clsArr3, ScriptRuntime.ObjectClass, false);
                classFileWriter3 = classFileWriter4;
            }
        }
        return classFileWriter3.toByteArray();
    }

    public static Scriptable createAdapterWrapper(Scriptable scriptable, Object obj) {
        NativeJavaObject nativeJavaObject = new NativeJavaObject(ScriptableObject.getTopLevelScope(scriptable), obj, null, true);
        nativeJavaObject.setPrototype(scriptable);
        return nativeJavaObject;
    }

    private static Object doCall(Context context, Scriptable scriptable, Scriptable scriptable2, Function function, Object[] objArr, long j) {
        for (int i = 0; i != objArr.length; i++) {
            if (0 != ((1 << i) & j)) {
                Object obj = objArr[i];
                if (!(obj instanceof Scriptable)) {
                    objArr[i] = context.getWrapFactory().wrap(context, scriptable, obj, null);
                }
            }
        }
        return function.call(context, scriptable, scriptable2, objArr);
    }

    private static void generateCtor(ClassFileWriter classFileWriter, String str, String str2, Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int i = 3;
        if (parameterTypes.length == 0) {
            classFileWriter.startMethod("<init>", "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ContextFactory;)V", (short) 1);
            classFileWriter.add(42);
            classFileWriter.addInvoke(str2, "<init>", Token.TAGGED_TEMPLATE_LITERAL, "()V");
        } else {
            StringBuilder sb = new StringBuilder("(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ContextFactory;");
            int length = sb.length();
            for (Class<?> cls : parameterTypes) {
                appendTypeString(sb, cls);
            }
            sb.append(")V");
            classFileWriter.startMethod("<init>", sb.toString(), (short) 1);
            classFileWriter.add(42);
            for (Class<?> cls2 : parameterTypes) {
                i += generatePushParam(classFileWriter, i, cls2);
            }
            sb.delete(1, length);
            classFileWriter.addInvoke(str2, "<init>", Token.TAGGED_TEMPLATE_LITERAL, sb.toString());
        }
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(str, "delegee", Token.TEMPLATE_CHARS, "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(42);
        classFileWriter.add(44);
        classFileWriter.add(str, "factory", Token.TEMPLATE_CHARS, "Lorg/mozilla/javascript/ContextFactory;");
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(42);
        classFileWriter.addInvoke("org/mozilla/javascript/JavaAdapter", "createAdapterWrapper", Token.DOTDOTDOT, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(str, "self", Token.TEMPLATE_CHARS, "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(Token.METHOD);
        classFileWriter.stopMethod(i);
    }

    private static void generateEmptyCtor(ClassFileWriter classFileWriter, String str, String str2, String str3) {
        classFileWriter.startMethod("<init>", "()V", (short) 1);
        classFileWriter.add(42);
        classFileWriter.addInvoke(str2, "<init>", Token.TAGGED_TEMPLATE_LITERAL, "()V");
        classFileWriter.add(42);
        classFileWriter.add(1);
        classFileWriter.add(str, "factory", Token.TEMPLATE_CHARS, "Lorg/mozilla/javascript/ContextFactory;");
        classFileWriter.add(Token.LAST_TOKEN, str3);
        classFileWriter.add(89);
        classFileWriter.addInvoke(str3, "<init>", Token.TAGGED_TEMPLATE_LITERAL, "()V");
        classFileWriter.addInvoke("org/mozilla/javascript/JavaAdapter", "runScript", Token.DOTDOTDOT, "(Lorg/mozilla/javascript/Script;)Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(76);
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(str, "delegee", Token.TEMPLATE_CHARS, "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(42);
        classFileWriter.addInvoke("org/mozilla/javascript/JavaAdapter", "createAdapterWrapper", Token.DOTDOTDOT, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(str, "self", Token.TEMPLATE_CHARS, "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(Token.METHOD);
        classFileWriter.stopMethod(2);
    }

    private static void generateMethod(ClassFileWriter classFileWriter, String str, String str2, Class<?>[] clsArr, Class<?> cls, boolean z) {
        StringBuilder sb = new StringBuilder();
        int appendMethodSignature = appendMethodSignature(clsArr, cls, sb);
        classFileWriter.startMethod(str2, sb.toString(), (short) 1);
        classFileWriter.add(42);
        classFileWriter.add(str, "factory", 180, "Lorg/mozilla/javascript/ContextFactory;");
        classFileWriter.add(42);
        classFileWriter.add(str, "self", 180, "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(42);
        classFileWriter.add(str, "delegee", 180, "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.addPush(str2);
        classFileWriter.addInvoke("org/mozilla/javascript/JavaAdapter", "getFunction", Token.DOTDOTDOT, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;");
        generatePushWrappedArgs(classFileWriter, clsArr, clsArr.length);
        if (clsArr.length > 64) {
            throw Context.reportRuntimeErrorById("JavaAdapter can not subclass methods with more then 64 arguments.", new Object[0]);
        }
        long j = 0;
        for (int i = 0; i != clsArr.length; i++) {
            if (!clsArr[i].isPrimitive()) {
                j |= 1 << i;
            }
        }
        int i2 = (int) j;
        if (i2 == j) {
            classFileWriter.addPush(i2);
            classFileWriter.add(Token.BREAK);
        } else {
            classFileWriter.add(20, classFileWriter.itsConstantPool.addConstant(j));
        }
        classFileWriter.addInvoke("org/mozilla/javascript/JavaAdapter", "callMethod", Token.DOTDOTDOT, "(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)Ljava/lang/Object;");
        generateReturnResult(classFileWriter, cls, z);
        classFileWriter.stopMethod((short) appendMethodSignature);
    }

    private static void generatePopResult(ClassFileWriter classFileWriter, Class<?> cls) {
        if (!cls.isPrimitive()) {
            classFileWriter.add(Token.GENEXPR);
            return;
        }
        char charAt = cls.getName().charAt(0);
        if (charAt == 'f') {
            classFileWriter.add(Token.DEBUGGER);
            return;
        }
        if (charAt != 'i') {
            if (charAt == 'l') {
                classFileWriter.add(Token.WITHEXPR);
                return;
            } else if (charAt != 's' && charAt != 'z') {
                switch (charAt) {
                    case 'd':
                        classFileWriter.add(Token.COMMENT);
                        break;
                }
                return;
            }
        }
        classFileWriter.add(172);
    }

    private static int generatePushParam(ClassFileWriter classFileWriter, int i, Class<?> cls) {
        if (!cls.isPrimitive()) {
            classFileWriter.addALoad(i);
            return 1;
        }
        char charAt = cls.getName().charAt(0);
        if (charAt == 'f') {
            classFileWriter.xop(34, 23, i);
            return 1;
        }
        if (charAt != 'i') {
            if (charAt == 'l') {
                classFileWriter.xop(30, 22, i);
                return 2;
            }
            if (charAt != 's' && charAt != 'z') {
                switch (charAt) {
                    case Token.COMMA /* 98 */:
                    case 'c':
                        break;
                    case 'd':
                        classFileWriter.addDLoad(i);
                        return 2;
                    default:
                        throw Kit.codeBug();
                }
            }
        }
        classFileWriter.addILoad(i);
        return 1;
    }

    public static void generatePushWrappedArgs(ClassFileWriter classFileWriter, Class<?>[] clsArr, int i) {
        classFileWriter.addPush(i);
        classFileWriter.add(PsExtractor.PRIVATE_STREAM_1, "java/lang/Object");
        int i2 = 1;
        for (int i3 = 0; i3 != clsArr.length; i3++) {
            classFileWriter.add(89);
            classFileWriter.addPush(i3);
            i2 += generateWrapArg(classFileWriter, i2, clsArr[i3]);
            classFileWriter.add(83);
        }
    }

    public static void generateReturnResult(ClassFileWriter classFileWriter, Class<?> cls, boolean z) {
        if (cls == Void.TYPE) {
            classFileWriter.add(87);
            classFileWriter.add(Token.METHOD);
            return;
        }
        if (cls == Boolean.TYPE) {
            classFileWriter.addInvoke("org/mozilla/javascript/Context", "toBoolean", Token.DOTDOTDOT, Signatures.MATH_TO_BOOLEAN);
            classFileWriter.add(172);
            return;
        }
        if (cls == Character.TYPE) {
            classFileWriter.addInvoke("org/mozilla/javascript/Context", "toString", Token.DOTDOTDOT, "(Ljava/lang/Object;)Ljava/lang/String;");
            classFileWriter.add(3);
            classFileWriter.addInvoke("java/lang/String", "charAt", Token.TEMPLATE_LITERAL_SUBST, "(I)C");
            classFileWriter.add(172);
            return;
        }
        if (!cls.isPrimitive()) {
            String name = cls.getName();
            if (z) {
                classFileWriter.add(18, classFileWriter.itsConstantPool.addConstant(name));
                classFileWriter.addInvoke("java/lang/Class", "forName", Token.DOTDOTDOT, "(Ljava/lang/String;)Ljava/lang/Class;");
                classFileWriter.addInvoke("org/mozilla/javascript/JavaAdapter", "convertResult", Token.DOTDOTDOT, "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;");
            }
            classFileWriter.add(PsExtractor.AUDIO_STREAM, name);
            classFileWriter.add(Token.GENEXPR);
            return;
        }
        classFileWriter.addInvoke("org/mozilla/javascript/Context", "toNumber", Token.DOTDOTDOT, Signatures.MATH_TO_NUMBER);
        char charAt = cls.getName().charAt(0);
        if (charAt != 'b') {
            if (charAt == 'd') {
                classFileWriter.add(Token.COMMENT);
                return;
            }
            if (charAt == 'f') {
                classFileWriter.add(Token.LABEL);
                classFileWriter.add(Token.DEBUGGER);
                return;
            } else if (charAt != 'i') {
                if (charAt == 'l') {
                    classFileWriter.add(Token.BLOCK);
                    classFileWriter.add(Token.WITHEXPR);
                    return;
                } else if (charAt != 's') {
                    Node$$ExternalSyntheticBUOutline0.m811m("Unexpected return type ".concat(String.valueOf(cls)));
                    return;
                }
            }
        }
        classFileWriter.add(Token.COMPUTED_PROPERTY);
        classFileWriter.add(172);
    }

    private static void generateSerialCtor(ClassFileWriter classFileWriter, String str, String str2) {
        classFileWriter.startMethod("<init>", "(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V", (short) 1);
        classFileWriter.add(42);
        classFileWriter.addInvoke(str2, "<init>", Token.TAGGED_TEMPLATE_LITERAL, "()V");
        classFileWriter.add(42);
        classFileWriter.add(43);
        classFileWriter.add(str, "factory", Token.TEMPLATE_CHARS, "Lorg/mozilla/javascript/ContextFactory;");
        classFileWriter.add(42);
        classFileWriter.add(44);
        classFileWriter.add(str, "delegee", Token.TEMPLATE_CHARS, "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(42);
        classFileWriter.add(45);
        classFileWriter.add(str, "self", Token.TEMPLATE_CHARS, "Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.add(Token.METHOD);
        classFileWriter.stopMethod(4);
    }

    private static void generateSuper(ClassFileWriter classFileWriter, String str, String str2, String str3, String str4, Class<?>[] clsArr, Class<?> cls) {
        classFileWriter.startMethod("super$" + str3, str4, (short) 1);
        classFileWriter.add(25, 0);
        int i = 1;
        for (Class<?> cls2 : clsArr) {
            i += generatePushParam(classFileWriter, i, cls2);
        }
        classFileWriter.addInvoke(str2, str3, Token.TAGGED_TEMPLATE_LITERAL, str4);
        if (cls.equals(Void.TYPE)) {
            classFileWriter.add(Token.METHOD);
        } else {
            generatePopResult(classFileWriter, cls);
        }
        classFileWriter.stopMethod((short) (i + 1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0068, code lost:
    
        if (r9 != 's') goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int generateWrapArg(org.mozilla.classfile.ClassFileWriter r7, int r8, java.lang.Class<?> r9) {
        /*
            boolean r0 = r9.isPrimitive()
            r1 = 1
            if (r0 != 0) goto Ld
            r9 = 25
            r7.add(r9, r8)
            return r1
        Ld:
            java.lang.Class r0 = java.lang.Boolean.TYPE
            java.lang.String r2 = "<init>"
            r3 = 183(0xb7, float:2.56E-43)
            r4 = 89
            r5 = 187(0xbb, float:2.62E-43)
            r6 = 21
            if (r9 != r0) goto L2c
            java.lang.String r9 = "java/lang/Boolean"
            r7.add(r5, r9)
            r7.add(r4)
            r7.add(r6, r8)
            java.lang.String r8 = "(Z)V"
            r7.addInvoke(r9, r2, r3, r8)
            return r1
        L2c:
            java.lang.Class r0 = java.lang.Character.TYPE
            if (r9 != r0) goto L40
            r7.add(r6, r8)
            java.lang.String r8 = "valueOf"
            java.lang.String r9 = "(C)Ljava/lang/String;"
            java.lang.String r0 = "java/lang/String"
            r2 = 184(0xb8, float:2.58E-43)
            r7.addInvoke(r0, r8, r2, r9)
            return r1
        L40:
            java.lang.String r0 = "java/lang/Double"
            r7.add(r5, r0)
            r7.add(r4)
            java.lang.String r9 = r9.getName()
            r4 = 0
            char r9 = r9.charAt(r4)
            r4 = 98
            if (r9 == r4) goto L88
            r4 = 100
            r5 = 2
            if (r9 == r4) goto L82
            r4 = 102(0x66, float:1.43E-43)
            if (r9 == r4) goto L77
            r4 = 105(0x69, float:1.47E-43)
            if (r9 == r4) goto L88
            r4 = 108(0x6c, float:1.51E-43)
            if (r9 == r4) goto L6b
            r4 = 115(0x73, float:1.61E-43)
            if (r9 == r4) goto L88
            goto L90
        L6b:
            r9 = 22
            r7.add(r9, r8)
            r8 = 138(0x8a, float:1.93E-43)
            r7.add(r8)
        L75:
            r1 = r5
            goto L90
        L77:
            r9 = 23
            r7.add(r9, r8)
            r8 = 141(0x8d, float:1.98E-43)
            r7.add(r8)
            goto L90
        L82:
            r9 = 24
            r7.add(r9, r8)
            goto L75
        L88:
            r7.add(r6, r8)
            r8 = 135(0x87, float:1.89E-43)
            r7.add(r8)
        L90:
            java.lang.String r8 = "(D)V"
            r7.addInvoke(r0, r2, r3, r8)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.JavaAdapter.generateWrapArg(org.mozilla.classfile.ClassFileWriter, int, java.lang.Class):int");
    }

    private static Class<?> getAdapterClass(Scriptable scriptable, Class<?> cls, Class<?>[] clsArr, Scriptable scriptable2) {
        ClassCache classCache = ClassCache.get(scriptable);
        java.util.Map<JavaAdapterSignature, Class<?>> interfaceAdapterCacheMap = classCache.getInterfaceAdapterCacheMap();
        java.util.Map<String, Integer> objectFunctionNames = getObjectFunctionNames(scriptable2);
        JavaAdapterSignature javaAdapterSignature = new JavaAdapterSignature(cls, clsArr, objectFunctionNames);
        Class<?> cls2 = interfaceAdapterCacheMap.get(javaAdapterSignature);
        if (cls2 != null) {
            return cls2;
        }
        String m = Modifier.CC.m(classCache.newClassSerialNumber(), "adapter");
        Class<?> loadAdapterClass = loadAdapterClass(m, createAdapterCode(objectFunctionNames, m, cls, clsArr, null));
        if (classCache.isCachingEnabled()) {
            interfaceAdapterCacheMap.put(javaAdapterSignature, loadAdapterClass);
        }
        return loadAdapterClass;
    }

    public static Object getAdapterSelf(Class<?> cls, Object obj) {
        return cls.getDeclaredField("self").get(obj);
    }

    public static int[] getArgsToConvert(Class<?>[] clsArr) {
        int i = 0;
        for (int i2 = 0; i2 != clsArr.length; i2++) {
            if (!clsArr[i2].isPrimitive()) {
                i++;
            }
        }
        if (i == 0) {
            return null;
        }
        int[] iArr = new int[i];
        int i3 = 0;
        for (int i4 = 0; i4 != clsArr.length; i4++) {
            if (!clsArr[i4].isPrimitive()) {
                iArr[i3] = i4;
                i3++;
            }
        }
        return iArr;
    }

    public static Function getFunction(Scriptable scriptable, String str) {
        Object property = ScriptableObject.getProperty(scriptable, str);
        if (property == Scriptable.NOT_FOUND) {
            return null;
        }
        if (property instanceof Function) {
            return (Function) property;
        }
        throw ScriptRuntime.notFunctionError(property, str);
    }

    private static String getMethodSignature(Method method, Class<?>[] clsArr) {
        StringBuilder sb = new StringBuilder();
        appendMethodSignature(clsArr, method.getReturnType(), sb);
        return sb.toString();
    }

    private static java.util.Map<String, Integer> getObjectFunctionNames(Scriptable scriptable) {
        Object[] propertyIds = ScriptableObject.getPropertyIds(scriptable);
        HashMap hashMap = new HashMap();
        for (int i = 0; i != propertyIds.length; i++) {
            Object obj = propertyIds[i];
            if (obj instanceof String) {
                String str = (String) obj;
                Object property = ScriptableObject.getProperty(scriptable, str);
                if (property instanceof Function) {
                    int int32 = ScriptRuntime.toInt32(ScriptableObject.getProperty((Function) property, "length"));
                    if (int32 < 0) {
                        int32 = 0;
                    }
                    hashMap.put(str, Integer.valueOf(int32));
                }
            }
        }
        return hashMap;
    }

    public static Method[] getOverridableMethods(Class<?> cls) {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            appendOverridableMethods(cls2, arrayList, hashSet);
        }
        while (true) {
            if (cls == null) {
                return (Method[]) arrayList.toArray(new Method[0]);
            }
            for (Class<?> cls3 : cls.getInterfaces()) {
                appendOverridableMethods(cls3, arrayList, hashSet);
            }
            cls = cls.getSuperclass();
        }
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        IdFunctionObject idFunctionObject = new IdFunctionObject(new JavaAdapter(), FTAG, 1, "JavaAdapter", 1, scriptable);
        idFunctionObject.markAsConstructor(null);
        if (z) {
            idFunctionObject.sealObject();
        }
        idFunctionObject.exportAsScopeProperty();
    }

    public static Object js_createAdapter(Context context, Scriptable scriptable, Object[] objArr) {
        Object newInstance;
        int length = objArr.length;
        if (length == 0) {
            throw ScriptRuntime.typeErrorById("msg.adapter.zero.args", new Object[0]);
        }
        int i = 0;
        while (i < length - 1) {
            Object obj = objArr[i];
            if (obj instanceof NativeObject) {
                break;
            }
            if (!(obj instanceof NativeJavaClass)) {
                throw ScriptRuntime.typeErrorById("msg.not.java.class.arg", String.valueOf(i), ScriptRuntime.toString(obj));
            }
            i++;
        }
        Class[] clsArr = new Class[i];
        Class<?> cls = null;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Class<?> classObject = ((NativeJavaClass) objArr[i3]).getClassObject();
            if (classObject.isInterface()) {
                clsArr[i2] = classObject;
                i2++;
            } else {
                if (cls != null) {
                    throw ScriptRuntime.typeErrorById("msg.only.one.super", cls.getName(), classObject.getName());
                }
                cls = classObject;
            }
        }
        if (cls == null) {
            cls = ScriptRuntime.ObjectClass;
        }
        Class[] clsArr2 = new Class[i2];
        System.arraycopy(clsArr, 0, clsArr2, 0, i2);
        Scriptable ensureScriptable = ScriptableObject.ensureScriptable(objArr[i]);
        Class<?> adapterClass = getAdapterClass(scriptable, cls, clsArr2, ensureScriptable);
        int i4 = length - i;
        int i5 = i4 - 1;
        try {
            if (i5 > 0) {
                Object[] objArr2 = new Object[i4 + 1];
                objArr2[0] = ensureScriptable;
                objArr2[1] = context.getFactory();
                System.arraycopy(objArr, i + 1, objArr2, 2, i5);
                NativeJavaMethod nativeJavaMethod = new NativeJavaClass(scriptable, adapterClass, true).members.ctors;
                int findCachedFunction = nativeJavaMethod.findCachedFunction(context, objArr2);
                if (findCachedFunction < 0) {
                    throw Context.reportRuntimeErrorById("msg.no.java.ctor", adapterClass.getName(), NativeJavaMethod.scriptSignature(objArr));
                }
                newInstance = NativeJavaClass.constructInternal(objArr2, nativeJavaMethod.methods[findCachedFunction]);
            } else {
                newInstance = adapterClass.getConstructor(ScriptRuntime.ScriptableClass, ScriptRuntime.ContextFactoryClass).newInstance(ensureScriptable, context.getFactory());
            }
            Object adapterSelf = getAdapterSelf(adapterClass, newInstance);
            if (adapterSelf instanceof Wrapper) {
                Object unwrap = ((Wrapper) adapterSelf).unwrap();
                if (unwrap instanceof Scriptable) {
                    if (unwrap instanceof ScriptableObject) {
                        ScriptRuntime.setObjectProtoAndParent((ScriptableObject) unwrap, scriptable);
                    }
                    return unwrap;
                }
            }
            return adapterSelf;
        } catch (Exception e) {
            throw Context.throwAsScriptRuntimeEx(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$callMethod$0(Scriptable scriptable, Scriptable scriptable2, Function function, Object[] objArr, long j, Context context) {
        return doCall(context, scriptable, scriptable2, function, objArr, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ScriptableObject lambda$runScript$1(Script script, Context context) {
        ScriptableObject global = ScriptRuntime.getGlobal(context);
        script.exec(context, global);
        return global;
    }

    public static Class<?> loadAdapterClass(String str, byte[] bArr) {
        ProtectionDomain scriptProtectionDomain;
        Class<?> staticSecurityDomainClass = SecurityController.getStaticSecurityDomainClass();
        if (staticSecurityDomainClass == CodeSource.class || staticSecurityDomainClass == ProtectionDomain.class) {
            scriptProtectionDomain = SecurityUtilities.getScriptProtectionDomain();
            if (scriptProtectionDomain == null) {
                scriptProtectionDomain = JavaAdapter.class.getProtectionDomain();
            }
            if (staticSecurityDomainClass == CodeSource.class) {
                if (scriptProtectionDomain != null) {
                    scriptProtectionDomain = scriptProtectionDomain.getCodeSource();
                }
            }
            GeneratedClassLoader createLoader = SecurityController.createLoader(null, scriptProtectionDomain);
            Class<?> defineClass = createLoader.defineClass(str, bArr);
            createLoader.linkClass(defineClass);
            return defineClass;
        }
        scriptProtectionDomain = null;
        GeneratedClassLoader createLoader2 = SecurityController.createLoader(null, scriptProtectionDomain);
        Class<?> defineClass2 = createLoader2.defineClass(str, bArr);
        createLoader2.linkClass(defineClass2);
        return defineClass2;
    }

    public static Object readAdapterObject(Scriptable scriptable, ObjectInputStream objectInputStream) {
        Context currentContext = Context.getCurrentContext();
        ContextFactory factory = currentContext != null ? currentContext.getFactory() : null;
        Class<?> cls = Class.forName((String) objectInputStream.readObject());
        String[] strArr = (String[]) objectInputStream.readObject();
        Class[] clsArr = new Class[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            clsArr[i] = Class.forName(strArr[i]);
        }
        Scriptable scriptable2 = (Scriptable) objectInputStream.readObject();
        Class<?> adapterClass = getAdapterClass(scriptable, cls, clsArr, scriptable2);
        Class<Scriptable> cls2 = ScriptRuntime.ScriptableClass;
        try {
            return adapterClass.getConstructor(ScriptRuntime.ContextFactoryClass, cls2, cls2).newInstance(factory, scriptable2, scriptable);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
            throw new ClassNotFoundException("adapter");
        }
    }

    public static Scriptable runScript(Script script) {
        return (Scriptable) ContextFactory.getGlobal().call(new IRFactory$$ExternalSyntheticLambda0(script));
    }

    public static void writeAdapterObject(Object obj, ObjectOutputStream objectOutputStream) {
        Class<?> cls = obj.getClass();
        objectOutputStream.writeObject(cls.getSuperclass().getName());
        Class<?>[] interfaces = cls.getInterfaces();
        String[] strArr = new String[interfaces.length];
        for (int i = 0; i < interfaces.length; i++) {
            strArr[i] = interfaces[i].getName();
        }
        objectOutputStream.writeObject(strArr);
        try {
            objectOutputStream.writeObject(cls.getField("delegee").get(obj));
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            throw new IOException();
        }
    }

    @Override // org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (idFunctionObject.hasTag(FTAG) && idFunctionObject.methodId() == 1) {
            return js_createAdapter(context, scriptable, objArr);
        }
        throw idFunctionObject.unknown();
    }
}
