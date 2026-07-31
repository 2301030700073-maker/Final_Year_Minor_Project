package org.mozilla.javascript.optimizer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.classfile.ClassFileWriter;
import org.mozilla.classfile.ConstantPool;
import org.mozilla.javascript.CompilerEnvirons;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.Node;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.mozilla.javascript.Token;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.Jump;
import org.mozilla.javascript.ast.ScriptNode;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
class BodyCodegen {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ECMAERROR_EXCEPTION = 2;
    private static final int EVALUATOR_EXCEPTION = 1;
    private static final int EXCEPTION_MAX = 5;
    private static final int FINALLY_EXCEPTION = 4;
    static final int GENERATOR_START = 0;
    static final int GENERATOR_TERMINATE = -1;
    static final int GENERATOR_YIELD_START = 1;
    private static final int JAVASCRIPT_EXCEPTION = 0;
    private static final int MAX_LOCALS = 1024;
    private static final String SIGNATURE_CALL0 = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
    private static final String SIGNATURE_CALL1 = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
    private static final String SIGNATURE_CALL2 = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
    private static final String SIGNATURE_CALLN = "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
    private static final int THROWABLE_EXCEPTION = 3;
    private int argsLocal;
    ClassFileWriter cfw;
    Codegen codegen;
    CompilerEnvirons compilerEnv;
    private int contextLocal;
    private int enterAreaStartLabel;
    private int epilogueLabel;
    private Map<Node, FinallyReturnPoint> finallys;
    private int firstFreeLocal;
    private OptFunctionNode fnCurrent;
    private int funObjLocal;
    private int generatorStateLocal;
    private int generatorSwitch;
    private boolean hasVarsInRegs;
    private boolean inDirectCallFunction;
    private boolean inLocalBlock;
    private boolean isGenerator;
    private boolean itsForcedObjectParameters;
    private int itsLineNumber;
    private int itsOneArgArray;
    private int itsZeroArgArray;
    private ArrayList<Node> literals;
    private int[] locals;
    private int localsMax;
    private int operationLocal;
    private int popvLocal;
    private int savedCodeOffset;
    private int savedHomeObjectLocal;
    ScriptNode scriptOrFn;
    public int scriptOrFnIndex;
    private int thisObjLocal;
    private int[] varRegisters;
    private int variableObjectLocal;
    private ExceptionManager exceptionManager = new ExceptionManager();
    private int maxLocals = 0;
    private int maxStack = 0;
    private int unnestedYieldCount = 0;
    private IdentityHashMap<Node, String> unnestedYields = new IdentityHashMap<>();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class ExceptionManager {
        private ArrayDeque<ExceptionInfo> exceptionInfo = new ArrayDeque<>();

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public class ExceptionInfo {
            Node finallyBlock;
            int[] handlerLabels = new int[5];
            int[] exceptionStarts = new int[5];
            Node currentFinally = null;

            public ExceptionInfo(Jump jump, Node node) {
                this.finallyBlock = node;
            }
        }

        public ExceptionManager() {
        }

        private void endCatch(ExceptionInfo exceptionInfo, int i, int i2) {
            int i3 = exceptionInfo.exceptionStarts[i];
            if (i3 == 0) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("bad exception start");
            } else if (BodyCodegen.this.cfw.getLabelPC(i3) != BodyCodegen.this.cfw.getLabelPC(i2)) {
                BodyCodegen.this.cfw.addExceptionHandler(exceptionInfo.exceptionStarts[i], BodyCodegen.exceptionTypeToName(i), i2, exceptionInfo.handlerLabels[i]);
            }
        }

        private ExceptionInfo getTop() {
            return this.exceptionInfo.getLast();
        }

        public void addHandler(int i, int i2, int i3) {
            ExceptionInfo top = getTop();
            top.handlerLabels[i] = i2;
            top.exceptionStarts[i] = i3;
        }

        public void markInlineFinallyEnd(Node node, int i) {
            Iterator<ExceptionInfo> descendingIterator = this.exceptionInfo.descendingIterator();
            while (descendingIterator.hasNext()) {
                ExceptionInfo next = descendingIterator.next();
                for (int i2 = 0; i2 < 5; i2++) {
                    if (next.handlerLabels[i2] != 0 && next.currentFinally == node) {
                        next.exceptionStarts[i2] = i;
                        next.currentFinally = null;
                    }
                }
                if (next.finallyBlock == node) {
                    return;
                }
            }
        }

        public void markInlineFinallyStart(Node node, int i) {
            Iterator<ExceptionInfo> descendingIterator = this.exceptionInfo.descendingIterator();
            while (descendingIterator.hasNext()) {
                ExceptionInfo next = descendingIterator.next();
                for (int i2 = 0; i2 < 5; i2++) {
                    if (next.handlerLabels[i2] != 0 && next.currentFinally == null) {
                        endCatch(next, i2, i);
                        next.exceptionStarts[i2] = 0;
                        next.currentFinally = node;
                    }
                }
                if (next.finallyBlock == node) {
                    return;
                }
            }
        }

        public void popExceptionInfo() {
            this.exceptionInfo.removeLast();
        }

        public void pushExceptionInfo(Jump jump) {
            this.exceptionInfo.add(new ExceptionInfo(jump, BodyCodegen.getFinallyAtTarget(jump.getFinally())));
        }

        public int removeHandler(int i, int i2) {
            ExceptionInfo top = getTop();
            int i3 = top.handlerLabels[i];
            if (i3 == 0) {
                return 0;
            }
            endCatch(top, i, i2);
            top.handlerLabels[i] = 0;
            return i3;
        }

        public void setHandlers(int[] iArr, int i) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                int i3 = iArr[i2];
                if (i3 != 0) {
                    addHandler(i2, i3, i);
                }
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class FinallyReturnPoint {
        public List<Integer> jsrPoints = new ArrayList();
        public int tableLabel = 0;
    }

    private void addDoubleWrap() {
        addOptRuntimeInvoke("wrapDouble", "(D)Ljava/lang/Double;");
    }

    private void addDynamicInvoke(String str, String str2) {
        ClassFileWriter classFileWriter = this.cfw;
        ClassFileWriter.MHandle mHandle = Bootstrapper.BOOTSTRAP_HANDLE;
        Object[] objArr = new Object[0];
        classFileWriter.getClass();
        if (ClassFileWriter.MajorVersion < 51) {
            Node$$ExternalSyntheticBUOutline0.m811m("Please build and run with JDK 1.7 for invokedynamic support");
            return;
        }
        int sizeOfParameters = classFileWriter.itsStackTop + ((short) ClassFileWriter.sizeOfParameters(str2));
        if (sizeOfParameters < 0 || 32767 < sizeOfParameters) {
            ClassFileWriter.badStack(sizeOfParameters);
            throw null;
        }
        ClassFileWriter.BootstrapEntry bootstrapEntry = new ClassFileWriter.BootstrapEntry(classFileWriter, mHandle, objArr);
        if (classFileWriter.itsBootstrapMethods == null) {
            classFileWriter.itsBootstrapMethods = new ArrayList();
        }
        int indexOf = classFileWriter.itsBootstrapMethods.indexOf(bootstrapEntry);
        if (indexOf == -1) {
            indexOf = classFileWriter.itsBootstrapMethods.size();
            classFileWriter.itsBootstrapMethods.add(bootstrapEntry);
            classFileWriter.itsBootstrapMethodsLength += bootstrapEntry.code.length;
        }
        short addInvokeDynamic = classFileWriter.itsConstantPool.addInvokeDynamic(str, indexOf, str2);
        classFileWriter.addToCodeBuffer(Token.QUESTION_DOT);
        classFileWriter.addToCodeInt16(addInvokeDynamic);
        classFileWriter.addToCodeInt16(0);
        short s = (short) sizeOfParameters;
        classFileWriter.itsStackTop = s;
        if (sizeOfParameters > classFileWriter.itsMaxStack) {
            classFileWriter.itsMaxStack = s;
        }
    }

    private void addGoto(Node node, int i) {
        this.cfw.add(i, getTargetLabel(node));
    }

    private void addGotoWithReturn(Node node) {
        FinallyReturnPoint finallyReturnPoint = this.finallys.get(node);
        this.cfw.addLoadConstant(finallyReturnPoint.jsrPoints.size());
        addGoto(node, Token.LET);
        this.cfw.add(87);
        int acquireLabel = this.cfw.acquireLabel();
        this.cfw.markLabel(acquireLabel);
        finallyReturnPoint.jsrPoints.add(Integer.valueOf(acquireLabel));
    }

    private void addInstructionCount(int i) {
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addPush(i);
        addScriptRuntimeInvoke("addInstructionCount", "(Lorg/mozilla/javascript/Context;I)V");
    }

    private void addJumpedBooleanWrap(int i, int i2) {
        this.cfw.markLabel(i2);
        int acquireLabel = this.cfw.acquireLabel();
        this.cfw.add("java/lang/Boolean", "FALSE", Token.ARROW, "Ljava/lang/Boolean;");
        this.cfw.add(Token.LET, acquireLabel);
        this.cfw.markLabel(i);
        this.cfw.add("java/lang/Boolean", "TRUE", Token.ARROW, "Ljava/lang/Boolean;");
        this.cfw.markLabel(acquireLabel);
        this.cfw.adjustStackTop();
    }

    private void addLoadProperty(Node node, Node node2, Object[] objArr, int i) {
        int i2 = 0;
        if (i == 0) {
            addNewObjectArray(0);
            addNewObjectArray(0);
            return;
        }
        if (this.isGenerator) {
            while (i2 < i) {
                addLoadPropertyId(node, objArr, i2);
                addLoadPropertyValue(node, node2);
                node2 = node2.getNext();
                i2++;
            }
            int i3 = this.firstFreeLocal;
            int i4 = i3 + 1;
            int i5 = this.localsMax;
            this.firstFreeLocal = i3 + 2;
            this.localsMax = i5 + 2;
            addNewObjectArray(i);
            this.cfw.addAStore(i3);
            addNewObjectArray(i);
            this.cfw.addAStore(i4);
            while (true) {
                i--;
                ClassFileWriter classFileWriter = this.cfw;
                if (i < 0) {
                    classFileWriter.addALoad(i3);
                    this.cfw.addALoad(i4);
                    return;
                }
                classFileWriter.addALoad(i4);
                this.cfw.add(95);
                this.cfw.addLoadConstant(i);
                this.cfw.add(95);
                this.cfw.add(83);
                this.cfw.addALoad(i3);
                this.cfw.add(95);
                this.cfw.addLoadConstant(i);
                this.cfw.add(95);
                this.cfw.add(83);
            }
        } else {
            addNewObjectArray(i);
            addNewObjectArray(i);
            while (true) {
                ClassFileWriter classFileWriter2 = this.cfw;
                if (i2 >= i) {
                    classFileWriter2.add(95);
                    return;
                }
                classFileWriter2.add(92);
                this.cfw.addLoadConstant(i2);
                addLoadPropertyId(node, objArr, i2);
                this.cfw.add(83);
                this.cfw.addLoadConstant(i2);
                addLoadPropertyValue(node, node2);
                this.cfw.add(83);
                node2 = node2.getNext();
                i2++;
            }
        }
    }

    private void addLoadPropertyId(Node node, Object[] objArr, int i) {
        Object obj = objArr[i];
        if (obj instanceof Node) {
            generateExpression(((Node) obj).getFirstChild(), node);
            return;
        }
        boolean z = obj instanceof String;
        ClassFileWriter classFileWriter = this.cfw;
        if (z) {
            classFileWriter.addPush((String) obj);
        } else {
            classFileWriter.addPush(((Integer) obj).intValue());
            addScriptRuntimeInvoke("wrapInt", "(I)Ljava/lang/Integer;");
        }
    }

    private void addLoadPropertyValue(Node node, Node node2) {
        int type = node2.getType();
        if (type == 165 || type == 166 || type == 177) {
            generateExpression(node2.getFirstChild(), node);
        } else {
            generateExpression(node2, node);
        }
    }

    private void addNewObjectArray(int i) {
        if (i != 0) {
            this.cfw.addPush(i);
            this.cfw.add(PsExtractor.PRIVATE_STREAM_1, "java/lang/Object");
            return;
        }
        int i2 = this.itsZeroArgArray;
        ClassFileWriter classFileWriter = this.cfw;
        if (i2 >= 0) {
            classFileWriter.addALoad(i2);
        } else {
            classFileWriter.add("org/mozilla/javascript/ScriptRuntime", "emptyArgs", Token.ARROW, "[Ljava/lang/Object;");
        }
    }

    private void addObjectToDouble() {
        addDynamicInvoke("MATH:TONUMBER", Signatures.MATH_TO_NUMBER);
    }

    private void addObjectToNumeric() {
        addDynamicInvoke("MATH:TONUMERIC", Signatures.MATH_TO_NUMERIC);
    }

    private void addOptRuntimeInvoke(String str, String str2) {
        this.cfw.addInvoke("org/mozilla/javascript/optimizer/OptRuntime", str, Token.DOTDOTDOT, str2);
    }

    private void addScriptRuntimeInvoke(String str, String str2) {
        this.cfw.addInvoke("org.mozilla.javascript.ScriptRuntime", str, Token.DOTDOTDOT, str2);
    }

    private static int countArguments(Node node) {
        int i = 0;
        while (node != null) {
            i++;
            node = node.getNext();
        }
        return i;
    }

    private void dcpLoadAsNumber(int i) {
        this.cfw.addALoad(i);
        this.cfw.add("java/lang/Void", "TYPE", Token.ARROW, "Ljava/lang/Class;");
        int acquireLabel = this.cfw.acquireLabel();
        this.cfw.add(Token.GET, acquireLabel);
        ClassFileWriter classFileWriter = this.cfw;
        int i2 = classFileWriter.itsStackTop;
        classFileWriter.addALoad(i);
        addObjectToDouble();
        int acquireLabel2 = this.cfw.acquireLabel();
        this.cfw.add(Token.LET, acquireLabel2);
        this.cfw.markLabel(acquireLabel, i2);
        this.cfw.addDLoad(i + 1);
        this.cfw.markLabel(acquireLabel2);
    }

