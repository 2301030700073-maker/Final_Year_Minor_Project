package org.mozilla.javascript.optimizer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.mozilla.classfile.ClassFileWriter;
import org.mozilla.javascript.CompilerEnvirons;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Evaluator;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.GeneratedClassLoader;
import org.mozilla.javascript.NativeFunction;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.mozilla.javascript.RhinoException;
import org.mozilla.javascript.Script;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.SecurityController;
import org.mozilla.javascript.Token;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.Name;
import org.mozilla.javascript.ast.ScriptNode;
import org.mozilla.javascript.ast.TemplateCharacters;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Codegen implements Evaluator {
    static final String DEFAULT_MAIN_METHOD_CLASS = "org.mozilla.javascript.optimizer.OptRuntime";
    static final String FUNCTION_CONSTRUCTOR_SIGNATURE = "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V";
    static final String FUNCTION_INIT_SIGNATURE = "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V";
    static final String ID_FIELD_NAME = "_id";
    static final String REGEXP_INIT_METHOD_NAME = "_reInit";
    static final String REGEXP_INIT_METHOD_SIGNATURE = "(Lorg/mozilla/javascript/Context;)V";
    private static final String SUPER_CLASS_NAME = "org.mozilla.javascript.NativeFunction";
    static final String TEMPLATE_LITERAL_INIT_METHOD_NAME = "_qInit";
    static final String TEMPLATE_LITERAL_INIT_METHOD_SIGNATURE = "()V";
    private static final Object globalLock = new Object();
    private static int globalSerialClassCounter;
    private CompilerEnvirons compilerEnv;
    private List<OptFunctionNode> directCallTargets;
    private double[] itsConstantList;
    private int itsConstantListSize;
    String mainClassName;
    String mainClassSignature;
    private String mainMethodClass = DEFAULT_MAIN_METHOD_CLASS;
    private HashMap<ScriptNode, Integer> scriptOrFnIndexes;
    ScriptNode[] scriptOrFnNodes;

    private static void addDoubleWrap(ClassFileWriter classFileWriter) {
        classFileWriter.addInvoke("org/mozilla/javascript/optimizer/OptRuntime", "wrapDouble", Token.DOTDOTDOT, "(D)Ljava/lang/Double;");
    }

    public static RuntimeException badTree() {
        throw new RuntimeException("Bad tree in codegen");
    }

    private static void collectScriptNodes_r(ScriptNode scriptNode, List<ScriptNode> list) {
        list.add(scriptNode);
        int functionCount = scriptNode.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            collectScriptNodes_r(scriptNode.getFunctionNode(i), list);
        }
    }

    private Class<?> defineClass(Object obj, Object obj2) {
        Object[] objArr = (Object[]) obj;
        String str = (String) objArr[0];
        byte[] bArr = (byte[]) objArr[1];
        GeneratedClassLoader createLoader = SecurityController.createLoader(getClass().getClassLoader(), obj2);
        try {
            Class<?> defineClass = createLoader.defineClass(str, bArr);
            createLoader.linkClass(defineClass);
            return defineClass;
        } catch (IllegalArgumentException | SecurityException e) {
            Node$$ExternalSyntheticBUOutline0.m811m("Malformed optimizer package ".concat(String.valueOf(e)));
            return null;
        }
    }

    private void emitConstantDudeInitializers(ClassFileWriter classFileWriter) {
        int i = this.itsConstantListSize;
        if (i == 0) {
            return;
        }
        classFileWriter.startMethod("<clinit>", TEMPLATE_LITERAL_INIT_METHOD_SIGNATURE, (short) 24);
        double[] dArr = this.itsConstantList;
        for (int i2 = 0; i2 != i; i2++) {
            double d = dArr[i2];
            String m = Modifier.CC.m(i2, "_k");
            String staticConstantWrapperType = getStaticConstantWrapperType(d);
            classFileWriter.addField(m, staticConstantWrapperType, (short) 10);
            int i3 = (int) d;
            if (i3 == d) {
                classFileWriter.addPush(i3);
                classFileWriter.addInvoke("java/lang/Integer", "valueOf", Token.DOTDOTDOT, "(I)Ljava/lang/Integer;");
            } else {
                classFileWriter.addPush(d);
                addDoubleWrap(classFileWriter);
            }
            classFileWriter.add(this.mainClassName, m, Token.YIELD_STAR, staticConstantWrapperType);
        }
        classFileWriter.add(Token.METHOD);
        classFileWriter.stopMethod(0);
    }

    private void emitDirectConstructor(ClassFileWriter classFileWriter, OptFunctionNode optFunctionNode) {
        classFileWriter.startMethod(getDirectCtorName(optFunctionNode.fnode), getBodyMethodSignature(optFunctionNode.fnode), (short) 10);
        int paramCount = optFunctionNode.fnode.getParamCount();
        int i = paramCount * 3;
        int i2 = i + 4;
        int i3 = i + 5;
        classFileWriter.addALoad(0);
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addInvoke("org/mozilla/javascript/BaseFunction", "createObject", Token.TEMPLATE_LITERAL_SUBST, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.addAStore(i3);
        classFileWriter.addALoad(0);
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addALoad(i3);
        for (int i4 = 0; i4 < paramCount; i4++) {
            int i5 = i4 * 3;
            classFileWriter.addALoad(i5 + 4);
            classFileWriter.addDLoad(i5 + 5);
        }
        classFileWriter.addALoad(i2);
        classFileWriter.addInvoke(this.mainClassName, getBodyMethodName(optFunctionNode.fnode), Token.DOTDOTDOT, getBodyMethodSignature(optFunctionNode.fnode));
        int acquireLabel = classFileWriter.acquireLabel();
        classFileWriter.add(89);
        classFileWriter.add(193, "org/mozilla/javascript/Scriptable");
        classFileWriter.add(Token.SETPROP_OP, acquireLabel);
        classFileWriter.add(PsExtractor.AUDIO_STREAM, "org/mozilla/javascript/Scriptable");
        classFileWriter.add(Token.GENEXPR);
        classFileWriter.markLabel(acquireLabel);
        classFileWriter.addALoad(i3);
        classFileWriter.add(Token.GENEXPR);
        classFileWriter.stopMethod((short) (i + 6));
    }

    private void emitRegExpInit(ClassFileWriter classFileWriter) {
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            ScriptNode[] scriptNodeArr = this.scriptOrFnNodes;
            if (i2 == scriptNodeArr.length) {
                break;
            }
            i3 += scriptNodeArr[i2].getRegexpCount();
            i2++;
        }
        if (i3 == 0) {
            return;
        }
        short s = 10;
        classFileWriter.startMethod(REGEXP_INIT_METHOD_NAME, REGEXP_INIT_METHOD_SIGNATURE, (short) 10);
        classFileWriter.addField("_reInitDone", "Z", (short) 74);
        classFileWriter.add(this.mainClassName, "_reInitDone", Token.ARROW, "Z");
        int acquireLabel = classFileWriter.acquireLabel();
        classFileWriter.add(Token.SETPROP_OP, acquireLabel);
        classFileWriter.add(Token.METHOD);
        classFileWriter.markLabel(acquireLabel);
        classFileWriter.addALoad(0);
        classFileWriter.addInvoke("org/mozilla/javascript/ScriptRuntime", "checkRegExpProxy", Token.DOTDOTDOT, "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;");
        classFileWriter.addAStore(1);
        int i4 = 0;
        while (true) {
            ScriptNode[] scriptNodeArr2 = this.scriptOrFnNodes;
            if (i4 == scriptNodeArr2.length) {
                classFileWriter.addPush(1);
                classFileWriter.add(this.mainClassName, "_reInitDone", Token.YIELD_STAR, "Z");
                classFileWriter.add(Token.METHOD);
                classFileWriter.stopMethod(2);
                return;
            }
            ScriptNode scriptNode = scriptNodeArr2[i4];
            int regexpCount = scriptNode.getRegexpCount();
            int i5 = i;
            while (i5 != regexpCount) {
                String compiledRegexpName = getCompiledRegexpName(scriptNode, i5);
                String regexpString = scriptNode.getRegexpString(i5);
                String regexpFlags = scriptNode.getRegexpFlags(i5);
                classFileWriter.addField(compiledRegexpName, "Ljava/lang/Object;", s);
                classFileWriter.addALoad(1);
                classFileWriter.addALoad(i);
                classFileWriter.addPush(regexpString);
                if (regexpFlags == null) {
                    classFileWriter.add(1);
                } else {
                    classFileWriter.addPush(regexpFlags);
                }
                classFileWriter.addInvoke("org/mozilla/javascript/RegExpProxy", "compileRegExp", Token.NULLISH_COALESCING, "(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;");
                classFileWriter.add(this.mainClassName, compiledRegexpName, Token.YIELD_STAR, "Ljava/lang/Object;");
                i5++;
                i = 0;
                s = 10;
            }
            i4++;
            i = 0;
            s = 10;
        }
    }

    private void emitTemplateLiteralInit(ClassFileWriter classFileWriter) {
        int i = 0;
        for (ScriptNode scriptNode : this.scriptOrFnNodes) {
            i += scriptNode.getTemplateLiteralCount();
        }
        if (i == 0) {
            return;
        }
        short s = 10;
        classFileWriter.startMethod(TEMPLATE_LITERAL_INIT_METHOD_NAME, TEMPLATE_LITERAL_INIT_METHOD_SIGNATURE, (short) 10);
        classFileWriter.addField("_qInitDone", "Z", (short) 74);
        classFileWriter.add(this.mainClassName, "_qInitDone", Token.ARROW, "Z");
        int acquireLabel = classFileWriter.acquireLabel();
        classFileWriter.add(Token.SETPROP_OP, acquireLabel);
        classFileWriter.add(Token.METHOD);
        classFileWriter.markLabel(acquireLabel);
        ScriptNode[] scriptNodeArr = this.scriptOrFnNodes;
        int length = scriptNodeArr.length;
        int i2 = 0;
        while (i2 < length) {
            ScriptNode scriptNode2 = scriptNodeArr[i2];
            int templateLiteralCount = scriptNode2.getTemplateLiteralCount();
            if (templateLiteralCount != 0) {
                String templateLiteralName = getTemplateLiteralName(scriptNode2);
                classFileWriter.addField(templateLiteralName, "[Ljava/lang/Object;", s);
                classFileWriter.addPush(templateLiteralCount);
                int i3 = PsExtractor.PRIVATE_STREAM_1;
                classFileWriter.add(PsExtractor.PRIVATE_STREAM_1, "java/lang/Object");
                int i4 = 0;
                while (i4 < templateLiteralCount) {
                    List<TemplateCharacters> templateLiteralStrings = scriptNode2.getTemplateLiteralStrings(i4);
                    int i5 = 89;
                    classFileWriter.add(89);
                    classFileWriter.addPush(i4);
                    classFileWriter.addPush(templateLiteralStrings.size() * 2);
                    classFileWriter.add(i3, "java/lang/String");
                    int i6 = 0;
                    for (TemplateCharacters templateCharacters : templateLiteralStrings) {
                        classFileWriter.add(i5);
                        int i7 = i6 + 1;
                        classFileWriter.addPush(i6);
                        if (templateCharacters.getValue() != null) {
                            classFileWriter.addPush(templateCharacters.getValue());
                        } else {
                            classFileWriter.add(1);
                        }
                        classFileWriter.add(83);
                        classFileWriter.add(89);
                        i6 += 2;
                        classFileWriter.addPush(i7);
                        classFileWriter.addPush(templateCharacters.getRawValue());
                        classFileWriter.add(83);
                        i5 = 89;
                    }
                    classFileWriter.add(83);
                    i4++;
                    i3 = PsExtractor.PRIVATE_STREAM_1;
                }
                classFileWriter.add(this.mainClassName, templateLiteralName, Token.YIELD_STAR, "[Ljava/lang/Object;");
            }
            i2++;
            s = 10;
        }
        classFileWriter.addPush(true);
        classFileWriter.add(this.mainClassName, "_qInitDone", Token.YIELD_STAR, "Z");
        classFileWriter.add(Token.METHOD);
        classFileWriter.stopMethod(0);
    }

    private void generateCallMethod(ClassFileWriter classFileWriter, boolean z) {
        int i;
        int paramCount;
        classFileWriter.startMethod("call", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;", (short) 17);
        int acquireLabel = classFileWriter.acquireLabel();
        classFileWriter.addALoad(1);
        classFileWriter.addInvoke("org/mozilla/javascript/ScriptRuntime", "hasTopCall", Token.DOTDOTDOT, "(Lorg/mozilla/javascript/Context;)Z");
        classFileWriter.add(Token.SETELEM_OP, acquireLabel);
        int i2 = 0;
        classFileWriter.addALoad(0);
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addALoad(3);
        classFileWriter.addALoad(4);
        classFileWriter.addPush(z);
        classFileWriter.addInvoke("org/mozilla/javascript/ScriptRuntime", "doTopCall", Token.DOTDOTDOT, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;");
        classFileWriter.add(Token.GENEXPR);
        classFileWriter.markLabel(acquireLabel);
        classFileWriter.addALoad(0);
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addALoad(3);
        classFileWriter.addALoad(4);
        int length = this.scriptOrFnNodes.length;
        boolean z2 = 2 <= length;
        if (z2) {
            classFileWriter.addLoadThis();
            classFileWriter.add(classFileWriter.generatedClassName, ID_FIELD_NAME, 180, "I");
            i = classFileWriter.addTableSwitch(1, length - 1);
        } else {
            i = 0;
        }
        int i3 = 0;
        int i4 = 0;
        while (i3 != length) {
            ScriptNode scriptNode = this.scriptOrFnNodes[i3];
            if (z2) {
                if (i3 == 0) {
                    classFileWriter.markTableSwitchDefault(i);
                    i4 = classFileWriter.itsStackTop;
                } else {
                    classFileWriter.markTableSwitchCase(i, i3 - 1, i4);
                }
            }
            if (scriptNode.getType() == 122) {
                OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode);
                if (optFunctionNode.isTargetOfDirectCall() && (paramCount = optFunctionNode.fnode.getParamCount()) != 0) {
                    for (int i5 = i2; i5 != paramCount; i5++) {
                        classFileWriter.add(190);
                        classFileWriter.addPush(i5);
                        int acquireLabel2 = classFileWriter.acquireLabel();
                        int acquireLabel3 = classFileWriter.acquireLabel();
                        classFileWriter.add(Token.TO_DOUBLE, acquireLabel2);
                        classFileWriter.addALoad(4);
                        classFileWriter.addPush(i5);
                        classFileWriter.add(50);
                        classFileWriter.add(Token.LET, acquireLabel3);
                        classFileWriter.markLabel(acquireLabel2);
                        pushUndefined(classFileWriter);
                        classFileWriter.markLabel(acquireLabel3);
                        classFileWriter.adjustStackTop();
                        classFileWriter.addPush(0.0d);
                        classFileWriter.addALoad(4);
                    }
                }
            }
            classFileWriter.addInvoke(this.mainClassName, getBodyMethodName(scriptNode), Token.DOTDOTDOT, getBodyMethodSignature(scriptNode));
            classFileWriter.add(Token.GENEXPR);
            i3++;
            i2 = 0;
        }
        classFileWriter.stopMethod(5);
    }

    private byte[] generateCode(String str) {
        boolean z = true;
        boolean z2 = this.scriptOrFnNodes[0].getType() == 150;
        ScriptNode[] scriptNodeArr = this.scriptOrFnNodes;
        if (scriptNodeArr.length <= 1 && z2) {
            z = false;
        }
        boolean isInStrictMode = scriptNodeArr[0].isInStrictMode();
        ClassFileWriter classFileWriter = new ClassFileWriter(this.mainClassName, SUPER_CLASS_NAME, this.scriptOrFnNodes[0].getSourceName());
        classFileWriter.addField(ID_FIELD_NAME, "I", (short) 2);
        if (z) {
            generateFunctionConstructor(classFileWriter);
        }
        if (z2) {
            classFileWriter.itsInterfaces.add(Short.valueOf(classFileWriter.itsConstantPool.addClass("org/mozilla/javascript/Script")));
            generateScriptCtor(classFileWriter);
            generateMain(classFileWriter);
            generateExecute(classFileWriter);
        }
        generateCallMethod(classFileWriter, isInStrictMode);
        generateResumeGenerator(classFileWriter);
        generateNativeFunctionOverrides(classFileWriter, str);
        int length = this.scriptOrFnNodes.length;
        for (int i = 0; i != length; i++) {
            ScriptNode scriptNode = this.scriptOrFnNodes[i];
            BodyCodegen bodyCodegen = new BodyCodegen();
            bodyCodegen.cfw = classFileWriter;
            bodyCodegen.codegen = this;
            bodyCodegen.compilerEnv = this.compilerEnv;
            bodyCodegen.scriptOrFn = scriptNode;
            bodyCodegen.scriptOrFnIndex = i;
            bodyCodegen.generateBodyCode();
            if (scriptNode.getType() == 122) {
                OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode);
                generateFunctionInit(classFileWriter, optFunctionNode);
                if (optFunctionNode.isTargetOfDirectCall()) {
                    emitDirectConstructor(classFileWriter, optFunctionNode);
                }
            }
        }
        emitRegExpInit(classFileWriter);
        emitTemplateLiteralInit(classFileWriter);
        emitConstantDudeInitializers(classFileWriter);
        return classFileWriter.toByteArray();
    }

    private static void generateExecute(ClassFileWriter classFileWriter) {
        classFileWriter.startMethod("exec", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;", (short) 17);
        classFileWriter.addLoadThis();
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.add(89);
        classFileWriter.add(1);
        classFileWriter.addInvoke(classFileWriter.generatedClassName, "call", Token.TEMPLATE_LITERAL_SUBST, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;");
        classFileWriter.addALoad(1);
        classFileWriter.addInvoke("org.mozilla.javascript.Context", "processMicrotasks", Token.TEMPLATE_LITERAL_SUBST, TEMPLATE_LITERAL_INIT_METHOD_SIGNATURE);
        classFileWriter.add(Token.GENEXPR);
        classFileWriter.stopMethod(3);
    }

    private void generateFunctionConstructor(ClassFileWriter classFileWriter) {
        int i;
        classFileWriter.startMethod("<init>", FUNCTION_CONSTRUCTOR_SIGNATURE, (short) 1);
        int i2 = 0;
        classFileWriter.addALoad(0);
        classFileWriter.addInvoke(SUPER_CLASS_NAME, "<init>", Token.TAGGED_TEMPLATE_LITERAL, TEMPLATE_LITERAL_INIT_METHOD_SIGNATURE);
        classFileWriter.addLoadThis();
        classFileWriter.addILoad(3);
        classFileWriter.add(classFileWriter.generatedClassName, ID_FIELD_NAME, Token.TEMPLATE_CHARS, "I");
        classFileWriter.addLoadThis();
        classFileWriter.addALoad(2);
        classFileWriter.addALoad(1);
        int i3 = this.scriptOrFnNodes[0].getType() == 150 ? 1 : 0;
        int length = this.scriptOrFnNodes.length;
        if (i3 == length) {
            throw badTree();
        }
        boolean z = 2 <= length - i3;
        if (z) {
            classFileWriter.addILoad(3);
            i = classFileWriter.addTableSwitch(i3 + 1, length - 1);
        } else {
            i = 0;
        }
        for (int i4 = i3; i4 != length; i4++) {
            if (z) {
                if (i4 == i3) {
                    classFileWriter.markTableSwitchDefault(i);
                    i2 = classFileWriter.itsStackTop;
                } else {
                    classFileWriter.markTableSwitchCase(i, (i4 - 1) - i3, i2);
                }
            }
            classFileWriter.addInvoke(this.mainClassName, getFunctionInitMethodName(OptFunctionNode.get(this.scriptOrFnNodes[i4])), Token.TAGGED_TEMPLATE_LITERAL, FUNCTION_INIT_SIGNATURE);
            classFileWriter.add(Token.METHOD);
        }
        classFileWriter.stopMethod(4);
    }

    private void generateFunctionInit(ClassFileWriter classFileWriter, OptFunctionNode optFunctionNode) {
        classFileWriter.startMethod(getFunctionInitMethodName(optFunctionNode), FUNCTION_INIT_SIGNATURE, (short) 18);
        classFileWriter.addLoadThis();
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addInvoke("org/mozilla/javascript/NativeFunction", "initScriptFunction", Token.TEMPLATE_LITERAL_SUBST, FUNCTION_INIT_SIGNATURE);
        if (optFunctionNode.fnode.getRegexpCount() != 0) {
            classFileWriter.addALoad(1);
            classFileWriter.addInvoke(this.mainClassName, REGEXP_INIT_METHOD_NAME, Token.DOTDOTDOT, REGEXP_INIT_METHOD_SIGNATURE);
        }
        if (optFunctionNode.fnode.getTemplateLiteralCount() != 0) {
            classFileWriter.addInvoke(this.mainClassName, TEMPLATE_LITERAL_INIT_METHOD_NAME, Token.DOTDOTDOT, TEMPLATE_LITERAL_INIT_METHOD_SIGNATURE);
        }
        classFileWriter.add(Token.METHOD);
        classFileWriter.stopMethod(3);
    }

    private void generateMain(ClassFileWriter classFileWriter) {
        classFileWriter.startMethod("main", "([Ljava/lang/String;)V", (short) 9);
        String str = classFileWriter.generatedClassName;
        classFileWriter.add(Token.LAST_TOKEN, str);
        classFileWriter.add(89);
        classFileWriter.addInvoke(str, "<init>", Token.TAGGED_TEMPLATE_LITERAL, TEMPLATE_LITERAL_INIT_METHOD_SIGNATURE);
        classFileWriter.add(42);
        classFileWriter.addInvoke(this.mainMethodClass, "main", Token.DOTDOTDOT, "(Lorg/mozilla/javascript/Script;[Ljava/lang/String;)V");
        classFileWriter.add(Token.METHOD);
        classFileWriter.stopMethod(1);
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0098  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void generateNativeFunctionOverrides(org.mozilla.classfile.ClassFileWriter r18, java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.optimizer.Codegen.generateNativeFunctionOverrides(org.mozilla.classfile.ClassFileWriter, java.lang.String):void");
    }

    private void generateResumeGenerator(ClassFileWriter classFileWriter) {
        int i = 0;
        boolean z = false;
        for (ScriptNode scriptNode : this.scriptOrFnNodes) {
            if (isGenerator(scriptNode)) {
                z = true;
            }
        }
        if (!z) {
            return;
        }
        classFileWriter.startMethod("resumeGenerator", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", (short) 17);
        classFileWriter.addALoad(0);
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addALoad(4);
        classFileWriter.addALoad(5);
        classFileWriter.addILoad(3);
        classFileWriter.addLoadThis();
        classFileWriter.add(classFileWriter.generatedClassName, ID_FIELD_NAME, 180, "I");
        int addTableSwitch = classFileWriter.addTableSwitch(0, this.scriptOrFnNodes.length - 1);
        classFileWriter.markTableSwitchDefault(addTableSwitch);
        int acquireLabel = classFileWriter.acquireLabel();
        while (true) {
            ScriptNode[] scriptNodeArr = this.scriptOrFnNodes;
            if (i >= scriptNodeArr.length) {
                classFileWriter.markLabel(acquireLabel);
                pushUndefined(classFileWriter);
                classFileWriter.add(Token.GENEXPR);
                classFileWriter.stopMethod(6);
                return;
            }
            ScriptNode scriptNode2 = scriptNodeArr[i];
            classFileWriter.markTableSwitchCase(addTableSwitch, i, 6);
            if (isGenerator(scriptNode2)) {
                classFileWriter.addInvoke(this.mainClassName, Owner.CC.m$1(getBodyMethodName(scriptNode2), "_gen"), Token.DOTDOTDOT, Modifier.CC.m("(", this.mainClassSignature, "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;"));
                classFileWriter.add(Token.GENEXPR);
            } else {
                classFileWriter.add(Token.LET, acquireLabel);
            }
            i++;
        }
    }

    private static void generateScriptCtor(ClassFileWriter classFileWriter) {
        classFileWriter.startMethod("<init>", TEMPLATE_LITERAL_INIT_METHOD_SIGNATURE, (short) 1);
        classFileWriter.addLoadThis();
        classFileWriter.addInvoke(SUPER_CLASS_NAME, "<init>", Token.TAGGED_TEMPLATE_LITERAL, TEMPLATE_LITERAL_INIT_METHOD_SIGNATURE);
        classFileWriter.addLoadThis();
        classFileWriter.addPush(0);
        classFileWriter.add(classFileWriter.generatedClassName, ID_FIELD_NAME, Token.TEMPLATE_CHARS, "I");
        classFileWriter.add(Token.METHOD);
        classFileWriter.stopMethod(1);
    }

    private static String getStaticConstantWrapperType(double d) {
        return ((double) ((int) d)) == d ? "Ljava/lang/Integer;" : "Ljava/lang/Double;";
    }

    private static void initOptFunctions_r(ScriptNode scriptNode) {
        int functionCount = scriptNode.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            FunctionNode functionNode = scriptNode.getFunctionNode(i);
            new OptFunctionNode(functionNode);
            initOptFunctions_r(functionNode);
        }
    }

    private void initScriptNodesData(ScriptNode scriptNode) {
        ArrayList arrayList = new ArrayList();
        collectScriptNodes_r(scriptNode, arrayList);
        int size = arrayList.size();
        ScriptNode[] scriptNodeArr = new ScriptNode[size];
        this.scriptOrFnNodes = scriptNodeArr;
        arrayList.toArray(scriptNodeArr);
        this.scriptOrFnIndexes = new HashMap<>();
        for (int i = 0; i != size; i++) {
            this.scriptOrFnIndexes.put(this.scriptOrFnNodes[i], Integer.valueOf(i));
        }
    }

    public static boolean isGenerator(ScriptNode scriptNode) {
        return scriptNode.getType() == 122 && ((FunctionNode) scriptNode).isGenerator();
    }

    public static void pushUndefined(ClassFileWriter classFileWriter) {
        classFileWriter.add("org/mozilla/javascript/Undefined", "instance", Token.ARROW, "Ljava/lang/Object;");
    }

    private void transform(ScriptNode scriptNode) {
        initOptFunctions_r(scriptNode);
        boolean isInterpretedMode = this.compilerEnv.isInterpretedMode();
        HashMap hashMap = null;
        if (!isInterpretedMode && scriptNode.getType() == 150) {
            int functionCount = scriptNode.getFunctionCount();
            for (int i = 0; i != functionCount; i++) {
                OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode, i);
                if (optFunctionNode.fnode.getFunctionType() == 1) {
                    String name = optFunctionNode.fnode.getName();
                    if (name.length() != 0) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        hashMap.put(name, optFunctionNode);
                    }
                }
            }
        }
        if (hashMap != null) {
            this.directCallTargets = new ArrayList();
        }
        new OptTransformer(hashMap, this.directCallTargets).transform(scriptNode, this.compilerEnv);
        if (isInterpretedMode) {
            return;
        }
        new Optimizer().optimize(scriptNode);
    }

    @Override // org.mozilla.javascript.Evaluator
    public void captureStackInfo(RhinoException rhinoException) {
        throw new UnsupportedOperationException();
    }

    public String cleanName(ScriptNode scriptNode) {
        if (!(scriptNode instanceof FunctionNode)) {
            return "script";
        }
        Name functionName = ((FunctionNode) scriptNode).getFunctionName();
        return functionName == null ? "anonymous" : functionName.getIdentifier();
    }

    @Override // org.mozilla.javascript.Evaluator
    public Object compile(CompilerEnvirons compilerEnvirons, ScriptNode scriptNode, String str, boolean z) {
        int i;
        synchronized (globalLock) {
            i = globalSerialClassCounter + 1;
            globalSerialClassCounter = i;
        }
        String str2 = "c";
        if (scriptNode.getSourceName().length() > 0) {
            str2 = scriptNode.getSourceName().replaceAll("\\W", "_");
            if (!Character.isJavaIdentifierStart(str2.charAt(0))) {
                str2 = "_".concat(str2);
            }
        }
        String str3 = "org.mozilla.javascript.gen." + str2 + "_" + i;
        return new Object[]{str3, compileToClassFile(compilerEnvirons, str3, scriptNode, str, z)};
    }

    public byte[] compileToClassFile(CompilerEnvirons compilerEnvirons, String str, ScriptNode scriptNode, String str2, boolean z) {
        this.compilerEnv = compilerEnvirons;
        transform(scriptNode);
        if (z) {
            scriptNode = scriptNode.getFunctionNode(0);
        }
        initScriptNodesData(scriptNode);
        this.mainClassName = str;
        int i = ClassFileWriter.MajorVersion;
        int length = str.length();
        int i2 = length + 1;
        int i3 = length + 2;
        char[] cArr = new char[i3];
        cArr[0] = 'L';
        cArr[i2] = ';';
        str.getChars(0, length, cArr, 1);
        for (int i4 = 1; i4 != i2; i4++) {
            if (cArr[i4] == '.') {
                cArr[i4] = '/';
            }
        }
        this.mainClassSignature = new String(cArr, 0, i3);
        return generateCode(str2);
    }

    @Override // org.mozilla.javascript.Evaluator
    public Function createFunctionObject(Context context, Scriptable scriptable, Object obj, Object obj2) {
        try {
            return (NativeFunction) defineClass(obj, obj2).getConstructors()[0].newInstance(scriptable, context, 0);
        } catch (Exception e) {
            Node$$ExternalSyntheticBUOutline0.m811m(Owner.CC.m("Unable to instantiate compiled class:", e.toString()));
            return null;
        }
    }

    @Override // org.mozilla.javascript.Evaluator
    public Script createScriptObject(Object obj, Object obj2) {
        try {
            return (Script) defineClass(obj, obj2).getDeclaredConstructor(null).newInstance(null);
        } catch (Exception e) {
            Node$$ExternalSyntheticBUOutline0.m811m(Owner.CC.m("Unable to instantiate compiled class:", e.toString()));
            return null;
        }
    }

    public String getBodyMethodName(ScriptNode scriptNode) {
        return "_c_" + cleanName(scriptNode) + "_" + getIndex(scriptNode);
    }

    public String getBodyMethodSignature(ScriptNode scriptNode) {
        StringBuilder sb = new StringBuilder("(");
        sb.append(this.mainClassSignature);
        sb.append("Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;");
        if (scriptNode.getType() == 122) {
            OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode);
            if (optFunctionNode.isTargetOfDirectCall()) {
                int paramCount = optFunctionNode.fnode.getParamCount();
                for (int i = 0; i != paramCount; i++) {
                    sb.append("Ljava/lang/Object;D");
                }
            }
        }
        sb.append("[Ljava/lang/Object;)Ljava/lang/Object;");
        return sb.toString();
    }

    public String getCompiledRegexpName(ScriptNode scriptNode, int i) {
        return Modifier.CC.m(getIndex(scriptNode), i, "_re", "_");
    }

    public String getDirectCtorName(ScriptNode scriptNode) {
        return Modifier.CC.m(getIndex(scriptNode), "_n");
    }

    public String getFunctionInitMethodName(OptFunctionNode optFunctionNode) {
        return Modifier.CC.m(getIndex(optFunctionNode.fnode), "_i");
    }

    public int getIndex(ScriptNode scriptNode) {
        return this.scriptOrFnIndexes.get(scriptNode).intValue();
    }

    @Override // org.mozilla.javascript.Evaluator
    public String getPatchedStack(RhinoException rhinoException, String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.mozilla.javascript.Evaluator
    public List<String> getScriptStack(RhinoException rhinoException) {
        throw new UnsupportedOperationException();
    }

    @Override // org.mozilla.javascript.Evaluator
    public String getSourcePositionFromStack(Context context, int[] iArr) {
        throw new UnsupportedOperationException();
    }

    public String getTemplateLiteralName(ScriptNode scriptNode) {
        return Modifier.CC.m(getIndex(scriptNode), "_q");
    }

    public void pushNumberAsObject(ClassFileWriter classFileWriter, double d) {
        if (d == 0.0d) {
            if (1.0d / d > 0.0d) {
                classFileWriter.add("org/mozilla/javascript/ScriptRuntime", "zeroObj", Token.ARROW, "Ljava/lang/Integer;");
                return;
            } else {
                classFileWriter.addPush(d);
                addDoubleWrap(classFileWriter);
                return;
            }
        }
        if (d == 1.0d) {
            classFileWriter.add("org/mozilla/javascript/optimizer/OptRuntime", "oneObj", Token.ARROW, "Ljava/lang/Integer;");
            return;
        }
        if (d == -1.0d) {
            classFileWriter.add("org/mozilla/javascript/optimizer/OptRuntime", "minusOneObj", Token.ARROW, "Ljava/lang/Integer;");
            return;
        }
        if (Double.isNaN(d)) {
            classFileWriter.add("org/mozilla/javascript/ScriptRuntime", "NaNobj", Token.ARROW, "Ljava/lang/Double;");
            return;
        }
        int i = this.itsConstantListSize;
        if (i >= 2000) {
            classFileWriter.addPush(d);
            addDoubleWrap(classFileWriter);
            return;
        }
        int i2 = 0;
        if (i == 0) {
            this.itsConstantList = new double[64];
        } else {
            double[] dArr = this.itsConstantList;
            int i3 = 0;
            while (i3 != i && dArr[i3] != d) {
                i3++;
            }
            if (i == dArr.length) {
                double[] dArr2 = new double[i * 2];
                System.arraycopy(this.itsConstantList, 0, dArr2, 0, i);
                this.itsConstantList = dArr2;
            }
            i2 = i3;
        }
        if (i2 == i) {
            this.itsConstantList[i] = d;
            this.itsConstantListSize = i + 1;
        }
        classFileWriter.add(this.mainClassName, Modifier.CC.m(i2, "_k"), Token.ARROW, getStaticConstantWrapperType(d));
    }

    @Override // org.mozilla.javascript.Evaluator
    public void setEvalScriptFlag(Script script) {
        throw new UnsupportedOperationException();
    }

    public void setMainMethodClass(String str) {
        this.mainMethodClass = str;
    }
}