    private void dcpLoadAsObject(int i) {
        this.cfw.addALoad(i);
        this.cfw.add("java/lang/Void", "TYPE", Token.ARROW, "Ljava/lang/Class;");
        int acquireLabel = this.cfw.acquireLabel();
        this.cfw.add(Token.GET, acquireLabel);
        ClassFileWriter classFileWriter = this.cfw;
        int i2 = classFileWriter.itsStackTop;
        classFileWriter.addALoad(i);
        int acquireLabel2 = this.cfw.acquireLabel();
        this.cfw.add(Token.LET, acquireLabel2);
        this.cfw.markLabel(acquireLabel, i2);
        this.cfw.addDLoad(i + 1);
        addDoubleWrap();
        this.cfw.markLabel(acquireLabel2);
    }

    private void decReferenceWordLocal(int i) {
        this.locals[i] = r1[i] - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String exceptionTypeToName(int i) {
        if (i == 0) {
            return "org/mozilla/javascript/JavaScriptException";
        }
        if (i == 1) {
            return "org/mozilla/javascript/EvaluatorException";
        }
        if (i == 2) {
            return "org/mozilla/javascript/EcmaError";
        }
        if (i == 3) {
            return "java/lang/Throwable";
        }
        if (i == 4) {
            return null;
        }
        throw Kit.codeBug();
    }

    private Node findNestedYield(Node node) {
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNext()) {
            if (firstChild.getType() == 78 || firstChild.getType() == 179) {
                return firstChild;
            }
            Node findNestedYield = findNestedYield(firstChild);
            if (findNestedYield != null) {
                return findNestedYield;
            }
        }
        return null;
    }

    private void finishGetElemGeneration(Node node, Node node2) {
        generateExpression(node2.getNext(), node);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        if (node.getIntProp(31, 0) == 1) {
            this.cfw.addALoad(this.thisObjLocal);
            addDynamicInvoke("PROP:GETELEMENTSUPER", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;");
        } else if (node.getIntProp(8, -1) != -1) {
            addDynamicInvoke("PROP:GETINDEX", Signatures.PROP_GET_INDEX);
        } else {
            addDynamicInvoke("PROP:GETELEMENT", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        }
    }

    private void finishGetPropGeneration(Node node, Node node2) {
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        if (node.getIntProp(31, 0) == 1) {
            this.cfw.addALoad(this.thisObjLocal);
            this.cfw.addLoadConstant(node.getType() == 34 ? 1 : 0);
            addDynamicInvoke(Owner.CC.m("PROP:GETSUPER:", node2.getString()), Signatures.PROP_GET_SUPER);
        } else if (node.getType() == 34) {
            addDynamicInvoke(Owner.CC.m("PROP:GETNOWARN:", node2.getString()), "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        } else {
            addDynamicInvoke(Owner.CC.m("PROP:GET:", node2.getString()), "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        }
    }

    private void finishGetRefGeneration() {
        this.cfw.addALoad(this.contextLocal);
        addScriptRuntimeInvoke("refGet", "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;");
    }

    private void finishRefSpecialGeneration(Node node) {
        this.cfw.addPush((String) node.getProp(17));
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        addScriptRuntimeInvoke("specialRef", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;");
    }

    private void genSimpleCompare(int i, int i2, int i3) {
        if (i2 == -1) {
            throw Codegen.badTree();
        }
        switch (i) {
            case 14:
                this.cfw.add(Token.USE_STACK);
                this.cfw.add(Token.LOCAL_BLOCK, i2);
                break;
            case 15:
                this.cfw.add(Token.USE_STACK);
                this.cfw.add(Token.COLONCOLON, i2);
                break;
            case 16:
                this.cfw.add(Token.TYPEOFNAME);
                this.cfw.add(Token.DOTDOT, i2);
                break;
            case 17:
                this.cfw.add(Token.TYPEOFNAME);
                this.cfw.add(Token.SET_REF_OP, i2);
                break;
            default:
                throw Codegen.badTree();
        }
        if (i3 != -1) {
            this.cfw.add(Token.LET, i3);
        }
    }

    private void generateActivationExit() {
        if (this.fnCurrent == null || this.hasVarsInRegs) {
            throw Kit.codeBug();
        }
        this.cfw.addALoad(this.contextLocal);
        addScriptRuntimeInvoke("exitActivationFunction", "(Lorg/mozilla/javascript/Context;)V");
    }

    private void generateArrayLiteralFactory(Node node, int i) {
        String str = this.codegen.getBodyMethodName(this.scriptOrFn) + "_literal" + i;
        initBodyGeneration();
        int i2 = this.firstFreeLocal;
        int i3 = i2 + 1;
        this.firstFreeLocal = i3;
        this.argsLocal = i2;
        this.localsMax = i3;
        this.cfw.startMethod(str, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;", (short) 2);
        visitArrayLiteral(node, node.getFirstChild(), true);
        this.cfw.add(Token.GENEXPR);
        this.cfw.stopMethod((short) (this.localsMax + 1));
    }

    private void generateCallArgArray(Node node, Node node2, boolean z) {
        int i;
        int countArguments = countArguments(node2);
        if (countArguments != 1 || (i = this.itsOneArgArray) < 0) {
            addNewObjectArray(countArguments);
        } else {
            this.cfw.addALoad(i);
        }
        for (int i2 = 0; i2 != countArguments; i2++) {
            if (!this.isGenerator) {
                this.cfw.add(89);
                this.cfw.addPush(i2);
            }
            if (z) {
                int nodeIsDirectCallParameter = nodeIsDirectCallParameter(node2);
                if (nodeIsDirectCallParameter >= 0) {
                    dcpLoadAsObject(nodeIsDirectCallParameter);
                } else {
                    generateExpression(node2, node);
                    if (node2.getIntProp(8, -1) == 0) {
                        addDoubleWrap();
                    }
                }
            } else {
                generateExpression(node2, node);
            }
            if (this.isGenerator) {
                short newWordLocal = getNewWordLocal();
                this.cfw.addAStore(newWordLocal);
                this.cfw.add(PsExtractor.AUDIO_STREAM, "[Ljava/lang/Object;");
                this.cfw.add(89);
                this.cfw.addPush(i2);
                this.cfw.addALoad(newWordLocal);
                releaseWordLocal(newWordLocal);
            }
            this.cfw.add(83);
            node2 = node2.getNext();
        }
    }

    private void generateCatchBlock(int i, short s, int i2, int i3, int i4) {
        if (i4 == 0) {
            i4 = this.cfw.acquireLabel();
        }
        ClassFileWriter classFileWriter = this.cfw;
        classFileWriter.itsStackTop = 1;
        classFileWriter.markLabel(i4);
        this.cfw.addAStore(i3);
        this.cfw.addALoad(s);
        this.cfw.addAStore(this.variableObjectLocal);
        this.cfw.add(Token.LET, i2);
    }

    private void generateCheckForThrowOrClose(int i, boolean z, int i2) {
        int acquireLabel = this.cfw.acquireLabel();
        int acquireLabel2 = this.cfw.acquireLabel();
        this.cfw.markLabel(acquireLabel);
        this.cfw.addALoad(this.argsLocal);
        generateThrowJavaScriptException();
        this.cfw.markLabel(acquireLabel2);
        this.cfw.addALoad(this.argsLocal);
        this.cfw.add(PsExtractor.AUDIO_STREAM, "java/lang/Throwable");
        this.cfw.add(191);
        if (i != -1) {
            this.cfw.markLabel(i);
        }
        if (!z) {
            this.cfw.markTableSwitchCase(this.generatorSwitch, i2);
        }
        this.cfw.addILoad(this.operationLocal);
        this.cfw.addLoadConstant(2);
        this.cfw.add(Token.XML, acquireLabel2);
        this.cfw.addILoad(this.operationLocal);
        this.cfw.addLoadConstant(1);
        this.cfw.add(Token.XML, acquireLabel);
    }

    private void generateEpilogue() {
        ClassFileWriter classFileWriter;
        if (this.compilerEnv.isGenerateObserverCount()) {
            addInstructionCount();
        }
        if (this.isGenerator) {
            Map<Node, int[]> liveLocals = ((FunctionNode) this.scriptOrFn).getLiveLocals();
            if (liveLocals != null) {
                for (Node node : ((FunctionNode) this.scriptOrFn).getResumptionPoints()) {
                    int[] iArr = liveLocals.get(node);
                    if (iArr != null) {
                        this.cfw.markTableSwitchCase(this.generatorSwitch, getNextGeneratorState(node));
                        generateGetGeneratorLocalsState();
                        int i = 0;
                        while (true) {
                            int length = iArr.length;
                            classFileWriter = this.cfw;
                            if (i >= length) {
                                break;
                            }
                            classFileWriter.add(89);
                            this.cfw.addLoadConstant(i);
                            this.cfw.add(50);
                            this.cfw.addAStore(iArr[i]);
                            i++;
                        }
                        classFileWriter.add(87);
                        this.cfw.add(Token.LET, getTargetLabel(node));
                    }
                }
            }
            Map<Node, FinallyReturnPoint> map = this.finallys;
            if (map != null) {
                for (Map.Entry<Node, FinallyReturnPoint> entry : map.entrySet()) {
                    if (entry.getKey().getType() == 138) {
                        FinallyReturnPoint value = entry.getValue();
                        this.cfw.markLabel(value.tableLabel, 1);
                        int addTableSwitch = this.cfw.addTableSwitch(0, value.jsrPoints.size() - 1);
                        this.cfw.markTableSwitchDefault(addTableSwitch);
                        int i2 = 0;
                        for (int i3 = 0; i3 < value.jsrPoints.size(); i3++) {
                            this.cfw.markTableSwitchCase(addTableSwitch, i2);
                            this.cfw.add(Token.LET, value.jsrPoints.get(i3).intValue());
                            i2++;
                        }
                    }
                }
            }
        }
        int i4 = this.epilogueLabel;
        if (i4 != -1) {
            this.cfw.markLabel(i4);
        }
        if (this.isGenerator) {
            if (((FunctionNode) this.scriptOrFn).getResumptionPoints() != null) {
                this.cfw.markTableSwitchDefault(this.generatorSwitch);
            }
            generateSetGeneratorResumptionPoint(-1);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addALoad(this.generatorStateLocal);
            addOptRuntimeInvoke("throwStopIteration", "(Ljava/lang/Object;Ljava/lang/Object;)V");
            Codegen.pushUndefined(this.cfw);
            this.cfw.add(Token.GENEXPR);
            return;
        }
        if (this.hasVarsInRegs) {
            this.cfw.add(Token.GENEXPR);
            return;
        }
        if (this.fnCurrent == null) {
            this.cfw.addALoad(this.popvLocal);
            this.cfw.add(Token.GENEXPR);
            return;
        }
        generateActivationExit();
        this.cfw.add(Token.GENEXPR);
        int acquireLabel = this.cfw.acquireLabel();
        ClassFileWriter classFileWriter2 = this.cfw;
        classFileWriter2.itsStackTop = 1;
        classFileWriter2.markLabel(acquireLabel);
        short newWordLocal = getNewWordLocal();
        this.cfw.addAStore(newWordLocal);
        generateActivationExit();
        this.cfw.addALoad(newWordLocal);
        releaseWordLocal(newWordLocal);
        this.cfw.add(191);
        this.cfw.addExceptionHandler(this.enterAreaStartLabel, null, this.epilogueLabel, acquireLabel);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x056d  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0652  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0665  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void generateExpression(org.mozilla.javascript.Node r19, org.mozilla.javascript.Node r20) {
        /*
            Method dump skipped, instructions count: 1964
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.optimizer.BodyCodegen.generateExpression(org.mozilla.javascript.Node, org.mozilla.javascript.Node):void");
    }

    private void generateFunctionAndThisObj(Node node, Node node2) {
        int type = node.getType();
        boolean z = node2.getIntProp(30, 0) == 1;
        int type2 = node.getType();
        if (type2 != 33) {
            if (type2 == 34) {
                throw Kit.codeBug();
            }
            if (type2 != 39) {
                if (type2 != 44) {
                    generateExpression(node, node2);
                    this.cfw.addALoad(this.contextLocal);
                    addScriptRuntimeInvoke(z ? "getValueFunctionAndThisOptional" : "getValueFunctionAndThis", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;");
                    return;
                } else {
                    String string = node.getString();
                    this.cfw.addALoad(this.variableObjectLocal);
                    this.cfw.addALoad(this.contextLocal);
                    addDynamicInvoke(Owner.CC.m("NAME:", z ? "GETWITHTHISOPTIONAL" : "GETWITHTHIS", ":", string), Signatures.NAME_GET_THIS);
                    return;
                }
            }
        }
        Node firstChild = node.getFirstChild();
        generateExpression(firstChild, node);
        Node next = firstChild.getNext();
        if (type == 33) {
            String string2 = next.getString();
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            addDynamicInvoke(Owner.CC.m("PROP:", z ? "GETWITHTHISOPTIONAL" : "GETWITHTHIS", ":", string2), Signatures.PROP_GET_THIS);
            return;
        }
        generateExpression(next, node);
        if (node.getIntProp(8, -1) != -1) {
            addDoubleWrap();
        }
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        addScriptRuntimeInvoke(z ? "getElemFunctionAndThisOptional" : "getElemFunctionAndThis", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;");
    }

    private void generateGenerator() {
        this.cfw.startMethod(this.codegen.getBodyMethodName(this.scriptOrFn), this.codegen.getBodyMethodSignature(this.scriptOrFn), (short) 10);
        initBodyGeneration();
        int i = this.firstFreeLocal;
        int i2 = i + 1;
        this.firstFreeLocal = i2;
        this.argsLocal = i;
        this.localsMax = i2;
        if (this.fnCurrent != null) {
            this.cfw.addALoad(this.funObjLocal);
            this.cfw.addInvoke("org/mozilla/javascript/Scriptable", "getParentScope", Token.NULLISH_COALESCING, "()Lorg/mozilla/javascript/Scriptable;");
            this.cfw.addAStore(this.variableObjectLocal);
        }
        this.cfw.addALoad(this.funObjLocal);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addALoad(this.argsLocal);
        this.cfw.addPush(this.scriptOrFn.isInStrictMode());
        this.cfw.addPush(this.scriptOrFn.hasRestParameter());
        this.cfw.addLoadThis();
        this.cfw.addInvoke("org/mozilla/javascript/BaseFunction", "getHomeObject", Token.TEMPLATE_LITERAL_SUBST, "()Lorg/mozilla/javascript/Scriptable;");
        addScriptRuntimeInvoke("createFunctionActivation", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;ZZLorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
        this.cfw.addAStore(this.variableObjectLocal);
        this.cfw.add(Token.LAST_TOKEN, this.codegen.mainClassName);
        this.cfw.add(89);
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addPush(this.scriptOrFnIndex);
        this.cfw.addInvoke(this.codegen.mainClassName, "<init>", Token.TAGGED_TEMPLATE_LITERAL, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V");
        generateNestedFunctionInits();
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addALoad(this.thisObjLocal);
        this.cfw.addLoadConstant(this.maxLocals);
        this.cfw.addLoadConstant(this.maxStack);
        addOptRuntimeInvoke("createNativeGenerator", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;II)Lorg/mozilla/javascript/Scriptable;");
        this.cfw.add(Token.GENEXPR);
        this.cfw.stopMethod((short) (this.localsMax + 1));
    }

    private void generateGetGeneratorLocalsState() {
        this.cfw.addALoad(this.generatorStateLocal);
        addOptRuntimeInvoke("getGeneratorLocalsState", "(Ljava/lang/Object;)[Ljava/lang/Object;");
    }

    private void generateGetGeneratorResumptionPoint() {
        this.cfw.addALoad(this.generatorStateLocal);
        this.cfw.add("org/mozilla/javascript/optimizer/OptRuntime$GeneratorState", "resumptionPoint", 180, "I");
    }

    private void generateGetGeneratorStackState() {
        this.cfw.addALoad(this.generatorStateLocal);
        addOptRuntimeInvoke("getGeneratorStackState", "(Ljava/lang/Object;)[Ljava/lang/Object;");
    }

    private void generateIfJump(Node node, Node node2, int i, int i2) {
        int type = node.getType();
        Node firstChild = node.getFirstChild();
        if (type == 26) {
            generateIfJump(firstChild, node, i2, i);
            return;
        }
        if (type != 51 && type != 52) {
            if (type != 57 && type != 58) {
                if (type == 117 || type == 118) {
                    int acquireLabel = this.cfw.acquireLabel();
                    if (type == 118) {
                        generateIfJump(firstChild, node, acquireLabel, i2);
                    } else {
                        generateIfJump(firstChild, node, i, acquireLabel);
                    }
                    this.cfw.markLabel(acquireLabel);
                    generateIfJump(firstChild.getNext(), node, i, i2);
                    return;
                }
                switch (type) {
                    case 12:
                    case 13:
                        break;
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                        break;
                    default:
                        generateExpression(node, node2);
                        addDynamicInvoke("MATH:TOBOOLEAN", Signatures.MATH_TO_BOOLEAN);
                        this.cfw.add(Token.SETELEM_OP, i);
                        this.cfw.add(Token.LET, i2);
                        break;
                }
                return;
            }
            visitIfJumpRelOp(node, firstChild, i, i2);
            return;
        }
        visitIfJumpEqOp(node, firstChild, i, i2);
    }

    private void generateIntegerUnwrap() {
        this.cfw.addInvoke("java/lang/Integer", "intValue", Token.TEMPLATE_LITERAL_SUBST, "()I");
    }

    private void generateIntegerWrap() {
        this.cfw.addInvoke("java/lang/Integer", "valueOf", Token.DOTDOTDOT, "(I)Ljava/lang/Integer;");
    }

    private void generateLocalYieldPoint(Node node, boolean z) {
        ClassFileWriter classFileWriter;
        ClassFileWriter classFileWriter2;
        int i = this.cfw.itsStackTop;
        int i2 = this.maxStack;
        if (i2 <= i) {
            i2 = i;
        }
        this.maxStack = i2;
        if (i != 0) {
            generateGetGeneratorStackState();
            int i3 = 0;
            while (true) {
                classFileWriter2 = this.cfw;
                if (i3 >= i) {
                    break;
                }
                classFileWriter2.add(90);
                this.cfw.add(95);
                this.cfw.addLoadConstant(i3);
                this.cfw.add(95);
                this.cfw.add(83);
                i3++;
            }
            classFileWriter2.add(87);
        }
        Node firstChild = node.getFirstChild();
        if (firstChild != null) {
            generateExpression(firstChild, node);
        } else {
            Codegen.pushUndefined(this.cfw);
        }
        if (node.getType() == 179) {
            this.cfw.add(Token.LAST_TOKEN, "org/mozilla/javascript/ES6Generator$YieldStarResult");
            this.cfw.add(90);
            this.cfw.add(95);
            this.cfw.addInvoke("org/mozilla/javascript/ES6Generator$YieldStarResult", "<init>", Token.TAGGED_TEMPLATE_LITERAL, "(Ljava/lang/Object;)V");
        }
        int nextGeneratorState = getNextGeneratorState(node);
        generateSetGeneratorResumptionPoint(nextGeneratorState);
        boolean generateSaveLocals = generateSaveLocals(node);
        this.cfw.add(Token.GENEXPR);
        generateCheckForThrowOrClose(getTargetLabel(node), generateSaveLocals, nextGeneratorState);
        if (i != 0) {
            generateGetGeneratorStackState();
            while (true) {
                i--;
                classFileWriter = this.cfw;
                if (i < 0) {
                    break;
                }
                classFileWriter.add(89);
                this.cfw.addLoadConstant(i);
                this.cfw.add(50);
                this.cfw.add(95);
            }
            classFileWriter.add(87);
        }
        if (z) {
            this.cfw.addALoad(this.argsLocal);
        }
    }

    private void generateNestedFunctionInits() {
        int functionCount = this.scriptOrFn.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            OptFunctionNode optFunctionNode = OptFunctionNode.get(this.scriptOrFn, i);
            if (optFunctionNode.fnode.getFunctionType() == 1) {
                visitFunction(optFunctionNode, 1);
            }
        }
    }

    private void generateObjectLiteralFactory(Node node, int i) {
        String str = this.codegen.getBodyMethodName(this.scriptOrFn) + "_literal" + i;
        initBodyGeneration();
        int i2 = this.firstFreeLocal;
        int i3 = i2 + 1;
        this.firstFreeLocal = i3;
        this.argsLocal = i2;
        this.localsMax = i3;
        this.cfw.startMethod(str, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;", (short) 2);
        visitObjectLiteral(node, node.getFirstChild(), true);
        this.cfw.add(Token.GENEXPR);
        this.cfw.stopMethod((short) (this.localsMax + 1));
    }

    private void generatePrologue() {
        String str;
        int newWordLocal;
        if (this.inDirectCallFunction) {
            int paramCount = this.scriptOrFn.getParamCount();
            if (this.firstFreeLocal != 4) {
                Kit.codeBug();
            }
            for (int i = 0; i != paramCount; i++) {
                int[] iArr = this.varRegisters;
                int i2 = this.firstFreeLocal;
                iArr[i] = i2;
                this.firstFreeLocal = i2 + 3;
            }
            if (!this.fnCurrent.getParameterNumberContext()) {
                this.itsForcedObjectParameters = true;
                for (int i3 = 0; i3 != paramCount; i3++) {
                    int i4 = this.varRegisters[i3];
                    this.cfw.addALoad(i4);
                    this.cfw.add("java/lang/Void", "TYPE", Token.ARROW, "Ljava/lang/Class;");
                    int acquireLabel = this.cfw.acquireLabel();
                    this.cfw.add(Token.SET, acquireLabel);
                    this.cfw.addDLoad(i4 + 1);
                    addDoubleWrap();
                    this.cfw.addAStore(i4);
                    this.cfw.markLabel(acquireLabel);
                }
            }
        }
        if (this.fnCurrent != null) {
            this.cfw.addALoad(this.funObjLocal);
            this.cfw.addInvoke("org/mozilla/javascript/Scriptable", "getParentScope", Token.NULLISH_COALESCING, "()Lorg/mozilla/javascript/Scriptable;");
            this.cfw.addAStore(this.variableObjectLocal);
        }
        int i5 = this.firstFreeLocal;
        int i6 = i5 + 1;
        this.firstFreeLocal = i6;
        this.argsLocal = i5;
        this.localsMax = i6;
        if (this.isGenerator) {
            int i7 = i5 + 2;
            this.firstFreeLocal = i7;
            this.operationLocal = i6;
            this.localsMax = i7;
            this.cfw.addALoad(this.thisObjLocal);
            int i8 = this.firstFreeLocal;
            int i9 = i8 + 1;
            this.firstFreeLocal = i9;
            this.generatorStateLocal = i8;
            this.localsMax = i9;
            this.cfw.add(PsExtractor.AUDIO_STREAM, "org/mozilla/javascript/optimizer/OptRuntime$GeneratorState");
            this.cfw.add(89);
            this.cfw.addAStore(this.generatorStateLocal);
            this.cfw.add("org/mozilla/javascript/optimizer/OptRuntime$GeneratorState", "thisObj", 180, "Lorg/mozilla/javascript/Scriptable;");
            this.cfw.addAStore(this.thisObjLocal);
            if (this.epilogueLabel == -1) {
                this.epilogueLabel = this.cfw.acquireLabel();
            }
            List<Node> resumptionPoints = ((FunctionNode) this.scriptOrFn).getResumptionPoints();
            if (resumptionPoints != null) {
                generateGetGeneratorResumptionPoint();
                this.generatorSwitch = this.cfw.addTableSwitch(0, resumptionPoints.size());
                generateCheckForThrowOrClose(-1, false, 0);
            }
        }
        if (this.fnCurrent == null) {
            if (this.scriptOrFn.getRegexpCount() != 0) {
                this.cfw.addALoad(this.contextLocal);
                this.cfw.addInvoke(this.codegen.mainClassName, "_reInit", Token.DOTDOTDOT, "(Lorg/mozilla/javascript/Context;)V");
            }
            if (this.scriptOrFn.getTemplateLiteralCount() != 0) {
                this.cfw.addInvoke(this.codegen.mainClassName, "_qInit", Token.DOTDOTDOT, "()V");
            }
        }
        if (this.compilerEnv.isGenerateObserverCount()) {
            saveCurrentCodeOffset();
        }
        if (this.isGenerator) {
            return;
        }
        boolean z = this.hasVarsInRegs;
        ScriptNode scriptNode = this.scriptOrFn;
        if (z) {
            int paramCount2 = scriptNode.getParamCount();
            if (paramCount2 > 0 && !this.inDirectCallFunction) {
                boolean hasRestParameter = this.scriptOrFn.hasRestParameter();
                ClassFileWriter classFileWriter = this.cfw;
                if (hasRestParameter) {
                    classFileWriter.addALoad(this.contextLocal);
                    this.cfw.addALoad(this.variableObjectLocal);
                    this.cfw.addALoad(this.argsLocal);
                    this.cfw.addPush(paramCount2);
                    addScriptRuntimeInvoke("padAndRestArguments", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)[Ljava/lang/Object;");
                    this.cfw.addAStore(this.argsLocal);
                } else {
                    classFileWriter.addALoad(this.argsLocal);
                    this.cfw.add(190);
                    this.cfw.addPush(paramCount2);
                    int acquireLabel2 = this.cfw.acquireLabel();
                    this.cfw.add(Token.XMLEND, acquireLabel2);
                    this.cfw.addALoad(this.argsLocal);
                    this.cfw.addPush(paramCount2);
                    addScriptRuntimeInvoke("padArguments", "([Ljava/lang/Object;I)[Ljava/lang/Object;");
                    this.cfw.addAStore(this.argsLocal);
                    this.cfw.markLabel(acquireLabel2);
                }
            }
            int paramCount3 = this.fnCurrent.fnode.getParamCount();
            int paramAndVarCount = this.fnCurrent.fnode.getParamAndVarCount();
            boolean[] paramAndVarConst = this.fnCurrent.fnode.getParamAndVarConst();
            int i10 = -1;
            for (int i11 = 0; i11 != paramAndVarCount; i11++) {
                if (i11 < paramCount3) {
                    if (this.inDirectCallFunction) {
                        newWordLocal = -1;
                    } else {
                        newWordLocal = getNewWordLocal();
                        this.cfw.addALoad(this.argsLocal);
                        this.cfw.addPush(i11);
                        this.cfw.add(50);
                        this.cfw.addAStore(newWordLocal);
                    }
                } else if (this.fnCurrent.isNumberVar(i11)) {
                    newWordLocal = getNewWordPairLocal(paramAndVarConst[i11]);
                    this.cfw.addPush(0.0d);
                    this.cfw.xop(71, 57, newWordLocal);
                } else {
                    newWordLocal = getNewWordLocal(paramAndVarConst[i11]);
                    ClassFileWriter classFileWriter2 = this.cfw;
                    if (i10 == -1) {
                        Codegen.pushUndefined(classFileWriter2);
                        i10 = newWordLocal;
                    } else {
                        classFileWriter2.addALoad(i10);
                    }
                    this.cfw.addAStore(newWordLocal);
                }
                if (newWordLocal >= 0) {
                    if (paramAndVarConst[i11]) {
                        this.cfw.addPush(0);
                        this.cfw.xop(59, 54, (this.fnCurrent.isNumberVar(i11) ? 2 : 1) + newWordLocal);
                    }
                    this.varRegisters[i11] = newWordLocal;
                }
                if (this.compilerEnv.isGenerateDebugInfo()) {
                    String paramOrVarName = this.fnCurrent.fnode.getParamOrVarName(i11);
                    String str2 = this.fnCurrent.isNumberVar(i11) ? "D" : "Ljava/lang/Object;";
                    ClassFileWriter classFileWriter3 = this.cfw;
                    int i12 = classFileWriter3.itsCodeBufferTop;
                    if (newWordLocal < 0) {
                        newWordLocal = this.varRegisters[i11];
                    }
                    ConstantPool constantPool = classFileWriter3.itsConstantPool;
                    int[] iArr2 = {constantPool.addUtf8(paramOrVarName), constantPool.addUtf8(str2), i12, newWordLocal};
                    if (classFileWriter3.itsVarDescriptors == null) {
                        classFileWriter3.itsVarDescriptors = new ArrayList();
                    }
                    classFileWriter3.itsVarDescriptors.add(iArr2);
                }
            }
            return;
        }
        boolean z2 = (scriptNode instanceof FunctionNode) && ((FunctionNode) scriptNode).getFunctionType() == 4;
        OptFunctionNode optFunctionNode = this.fnCurrent;
        ClassFileWriter classFileWriter4 = this.cfw;
        int i13 = this.funObjLocal;
        if (optFunctionNode != null) {
            classFileWriter4.addALoad(i13);
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addALoad(this.argsLocal);
            this.cfw.addPush(this.scriptOrFn.isInStrictMode());
            this.cfw.addPush(this.scriptOrFn.hasRestParameter());
            ClassFileWriter classFileWriter5 = this.cfw;
            if (z2) {
                int acquireLabel3 = classFileWriter5.acquireLabel();
                int acquireLabel4 = this.cfw.acquireLabel();
                this.cfw.addALoad(this.variableObjectLocal);
                this.cfw.add(193, "org/mozilla/javascript/NativeCall");
                this.cfw.add(Token.SETPROP_OP, acquireLabel3);
                this.cfw.addALoad(this.variableObjectLocal);
                this.cfw.add(PsExtractor.AUDIO_STREAM, "org/mozilla/javascript/NativeCall");
                this.cfw.addInvoke("org/mozilla/javascript/NativeCall", "getHomeObject", Token.TEMPLATE_LITERAL_SUBST, "()Lorg/mozilla/javascript/Scriptable;");
                this.cfw.add(Token.LET, acquireLabel4);
                this.cfw.markLabel(acquireLabel3);
                this.cfw.add(1);
                this.cfw.markLabel(acquireLabel4);
            } else {
                classFileWriter5.addLoadThis();
                this.cfw.addInvoke("org/mozilla/javascript/BaseFunction", "getHomeObject", Token.TEMPLATE_LITERAL_SUBST, "()Lorg/mozilla/javascript/Scriptable;");
            }
            addScriptRuntimeInvoke(z2 ? "createArrowFunctionActivation" : "createFunctionActivation", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;ZZLorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
            this.cfw.addAStore(this.variableObjectLocal);
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            addScriptRuntimeInvoke("enterActivationFunction", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V");
            str = "activation";
        } else {
            classFileWriter4.addALoad(i13);
            this.cfw.addALoad(this.thisObjLocal);
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addPush(0);
            addScriptRuntimeInvoke("initScript", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V");
            str = "global";
        }
        this.enterAreaStartLabel = this.cfw.acquireLabel();
        this.epilogueLabel = this.cfw.acquireLabel();
        this.cfw.markLabel(this.enterAreaStartLabel);
        generateNestedFunctionInits();
        if (this.compilerEnv.isGenerateDebugInfo()) {
            ClassFileWriter classFileWriter6 = this.cfw;
            int i14 = classFileWriter6.itsCodeBufferTop;
            int i15 = this.variableObjectLocal;
            ConstantPool constantPool2 = classFileWriter6.itsConstantPool;
            int[] iArr3 = {constantPool2.addUtf8(str), constantPool2.addUtf8("Lorg/mozilla/javascript/Scriptable;"), i14, i15};
            if (classFileWriter6.itsVarDescriptors == null) {
                classFileWriter6.itsVarDescriptors = new ArrayList();
            }
            classFileWriter6.itsVarDescriptors.add(iArr3);
        }
        OptFunctionNode optFunctionNode2 = this.fnCurrent;
        if (optFunctionNode2 == null) {
            this.popvLocal = getNewWordLocal();
            Codegen.pushUndefined(this.cfw);
            this.cfw.addAStore(this.popvLocal);
            int endLineno = this.scriptOrFn.getEndLineno();
            if (endLineno != -1) {
                this.cfw.addLineNumberEntry((short) endLineno);
                return;
            }
            return;
        }
        if (optFunctionNode2.itsContainsCalls0) {
            this.itsZeroArgArray = getNewWordLocal();
            this.cfw.add("org/mozilla/javascript/ScriptRuntime", "emptyArgs", Token.ARROW, "[Ljava/lang/Object;");
            this.cfw.addAStore(this.itsZeroArgArray);
        }
        if (this.fnCurrent.itsContainsCalls1) {
            this.itsOneArgArray = getNewWordLocal();
            this.cfw.addPush(1);
            this.cfw.add(PsExtractor.PRIVATE_STREAM_1, "java/lang/Object");
            this.cfw.addAStore(this.itsOneArgArray);
        }
    }

    private boolean generateSaveLocals(Node node) {
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < this.firstFreeLocal; i3++) {
            if (this.locals[i3] != 0) {
                i2++;
            }
        }
        if (i2 == 0) {
            ((FunctionNode) this.scriptOrFn).addLiveLocals(node, null);
            return false;
        }
        int i4 = this.maxLocals;
        if (i4 <= i2) {
            i4 = i2;
        }
        this.maxLocals = i4;
        int[] iArr = new int[i2];
        int i5 = 0;
        for (int i6 = 0; i6 < this.firstFreeLocal; i6++) {
            if (this.locals[i6] != 0) {
                iArr[i5] = i6;
                i5++;
            }
        }
        ((FunctionNode) this.scriptOrFn).addLiveLocals(node, iArr);
        generateGetGeneratorLocalsState();
        while (true) {
            ClassFileWriter classFileWriter = this.cfw;
            if (i >= i2) {
                classFileWriter.add(87);
                return true;
            }
            classFileWriter.add(89);
            this.cfw.addLoadConstant(i);
            this.cfw.addALoad(iArr[i]);
            this.cfw.add(83);
            i++;
        }
    }

    private void generateSetGeneratorResumptionPoint(int i) {
        this.cfw.addALoad(this.generatorStateLocal);
        this.cfw.addLoadConstant(i);
        this.cfw.add("org/mozilla/javascript/optimizer/OptRuntime$GeneratorState", "resumptionPoint", Token.TEMPLATE_CHARS, "I");
    }

    private void generateSetGeneratorReturnValue() {
        this.cfw.addALoad(this.generatorStateLocal);
        this.cfw.add(95);
        addOptRuntimeInvoke("setGeneratorReturnValue", "(Ljava/lang/Object;Ljava/lang/Object;)V");
    }

    private void generateStatement(Node node) {
        updateLineNumber(node);
        int type = node.getType();
        Node firstChild = node.getFirstChild();
        if (type == 55) {
            generateExpression(firstChild, node);
            if (this.compilerEnv.isGenerateObserverCount()) {
                addInstructionCount();
            }
            generateThrowJavaScriptException();
            return;
        }
        if (type == 56) {
            if (this.compilerEnv.isGenerateObserverCount()) {
                addInstructionCount();
            }
            this.cfw.addALoad(getLocalBlockRegister(node));
            this.cfw.add(191);
            return;
        }
        if (type != 70) {
            if (type == 90) {
                visitTryCatchFinally((Jump) node, firstChild);
                return;
            }
            int i = 1;
            if (type == 122) {
                OptFunctionNode optFunctionNode = OptFunctionNode.get(this.scriptOrFn, node.getExistingIntProp(1));
                int functionType = optFunctionNode.fnode.getFunctionType();
                if (functionType == 3) {
                    visitFunction(optFunctionNode, functionType);
                    return;
                } else {
                    if (functionType != 1) {
                        throw Codegen.badTree();
                    }
                    return;
                }
            }
            if (type == 127) {
                if (this.compilerEnv.isGenerateObserverCount()) {
                    addInstructionCount();
                }
                visitSwitch((Jump) node, firstChild);
                return;
            }
            if (type != 136) {
                if (type == 138) {
                    if (this.isGenerator) {
                        if (this.compilerEnv.isGenerateObserverCount()) {
                            saveCurrentCodeOffset();
                        }
                        this.cfw.itsStackTop = 1;
                        short newWordLocal = getNewWordLocal();
                        int acquireLabel = this.cfw.acquireLabel();
                        int acquireLabel2 = this.cfw.acquireLabel();
                        this.cfw.markLabel(acquireLabel);
                        generateIntegerWrap();
                        this.cfw.addAStore(newWordLocal);
                        while (firstChild != null) {
                            generateStatement(firstChild);
                            firstChild = firstChild.getNext();
                        }
                        this.cfw.addALoad(newWordLocal);
                        this.cfw.add(PsExtractor.AUDIO_STREAM, "java/lang/Integer");
                        generateIntegerUnwrap();
                        FinallyReturnPoint finallyReturnPoint = this.finallys.get(node);
                        int acquireLabel3 = this.cfw.acquireLabel();
                        finallyReturnPoint.tableLabel = acquireLabel3;
                        this.cfw.add(Token.LET, acquireLabel3);
                        this.cfw.itsStackTop = 0;
                        releaseWordLocal(newWordLocal);
                        this.cfw.markLabel(acquireLabel2);
                        return;
                    }
                    return;
                }
                if (type != 141) {
                    if (type == 155) {
                        boolean z = this.inLocalBlock;
                        this.inLocalBlock = true;
                        short newWordLocal2 = getNewWordLocal();
                        if (this.isGenerator) {
                            this.cfw.add(1);
                            this.cfw.addAStore(newWordLocal2);
                        }
                        node.putIntProp(2, newWordLocal2);
                        while (firstChild != null) {
                            generateStatement(firstChild);
                            firstChild = firstChild.getNext();
                        }
                        releaseWordLocal(newWordLocal2);
                        node.removeProp(2);
                        this.inLocalBlock = z;
                        return;
                    }
                    if (type != 174) {
                        switch (type) {
                            case 2:
                                generateExpression(firstChild, node);
                                this.cfw.addALoad(this.contextLocal);
                                this.cfw.addALoad(this.variableObjectLocal);
                                addScriptRuntimeInvoke("enterWith", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
                                this.cfw.addAStore(this.variableObjectLocal);
                                incReferenceWordLocal(this.variableObjectLocal);
                                return;
                            case 3:
                                this.cfw.addALoad(this.variableObjectLocal);
                                addScriptRuntimeInvoke("leaveWith", "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
                                this.cfw.addAStore(this.variableObjectLocal);
                                decReferenceWordLocal(this.variableObjectLocal);
                                return;
                            case 4:
                                break;
                            default:
                                switch (type) {
                                    case Token.CATCH_SCOPE /* 62 */:
                                        this.cfw.itsStackTop = 0;
                                        int localBlockRegister = getLocalBlockRegister(node);
                                        int existingIntProp = node.getExistingIntProp(14);
                                        String string = firstChild.getType() == 44 ? firstChild.getString() : null;
                                        generateExpression(firstChild.getNext(), node);
                                        ClassFileWriter classFileWriter = this.cfw;
                                        if (existingIntProp == 0) {
                                            classFileWriter.add(1);
                                        } else {
                                            classFileWriter.addALoad(localBlockRegister);
                                        }
                                        ClassFileWriter classFileWriter2 = this.cfw;
                                        if (string != null) {
                                            classFileWriter2.addPush(string);
                                        } else {
                                            classFileWriter2.add(1);
                                        }
                                        this.cfw.addALoad(this.contextLocal);
                                        this.cfw.addALoad(this.variableObjectLocal);
                                        addScriptRuntimeInvoke("newCatchScope", "(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
                                        this.cfw.addAStore(localBlockRegister);
                                        return;
                                    case Token.ENUM_INIT_KEYS /* 63 */:
                                    case 64:
                                    case Token.ENUM_INIT_ARRAY /* 65 */:
                                    case Token.ENUM_INIT_VALUES_IN_ORDER /* 66 */:
                                        generateExpression(firstChild, node);
                                        this.cfw.addALoad(this.contextLocal);
                                        this.cfw.addALoad(this.variableObjectLocal);
                                        if (type == 63) {
                                            i = 0;
                                        } else if (type != 64) {
                                            i = type == 66 ? 6 : 2;
                                        }
                                        this.cfw.addPush(i);
                                        addScriptRuntimeInvoke("enumInit", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
                                        this.cfw.addAStore(getLocalBlockRegister(node));
                                        return;
                                    default:
                                        switch (type) {
                                            case Token.BLOCK /* 143 */:
                                            case Token.LABEL /* 144 */:
                                            case Token.LOOP /* 146 */:
                                            case 150:
                                                break;
                                            case Token.TARGET /* 145 */:
                                                if (this.compilerEnv.isGenerateObserverCount()) {
                                                    addInstructionCount();
                                                }
                                                this.cfw.markLabel(getTargetLabel(node));
                                                if (this.compilerEnv.isGenerateObserverCount()) {
                                                    saveCurrentCodeOffset();
                                                    return;
                                                }
                                                return;
                                            case Token.EXPR_VOID /* 147 */:
                                                if (firstChild.getType() == 61) {
                                                    visitSetVar(firstChild, firstChild.getFirstChild(), false);
                                                    return;
                                                }
                                                if (firstChild.getType() == 170) {
                                                    visitSetConstVar(firstChild, firstChild.getFirstChild(), false);
                                                    return;
                                                }
                                                if (firstChild.getType() == 78 || firstChild.getType() == 179) {
                                                    generateYieldPoint(firstChild, false);
                                                    return;
                                                }
                                                generateExpression(firstChild, node);
                                                int intProp = node.getIntProp(8, -1);
                                                ClassFileWriter classFileWriter3 = this.cfw;
                                                if (intProp != -1) {
                                                    classFileWriter3.add(88);
                                                    return;
                                                } else {
                                                    classFileWriter3.add(87);
                                                    return;
                                                }
                                            case Token.EXPR_RESULT /* 148 */:
                                                generateExpression(firstChild, node);
                                                if (this.popvLocal < 0) {
                                                    this.popvLocal = getNewWordLocal();
                                                }
                                                this.cfw.addAStore(this.popvLocal);
                                                return;
                                            case Token.JSR /* 149 */:
                                                break;
                                            default:
                                                throw Codegen.badTree();
                                        }
                                }
                            case 5:
                            case 6:
                            case 7:
                                if (this.compilerEnv.isGenerateObserverCount()) {
                                    addInstructionCount();
                                }
                                visitGoto((Jump) node, type, firstChild);
                                return;
                        }
                    } else {
                        return;
                    }
                }
            }
            if (this.compilerEnv.isGenerateObserverCount()) {
                addInstructionCount(1);
            }
            while (firstChild != null) {
                generateStatement(firstChild);
                firstChild = firstChild.getNext();
            }
            return;
        }
        if (firstChild != null) {
            generateExpression(firstChild, node);
        } else if (type == 4) {
            Codegen.pushUndefined(this.cfw);
        } else {
            int i2 = this.popvLocal;
            if (i2 < 0) {
                throw Codegen.badTree();
            }
            this.cfw.addALoad(i2);
        }
        if (this.isGenerator) {
            generateSetGeneratorReturnValue();
        }
        if (this.compilerEnv.isGenerateObserverCount()) {
            addInstructionCount();
        }
        if (this.epilogueLabel == -1) {
            if (!this.hasVarsInRegs) {
                throw Codegen.badTree();
            }
            this.epilogueLabel = this.cfw.acquireLabel();
        }
        this.cfw.add(Token.LET, this.epilogueLabel);
    }

    private void generateThrowJavaScriptException() {
        this.cfw.add(Token.LAST_TOKEN, "org/mozilla/javascript/JavaScriptException");
        this.cfw.add(90);
        this.cfw.add(95);
        this.cfw.addPush(this.scriptOrFn.getSourceName());
        this.cfw.addPush(this.itsLineNumber);
        this.cfw.addInvoke("org/mozilla/javascript/JavaScriptException", "<init>", Token.TAGGED_TEMPLATE_LITERAL, "(Ljava/lang/Object;Ljava/lang/String;I)V");
        this.cfw.add(191);
    }

    private void generateYieldPoint(Node node, boolean z) {
        if (this.unnestedYields.containsKey(node)) {
            if (z) {
                String str = this.unnestedYields.get(node);
                this.cfw.addALoad(this.variableObjectLocal);
                this.cfw.addALoad(this.contextLocal);
                this.cfw.addALoad(this.variableObjectLocal);
                addDynamicInvoke("PROP:GETNOWARN:" + str, "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
                return;
            }
            return;
        }
        Node findNestedYield = findNestedYield(node);
        if (findNestedYield != null) {
            generateYieldPoint(findNestedYield, true);
            String m = Modifier.CC.m(this.unnestedYieldCount, "__nested__yield__");
            this.unnestedYieldCount++;
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.add(95);
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            addDynamicInvoke("PROP:SET:".concat(m), "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
            this.cfw.add(87);
            this.unnestedYields.put(findNestedYield, m);
        }
        generateLocalYieldPoint(node, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Node getFinallyAtTarget(Node node) {
        Node next;
        if (node == null) {
            return null;
        }
        if (node.getType() == 138) {
            return node;
        }
        if (node.getType() == 145 && (next = node.getNext()) != null && next.getType() == 138) {
            return next;
        }
        throw Kit.codeBug("bad finally target");
    }

    private static int getLocalBlockRegister(Node node) {
        return ((Node) node.getProp(3)).getExistingIntProp(2);
    }

    private short getNewWordIntern(int i) {
        int i2;
        int[] iArr = this.locals;
        int i3 = this.firstFreeLocal;
        if (i > 1) {
            loop0: while (true) {
                if (i3 + i > 1024) {
                    i3 = -1;
                    break;
                }
                i2 = 0;
                while (i2 < i) {
                    if (iArr[i3 + i2] != 0) {
                        break;
                    }
                    i2++;
                }
                break loop0;
                i3 += i2 + 1;
            }
        }
        if (i3 != -1) {
            iArr[i3] = 1;
            if (i > 1) {
                iArr[i3 + 1] = 1;
            }
            if (i > 2) {
                iArr[i3 + 2] = 1;
            }
            if (i3 != this.firstFreeLocal) {
                return (short) i3;
            }
            for (int i4 = i + i3; i4 < 1024; i4++) {
                if (iArr[i4] == 0) {
                    short s = (short) i4;
                    this.firstFreeLocal = s;
                    if (this.localsMax < s) {
                        this.localsMax = s;
                    }
                    return (short) i3;
                }
            }
        }
        throw Context.reportRuntimeError("Program too complex (out of locals)");
    }

    private short getNewWordLocal(boolean z) {
        return getNewWordIntern(z ? 2 : 1);
    }

    private short getNewWordPairLocal(boolean z) {
        return getNewWordIntern(z ? 3 : 2);
    }

    private int getNextGeneratorState(Node node) {
        return ((FunctionNode) this.scriptOrFn).getResumptionPoints().indexOf(node) + 1;
    }

    private int getTargetLabel(Node node) {
        int labelId = node.labelId();
        if (labelId != -1) {
            return labelId;
        }
        int acquireLabel = this.cfw.acquireLabel();
        node.labelId(acquireLabel);
        return acquireLabel;
    }

    private void incReferenceWordLocal(int i) {
        int[] iArr = this.locals;
        iArr[i] = iArr[i] + 1;
    }

    private void initBodyGeneration() {
        int paramAndVarCount;
        this.varRegisters = null;
        if (this.scriptOrFn.getType() == 122) {
            OptFunctionNode optFunctionNode = OptFunctionNode.get(this.scriptOrFn);
            this.fnCurrent = optFunctionNode;
            boolean requiresActivation = optFunctionNode.fnode.requiresActivation();
            this.hasVarsInRegs = !requiresActivation;
            if (!requiresActivation && (paramAndVarCount = this.fnCurrent.fnode.getParamAndVarCount()) != 0) {
                this.varRegisters = new int[paramAndVarCount];
            }
            boolean isTargetOfDirectCall = this.fnCurrent.isTargetOfDirectCall();
            this.inDirectCallFunction = isTargetOfDirectCall;
            if (isTargetOfDirectCall && !this.hasVarsInRegs) {
                Codegen.badTree();
            }
        } else {
            this.fnCurrent = null;
            this.hasVarsInRegs = false;
            this.inDirectCallFunction = false;
        }
        this.locals = new int[1024];
        this.funObjLocal = 0;
        this.contextLocal = 1;
        this.variableObjectLocal = 2;
        this.thisObjLocal = 3;
        this.localsMax = 4;
        this.firstFreeLocal = 4;
        this.popvLocal = -1;
        this.argsLocal = -1;
        this.itsZeroArgArray = -1;
        this.itsOneArgArray = -1;
        this.epilogueLabel = -1;
        this.enterAreaStartLabel = -1;
        this.generatorStateLocal = -1;
        this.savedHomeObjectLocal = -1;
    }

    private void inlineFinally(Node node, int i, int i2) {
        Node finallyAtTarget = getFinallyAtTarget(node);
        finallyAtTarget.resetTargets();
        this.exceptionManager.markInlineFinallyStart(finallyAtTarget, i);
        for (Node firstChild = finallyAtTarget.getFirstChild(); firstChild != null; firstChild = firstChild.getNext()) {
            generateStatement(firstChild);
        }
        this.exceptionManager.markInlineFinallyEnd(finallyAtTarget, i2);
    }

    private static boolean isArithmeticNode(Node node) {
        int type = node.getType();
        return type == 22 || type == 25 || type == 24 || type == 23;
    }

    private int nodeIsDirectCallParameter(Node node) {
        if (node.getType() != 60 || !this.inDirectCallFunction || this.itsForcedObjectParameters) {
            return -1;
        }
        int varIndex = this.fnCurrent.getVarIndex(node);
        if (this.fnCurrent.isParameter(varIndex)) {
            return this.varRegisters[varIndex];
        }
        return -1;
    }

    private void pushThisFromLastScriptable() {
        this.cfw.addALoad(this.contextLocal);
        addScriptRuntimeInvoke("lastStoredScriptable", "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;");
    }

    private void releaseWordLocal(int i) {
        if (i < this.firstFreeLocal) {
            this.firstFreeLocal = i;
        }
        this.locals[i] = 0;
    }

    private void saveCurrentCodeOffset() {
        this.savedCodeOffset = this.cfw.itsCodeBufferTop;
    }

    private void updateLineNumber(Node node) {
        int lineno = node.getLineno();
        this.itsLineNumber = lineno;
        if (lineno == -1) {
            return;
        }
        this.cfw.addLineNumberEntry((short) lineno);
    }

    private boolean varIsDirectCallParameter(int i) {
        return this.fnCurrent.isParameter(i) && this.inDirectCallFunction && !this.itsForcedObjectParameters;
    }

    private void visitArithmetic(Node node, int i, Node node2, Node node3) {
        if (node.getIntProp(8, -1) != -1) {
            generateExpression(node2, node);
            generateExpression(node2.getNext(), node);
            switch (i) {
                case 22:
                    this.cfw.add(Token.ASSIGN_BITAND);
                    return;
                case 23:
                    this.cfw.add(Token.ASSIGN_URSH);
                    return;
                case 24:
                    this.cfw.add(Token.ASSIGN_DIV);
                    return;
                case 25:
                    this.cfw.add(Token.HOOK);
                    return;
                default:
                    throw Kit.codeBug(Token.typeToName(i));
            }
        }
        generateExpression(node2, node);
        if (!isArithmeticNode(node2)) {
            addObjectToNumeric();
        }
        generateExpression(node2.getNext(), node);
        if (!isArithmeticNode(node2.getNext())) {
            addObjectToNumeric();
        }
        switch (i) {
            case 22:
                addScriptRuntimeInvoke("subtract", "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;");
                return;
            case 23:
                addScriptRuntimeInvoke("multiply", "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;");
                return;
            case 24:
                addScriptRuntimeInvoke("divide", "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;");
                return;
            case 25:
                addScriptRuntimeInvoke("remainder", "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;");
                return;
            default:
                throw Kit.codeBug(Token.typeToName(i));
        }
    }

    private void visitArrayLiteral(Node node, Node node2, boolean z) {
        int countArguments = countArguments(node2);
        if (!z && ((countArguments > 10 || this.cfw.itsCodeBufferTop > 30000) && !this.hasVarsInRegs && !this.isGenerator && !this.inLocalBlock)) {
            if (this.literals == null) {
                this.literals = new ArrayList<>();
            }
            this.literals.add(node);
            String str = this.codegen.getBodyMethodName(this.scriptOrFn) + "_literal" + this.literals.size();
            this.cfw.addALoad(this.funObjLocal);
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addALoad(this.thisObjLocal);
            this.cfw.addALoad(this.argsLocal);
            this.cfw.addInvoke(this.codegen.mainClassName, str, Token.TEMPLATE_LITERAL_SUBST, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
            return;
        }
        int i = 0;
        if (this.isGenerator) {
            for (int i2 = 0; i2 != countArguments; i2++) {
                generateExpression(node2, node);
                node2 = node2.getNext();
            }
            addNewObjectArray(countArguments);
            while (i != countArguments) {
                this.cfw.add(90);
                this.cfw.add(95);
                this.cfw.addPush((countArguments - i) - 1);
                this.cfw.add(95);
                this.cfw.add(83);
                i++;
            }
        } else {
            addNewObjectArray(countArguments);
            while (i != countArguments) {
                this.cfw.add(89);
                this.cfw.addPush(i);
                generateExpression(node2, node);
                this.cfw.add(83);
                node2 = node2.getNext();
                i++;
            }
        }
        int[] iArr = (int[]) node.getProp(11);
        ClassFileWriter classFileWriter = this.cfw;
        if (iArr == null) {
            classFileWriter.add(1);
            this.cfw.add(3);
        } else {
            classFileWriter.addPush(OptRuntime.encodeIntArray(iArr));
            this.cfw.addPush(iArr.length);
        }
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        addOptRuntimeInvoke("newArrayLiteral", "([Ljava/lang/Object;Ljava/lang/String;ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
    }

    private void visitBitNot(Node node, Node node2) {
        int intProp = node.getIntProp(8, -1);
        generateExpression(node2, node);
        if (intProp == -1) {
            addObjectToNumeric();
            addScriptRuntimeInvoke("bitwiseNOT", "(Ljava/lang/Number;)Ljava/lang/Number;");
        } else {
            addScriptRuntimeInvoke("toInt32", "(D)I");
            this.cfw.addPush(-1);
            this.cfw.add(130);
            this.cfw.add(135);
        }
    }

    private void visitBitOp(Node node, int i, Node node2) {
        int intProp = node.getIntProp(8, -1);
        generateExpression(node2, node);
        if (i == 20) {
            addDynamicInvoke("MATH:TOUINT32", Signatures.MATH_TO_UINT32);
            generateExpression(node2.getNext(), node);
            addDynamicInvoke("MATH:TOINT32", Signatures.MATH_TO_INT32);
            this.cfw.addPush(31);
            this.cfw.add(Token.ELSE);
            this.cfw.add(Token.IF);
            this.cfw.add(138);
            addDoubleWrap();
            return;
        }
        if (intProp == -1) {
            addObjectToNumeric();
            generateExpression(node2.getNext(), node);
            addObjectToNumeric();
            if (i == 18) {
                addScriptRuntimeInvoke("leftShift", "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;");
                return;
            }
            if (i == 19) {
                addScriptRuntimeInvoke("signedRightShift", "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;");
                return;
            }
            switch (i) {
                case 9:
                    addScriptRuntimeInvoke("bitwiseOR", "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;");
                    return;
                case 10:
                    addScriptRuntimeInvoke("bitwiseXOR", "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;");
                    return;
                case 11:
                    addScriptRuntimeInvoke("bitwiseAND", "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;");
                    return;
                default:
                    throw Kit.codeBug(Token.typeToName(i));
            }
        }
        addScriptRuntimeInvoke("toInt32", "(D)I");
        generateExpression(node2.getNext(), node);
        addScriptRuntimeInvoke("toInt32", "(D)I");
        if (i == 18) {
            this.cfw.add(120);
        } else if (i != 19) {
            switch (i) {
                case 9:
                    this.cfw.add(128);
                    break;
                case 10:
                    this.cfw.add(130);
                    break;
                case 11:
                    this.cfw.add(Token.ELSE);
                    break;
                default:
                    throw Kit.codeBug(Token.typeToName(i));
            }
        } else {
            this.cfw.add(Token.FUNCTION);
        }
        this.cfw.add(135);
    }

    private void visitDotQuery(Node node, Node node2) {
        updateLineNumber(node);
        generateExpression(node2, node);
        this.cfw.addALoad(this.variableObjectLocal);
        addScriptRuntimeInvoke("enterDotQuery", "(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
        this.cfw.addAStore(this.variableObjectLocal);
        this.cfw.add(1);
        int acquireLabel = this.cfw.acquireLabel();
        this.cfw.markLabel(acquireLabel);
        this.cfw.add(87);
        generateExpression(node2.getNext(), node);
        addDynamicInvoke("MATH:TOBOOLEAN", Signatures.MATH_TO_BOOLEAN);
        this.cfw.addALoad(this.variableObjectLocal);
        addScriptRuntimeInvoke("updateDotQuery", "(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        this.cfw.add(89);
        this.cfw.add(198, acquireLabel);
        this.cfw.addALoad(this.variableObjectLocal);
        addScriptRuntimeInvoke("leaveDotQuery", "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
        this.cfw.addAStore(this.variableObjectLocal);
    }

    private void visitExponentiation(Node node, Node node2, Node node3) {
        if (node.getIntProp(8, -1) != -1) {
            generateExpression(node2, node);
            generateExpression(node2.getNext(), node);
            this.cfw.addInvoke("java/lang/Math", "pow", Token.DOTDOTDOT, "(DD)D");
            return;
        }
        generateExpression(node2, node);
        generateExpression(node2.getNext(), node);
        short newWordLocal = getNewWordLocal();
        this.cfw.addAStore(newWordLocal);
        addObjectToNumeric();
        this.cfw.addALoad(newWordLocal);
        addObjectToNumeric();
        addScriptRuntimeInvoke("exponentiate", "(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;");
    }

    private void visitFunction(OptFunctionNode optFunctionNode, int i) {
        int index = this.codegen.getIndex(optFunctionNode.fnode);
        this.cfw.add(Token.LAST_TOKEN, this.codegen.mainClassName);
        this.cfw.add(89);
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addPush(index);
        this.cfw.addInvoke(this.codegen.mainClassName, "<init>", Token.TAGGED_TEMPLATE_LITERAL, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V");
        if (i == 4) {
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addALoad(this.thisObjLocal);
            addOptRuntimeInvoke("bindThis", "(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;");
        }
        if (optFunctionNode.fnode.isMethodDefinition()) {
            this.cfw.add(89);
            this.cfw.addALoad(this.savedHomeObjectLocal);
            this.cfw.addInvoke("org/mozilla/javascript/BaseFunction", "setHomeObject", Token.TEMPLATE_LITERAL_SUBST, "(Lorg/mozilla/javascript/Scriptable;)V");
        }
        if (i == 2 || i == 4) {
            return;
        }
        this.cfw.addPush(i);
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addALoad(this.contextLocal);
        addOptRuntimeInvoke("initFunction", "(Lorg/mozilla/javascript/NativeFunction;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)V");
    }

    private void visitGetProp(Node node, Node node2) {
        generateExpression(node2, node);
        if (node.getIntProp(30, 0) != 1) {
            finishGetPropGeneration(node, node2.getNext());
            return;
        }
        int acquireLabel = this.cfw.acquireLabel();
        int acquireLabel2 = this.cfw.acquireLabel();
        this.cfw.add(89);
        addOptRuntimeInvoke("isNullOrUndefined", Signatures.MATH_TO_BOOLEAN);
        this.cfw.add(Token.SETPROP_OP, acquireLabel);
        this.cfw.add(87);
        this.cfw.add("org/mozilla/javascript/Undefined", "instance", Token.ARROW, "Ljava/lang/Object;");
        this.cfw.add(Token.LET, acquireLabel2);
        this.cfw.markLabel(acquireLabel);
        finishGetPropGeneration(node, node2.getNext());
        this.cfw.markLabel(acquireLabel2);
    }

    private void visitGetVar(Node node) {
        if (!this.hasVarsInRegs) {
            Kit.codeBug();
        }
        int varIndex = this.fnCurrent.getVarIndex(node);
        int i = this.varRegisters[varIndex];
        if (varIsDirectCallParameter(varIndex)) {
            if (node.getIntProp(8, -1) != -1) {
                dcpLoadAsNumber(i);
                return;
            } else {
                dcpLoadAsObject(i);
                return;
            }
        }
        boolean isNumberVar = this.fnCurrent.isNumberVar(varIndex);
        ClassFileWriter classFileWriter = this.cfw;
        if (isNumberVar) {
            classFileWriter.addDLoad(i);
        } else {
            classFileWriter.addALoad(i);
        }
    }

    private void visitGoto(Jump jump, int i, Node node) {
        Node node2 = jump.target;
        if (i != 6 && i != 7) {
            if (i != 149) {
                addGoto(node2, Token.LET);
                return;
            } else if (this.isGenerator) {
                addGotoWithReturn(node2);
                return;
            } else {
                inlineFinally(node2);
                return;
            }
        }
        if (node == null) {
            throw Codegen.badTree();
        }
        int targetLabel = getTargetLabel(node2);
        int acquireLabel = this.cfw.acquireLabel();
        if (i == 6) {
            generateIfJump(node, jump, targetLabel, acquireLabel);
        } else {
            generateIfJump(node, jump, acquireLabel, targetLabel);
        }
        this.cfw.markLabel(acquireLabel);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void visitIfJumpEqOp(org.mozilla.javascript.Node r17, org.mozilla.javascript.Node r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.optimizer.BodyCodegen.visitIfJumpEqOp(org.mozilla.javascript.Node, org.mozilla.javascript.Node, int, int):void");
    }

    private void visitIfJumpRelOp(Node node, Node node2, int i, int i2) {
        String str;
        if (i == -1 || i2 == -1) {
            throw Codegen.badTree();
        }
        int type = node.getType();
        Node next = node2.getNext();
        if (type == 58 || type == 57) {
            generateExpression(node2, node);
            generateExpression(next, node);
            this.cfw.addALoad(this.contextLocal);
            addScriptRuntimeInvoke(type == 58 ? "instanceOf" : "in", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z");
            this.cfw.add(Token.SETELEM_OP, i);
            this.cfw.add(Token.LET, i2);
            return;
        }
        int intProp = node.getIntProp(8, -1);
        int nodeIsDirectCallParameter = nodeIsDirectCallParameter(node2);
        int nodeIsDirectCallParameter2 = nodeIsDirectCallParameter(next);
        if (intProp != -1) {
            if (intProp != 2) {
                generateExpression(node2, node);
            } else if (nodeIsDirectCallParameter != -1) {
                dcpLoadAsNumber(nodeIsDirectCallParameter);
            } else {
                generateExpression(node2, node);
                addObjectToDouble();
            }
            if (intProp != 1) {
                generateExpression(next, node);
            } else if (nodeIsDirectCallParameter2 != -1) {
                dcpLoadAsNumber(nodeIsDirectCallParameter2);
            } else {
                generateExpression(next, node);
                addObjectToDouble();
            }
            genSimpleCompare(type, i, i2);
            return;
        }
        if (nodeIsDirectCallParameter == -1 || nodeIsDirectCallParameter2 == -1) {
            generateExpression(node2, node);
            generateExpression(next, node);
        } else {
            ClassFileWriter classFileWriter = this.cfw;
            int i3 = classFileWriter.itsStackTop;
            int acquireLabel = classFileWriter.acquireLabel();
            this.cfw.addALoad(nodeIsDirectCallParameter);
            this.cfw.add("java/lang/Void", "TYPE", Token.ARROW, "Ljava/lang/Class;");
            this.cfw.add(Token.SET, acquireLabel);
            this.cfw.addDLoad(nodeIsDirectCallParameter + 1);
            dcpLoadAsNumber(nodeIsDirectCallParameter2);
            genSimpleCompare(type, i, i2);
            ClassFileWriter classFileWriter2 = this.cfw;
            if (i3 != classFileWriter2.itsStackTop) {
                throw Codegen.badTree();
            }
            classFileWriter2.markLabel(acquireLabel);
            int acquireLabel2 = this.cfw.acquireLabel();
            this.cfw.addALoad(nodeIsDirectCallParameter2);
            this.cfw.add("java/lang/Void", "TYPE", Token.ARROW, "Ljava/lang/Class;");
            this.cfw.add(Token.SET, acquireLabel2);
            this.cfw.addALoad(nodeIsDirectCallParameter);
            addObjectToDouble();
            this.cfw.addDLoad(nodeIsDirectCallParameter2 + 1);
            genSimpleCompare(type, i, i2);
            ClassFileWriter classFileWriter3 = this.cfw;
            if (i3 != classFileWriter3.itsStackTop) {
                throw Codegen.badTree();
            }
            classFileWriter3.markLabel(acquireLabel2);
            this.cfw.addALoad(nodeIsDirectCallParameter);
            this.cfw.addALoad(nodeIsDirectCallParameter2);
        }
        switch (type) {
            case 14:
                str = "MATH:COMPARELT";
                break;
            case 15:
                str = "MATH:COMPARELE";
                break;
            case 16:
                str = "MATH:COMPAREGT";
                break;
            case 17:
                str = "MATH:COMPAREGE";
                break;
            default:
                throw Kit.codeBug();
        }
        addDynamicInvoke(str, "(Ljava/lang/Object;Ljava/lang/Object;)Z");
        this.cfw.add(Token.SETELEM_OP, i);
        this.cfw.add(Token.LET, i2);
    }

    private void visitIncDec(Node node) {
        int existingIntProp = node.getExistingIntProp(13);
        Node firstChild = node.getFirstChild();
        if (firstChild.getIntProp(31, 0) == 1) {
            visitSuperIncDec(node, firstChild, existingIntProp);
            return;
        }
        int type = firstChild.getType();
        if (type == 33) {
            Node firstChild2 = firstChild.getFirstChild();
            generateExpression(firstChild2, node);
            generateExpression(firstChild2.getNext(), node);
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addPush(existingIntProp);
            addScriptRuntimeInvoke("propIncrDecr", "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
            return;
        }
        if (type == 34) {
            throw Kit.codeBug();
        }
        if (type == 39) {
            Node firstChild3 = firstChild.getFirstChild();
            generateExpression(firstChild3, node);
            generateExpression(firstChild3.getNext(), node);
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addPush(existingIntProp);
            if (firstChild3.getNext().getIntProp(8, -1) != -1) {
                addOptRuntimeInvoke("elemIncrDecr", "(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
                return;
            } else {
                addScriptRuntimeInvoke("elemIncrDecr", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
                return;
            }
        }
        if (type == 44) {
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addPush(firstChild.getString());
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addPush(existingIntProp);
            addScriptRuntimeInvoke("nameIncrDecr", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;");
            return;
        }
        if (type != 60) {
            if (type != 73) {
                Codegen.badTree();
                return;
            }
            generateExpression(firstChild.getFirstChild(), node);
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addPush(existingIntProp);
            addScriptRuntimeInvoke("refIncrDecr", "(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;");
            return;
        }
        if (!this.hasVarsInRegs) {
            Kit.codeBug();
        }
        boolean z = (existingIntProp & 2) != 0;
        int varIndex = this.fnCurrent.getVarIndex(firstChild);
        int i = this.varRegisters[varIndex];
        if (this.fnCurrent.fnode.getParamAndVarConst()[varIndex]) {
            if (node.getIntProp(8, -1) != -1) {
                this.cfw.addDLoad(i + (varIsDirectCallParameter(varIndex) ? 1 : 0));
                if (z) {
                    return;
                }
                this.cfw.addPush(1.0d);
                int i2 = existingIntProp & 1;
                ClassFileWriter classFileWriter = this.cfw;
                if (i2 == 0) {
                    classFileWriter.add(99);
                    return;
                } else {
                    classFileWriter.add(Token.ASSIGN_BITAND);
                    return;
                }
            }
            if (varIsDirectCallParameter(varIndex)) {
                dcpLoadAsObject(i);
            } else {
                this.cfw.addALoad(i);
            }
            if (z) {
                this.cfw.add(89);
                addObjectToDouble();
                this.cfw.add(88);
                return;
            }
            addObjectToDouble();
            this.cfw.addPush(1.0d);
            int i3 = existingIntProp & 1;
            ClassFileWriter classFileWriter2 = this.cfw;
            if (i3 == 0) {
                classFileWriter2.add(99);
            } else {
                classFileWriter2.add(Token.ASSIGN_BITAND);
            }
            addDoubleWrap();
            return;
        }
        if (node.getIntProp(8, -1) != -1) {
            boolean varIsDirectCallParameter = varIsDirectCallParameter(varIndex);
            ClassFileWriter classFileWriter3 = this.cfw;
            int i4 = i + (varIsDirectCallParameter ? 1 : 0);
            classFileWriter3.addDLoad(i4);
            if (z) {
                this.cfw.add(92);
            }
            this.cfw.addPush(1.0d);
            int i5 = existingIntProp & 1;
            ClassFileWriter classFileWriter4 = this.cfw;
            if (i5 == 0) {
                classFileWriter4.add(99);
            } else {
                classFileWriter4.add(Token.ASSIGN_BITAND);
            }
            if (!z) {
                this.cfw.add(92);
            }
            this.cfw.xop(71, 57, i4);
            return;
        }
        if (varIsDirectCallParameter(varIndex)) {
            dcpLoadAsObject(i);
        } else {
            this.cfw.addALoad(i);
        }
        addObjectToDouble();
        if (z) {
            this.cfw.add(92);
        }
        this.cfw.addPush(1.0d);
        int i6 = existingIntProp & 1;
        ClassFileWriter classFileWriter5 = this.cfw;
        if (i6 == 0) {
            classFileWriter5.add(99);
        } else {
            classFileWriter5.add(Token.ASSIGN_BITAND);
        }
        addDoubleWrap();
        if (!z) {
            this.cfw.add(89);
        }
        this.cfw.addAStore(i);
        if (z) {
            addDoubleWrap();
        }
    }

    private void visitObjectLiteral(Node node, Node node2, boolean z) {
        Object[] objArr = (Object[]) node.getProp(12);
        int length = objArr == null ? 0 : objArr.length;
        if (!z && ((length > 10 || this.cfw.itsCodeBufferTop > 30000) && !this.hasVarsInRegs && !this.isGenerator && !this.inLocalBlock)) {
            if (this.literals == null) {
                this.literals = new ArrayList<>();
            }
            this.literals.add(node);
            String str = this.codegen.getBodyMethodName(this.scriptOrFn) + "_literal" + this.literals.size();
            this.cfw.addALoad(this.funObjLocal);
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addALoad(this.thisObjLocal);
            this.cfw.addALoad(this.argsLocal);
            this.cfw.addInvoke(this.codegen.mainClassName, str, Token.TEMPLATE_LITERAL_SUBST, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
            return;
        }
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        this.cfw.addInvoke("org/mozilla/javascript/Context", "newObject", Token.TEMPLATE_LITERAL_SUBST, "(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
        this.cfw.add(89);
        short newWordLocal = getNewWordLocal();
        this.savedHomeObjectLocal = newWordLocal;
        this.cfw.addAStore(newWordLocal);
        this.cfw.add(89);
        addLoadProperty(node, node2, objArr, length);
        Node node3 = node2;
        for (int i = 0; i != length; i++) {
            int type = node3.getType();
            if (type == 165 || type == 166) {
                this.cfw.addPush(length);
                this.cfw.add(TsExtractor.TS_PACKET_SIZE, 10);
                for (int i2 = 0; i2 != length; i2++) {
                    this.cfw.add(89);
                    this.cfw.addPush(i2);
                    int type2 = node2.getType();
                    if (type2 == 165) {
                        this.cfw.add(2);
                    } else {
                        ClassFileWriter classFileWriter = this.cfw;
                        if (type2 == 166) {
                            classFileWriter.add(4);
                        } else {
                            classFileWriter.add(3);
                        }
                    }
                    this.cfw.add(79);
                    node2 = node2.getNext();
                }
                this.cfw.addALoad(this.contextLocal);
                this.cfw.addALoad(this.variableObjectLocal);
                addScriptRuntimeInvoke("fillObjectLiteral", "(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V");
            }
            node3 = node3.getNext();
        }
        this.cfw.add(1);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        addScriptRuntimeInvoke("fillObjectLiteral", "(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V");
    }

    private void visitOptimizedCall(Node node, OptFunctionNode optFunctionNode, int i, Node node2) {
        short s = 0;
        if (node.getIntProp(31, 0) == 1) {
            Kit.codeBug();
        }
        Node next = node2.getNext();
        String str = this.codegen.mainClassName;
        if (i == 30) {
            generateExpression(node2, node);
        } else {
            generateFunctionAndThisObj(node2, node);
            pushThisFromLastScriptable();
            s = getNewWordLocal();
            this.cfw.addAStore(s);
        }
        int acquireLabel = this.cfw.acquireLabel();
        int acquireLabel2 = this.cfw.acquireLabel();
        this.cfw.add(89);
        this.cfw.add(193, str);
        this.cfw.add(Token.SETPROP_OP, acquireLabel2);
        this.cfw.add(PsExtractor.AUDIO_STREAM, str);
        this.cfw.add(89);
        this.cfw.add(str, "_id", 180, "I");
        this.cfw.addPush(this.codegen.getIndex(optFunctionNode.fnode));
        this.cfw.add(160, acquireLabel2);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        ClassFileWriter classFileWriter = this.cfw;
        if (i == 30) {
            classFileWriter.add(1);
        } else {
            classFileWriter.addALoad(s);
        }
        for (Node node3 = next; node3 != null; node3 = node3.getNext()) {
            int nodeIsDirectCallParameter = nodeIsDirectCallParameter(node3);
            if (nodeIsDirectCallParameter >= 0) {
                this.cfw.addALoad(nodeIsDirectCallParameter);
                this.cfw.addDLoad(nodeIsDirectCallParameter + 1);
            } else if (node3.getIntProp(8, -1) == 0) {
                this.cfw.add("java/lang/Void", "TYPE", Token.ARROW, "Ljava/lang/Class;");
                generateExpression(node3, node);
            } else {
                generateExpression(node3, node);
                this.cfw.addPush(0.0d);
            }
        }
        this.cfw.add("org/mozilla/javascript/ScriptRuntime", "emptyArgs", Token.ARROW, "[Ljava/lang/Object;");
        ClassFileWriter classFileWriter2 = this.cfw;
        Codegen codegen = this.codegen;
        String str2 = codegen.mainClassName;
        FunctionNode functionNode = optFunctionNode.fnode;
        classFileWriter2.addInvoke(str2, i == 30 ? codegen.getDirectCtorName(functionNode) : codegen.getBodyMethodName(functionNode), Token.DOTDOTDOT, this.codegen.getBodyMethodSignature(optFunctionNode.fnode));
        this.cfw.add(Token.LET, acquireLabel);
        this.cfw.markLabel(acquireLabel2);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        if (i != 30) {
            this.cfw.addALoad(s);
            releaseWordLocal(s);
        }
        generateCallArgArray(node, next, true);
        if (i == 30) {
            addScriptRuntimeInvoke("newObject", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
        } else {
            this.cfw.addInvoke("org/mozilla/javascript/Callable", "call", Token.NULLISH_COALESCING, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;");
        }
        this.cfw.markLabel(acquireLabel);
    }

    private void visitSetConst(Node node, Node node2) {
        String string = node.getFirstChild().getString();
        while (node2 != null) {
            generateExpression(node2, node);
            node2 = node2.getNext();
        }
        this.cfw.addALoad(this.contextLocal);
        addDynamicInvoke("NAME:SETCONST:" + string, Signatures.NAME_SET_CONST);
    }

    private void visitSetConstVar(Node node, Node node2, boolean z) {
        if (!this.hasVarsInRegs) {
            Kit.codeBug();
        }
        int varIndex = this.fnCurrent.getVarIndex(node);
        generateExpression(node2.getNext(), node);
        boolean z2 = node.getIntProp(8, -1) != -1;
        int i = this.varRegisters[varIndex];
        int acquireLabel = this.cfw.acquireLabel();
        int acquireLabel2 = this.cfw.acquireLabel();
        ClassFileWriter classFileWriter = this.cfw;
        if (z2) {
            int i2 = i + 2;
            classFileWriter.addILoad(i2);
            this.cfw.add(Token.SETELEM_OP, acquireLabel2);
            ClassFileWriter classFileWriter2 = this.cfw;
            int i3 = classFileWriter2.itsStackTop;
            classFileWriter2.addPush(1);
            this.cfw.xop(59, 54, i2);
            this.cfw.xop(71, 57, i);
            ClassFileWriter classFileWriter3 = this.cfw;
            if (z) {
                classFileWriter3.addDLoad(i);
                this.cfw.markLabel(acquireLabel2, i3);
            } else {
                classFileWriter3.add(Token.LET, acquireLabel);
                this.cfw.markLabel(acquireLabel2, i3);
                this.cfw.add(88);
            }
        } else {
            int i4 = i + 1;
            classFileWriter.addILoad(i4);
            this.cfw.add(Token.SETELEM_OP, acquireLabel2);
            ClassFileWriter classFileWriter4 = this.cfw;
            int i5 = classFileWriter4.itsStackTop;
            classFileWriter4.addPush(1);
            this.cfw.xop(59, 54, i4);
            this.cfw.addAStore(i);
            ClassFileWriter classFileWriter5 = this.cfw;
            if (z) {
                classFileWriter5.addALoad(i);
                this.cfw.markLabel(acquireLabel2, i5);
            } else {
                classFileWriter5.add(Token.LET, acquireLabel);
                this.cfw.markLabel(acquireLabel2, i5);
                this.cfw.add(87);
            }
        }
        this.cfw.markLabel(acquireLabel);
    }

    private void visitSetElem(int i, Node node, Node node2) {
        generateExpression(node2, node);
        Node next = node2.getNext();
        if (i == 154) {
            this.cfw.add(89);
        }
        generateExpression(next, node);
        Node next2 = next.getNext();
        boolean z = node.getIntProp(8, -1) != -1;
        boolean z2 = node.getIntProp(31, 0) == 1;
        if (i == 154) {
            if (z2) {
                this.cfw.add(90);
                this.cfw.addALoad(this.contextLocal);
                this.cfw.addALoad(this.variableObjectLocal);
                this.cfw.addALoad(this.thisObjLocal);
                addDynamicInvoke("PROP:GETELEMENTSUPER", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;");
            } else {
                ClassFileWriter classFileWriter = this.cfw;
                if (z) {
                    classFileWriter.add(93);
                    this.cfw.addALoad(this.contextLocal);
                    this.cfw.addALoad(this.variableObjectLocal);
                    addDynamicInvoke("PROP:GETINDEX", Signatures.PROP_GET_INDEX);
                } else {
                    classFileWriter.add(90);
                    this.cfw.addALoad(this.contextLocal);
                    this.cfw.addALoad(this.variableObjectLocal);
                    addDynamicInvoke("PROP:GETELEMENT", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
                }
            }
        }
        generateExpression(next2, node);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        if (z2) {
            this.cfw.addALoad(this.thisObjLocal);
            addDynamicInvoke("PROP:SETELEMENTSUPER", Signatures.PROP_SET_ELEMENT_SUPER);
        } else if (z) {
            addDynamicInvoke("PROP:SETINDEX", Signatures.PROP_SET_INDEX);
        } else {
            addDynamicInvoke("PROP:SETELEMENT", Signatures.PROP_SET_ELEMENT);
        }
    }

    private void visitSetName(Node node, Node node2) {
        String string = node.getFirstChild().getString();
        while (node2 != null) {
            generateExpression(node2, node);
            node2 = node2.getNext();
        }
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        addDynamicInvoke("NAME:SET:" + string, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
    }

    private void visitSetProp(int i, Node node, Node node2) {
        generateExpression(node2, node);
        Node next = node2.getNext();
        if (i == 153) {
            this.cfw.add(89);
            finishGetPropGeneration(node, next);
        }
        generateExpression(next.getNext(), node);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        if (node.getIntProp(31, 0) != 1) {
            addDynamicInvoke(Owner.CC.m("PROP:SET:", next.getString()), "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
        } else {
            this.cfw.addALoad(this.thisObjLocal);
            addDynamicInvoke(Owner.CC.m("PROP:SETSUPER:", next.getString()), "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;");
        }
    }

    private void visitSetVar(Node node, Node node2, boolean z) {
        if (!this.hasVarsInRegs) {
            Kit.codeBug();
        }
        int varIndex = this.fnCurrent.getVarIndex(node);
        generateExpression(node2.getNext(), node);
        boolean z2 = node.getIntProp(8, -1) != -1;
        int i = this.varRegisters[varIndex];
        if (this.fnCurrent.fnode.getParamAndVarConst()[varIndex]) {
            if (z) {
                return;
            }
            ClassFileWriter classFileWriter = this.cfw;
            if (z2) {
                classFileWriter.add(88);
                return;
            } else {
                classFileWriter.add(87);
                return;
            }
        }
        if (varIsDirectCallParameter(varIndex)) {
            if (!z2) {
                if (z) {
                    this.cfw.add(89);
                }
                this.cfw.addAStore(i);
                return;
            }
            if (z) {
                this.cfw.add(92);
            }
            this.cfw.addALoad(i);
            this.cfw.add("java/lang/Void", "TYPE", Token.ARROW, "Ljava/lang/Class;");
            int acquireLabel = this.cfw.acquireLabel();
            int acquireLabel2 = this.cfw.acquireLabel();
            this.cfw.add(Token.GET, acquireLabel);
            int i2 = this.cfw.itsStackTop;
            addDoubleWrap();
            this.cfw.addAStore(i);
            this.cfw.add(Token.LET, acquireLabel2);
            this.cfw.markLabel(acquireLabel, i2);
            this.cfw.xop(71, 57, i + 1);
            this.cfw.markLabel(acquireLabel2);
            return;
        }
        boolean isNumberVar = this.fnCurrent.isNumberVar(varIndex);
        if (!z2) {
            if (isNumberVar) {
                Kit.codeBug();
            }
            this.cfw.addAStore(i);
            if (z) {
                this.cfw.addALoad(i);
                return;
            }
            return;
        }
        if (isNumberVar) {
            this.cfw.xop(71, 57, i);
            if (z) {
                this.cfw.addDLoad(i);
                return;
            }
            return;
        }
        if (z) {
            this.cfw.add(92);
        }
        addDoubleWrap();
        this.cfw.addAStore(i);
    }

    private void visitSpecialCall(Node node, int i, int i2, Node node2) {
        String str;
        String str2;
        this.cfw.addALoad(this.contextLocal);
        if (i == 30) {
            generateExpression(node2, node);
        } else {
            generateFunctionAndThisObj(node2, node);
            pushThisFromLastScriptable();
        }
        generateCallArgArray(node, node2.getNext(), false);
        if (i == 30) {
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addALoad(this.thisObjLocal);
            this.cfw.addPush(i2);
            str = "newObjectSpecial";
            str2 = "(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;";
        } else {
            boolean z = node.getIntProp(30, 0) == 1;
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addALoad(this.thisObjLocal);
            this.cfw.addPush(i2);
            String sourceName = this.scriptOrFn.getSourceName();
            ClassFileWriter classFileWriter = this.cfw;
            if (sourceName == null) {
                sourceName = "";
            }
            classFileWriter.addPush(sourceName);
            this.cfw.addPush(this.itsLineNumber);
            this.cfw.addPush(z);
            str = "callSpecial";
            str2 = "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;IZ)Ljava/lang/Object;";
        }
        addOptRuntimeInvoke(str, str2);
    }

    private void visitStandardCall(Node node, Node node2) {
        String str;
        if (node.getType() != 43) {
            throw Codegen.badTree();
        }
        Node next = node2.getNext();
        int type = node2.getType();
        boolean z = node.getIntProp(30, 0) == 1;
        int intProp = node.getIntProp(31, 0);
        String str2 = SIGNATURE_CALL2;
        String str3 = "call2";
        Integer num = null;
        if (intProp == 1) {
            int countArguments = countArguments(next);
            generateFunctionAndThisObj(node2, node);
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addInvoke("org/mozilla/javascript/ScriptRuntime", "discardLastStoredScriptable", Token.DOTDOTDOT, "(Lorg/mozilla/javascript/Context;)V");
            this.cfw.addALoad(this.thisObjLocal);
            if (countArguments == 0) {
                str2 = SIGNATURE_CALL0;
                str3 = "call0";
            } else if (countArguments == 1) {
                generateExpression(next, node);
                str2 = SIGNATURE_CALL1;
                str3 = "call1";
            } else if (countArguments == 2) {
                generateExpression(next, node);
                generateExpression(next.getNext(), node);
            } else {
                generateCallArgArray(node, next, false);
                str2 = SIGNATURE_CALLN;
                str3 = "callN";
            }
        } else if (next != null) {
            boolean z2 = z;
            if (type == 44) {
                String string = node2.getString();
                if (z2) {
                    this.cfw.addALoad(this.variableObjectLocal);
                    this.cfw.addALoad(this.contextLocal);
                    addDynamicInvoke("NAME:GETWITHTHISOPTIONAL:" + string, Signatures.NAME_GET_THIS);
                    int acquireLabel = this.cfw.acquireLabel();
                    num = Integer.valueOf(acquireLabel);
                    int acquireLabel2 = this.cfw.acquireLabel();
                    this.cfw.add(89);
                    addOptRuntimeInvoke("isNullOrUndefined", Signatures.MATH_TO_BOOLEAN);
                    this.cfw.add(Token.SETPROP_OP, acquireLabel2);
                    this.cfw.add(87);
                    this.cfw.add("org/mozilla/javascript/Undefined", "instance", Token.ARROW, "Ljava/lang/Object;");
                    this.cfw.add(Token.LET, acquireLabel);
                    this.cfw.markLabel(acquireLabel2);
                    pushThisFromLastScriptable();
                    generateCallArgArray(node, next, false);
                    str2 = SIGNATURE_CALLN;
                    str3 = "callN";
                } else {
                    generateCallArgArray(node, next, false);
                    this.cfw.addPush(string);
                    str3 = "callName";
                    str2 = "([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
                }
            } else {
                int countArguments2 = countArguments(next);
                generateFunctionAndThisObj(node2, node);
                if (z2) {
                    int acquireLabel3 = this.cfw.acquireLabel();
                    num = Integer.valueOf(acquireLabel3);
                    int acquireLabel4 = this.cfw.acquireLabel();
                    str = SIGNATURE_CALL2;
                    this.cfw.add(89);
                    addOptRuntimeInvoke("isNullOrUndefined", Signatures.MATH_TO_BOOLEAN);
                    this.cfw.add(Token.SETPROP_OP, acquireLabel4);
                    this.cfw.add(87);
                    this.cfw.add("org/mozilla/javascript/Undefined", "instance", Token.ARROW, "Ljava/lang/Object;");
                    this.cfw.add(Token.LET, acquireLabel3);
                    this.cfw.markLabel(acquireLabel4);
                    this.cfw.add(PsExtractor.AUDIO_STREAM, "org/mozilla/javascript/Callable");
                } else {
                    str = SIGNATURE_CALL2;
                }
                pushThisFromLastScriptable();
                if (countArguments2 == 1) {
                    generateExpression(next, node);
                    str2 = SIGNATURE_CALL1;
                    str3 = "call1";
                } else if (countArguments2 == 2) {
                    generateExpression(next, node);
                    generateExpression(next.getNext(), node);
                    str2 = str;
                } else {
                    generateCallArgArray(node, next, false);
                    str2 = SIGNATURE_CALLN;
                    str3 = "callN";
                }
            }
        } else if (type == 44) {
            this.cfw.addPush(node2.getString());
            str3 = z ? "callName0Optional" : "callName0";
            str2 = "(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
        } else if (type == 33) {
            Node firstChild = node2.getFirstChild();
            generateExpression(firstChild, node);
            this.cfw.addPush(firstChild.getNext().getString());
            str3 = z ? "callProp0Optional" : "callProp0";
            str2 = "(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;";
        } else {
            if (type == 34) {
                throw Kit.codeBug();
            }
            generateFunctionAndThisObj(node2, node);
            pushThisFromLastScriptable();
            str3 = z ? "call0Optional" : "call0";
            str2 = SIGNATURE_CALL0;
        }
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        addOptRuntimeInvoke(str3, str2);
        if (num != null) {
            this.cfw.markLabel(num.intValue());
        }
    }

    private void visitStandardNew(Node node, Node node2) {
        if (node.getType() != 30) {
            throw Codegen.badTree();
        }
        Node next = node2.getNext();
        generateExpression(node2, node);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        generateCallArgArray(node, next, false);
        addScriptRuntimeInvoke("newObject", "(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;");
    }

    private void visitStrictSetName(Node node, Node node2) {
        String string = node.getFirstChild().getString();
        while (node2 != null) {
            generateExpression(node2, node);
            node2 = node2.getNext();
        }
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        addDynamicInvoke("NAME:SETSTRICT:" + string, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;");
    }

    private void visitSuperIncDec(Node node, Node node2, int i) {
        Node firstChild = node2.getFirstChild();
        generateExpression(firstChild, node);
        this.cfw.add(89);
        int type = node2.getType();
        if (type == 33) {
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addALoad(this.thisObjLocal);
            this.cfw.addLoadConstant(0);
            addDynamicInvoke(Owner.CC.m("PROP:GETSUPER:", node2.getFirstChild().getNext().getString()), Signatures.PROP_GET_SUPER);
        } else if (type != 39) {
            Codegen.badTree();
        } else {
            generateExpression(firstChild.getNext(), node);
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addALoad(this.thisObjLocal);
            addDynamicInvoke("PROP:GETELEMENTSUPER", "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;");
        }
        int i2 = i & 2;
        if (i2 != 0) {
            this.cfw.add(95);
            this.cfw.add(92);
            this.cfw.add(87);
        }
        addObjectToDouble();
        this.cfw.addPush(1.0d);
        int i3 = i & 1;
        ClassFileWriter classFileWriter = this.cfw;
        if (i3 == 0) {
            classFileWriter.add(99);
        } else {
            classFileWriter.add(Token.ASSIGN_BITAND);
        }
        addDoubleWrap();
        int type2 = node2.getType();
        if (type2 == 33) {
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addALoad(this.thisObjLocal);
            addDynamicInvoke(Owner.CC.m("PROP:SETSUPER:", node2.getFirstChild().getNext().getString()), "(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;");
        } else if (type2 == 39) {
            generateExpression(firstChild.getNext(), node);
            this.cfw.add(95);
            this.cfw.addALoad(this.contextLocal);
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addALoad(this.thisObjLocal);
            addDynamicInvoke("PROP:SETELEMENTSUPER", Signatures.PROP_SET_ELEMENT_SUPER);
        }
        if (i2 != 0) {
            this.cfw.add(87);
        }
    }

    private void visitSwitch(Jump jump, Node node) {
        generateExpression(node, jump);
        short newWordLocal = getNewWordLocal();
        this.cfw.addAStore(newWordLocal);
        for (Jump jump2 = (Jump) node.getNext(); jump2 != null; jump2 = (Jump) jump2.getNext()) {
            if (jump2.getType() != 128) {
                throw Codegen.badTree();
            }
            generateExpression(jump2.getFirstChild(), jump2);
            this.cfw.addALoad(newWordLocal);
            addDynamicInvoke("MATH:SHALLOWEQ", "(Ljava/lang/Object;Ljava/lang/Object;)Z");
            addGoto(jump2.target, Token.SETELEM_OP);
        }
        releaseWordLocal(newWordLocal);
    }

    private void visitTemplateLiteral(Node node) {
        int existingIntProp = node.getExistingIntProp(27);
        this.cfw.addALoad(this.contextLocal);
        this.cfw.addALoad(this.variableObjectLocal);
        ClassFileWriter classFileWriter = this.cfw;
        Codegen codegen = this.codegen;
        classFileWriter.add(codegen.mainClassName, codegen.getTemplateLiteralName(this.scriptOrFn), Token.ARROW, "[Ljava/lang/Object;");
        this.cfw.addPush(existingIntProp);
        this.cfw.addInvoke("org/mozilla/javascript/ScriptRuntime", "getTemplateLiteralCallSite", Token.DOTDOTDOT, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Lorg/mozilla/javascript/Scriptable;");
    }

    private void visitTryCatchFinally(Jump jump, Node node) {
        int i;
        BodyCodegen bodyCodegen = this;
        short newWordLocal = bodyCodegen.getNewWordLocal();
        bodyCodegen.cfw.addALoad(bodyCodegen.variableObjectLocal);
        bodyCodegen.cfw.addAStore(newWordLocal);
        int acquireLabel = bodyCodegen.cfw.acquireLabel();
        bodyCodegen.cfw.markLabel(acquireLabel, 0);
        Node node2 = jump.target;
        Node node3 = jump.getFinally();
        int[] iArr = new int[5];
        bodyCodegen.exceptionManager.pushExceptionInfo(jump);
        if (node2 != null) {
            iArr[0] = bodyCodegen.cfw.acquireLabel();
            iArr[1] = bodyCodegen.cfw.acquireLabel();
            iArr[2] = bodyCodegen.cfw.acquireLabel();
            Context currentContext = Context.getCurrentContext();
            if (currentContext != null && currentContext.hasFeature(13)) {
                iArr[3] = bodyCodegen.cfw.acquireLabel();
            }
        }
        if (node3 != null) {
            iArr[4] = bodyCodegen.cfw.acquireLabel();
        }
        bodyCodegen.exceptionManager.setHandlers(iArr, acquireLabel);
        if (bodyCodegen.isGenerator && node3 != null) {
            FinallyReturnPoint finallyReturnPoint = new FinallyReturnPoint();
            if (bodyCodegen.finallys == null) {
                bodyCodegen.finallys = new HashMap();
            }
            bodyCodegen.finallys.put(node3, finallyReturnPoint);
            bodyCodegen.finallys.put(node3.getNext(), finallyReturnPoint);
        }
        for (Node node4 = node; node4 != null; node4 = node4.getNext()) {
            if (node4 == node2) {
                int targetLabel = bodyCodegen.getTargetLabel(node2);
                bodyCodegen.exceptionManager.removeHandler(0, targetLabel);
                bodyCodegen.exceptionManager.removeHandler(1, targetLabel);
                bodyCodegen.exceptionManager.removeHandler(2, targetLabel);
                bodyCodegen.exceptionManager.removeHandler(3, targetLabel);
            }
            bodyCodegen.generateStatement(node4);
        }
        int acquireLabel2 = bodyCodegen.cfw.acquireLabel();
        bodyCodegen.cfw.add(Token.LET, acquireLabel2);
        int localBlockRegister = getLocalBlockRegister(jump);
        if (node2 != null) {
            int labelId = node2.labelId();
            i = localBlockRegister;
            bodyCodegen.generateCatchBlock(0, newWordLocal, labelId, i, iArr[0]);
            generateCatchBlock(1, newWordLocal, labelId, i, iArr[1]);
            generateCatchBlock(2, newWordLocal, labelId, i, iArr[2]);
            Context currentContext2 = Context.getCurrentContext();
            if (currentContext2 == null || !currentContext2.hasFeature(13)) {
                bodyCodegen = this;
            } else {
                bodyCodegen = this;
                bodyCodegen.generateCatchBlock(3, newWordLocal, labelId, i, iArr[3]);
            }
        } else {
            i = localBlockRegister;
        }
        if (node3 != null) {
            int acquireLabel3 = bodyCodegen.cfw.acquireLabel();
            int acquireLabel4 = bodyCodegen.cfw.acquireLabel();
            ClassFileWriter classFileWriter = bodyCodegen.cfw;
            classFileWriter.itsStackTop = 1;
            classFileWriter.markLabel(acquireLabel3);
            if (!bodyCodegen.isGenerator) {
                bodyCodegen.cfw.markLabel(iArr[4]);
            }
            bodyCodegen.cfw.addAStore(i);
            bodyCodegen.cfw.addALoad(newWordLocal);
            bodyCodegen.cfw.addAStore(bodyCodegen.variableObjectLocal);
            int labelId2 = node3.labelId();
            if (bodyCodegen.isGenerator) {
                bodyCodegen.addGotoWithReturn(node3);
            } else {
                bodyCodegen.inlineFinally(node3, iArr[4], acquireLabel4);
            }
            bodyCodegen.cfw.addALoad(i);
            if (bodyCodegen.isGenerator) {
                bodyCodegen.cfw.add(PsExtractor.AUDIO_STREAM, "java/lang/Throwable");
            }
            bodyCodegen.cfw.add(191);
            bodyCodegen.cfw.markLabel(acquireLabel4);
            if (bodyCodegen.isGenerator) {
                bodyCodegen.cfw.addExceptionHandler(acquireLabel, null, labelId2, acquireLabel3);
            }
        }
        bodyCodegen.releaseWordLocal(newWordLocal);
        bodyCodegen.cfw.markLabel(acquireLabel2);
        if (bodyCodegen.isGenerator) {
            return;
        }
        bodyCodegen.exceptionManager.popExceptionInfo();
    }

    private void visitTypeofname(Node node) {
        int indexForNameNode;
        if (!this.hasVarsInRegs || (indexForNameNode = this.fnCurrent.fnode.getIndexForNameNode(node)) < 0) {
            this.cfw.addALoad(this.variableObjectLocal);
            this.cfw.addPush(node.getString());
            addScriptRuntimeInvoke("typeofName", "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;");
            return;
        }
        if (this.fnCurrent.isNumberVar(indexForNameNode)) {
            this.cfw.addPush("number");
            return;
        }
        if (!varIsDirectCallParameter(indexForNameNode)) {
            this.cfw.addALoad(this.varRegisters[indexForNameNode]);
            addScriptRuntimeInvoke("typeof", "(Ljava/lang/Object;)Ljava/lang/String;");
            return;
        }
        int i = this.varRegisters[indexForNameNode];
        this.cfw.addALoad(i);
        this.cfw.add("java/lang/Void", "TYPE", Token.ARROW, "Ljava/lang/Class;");
        int acquireLabel = this.cfw.acquireLabel();
        this.cfw.add(Token.GET, acquireLabel);
        ClassFileWriter classFileWriter = this.cfw;
        int i2 = classFileWriter.itsStackTop;
        classFileWriter.addALoad(i);
        addScriptRuntimeInvoke("typeof", "(Ljava/lang/Object;)Ljava/lang/String;");
        int acquireLabel2 = this.cfw.acquireLabel();
        this.cfw.add(Token.LET, acquireLabel2);
        this.cfw.markLabel(acquireLabel, i2);
        this.cfw.addPush("number");
        this.cfw.markLabel(acquireLabel2);
    }

    public void generateBodyCode() {
        this.isGenerator = Codegen.isGenerator(this.scriptOrFn);
        initBodyGeneration();
        if (this.isGenerator) {
            String m = Modifier.CC.m("(", this.codegen.mainClassSignature, "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;");
            this.cfw.startMethod(this.codegen.getBodyMethodName(this.scriptOrFn) + "_gen", m, (short) 10);
        } else {
            this.cfw.startMethod(this.codegen.getBodyMethodName(this.scriptOrFn), this.codegen.getBodyMethodSignature(this.scriptOrFn), (short) 10);
        }
        generatePrologue();
        OptFunctionNode optFunctionNode = this.fnCurrent;
        Node node = this.scriptOrFn;
        if (optFunctionNode != null) {
            node = node.getLastChild();
        }
        generateStatement(node);
        generateEpilogue();
        this.cfw.stopMethod((short) (this.localsMax + 1));
        if (this.isGenerator) {
            generateGenerator();
        }
        if (this.literals != null) {
            for (int i = 0; i < this.literals.size(); i++) {
                Node node2 = this.literals.get(i);
                int type = node2.getType();
                if (type == 71) {
                    generateArrayLiteralFactory(node2, i + 1);
                } else if (type != 72) {
                    Kit.codeBug(Token.typeToName(type));
                } else {
                    generateObjectLiteralFactory(node2, i + 1);
                }
            }
        }
    }

    private short getNewWordLocal() {
        return getNewWordIntern(1);
    }

    private void addInstructionCount() {
        addInstructionCount(Math.max(this.cfw.itsCodeBufferTop - this.savedCodeOffset, 1));
    }

    private void inlineFinally(Node node) {
        int acquireLabel = this.cfw.acquireLabel();
        int acquireLabel2 = this.cfw.acquireLabel();
        this.cfw.markLabel(acquireLabel);
        inlineFinally(node, acquireLabel, acquireLabel2);
        this.cfw.markLabel(acquireLabel2);
    }
}
