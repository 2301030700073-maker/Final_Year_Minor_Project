package org.mozilla.javascript;

import j$.util.Objects;
import j$.util.function.Function$CC;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Deque;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.ES6Generator;
import org.mozilla.javascript.Interpreter;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.ast.ScriptNode;
import org.mozilla.javascript.debug.DebugFrame;
import org.mozilla.javascript.debug.Debugger;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Interpreter extends Icode implements Evaluator {
    private static final int EXCEPTION_COST = 100;
    static final int EXCEPTION_HANDLER_SLOT = 2;
    static final int EXCEPTION_LOCAL_SLOT = 4;
    static final int EXCEPTION_SCOPE_SLOT = 5;
    static final int EXCEPTION_SLOT_SIZE = 6;
    static final int EXCEPTION_TRY_END_SLOT = 1;
    static final int EXCEPTION_TRY_START_SLOT = 0;
    static final int EXCEPTION_TYPE_SLOT = 3;
    private static final int INVOCATION_COST = 100;
    private static final Object undefined = Undefined.instance;
    InterpreterData itsData;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class ContinuationJump implements Serializable {
        private static final long serialVersionUID = 7687739156004308247L;
        CallFrame branchFrame;
        CallFrame capturedFrame;
        Object result;
        double resultDbl;

        public ContinuationJump(NativeContinuation nativeContinuation, CallFrame callFrame) {
            CallFrame callFrame2 = (CallFrame) nativeContinuation.getImplementation();
            this.capturedFrame = callFrame2;
            if (callFrame2 == null || callFrame == null) {
                this.branchFrame = null;
                return;
            }
            int i = callFrame2.frameIndex - callFrame.frameIndex;
            if (i != 0) {
                if (i < 0) {
                    i = -i;
                } else {
                    callFrame = callFrame2;
                    callFrame2 = callFrame;
                }
                do {
                    callFrame = callFrame.parentFrame;
                    i--;
                } while (i != 0);
                if (callFrame.frameIndex != callFrame2.frameIndex) {
                    Kit.codeBug();
                }
                callFrame = callFrame2;
                callFrame2 = callFrame;
            }
            while (!Objects.equals(callFrame2, callFrame) && callFrame2 != null) {
                callFrame2 = callFrame2.parentFrame;
                callFrame = callFrame.parentFrame;
            }
            this.branchFrame = callFrame2;
            if (callFrame2 == null || callFrame2.frozen) {
                return;
            }
            Kit.codeBug();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class GeneratorState {
        int operation;
        RuntimeException returnedException;
        Object value;

        public GeneratorState(int i, Object obj) {
            this.operation = i;
            this.value = obj;
        }
    }

    private static void addInstructionCount(Context context, CallFrame callFrame, int i) {
        int i2 = (callFrame.pc - callFrame.pcPrevBranch) + i + context.instructionCount;
        context.instructionCount = i2;
        if (i2 > context.instructionThreshold) {
            context.observeInstructionCount(i2);
            context.instructionCount = 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x005c A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int bytecodeSpan(int r4) {
        /*
            r0 = -84
            r1 = 3
            if (r4 == r0) goto L5f
            r0 = -83
            if (r4 == r0) goto L5f
            r0 = -73
            if (r4 == r0) goto L5f
            r0 = -72
            if (r4 == r0) goto L5f
            r0 = -61
            if (r4 == r0) goto L5f
            r0 = -28
            if (r4 == r0) goto L5f
            r0 = 55
            if (r4 == r0) goto L5f
            r0 = 62
            r2 = 2
            if (r4 == r0) goto L5e
            r0 = 78
            if (r4 == r0) goto L5f
            r0 = -26
            r3 = 5
            if (r4 == r0) goto L5d
            r0 = -25
            if (r4 == r0) goto L5d
            if (r4 == r3) goto L5f
            r0 = 6
            if (r4 == r0) goto L5f
            r0 = 7
            if (r4 == r0) goto L5f
            switch(r4) {
                case -70: goto L5f;
                case -69: goto L5f;
                case -68: goto L5c;
                default: goto L3a;
            }
        L3a:
            switch(r4) {
                case -56: goto L5c;
                case -55: goto L5c;
                case -54: goto L5b;
                case -53: goto L5a;
                case -52: goto L59;
                default: goto L3d;
            }
        L3d:
            switch(r4) {
                case -47: goto L58;
                case -46: goto L57;
                case -45: goto L56;
                default: goto L40;
            }
        L40:
            switch(r4) {
                case -34: goto L56;
                case -33: goto L55;
                case -32: goto L54;
                case -31: goto L54;
                default: goto L43;
            }
        L43:
            switch(r4) {
                case -11: goto L53;
                case -10: goto L53;
                case -9: goto L53;
                case -8: goto L53;
                case -7: goto L53;
                case -6: goto L5f;
                default: goto L46;
            }
        L46:
            boolean r4 = org.mozilla.javascript.Icode.validBytecode(r4)
            if (r4 == 0) goto L4e
            r4 = 1
            return r4
        L4e:
            java.lang.RuntimeException r4 = org.mozilla.javascript.Kit.codeBug()
            throw r4
        L53:
            return r2
        L54:
            return r1
        L55:
            return r3
        L56:
            return r2
        L57:
            return r1
        L58:
            return r3
        L59:
            return r2
        L5a:
            return r1
        L5b:
            return r3
        L5c:
            return r2
        L5d:
            return r3
        L5e:
            return r2
        L5f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Interpreter.bytecodeSpan(int):int");
    }

    private static NativeContinuation captureContinuation(Context context, CallFrame callFrame, boolean z) {
        Object[] objArr;
        NativeContinuation nativeContinuation = new NativeContinuation();
        ScriptRuntime.setObjectProtoAndParent(nativeContinuation, ScriptRuntime.getTopCallScope(context));
        CallFrame callFrame2 = callFrame;
        CallFrame callFrame3 = callFrame2;
        while (callFrame2 != null && !callFrame2.frozen) {
            callFrame2.frozen = true;
            int i = callFrame2.savedStackTop + 1;
            while (true) {
                objArr = callFrame2.stack;
                if (i == objArr.length) {
                    break;
                }
                objArr[i] = null;
                callFrame2.stackAttributes[i] = 0;
                i++;
            }
            int i2 = callFrame2.savedCallOp;
            if (i2 == 43 || i2 == -85) {
                objArr[callFrame2.savedStackTop] = null;
            } else if (i2 != 30) {
                Kit.codeBug();
            }
            callFrame3 = callFrame2;
            callFrame2 = callFrame2.parentFrame;
        }
        if (z) {
            while (true) {
                CallFrame callFrame4 = callFrame3.parentFrame;
                if (callFrame4 == null) {
                    break;
                }
                callFrame3 = callFrame4;
            }
            if (!callFrame3.isContinuationsTopFrame) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Cannot capture continuation from JavaScript code not called directly by executeScriptWithContinuations or callFunctionWithContinuations");
                return null;
            }
        }
        nativeContinuation.initImplementation(callFrame);
        return nativeContinuation;
    }

    private static CallFrame captureFrameForGenerator(CallFrame callFrame) {
        callFrame.frozen = true;
        CallFrame cloneFrozen = callFrame.cloneFrozen();
        callFrame.frozen = false;
        cloneFrozen.parentFrame = null;
        cloneFrozen.frameIndex = 0;
        return cloneFrozen;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean compareIdata(InterpreterData interpreterData, InterpreterData interpreterData2) {
        return interpreterData == interpreterData2 || Objects.equals(getRawSource(interpreterData), getRawSource(interpreterData2));
    }

    private static void doAdd(Object[] objArr, double[] dArr, int i, Context context) {
        double d;
        boolean z;
        int i2 = i + 1;
        Object obj = objArr[i2];
        Object obj2 = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj == uniqueTag) {
            d = dArr[i2];
            if (obj2 == uniqueTag) {
                dArr[i] = dArr[i] + d;
                return;
            }
            z = true;
        } else {
            if (obj2 != uniqueTag) {
                if ((obj2 instanceof Scriptable) || (obj instanceof Scriptable)) {
                    objArr[i] = ScriptRuntime.add(obj2, obj, context);
                    return;
                }
                if (obj2 instanceof CharSequence) {
                    if (obj instanceof CharSequence) {
                        objArr[i] = new ConsString((CharSequence) obj2, (CharSequence) obj);
                        return;
                    } else {
                        objArr[i] = new ConsString((CharSequence) obj2, ScriptRuntime.toCharSequence(obj));
                        return;
                    }
                }
                if (obj instanceof CharSequence) {
                    objArr[i] = new ConsString(ScriptRuntime.toCharSequence(obj2), (CharSequence) obj);
                    return;
                }
                Number numeric = obj2 instanceof Number ? (Number) obj2 : ScriptRuntime.toNumeric(obj2);
                Number numeric2 = obj instanceof Number ? (Number) obj : ScriptRuntime.toNumeric(obj);
                boolean z2 = numeric instanceof BigInteger;
                if (z2 && (numeric2 instanceof BigInteger)) {
                    objArr[i] = ((BigInteger) numeric).add((BigInteger) numeric2);
                    return;
                } else {
                    if (z2 || (numeric2 instanceof BigInteger)) {
                        throw ScriptRuntime.typeErrorById("msg.cant.convert.to.number", "BigInt");
                    }
                    objArr[i] = uniqueTag;
                    dArr[i] = numeric2.doubleValue() + numeric.doubleValue();
                    return;
                }
            }
            obj2 = obj;
            d = dArr[i];
            z = false;
        }
        if (obj2 instanceof Scriptable) {
            Object wrapNumber = ScriptRuntime.wrapNumber(d);
            if (!z) {
                Object obj3 = obj2;
                obj2 = wrapNumber;
                wrapNumber = obj3;
            }
            objArr[i] = ScriptRuntime.add(obj2, wrapNumber, context);
            return;
        }
        if (obj2 instanceof CharSequence) {
            String numberToString = ScriptRuntime.numberToString(d, 10);
            if (z) {
                objArr[i] = new ConsString((CharSequence) obj2, numberToString);
                return;
            } else {
                objArr[i] = new ConsString(numberToString, (CharSequence) obj2);
                return;
            }
        }
        Number numeric3 = obj2 instanceof Number ? (Number) obj2 : ScriptRuntime.toNumeric(obj2);
        if (numeric3 instanceof BigInteger) {
            throw ScriptRuntime.typeErrorById("msg.cant.convert.to.number", "BigInt");
        }
        objArr[i] = uniqueTag;
        dArr[i] = numeric3.doubleValue() + d;
    }

    private static int doArithmetic(CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2) {
        Number exponentiate;
        Number stack_numeric = stack_numeric(callFrame, i2 - 1);
        Number stack_numeric2 = stack_numeric(callFrame, i2);
        int i3 = i2 - 1;
        if (i != 81) {
            switch (i) {
                case 22:
                    exponentiate = ScriptRuntime.subtract(stack_numeric, stack_numeric2);
                    break;
                case 23:
                    exponentiate = ScriptRuntime.multiply(stack_numeric, stack_numeric2);
                    break;
                case 24:
                    exponentiate = ScriptRuntime.divide(stack_numeric, stack_numeric2);
                    break;
                case 25:
                    exponentiate = ScriptRuntime.remainder(stack_numeric, stack_numeric2);
                    break;
                default:
                    exponentiate = null;
                    break;
            }
        } else {
            exponentiate = ScriptRuntime.exponentiate(stack_numeric, stack_numeric2);
        }
        if (exponentiate instanceof BigInteger) {
            objArr[i3] = exponentiate;
            return i3;
        }
        objArr[i3] = UniqueTag.DOUBLE_MARK;
        dArr[i3] = exponentiate.doubleValue();
        return i3;
    }

    private static int doBitNOT(CallFrame callFrame, Object[] objArr, double[] dArr, int i) {
        Number bitwiseNOT = ScriptRuntime.bitwiseNOT(stack_numeric(callFrame, i));
        if (bitwiseNOT instanceof BigInteger) {
            objArr[i] = bitwiseNOT;
            return i;
        }
        objArr[i] = UniqueTag.DOUBLE_MARK;
        dArr[i] = bitwiseNOT.doubleValue();
        return i;
    }

    private static int doBitOp(CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2) {
        Number leftShift;
        Number stack_numeric = stack_numeric(callFrame, i2 - 1);
        Number stack_numeric2 = stack_numeric(callFrame, i2);
        int i3 = i2 - 1;
        if (i == 18) {
            leftShift = ScriptRuntime.leftShift(stack_numeric, stack_numeric2);
        } else if (i != 19) {
            switch (i) {
                case 9:
                    leftShift = ScriptRuntime.bitwiseOR(stack_numeric, stack_numeric2);
                    break;
                case 10:
                    leftShift = ScriptRuntime.bitwiseXOR(stack_numeric, stack_numeric2);
                    break;
                case 11:
                    leftShift = ScriptRuntime.bitwiseAND(stack_numeric, stack_numeric2);
                    break;
                default:
                    leftShift = null;
                    break;
            }
        } else {
            leftShift = ScriptRuntime.signedRightShift(stack_numeric, stack_numeric2);
        }
        if (leftShift instanceof BigInteger) {
            objArr[i3] = leftShift;
            return i3;
        }
        objArr[i3] = UniqueTag.DOUBLE_MARK;
        dArr[i3] = leftShift.doubleValue();
        return i3;
    }

    private static final NewState doCallByteCode(Context context, CallFrame callFrame, boolean z, int i, int i2, int i3) {
        CallFrame callFrame2;
        CallFrame callFrame3;
        CallFrame callFrame4 = callFrame;
        Object[] objArr = callFrame4.stack;
        double[] dArr = callFrame4.sDbl;
        if (z) {
            context.instructionCount += 100;
        }
        int i4 = i2 - (i3 + 1);
        Callable callable = (Callable) objArr[i4];
        Scriptable scriptable = (Scriptable) objArr[i4 + 1];
        Scriptable homeObject = callable instanceof BaseFunction ? ((BaseFunction) callable).getHomeObject() : null;
        if (i == -85) {
            scriptable = callFrame4.thisObj;
        }
        int i5 = 0;
        if (i == 76) {
            objArr[i4] = ScriptRuntime.callRef(callable, scriptable, getArgsArray(objArr, dArr, i4 + 2, i3), context);
            return new ContinueLoop(callFrame4, i4, i3, i5);
        }
        Scriptable scriptable2 = callFrame4.scope;
        if (callFrame4.useActivation) {
            scriptable2 = ScriptableObject.getTopLevelScope(scriptable2);
        }
        int i6 = i3;
        Object[] objArr2 = objArr;
        double[] dArr2 = dArr;
        Callable callable2 = callable;
        while (true) {
            if (!(callable2 instanceof ArrowFunction)) {
                if (callable2 instanceof LambdaConstructor) {
                    break;
                }
                if (callable2 instanceof LambdaFunction) {
                    callable2 = ((LambdaFunction) callable2).getTarget();
                } else if (callable2 instanceof BoundFunction) {
                    BoundFunction boundFunction = (BoundFunction) callable2;
                    Callable targetFunction = boundFunction.getTargetFunction();
                    Scriptable callThis = boundFunction.getCallThis(context, scriptable2);
                    Object[] boundArgs = boundFunction.getBoundArgs();
                    int length = boundArgs.length;
                    if (length > 0) {
                        objArr2 = callFrame4.ensureStackLength(length + i4 + 2 + i6);
                        dArr2 = callFrame4.sDbl;
                        int i7 = i4 + 2;
                        int i8 = i7 + length;
                        System.arraycopy(objArr2, i7, objArr2, i8, i6);
                        System.arraycopy(dArr2, i7, dArr2, i8, i6);
                        System.arraycopy(boundArgs, 0, objArr2, i7, length);
                        i6 += length;
                    }
                    callable2 = targetFunction;
                    scriptable = callThis;
                } else {
                    if (callable2 instanceof IdFunctionObject) {
                        IdFunctionObject idFunctionObject = (IdFunctionObject) callable2;
                        if (!BaseFunction.isApplyOrCall(idFunctionObject)) {
                            break;
                        }
                        Callable callable3 = ScriptRuntime.getCallable(scriptable);
                        int i9 = i4 + 2;
                        Scriptable applyThis = getApplyThis(context, objArr2, dArr2, i9, i6, callable3, callFrame4);
                        callFrame2 = callFrame4;
                        if (BaseFunction.isApply(idFunctionObject)) {
                            Object[] applyArguments = i6 < 2 ? ScriptRuntime.emptyArgs : ScriptRuntime.getApplyArguments(context, objArr2[i4 + 3]);
                            int length2 = applyArguments.length;
                            Object[] ensureStackLength = callFrame2.ensureStackLength(length2 + i4 + 2);
                            double[] dArr3 = callFrame2.sDbl;
                            System.arraycopy(applyArguments, 0, ensureStackLength, i9, length2);
                            objArr2 = ensureStackLength;
                            i6 = length2;
                            dArr2 = dArr3;
                        } else if (i6 > 0) {
                            if (i6 > 1) {
                                int i10 = i4 + 3;
                                int i11 = i6 - 1;
                                System.arraycopy(objArr2, i10, objArr2, i9, i11);
                                System.arraycopy(dArr2, i10, dArr2, i9, i11);
                            }
                            i6--;
                        }
                        callable2 = callable3;
                        scriptable = applyThis;
                    } else {
                        callFrame2 = callFrame4;
                        if (callable2 instanceof ScriptRuntime.NoSuchMethodShim) {
                            ScriptRuntime.NoSuchMethodShim noSuchMethodShim = (ScriptRuntime.NoSuchMethodShim) callable2;
                            objArr2 = callFrame2.ensureStackLength(i4 + 4);
                            dArr2 = callFrame2.sDbl;
                            int i12 = i4 + 2;
                            Object[] argsArray = getArgsArray(objArr2, dArr2, i12, i6);
                            Callable callable4 = noSuchMethodShim.noSuchMethodMethod;
                            objArr2[i12] = noSuchMethodShim.methodName;
                            objArr2[i4 + 3] = context.newArray(scriptable2, argsArray);
                            callable2 = callable4;
                            i6 = 2;
                        } else if (callable2 == null) {
                            throw ScriptRuntime.notFunctionError(null, null);
                        }
                    }
                    callFrame4 = callFrame2;
                }
            } else {
                ArrowFunction arrowFunction = (ArrowFunction) callable2;
                Callable targetFunction2 = arrowFunction.getTargetFunction();
                Scriptable callThis2 = arrowFunction.getCallThis(context);
                homeObject = arrowFunction.getBoundHomeObject();
                callable2 = targetFunction2;
                scriptable = callThis2;
            }
        }
        callFrame2 = callFrame4;
        if (callable2 instanceof InterpretedFunction) {
            InterpretedFunction interpretedFunction = (InterpretedFunction) callable2;
            if (callFrame2.fnOrScript.securityDomain == interpretedFunction.securityDomain) {
                if (i == -62) {
                    callFrame3 = callFrame2.parentFrame;
                    exitFrame(context, callFrame2, null);
                } else {
                    callFrame3 = callFrame2;
                }
                Scriptable scriptable3 = scriptable;
                CallFrame initFrame = initFrame(context, scriptable2, scriptable3, homeObject, objArr2, dArr2, i4 + 2, i6, interpretedFunction, callFrame3);
                if (i != -62) {
                    callFrame2.savedStackTop = i4;
                    callFrame2.savedCallOp = i;
                }
                return new StateContinue(initFrame, i5);
            }
        }
        double[] dArr4 = dArr2;
        Scriptable scriptable4 = scriptable;
        Object[] objArr3 = objArr2;
        Scriptable scriptable5 = scriptable2;
        if (callable2 instanceof NativeContinuation) {
            ContinuationJump continuationJump = new ContinuationJump((NativeContinuation) callable2, callFrame2);
            if (i6 == 0) {
                continuationJump.result = undefined;
            } else {
                int i13 = i4 + 2;
                continuationJump.result = objArr3[i13];
                continuationJump.resultDbl = dArr4[i13];
            }
            return new NewThrowable(continuationJump, i5);
        }
        if ((callable2 instanceof IdFunctionObject) && NativeContinuation.isContinuationConstructor((IdFunctionObject) callable2)) {
            callFrame2.stack[i4] = captureContinuation(context, callFrame2.parentFrame, false);
            return new ContinueLoop(callFrame2, i4, i6, i5);
        }
        context.lastInterpreterFrame = callFrame2;
        callFrame2.savedCallOp = i;
        callFrame2.savedStackTop = i4;
        objArr3[i4] = callable2.call(context, scriptable5, scriptable4, getArgsArray(objArr3, dArr4, i4 + 2, i6));
        return new ContinueLoop(callFrame2, i4, i6, i5);
    }

    private static int doCallSpecial(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i, byte[] bArr, int i2, boolean z) {
        int i3;
        int i4 = callFrame.pc;
        int i5 = bArr[i4] & 255;
        boolean z2 = bArr[i4 + 1] != 0;
        int index = getIndex(bArr, i4 + 2);
        if (z2) {
            i3 = i - i2;
            Object obj = objArr[i3];
            if (obj == UniqueTag.DOUBLE_MARK) {
                obj = ScriptRuntime.wrapNumber(dArr[i3]);
            }
            objArr[i3] = ScriptRuntime.newSpecial(context, obj, getArgsArray(objArr, dArr, i3 + 1, i2), callFrame.scope, i5);
        } else {
            i3 = i - (i2 + 1);
            objArr[i3] = ScriptRuntime.callSpecial(context, (Callable) objArr[i3], (Scriptable) objArr[i3 + 1], getArgsArray(objArr, dArr, i3 + 2, i2), callFrame.scope, callFrame.thisObj, i5, callFrame.idata.itsSourceFile, index, z);
        }
        callFrame.pc += 4;
        return i3;
    }

    private static int doCompare(CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2) {
        boolean compare;
        Number number;
        Number number2;
        int i3 = i2 - 1;
        Object obj = objArr[i2];
        Object obj2 = objArr[i3];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj == uniqueTag) {
            number = Double.valueOf(dArr[i2]);
            number2 = stack_numeric(callFrame, i3);
        } else {
            if (obj2 != uniqueTag) {
                compare = ScriptRuntime.compare(obj2, obj, i);
                objArr[i3] = ScriptRuntime.wrapBoolean(compare);
                return i3;
            }
            Number numeric = ScriptRuntime.toNumeric(obj);
            Double valueOf = Double.valueOf(dArr[i3]);
            number = numeric;
            number2 = valueOf;
        }
        compare = ScriptRuntime.compare(number2, number, i);
        objArr[i3] = ScriptRuntime.wrapBoolean(compare);
        return i3;
    }

    private static int doDelName(Context context, CallFrame callFrame, int i, Object[] objArr, double[] dArr, int i2) {
        Object obj = objArr[i2];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj == uniqueTag) {
            obj = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        int i3 = i2 - 1;
        Object obj2 = objArr[i3];
        if (obj2 == uniqueTag) {
            obj2 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        objArr[i3] = ScriptRuntime.delete(obj2, obj, context, callFrame.scope, i == 0);
        return i3;
    }

    private static int doElemIncDec(Context context, CallFrame callFrame, byte[] bArr, Object[] objArr, double[] dArr, int i) {
        Object obj = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj == uniqueTag) {
            obj = ScriptRuntime.wrapNumber(dArr[i]);
        }
        int i2 = i - 1;
        Object obj2 = objArr[i2];
        if (obj2 == uniqueTag) {
            obj2 = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        objArr[i2] = ScriptRuntime.elemIncrDecr(obj2, obj, context, callFrame.scope, bArr[callFrame.pc]);
        callFrame.pc++;
        return i2;
    }

    private static boolean doEquals(Object[] objArr, double[] dArr, int i) {
        int i2 = i + 1;
        Object obj = objArr[i2];
        Object obj2 = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        return obj == uniqueTag ? obj2 == uniqueTag ? dArr[i] == dArr[i2] : ScriptRuntime.eqNumber(dArr[i2], obj2) : obj2 == uniqueTag ? ScriptRuntime.eqNumber(dArr[i], obj) : ScriptRuntime.eq(obj2, obj);
    }

    private static int doGetElem(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i) {
        int i2 = i - 1;
        Object obj = objArr[i2];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj == uniqueTag) {
            obj = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        Object obj2 = objArr[i];
        objArr[i2] = obj2 != uniqueTag ? ScriptRuntime.getObjectElem(obj, obj2, context, callFrame.scope) : ScriptRuntime.getObjectIndex(obj, dArr[i], context, callFrame.scope);
        return i2;
    }

    private static int doGetElemSuper(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i) {
        int i2 = i - 1;
        Object obj = objArr[i2];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj == uniqueTag) {
            Kit.codeBug();
        }
        Object obj2 = objArr[i];
        objArr[i2] = obj2 != uniqueTag ? ScriptRuntime.getSuperElem(obj, obj2, context, callFrame.scope, callFrame.thisObj) : ScriptRuntime.getSuperIndex(obj, dArr[i], context, callFrame.scope, callFrame.thisObj);
        return i2;
    }

    private static int doGetVar(CallFrame callFrame, Object[] objArr, double[] dArr, int i, Object[] objArr2, double[] dArr2, int i2) {
        int i3 = i + 1;
        if (!callFrame.useActivation) {
            objArr[i3] = objArr2[i2];
            dArr[i3] = dArr2[i2];
            return i3;
        }
        String str = callFrame.idata.argNames[i2];
        Scriptable scriptable = callFrame.scope;
        objArr[i3] = scriptable.get(str, scriptable);
        return i3;
    }

    private static int doInOrInstanceof(Context context, int i, Object[] objArr, double[] dArr, int i2) {
        Object obj = objArr[i2];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj == uniqueTag) {
            obj = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        int i3 = i2 - 1;
        Object obj2 = objArr[i3];
        if (obj2 == uniqueTag) {
            obj2 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        objArr[i3] = ScriptRuntime.wrapBoolean(i == 57 ? ScriptRuntime.in(obj2, obj, context) : ScriptRuntime.instanceOf(obj2, obj, context));
        return i3;
    }

    private static int doRefMember(Context context, Object[] objArr, double[] dArr, int i, int i2) {
        Object obj = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj == uniqueTag) {
            obj = ScriptRuntime.wrapNumber(dArr[i]);
        }
        int i3 = i - 1;
        Object obj2 = objArr[i3];
        if (obj2 == uniqueTag) {
            obj2 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        objArr[i3] = ScriptRuntime.memberRef(obj2, obj, context, i2);
        return i3;
    }

    private static int doRefNsMember(Context context, Object[] objArr, double[] dArr, int i, int i2) {
        Object obj = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj == uniqueTag) {
            obj = ScriptRuntime.wrapNumber(dArr[i]);
        }
        int i3 = i - 1;
        Object obj2 = objArr[i3];
        if (obj2 == uniqueTag) {
            obj2 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        int i4 = i - 2;
        Object obj3 = objArr[i4];
        if (obj3 == uniqueTag) {
            obj3 = ScriptRuntime.wrapNumber(dArr[i4]);
        }
        objArr[i4] = ScriptRuntime.memberRef(obj3, obj2, obj, context, i2);
        return i4;
    }

    private static int doRefNsName(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i, int i2) {
        Object obj = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj == uniqueTag) {
            obj = ScriptRuntime.wrapNumber(dArr[i]);
        }
        int i3 = i - 1;
        Object obj2 = objArr[i3];
        if (obj2 == uniqueTag) {
            obj2 = ScriptRuntime.wrapNumber(dArr[i3]);
        }
        objArr[i3] = ScriptRuntime.nameRef(obj2, obj, context, callFrame.scope, i2);
        return i3;
    }

    private static int doSetConstVar(CallFrame callFrame, Object[] objArr, double[] dArr, int i, Object[] objArr2, double[] dArr2, int[] iArr, int i2) {
        if (!callFrame.useActivation) {
            int i3 = iArr[i2];
            if ((i3 & 1) == 0) {
                throw Context.reportRuntimeErrorById("msg.var.redecl", callFrame.idata.argNames[i2]);
            }
            if ((i3 & 8) != 0) {
                objArr2[i2] = objArr[i];
                iArr[i2] = i3 & (-9);
                dArr2[i2] = dArr[i];
            }
            return i;
        }
        Object obj = objArr[i];
        if (obj == UniqueTag.DOUBLE_MARK) {
            obj = ScriptRuntime.wrapNumber(dArr[i]);
        }
        String str = callFrame.idata.argNames[i2];
        Scriptable scriptable = callFrame.scope;
        if (!(scriptable instanceof ConstProperties)) {
            throw Kit.codeBug();
        }
        ((ConstProperties) scriptable).putConst(str, scriptable, obj);
        return i;
    }

    private static int doSetElem(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i) {
        int i2 = i - 2;
        Object obj = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj == uniqueTag) {
            obj = ScriptRuntime.wrapNumber(dArr[i]);
        }
        Object obj2 = obj;
        Object obj3 = objArr[i2];
        if (obj3 == uniqueTag) {
            obj3 = ScriptRuntime.wrapNumber(dArr[i2]);
        }
        Object obj4 = obj3;
        int i3 = i - 1;
        Object obj5 = objArr[i3];
        objArr[i2] = obj5 != uniqueTag ? ScriptRuntime.setObjectElem(obj4, obj5, obj2, context, callFrame.scope) : ScriptRuntime.setObjectIndex(obj4, dArr[i3], obj2, context, callFrame.scope);
        return i2;
    }

    private static int doSetElemSuper(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i) {
        int i2 = i - 2;
        Object obj = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj == uniqueTag) {
            obj = ScriptRuntime.wrapNumber(dArr[i]);
        }
        Object obj2 = obj;
        Object obj3 = objArr[i2];
        if (obj3 == uniqueTag) {
            Kit.codeBug();
        }
        int i3 = i - 1;
        Object obj4 = objArr[i3];
        objArr[i2] = obj4 != uniqueTag ? ScriptRuntime.setSuperElem(obj3, obj4, obj2, context, callFrame.scope, callFrame.thisObj) : ScriptRuntime.setSuperIndex(obj3, dArr[i3], obj2, context, callFrame.scope, callFrame.thisObj);
        return i2;
    }

    private static int doSetVar(CallFrame callFrame, Object[] objArr, double[] dArr, int i, Object[] objArr2, double[] dArr2, int[] iArr, int i2) {
        if (!callFrame.useActivation) {
            if ((iArr[i2] & 1) == 0) {
                objArr2[i2] = objArr[i];
                dArr2[i2] = dArr[i];
            }
            return i;
        }
        Object obj = objArr[i];
        if (obj == UniqueTag.DOUBLE_MARK) {
            obj = ScriptRuntime.wrapNumber(dArr[i]);
        }
        String str = callFrame.idata.argNames[i2];
        Scriptable scriptable = callFrame.scope;
        scriptable.put(str, scriptable, obj);
        return i;
    }

    private static boolean doShallowEquals(Object[] objArr, double[] dArr, int i) {
        double d;
        double doubleValue;
        int i2 = i + 1;
        Object obj = objArr[i2];
        Object obj2 = objArr[i];
        UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
        if (obj != uniqueTag) {
            if (obj2 != uniqueTag) {
                return ScriptRuntime.shallowEq(obj2, obj);
            }
            d = dArr[i];
            if ((obj instanceof Number) && !(obj instanceof BigInteger)) {
                doubleValue = ((Number) obj).doubleValue();
            }
        }
        doubleValue = dArr[i2];
        if (obj2 == uniqueTag) {
            d = dArr[i];
        } else {
            if (!(obj2 instanceof Number) || (obj2 instanceof BigInteger)) {
                return false;
            }
            d = ((Number) obj2).doubleValue();
        }
        return d == doubleValue;
    }

    private static int doVarIncDec(Context context, CallFrame callFrame, Object[] objArr, double[] dArr, int i, Object[] objArr2, double[] dArr2, int[] iArr, int i2) {
        double doubleValue;
        boolean z;
        int i3 = i + 1;
        InterpreterData interpreterData = callFrame.idata;
        byte b = interpreterData.itsICode[callFrame.pc];
        if (callFrame.useActivation) {
            objArr[i3] = ScriptRuntime.nameIncrDecr(callFrame.scope, interpreterData.argNames[i2], context, b);
        } else {
            Object obj = objArr2[i2];
            UniqueTag uniqueTag = UniqueTag.DOUBLE_MARK;
            BigInteger bigInteger = null;
            if (obj == uniqueTag) {
                doubleValue = dArr2[i2];
            } else {
                Number numeric = ScriptRuntime.toNumeric(obj);
                if (numeric instanceof BigInteger) {
                    bigInteger = (BigInteger) numeric;
                    doubleValue = 0.0d;
                } else {
                    doubleValue = numeric.doubleValue();
                }
            }
            if (bigInteger == null) {
                double d = (b & 1) == 0 ? 1.0d + doubleValue : doubleValue - 1.0d;
                z = (b & 2) != 0;
                if ((iArr[i2] & 1) == 0) {
                    if (obj != uniqueTag) {
                        objArr2[i2] = uniqueTag;
                    }
                    dArr2[i2] = d;
                    objArr[i3] = uniqueTag;
                    if (!z) {
                        doubleValue = d;
                    }
                    dArr[i3] = doubleValue;
                } else if (!z || obj == uniqueTag) {
                    objArr[i3] = uniqueTag;
                    if (!z) {
                        doubleValue = d;
                    }
                    dArr[i3] = doubleValue;
                } else {
                    objArr[i3] = obj;
                }
            } else {
                BigInteger add = (b & 1) == 0 ? bigInteger.add(BigInteger.ONE) : bigInteger.subtract(BigInteger.ONE);
                z = (b & 2) != 0;
                if ((iArr[i2] & 1) == 0) {
                    objArr2[i2] = add;
                    if (!z) {
                        bigInteger = add;
                    }
                    objArr[i3] = bigInteger;
                } else if (!z || obj == uniqueTag) {
                    if (!z) {
                        bigInteger = add;
                    }
                    objArr[i3] = bigInteger;
                } else {
                    objArr[i3] = obj;
                }
            }
        }
        callFrame.pc++;
        return i3;
    }

    private static void enterFrame(Context context, CallFrame callFrame, Object[] objArr, boolean z) {
        CallFrame callFrame2;
        boolean z2 = callFrame.idata.itsNeedsActivation;
        boolean z3 = callFrame.debuggerFrame != null;
        if (z2 || z3) {
            Scriptable scriptable = callFrame.scope;
            if (scriptable == null) {
                Kit.codeBug();
            } else if (z) {
                while (scriptable instanceof NativeWith) {
                    scriptable = scriptable.getParentScope();
                    if (scriptable == null || ((callFrame2 = callFrame.parentFrame) != null && callFrame2.scope == scriptable)) {
                        Kit.codeBug();
                        break;
                    }
                }
            }
            if (z3) {
                callFrame.debuggerFrame.onEnter(context, scriptable, callFrame.thisObj, objArr);
            }
            if (z2) {
                ScriptRuntime.enterActivationFunction(context, scriptable);
            }
        }
    }

    private static void exitFrame(Context context, CallFrame callFrame, Object obj) {
        if (callFrame.idata.itsNeedsActivation) {
            ScriptRuntime.exitActivationFunction(context);
        }
        DebugFrame debugFrame = callFrame.debuggerFrame;
        if (debugFrame != null) {
            try {
                if (obj instanceof Throwable) {
                    debugFrame.onExit(context, true, obj);
                    return;
                }
                ContinuationJump continuationJump = (ContinuationJump) obj;
                Object obj2 = continuationJump == null ? callFrame.result : continuationJump.result;
                if (obj2 == UniqueTag.DOUBLE_MARK) {
                    obj2 = ScriptRuntime.wrapNumber(continuationJump == null ? callFrame.resultDbl : continuationJump.resultDbl);
                }
                callFrame.debuggerFrame.onExit(context, false, obj2);
            } catch (Throwable th) {
                System.err.println("RHINO USAGE WARNING: onExit terminated with exception");
                th.printStackTrace(System.err);
            }
        }
    }

    private static Object freezeGenerator(Context context, CallFrame callFrame, int i, GeneratorState generatorState, boolean z) {
        if (generatorState.operation == 2) {
            throw ScriptRuntime.typeErrorById("msg.yield.closing", new Object[0]);
        }
        callFrame.frozen = true;
        callFrame.result = callFrame.stack[i];
        callFrame.resultDbl = callFrame.sDbl[i];
        callFrame.savedStackTop = i;
        callFrame.pc--;
        ScriptRuntime.exitActivationFunction(context);
        Object obj = callFrame.result;
        if (obj == UniqueTag.DOUBLE_MARK) {
            obj = ScriptRuntime.wrapNumber(callFrame.resultDbl);
        }
        return z ? new ES6Generator.YieldStarResult(obj) : obj;
    }

    private static Scriptable getApplyThis(Context context, Object[] objArr, double[] dArr, int i, int i2, Callable callable, CallFrame callFrame) {
        Object obj = null;
        Scriptable scriptable = null;
        if (!(callable instanceof InterpretedFunction)) {
            if (i2 != 0 && (obj = objArr[i]) == UniqueTag.DOUBLE_MARK) {
                obj = ScriptRuntime.wrapNumber(dArr[i]);
            }
            return ScriptRuntime.getApplyOrCallThis(context, callFrame.scope, obj, i2);
        }
        if (i2 != 0) {
            Object obj2 = objArr[i];
            if (obj2 == UniqueTag.DOUBLE_MARK) {
                obj2 = ScriptRuntime.wrapNumber(dArr[i]);
            }
            scriptable = ScriptRuntime.toObjectOrNull(context, obj2, callFrame.scope);
        }
        return scriptable == null ? ScriptRuntime.getTopCallScope(context) : scriptable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object[] getArgsArray(Object[] objArr, double[] dArr, int i, int i2) {
        if (i2 == 0) {
            return ScriptRuntime.emptyArgs;
        }
        Object[] objArr2 = new Object[i2];
        int i3 = 0;
        while (i3 != i2) {
            Object obj = objArr[i];
            if (obj == UniqueTag.DOUBLE_MARK) {
                obj = ScriptRuntime.wrapNumber(dArr[i]);
            }
            objArr2[i3] = obj;
            i3++;
            i++;
        }
        return objArr2;
    }

    private static Scriptable getCurrentFrameHomeObject(CallFrame callFrame) {
        Scriptable scriptable = callFrame.scope;
        if (scriptable instanceof NativeCall) {
            return ((NativeCall) scriptable).getHomeObject();
        }
        return null;
    }

    private static int getExceptionHandler(CallFrame callFrame, boolean z) {
        int[] iArr = callFrame.idata.itsExceptionTable;
        int i = -1;
        if (iArr == null) {
            return -1;
        }
        int i2 = callFrame.pc - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 != iArr.length; i5 += 6) {
            int i6 = iArr[i5];
            int i7 = iArr[i5 + 1];
            if (i6 <= i2 && i2 < i7 && (!z || iArr[i5 + 3] == 1)) {
                if (i >= 0) {
                    if (i3 >= i7) {
                        if (i4 > i6) {
                            Kit.codeBug();
                        }
                        if (i3 == i7) {
                            Kit.codeBug();
                        }
                    }
                }
                i = i5;
                i4 = i6;
                i3 = i7;
            }
        }
        return i;
    }

    private static int getIndex(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    private static int getInt(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | (bArr[i] << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public static int[] getLineNumbers(InterpreterData interpreterData) {
        HashSet hashSet = new HashSet();
        byte[] bArr = interpreterData.itsICode;
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i2 != length) {
            byte b = bArr[i2];
            int bytecodeSpan = bytecodeSpan(b);
            if (b == -31) {
                if (bytecodeSpan != 3) {
                    Kit.codeBug();
                }
                hashSet.add(Integer.valueOf(getIndex(bArr, i2 + 1)));
            }
            i2 += bytecodeSpan;
        }
        int[] iArr = new int[hashSet.size()];
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            iArr[i] = ((Integer) it.next()).intValue();
            i++;
        }
        return iArr;
    }

    public static String getRawSource(InterpreterData interpreterData) {
        String str = interpreterData.rawSource;
        if (str == null) {
            return null;
        }
        return str.substring(interpreterData.rawSourceStart, interpreterData.rawSourceEnd);
    }

    private static int getShort(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | (bArr[i] << 8);
    }

    private static CallFrame initFrame(Context context, Scriptable scriptable, Scriptable scriptable2, Scriptable scriptable3, Object[] objArr, double[] dArr, int i, int i2, InterpretedFunction interpretedFunction, CallFrame callFrame) {
        CallFrame callFrame2 = new CallFrame(context, scriptable2, interpretedFunction, callFrame);
        callFrame2.initializeArgs(context, scriptable, objArr, dArr, i, i2, scriptable3);
        enterFrame(context, callFrame2, objArr, false);
        return callFrame2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void initFunction(Context context, Scriptable scriptable, InterpretedFunction interpretedFunction, int i) {
        InterpretedFunction createFunction = InterpretedFunction.createFunction(context, scriptable, interpretedFunction, i);
        ScriptRuntime.initFunction(context, scriptable, createFunction, createFunction.idata.itsFunctionType, interpretedFunction.idata.evalScriptFlag);
    }

    public static Object interpret(InterpretedFunction interpretedFunction, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!ScriptRuntime.hasTopCall(context)) {
            Kit.codeBug();
        }
        Object obj = context.interpreterSecurityDomain;
        Object obj2 = interpretedFunction.securityDomain;
        if (obj != obj2) {
            context.interpreterSecurityDomain = obj2;
            try {
                return interpretedFunction.securityController.callWithDomain(obj2, context, interpretedFunction, scriptable, scriptable2, objArr);
            } finally {
                context.interpreterSecurityDomain = obj;
            }
        }
        CallFrame initFrame = initFrame(context, scriptable, scriptable2, interpretedFunction.getHomeObject(), objArr, null, 0, objArr.length, interpretedFunction, null);
        initFrame.isContinuationsTopFrame = context.isContinuationsTopCall;
        context.isContinuationsTopCall = false;
        return interpretLoop(context, initFrame, null);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    private static java.lang.Object interpretLoop(org.mozilla.javascript.Context r39, org.mozilla.javascript.Interpreter.CallFrame r40, java.lang.Object r41) {
        /*
            Method dump skipped, instructions count: 6806
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Interpreter.interpretLoop(org.mozilla.javascript.Context, org.mozilla.javascript.Interpreter$CallFrame, java.lang.Object):java.lang.Object");
    }

    private static CallFrame processThrowable(Context context, Object obj, CallFrame callFrame, int i, boolean z) {
        if (i >= 0) {
            if (callFrame.frozen) {
                callFrame = callFrame.cloneFrozen();
            }
            int[] iArr = callFrame.idata.itsExceptionTable;
            int i2 = iArr[i + 2];
            callFrame.pc = i2;
            if (z) {
                callFrame.pcPrevBranch = i2;
            }
            callFrame.savedStackTop = callFrame.emptyStackTop;
            int i3 = callFrame.localShift;
            int i4 = iArr[i + 5] + i3;
            int i5 = i3 + iArr[i + 4];
            Object[] objArr = callFrame.stack;
            callFrame.scope = (Scriptable) objArr[i4];
            objArr[i5] = obj;
        } else {
            ContinuationJump continuationJump = (ContinuationJump) obj;
            if (!Objects.equals(continuationJump.branchFrame, callFrame)) {
                Kit.codeBug();
            }
            if (continuationJump.capturedFrame == null) {
                Kit.codeBug();
            }
            CallFrame callFrame2 = continuationJump.capturedFrame;
            int i6 = callFrame2.frameIndex + 1;
            CallFrame callFrame3 = continuationJump.branchFrame;
            if (callFrame3 != null) {
                i6 -= callFrame3.frameIndex;
            }
            CallFrame[] callFrameArr = null;
            int i7 = 0;
            for (int i8 = 0; i8 != i6; i8++) {
                if (!callFrame2.frozen) {
                    Kit.codeBug();
                }
                if (callFrame2.useActivation) {
                    if (callFrameArr == null) {
                        callFrameArr = new CallFrame[i6 - i8];
                    }
                    callFrameArr[i7] = callFrame2;
                    i7++;
                }
                callFrame2 = callFrame2.parentFrame;
            }
            while (i7 != 0) {
                i7--;
                enterFrame(context, callFrameArr[i7], ScriptRuntime.emptyArgs, true);
            }
            callFrame = continuationJump.capturedFrame.cloneFrozen();
            setCallResult(callFrame, continuationJump.result, continuationJump.resultDbl);
        }
        callFrame.throwable = null;
        return callFrame;
    }

    public static Object restartContinuation(NativeContinuation nativeContinuation, Context context, Scriptable scriptable, Object[] objArr) {
        if (!ScriptRuntime.hasTopCall(context)) {
            return ScriptRuntime.doTopCall(nativeContinuation, context, scriptable, null, objArr, context.isTopLevelStrict);
        }
        Object obj = objArr.length == 0 ? Undefined.instance : objArr[0];
        if (((CallFrame) nativeContinuation.getImplementation()) == null) {
            return obj;
        }
        ContinuationJump continuationJump = new ContinuationJump(nativeContinuation, null);
        continuationJump.result = obj;
        return interpretLoop(context, null, continuationJump);
    }

    public static Object resumeGenerator(Context context, Scriptable scriptable, int i, Object obj, Object obj2) {
        CallFrame callFrame = (CallFrame) obj;
        GeneratorState generatorState = new GeneratorState(i, obj2);
        if (i == 2) {
            try {
                return interpretLoop(context, callFrame, generatorState);
            } catch (RuntimeException e) {
                if (e == obj2) {
                    return Undefined.instance;
                }
                throw e;
            }
        }
        Object interpretLoop = interpretLoop(context, callFrame, generatorState);
        RuntimeException runtimeException = generatorState.returnedException;
        if (runtimeException == null) {
            return interpretLoop;
        }
        throw runtimeException;
    }

    private static void setCallResult(CallFrame callFrame, Object obj, double d) {
        int i = callFrame.savedCallOp;
        if (i == 43 || i == -85) {
            Object[] objArr = callFrame.stack;
            int i2 = callFrame.savedStackTop;
            objArr[i2] = obj;
            callFrame.sDbl[i2] = d;
        } else if (i != 30) {
            Kit.codeBug();
        } else if (obj instanceof Scriptable) {
            callFrame.stack[callFrame.savedStackTop] = obj;
        }
        callFrame.savedCallOp = 0;
    }

    private static boolean stack_boolean(CallFrame callFrame, int i) {
        Object obj = callFrame.stack[i];
        if (Boolean.TRUE.equals(obj)) {
            return true;
        }
        if (Boolean.FALSE.equals(obj)) {
            return false;
        }
        if (obj == UniqueTag.DOUBLE_MARK) {
            double d = callFrame.sDbl[i];
            return (Double.isNaN(d) || d == 0.0d) ? false : true;
        }
        if (obj == null || obj == Undefined.instance) {
            return false;
        }
        if (obj instanceof BigInteger) {
            return !obj.equals(BigInteger.ZERO);
        }
        if (!(obj instanceof Number)) {
            return ScriptRuntime.toBoolean(obj);
        }
        double doubleValue = ((Number) obj).doubleValue();
        return (Double.isNaN(doubleValue) || doubleValue == 0.0d) ? false : true;
    }

    private static double stack_double(CallFrame callFrame, int i) {
        Object obj = callFrame.stack[i];
        return obj != UniqueTag.DOUBLE_MARK ? ScriptRuntime.toNumber(obj) : callFrame.sDbl[i];
    }

    private static int stack_int32(CallFrame callFrame, int i) {
        Object obj = callFrame.stack[i];
        return obj == UniqueTag.DOUBLE_MARK ? ScriptRuntime.toInt32(callFrame.sDbl[i]) : ScriptRuntime.toInt32(obj);
    }

    private static Number stack_numeric(CallFrame callFrame, int i) {
        Object obj = callFrame.stack[i];
        return obj != UniqueTag.DOUBLE_MARK ? ScriptRuntime.toNumeric(obj) : Double.valueOf(callFrame.sDbl[i]);
    }

    private static Object thawGenerator(CallFrame callFrame, int i, GeneratorState generatorState, int i2) {
        callFrame.frozen = false;
        int index = getIndex(callFrame.idata.itsICode, callFrame.pc);
        callFrame.pc += 2;
        int i3 = generatorState.operation;
        if (i3 == 1) {
            return new JavaScriptException(generatorState.value, callFrame.idata.itsSourceFile, index);
        }
        if (i3 == 2) {
            return generatorState.value;
        }
        if (i3 != 0) {
            throw Kit.codeBug();
        }
        if (i2 == 78 || i2 == -73) {
            callFrame.stack[i] = generatorState.value;
        }
        return Scriptable.NOT_FOUND;
    }

    @Override // org.mozilla.javascript.Evaluator
    public void captureStackInfo(RhinoException rhinoException) {
        CallFrame[] callFrameArr;
        Context currentContext = Context.getCurrentContext();
        if (currentContext == null || currentContext.lastInterpreterFrame == null) {
            rhinoException.interpreterStackInfo = null;
            rhinoException.interpreterLineData = null;
            return;
        }
        Deque<Object> deque = currentContext.previousInterpreterInvocations;
        if (deque == null || deque.size() == 0) {
            callFrameArr = new CallFrame[1];
        } else {
            int size = currentContext.previousInterpreterInvocations.size();
            if (currentContext.previousInterpreterInvocations.peek() == currentContext.lastInterpreterFrame) {
                size--;
            }
            callFrameArr = new CallFrame[size + 1];
            ArrayList arrayList = new ArrayList(currentContext.previousInterpreterInvocations);
            Collections.reverse(arrayList);
            arrayList.toArray(callFrameArr);
        }
        callFrameArr[callFrameArr.length - 1] = (CallFrame) currentContext.lastInterpreterFrame;
        int i = 0;
        for (int i2 = 0; i2 != callFrameArr.length; i2++) {
            i += callFrameArr[i2].frameIndex + 1;
        }
        int[] iArr = new int[i];
        int length = callFrameArr.length;
        while (length != 0) {
            length--;
            for (CallFrame callFrame = callFrameArr[length]; callFrame != null; callFrame = callFrame.parentFrame) {
                i--;
                iArr[i] = callFrame.pcSourceLineStart;
            }
        }
        if (i != 0) {
            Kit.codeBug();
        }
        rhinoException.interpreterStackInfo = callFrameArr;
        rhinoException.interpreterLineData = iArr;
    }

    @Override // org.mozilla.javascript.Evaluator
    public Object compile(CompilerEnvirons compilerEnvirons, ScriptNode scriptNode, String str, boolean z) {
        InterpreterData compile = new CodeGenerator().compile(compilerEnvirons, scriptNode, str, z);
        this.itsData = compile;
        return compile;
    }

    @Override // org.mozilla.javascript.Evaluator
    public Function createFunctionObject(Context context, Scriptable scriptable, Object obj, Object obj2) {
        if (obj != this.itsData) {
            Kit.codeBug();
        }
        return InterpretedFunction.createFunction(context, scriptable, this.itsData, obj2);
    }

    @Override // org.mozilla.javascript.Evaluator
    public Script createScriptObject(Object obj, Object obj2) {
        if (obj != this.itsData) {
            Kit.codeBug();
        }
        return InterpretedFunction.createScript(this.itsData, obj2);
    }

    @Override // org.mozilla.javascript.Evaluator
    public String getPatchedStack(RhinoException rhinoException, String str) {
        char charAt;
        StringBuilder sb = new StringBuilder(str.length() + 1000);
        String systemProperty = SecurityUtilities.getSystemProperty("line.separator");
        CallFrame[] callFrameArr = (CallFrame[]) rhinoException.interpreterStackInfo;
        int[] iArr = rhinoException.interpreterLineData;
        int length = callFrameArr.length;
        int length2 = iArr.length;
        int i = 0;
        while (length != 0) {
            length--;
            int indexOf = str.indexOf("org.mozilla.javascript.Interpreter.interpretLoop", i);
            if (indexOf < 0) {
                break;
            }
            int i2 = indexOf + 48;
            while (i2 != str.length() && (charAt = str.charAt(i2)) != '\n' && charAt != '\r') {
                i2++;
            }
            sb.append((CharSequence) str, i, i2);
            for (CallFrame callFrame = callFrameArr[length]; callFrame != null; callFrame = callFrame.parentFrame) {
                if (length2 == 0) {
                    Kit.codeBug();
                }
                length2--;
                InterpreterData interpreterData = callFrame.idata;
                sb.append(systemProperty);
                sb.append("\tat script");
                String str2 = interpreterData.itsName;
                if (str2 != null && str2.length() != 0) {
                    sb.append('.');
                    sb.append(interpreterData.itsName);
                }
                sb.append('(');
                sb.append(interpreterData.itsSourceFile);
                int i3 = iArr[length2];
                if (i3 >= 0) {
                    sb.append(':');
                    sb.append(getIndex(interpreterData.itsICode, i3));
                }
                sb.append(')');
            }
            i = i2;
        }
        sb.append(str.substring(i));
        return sb.toString();
    }

    @Override // org.mozilla.javascript.Evaluator
    public List<String> getScriptStack(RhinoException rhinoException) {
        ScriptStackElement[][] scriptStackElements = getScriptStackElements(rhinoException);
        ArrayList arrayList = new ArrayList(scriptStackElements.length);
        String systemProperty = SecurityUtilities.getSystemProperty("line.separator");
        for (ScriptStackElement[] scriptStackElementArr : scriptStackElements) {
            StringBuilder sb = new StringBuilder();
            for (ScriptStackElement scriptStackElement : scriptStackElementArr) {
                scriptStackElement.renderJavaStyle(sb);
                sb.append(systemProperty);
            }
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    public ScriptStackElement[][] getScriptStackElements(RhinoException rhinoException) {
        if (rhinoException.interpreterStackInfo == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        CallFrame[] callFrameArr = (CallFrame[]) rhinoException.interpreterStackInfo;
        int[] iArr = rhinoException.interpreterLineData;
        int length = callFrameArr.length;
        int length2 = iArr.length;
        while (length != 0) {
            length--;
            CallFrame callFrame = callFrameArr[length];
            ArrayList arrayList2 = new ArrayList();
            while (callFrame != null) {
                if (length2 == 0) {
                    Kit.codeBug();
                }
                length2--;
                InterpreterData interpreterData = callFrame.idata;
                String str = interpreterData.itsSourceFile;
                int i = iArr[length2];
                int index = i >= 0 ? getIndex(interpreterData.itsICode, i) : -1;
                String str2 = interpreterData.itsName;
                String str3 = (str2 == null || str2.length() == 0) ? null : interpreterData.itsName;
                callFrame = callFrame.parentFrame;
                arrayList2.add(new ScriptStackElement(str, str3, index));
            }
            arrayList.add((ScriptStackElement[]) arrayList2.toArray(new ScriptStackElement[0]));
        }
        return (ScriptStackElement[][]) arrayList.toArray(new ScriptStackElement[arrayList.size()][]);
    }

    @Override // org.mozilla.javascript.Evaluator
    public String getSourcePositionFromStack(Context context, int[] iArr) {
        CallFrame callFrame = (CallFrame) context.lastInterpreterFrame;
        InterpreterData interpreterData = callFrame.idata;
        int i = callFrame.pcSourceLineStart;
        if (i >= 0) {
            iArr[0] = getIndex(interpreterData.itsICode, i);
        } else {
            iArr[0] = 0;
        }
        return interpreterData.itsSourceFile;
    }

    @Override // org.mozilla.javascript.Evaluator
    public void setEvalScriptFlag(Script script) {
        ((InterpretedFunction) script).idata.evalScriptFlag = true;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class NewState {
        public /* synthetic */ NewState(int i) {
            this();
        }

        private NewState() {
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class NewThrowable extends NewState {
        private final Object throwable;

        /* renamed from: -$$Nest$fgetthrowable, reason: not valid java name */
        public static /* bridge */ /* synthetic */ Object m761$$Nest$fgetthrowable(NewThrowable newThrowable) {
            return newThrowable.throwable;
        }

        private NewThrowable(Object obj) {
            super(0);
            this.throwable = obj;
        }

        public /* synthetic */ NewThrowable(Object obj, int i) {
            this(obj);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class StateContinue extends NewState {
        private final CallFrame frame;

        /* renamed from: -$$Nest$fgetframe, reason: not valid java name */
        public static /* bridge */ /* synthetic */ CallFrame m762$$Nest$fgetframe(StateContinue stateContinue) {
            return stateContinue.frame;
        }

        private StateContinue(CallFrame callFrame) {
            super(0);
            this.frame = callFrame;
        }

        public /* synthetic */ StateContinue(CallFrame callFrame, int i) {
            this(callFrame);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class ContinueLoop extends NewState {
        private final CallFrame frame;
        private final int indexReg;
        private final int stackTop;

        /* renamed from: -$$Nest$fgetframe, reason: not valid java name */
        public static /* bridge */ /* synthetic */ CallFrame m758$$Nest$fgetframe(ContinueLoop continueLoop) {
            return continueLoop.frame;
        }

        /* renamed from: -$$Nest$fgetindexReg, reason: not valid java name */
        public static /* bridge */ /* synthetic */ int m759$$Nest$fgetindexReg(ContinueLoop continueLoop) {
            return continueLoop.indexReg;
        }

        /* renamed from: -$$Nest$fgetstackTop, reason: not valid java name */
        public static /* bridge */ /* synthetic */ int m760$$Nest$fgetstackTop(ContinueLoop continueLoop) {
            return continueLoop.stackTop;
        }

        private ContinueLoop(CallFrame callFrame, int i, int i2) {
            super(0);
            this.frame = callFrame;
            this.stackTop = i;
            this.indexReg = i2;
        }

        public /* synthetic */ ContinueLoop(CallFrame callFrame, int i, int i2, int i3) {
            this(callFrame, i, i2);
        }
    }

    public static void dumpICode(InterpreterData interpreterData) {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class CallFrame implements Cloneable, Serializable {
        private static final long serialVersionUID = -2843792508994958978L;
        final DebugFrame debuggerFrame;
        final int emptyStackTop;
        final InterpretedFunction fnOrScript;
        int frameIndex;
        boolean frozen;
        final InterpreterData idata;
        boolean isContinuationsTopFrame;
        final int localShift;
        CallFrame parentFrame;
        int pc;
        int pcPrevBranch;
        int pcSourceLineStart;
        Object result;
        double resultDbl;
        double[] sDbl;
        int savedCallOp;
        int savedStackTop;
        Scriptable scope;
        Object[] stack;
        int[] stackAttributes;
        final Scriptable thisObj;
        Object throwable;
        final boolean useActivation;
        final CallFrame varSource;

        public CallFrame(Context context, Scriptable scriptable, InterpretedFunction interpretedFunction, CallFrame callFrame) {
            InterpreterData interpreterData = interpretedFunction.idata;
            this.idata = interpreterData;
            Debugger debugger = context.debugger;
            DebugFrame frame = debugger != null ? debugger.getFrame(context, interpreterData) : null;
            this.debuggerFrame = frame;
            this.useActivation = frame != null || interpreterData.itsNeedsActivation;
            int i = interpreterData.itsMaxVars;
            int i2 = (interpreterData.itsMaxLocals + i) - 1;
            this.emptyStackTop = i2;
            this.fnOrScript = interpretedFunction;
            this.varSource = this;
            this.localShift = i;
            this.thisObj = scriptable;
            this.parentFrame = callFrame;
            int i3 = callFrame != null ? callFrame.frameIndex + 1 : 0;
            this.frameIndex = i3;
            if (i3 > context.getMaximumInterpreterStackDepth()) {
                throw Context.reportRuntimeError("Exceeded maximum stack depth");
            }
            this.result = Undefined.instance;
            this.pcSourceLineStart = interpreterData.firstLinePC;
            this.savedStackTop = i2;
        }

        private Boolean equalsInTopScope(final Object obj) {
            return (Boolean) EqualObjectGraphs.withThreadLocal(new java.util.function.Function() { // from class: org.mozilla.javascript.Interpreter$CallFrame$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                /* renamed from: andThen */
                public /* synthetic */ java.util.function.Function mo646andThen(java.util.function.Function function) {
                    return Function$CC.$default$andThen(this, function);
                }

                @Override // java.util.function.Function
                public final Object apply(Object obj2) {
                    Boolean lambda$equalsInTopScope$1;
                    lambda$equalsInTopScope$1 = Interpreter.CallFrame.this.lambda$equalsInTopScope$1(obj, (EqualObjectGraphs) obj2);
                    return lambda$equalsInTopScope$1;
                }

                public /* synthetic */ java.util.function.Function compose(java.util.function.Function function) {
                    return Function$CC.$default$compose(this, function);
                }
            });
        }

        private boolean fieldsEqual(CallFrame callFrame, EqualObjectGraphs equalObjectGraphs) {
            return this.frameIndex == callFrame.frameIndex && this.pc == callFrame.pc && Interpreter.compareIdata(this.idata, callFrame.idata) && equalObjectGraphs.equalGraphs(this.varSource.stack, callFrame.varSource.stack) && Arrays.equals(this.varSource.sDbl, callFrame.varSource.sDbl) && equalObjectGraphs.equalGraphs(this.thisObj, callFrame.thisObj) && equalObjectGraphs.equalGraphs(this.fnOrScript, callFrame.fnOrScript) && equalObjectGraphs.equalGraphs(this.scope, callFrame.scope);
        }

        private boolean isStrictTopFrame() {
            while (true) {
                CallFrame callFrame = this.parentFrame;
                if (callFrame == null) {
                    return this.idata.isStrict;
                }
                this = callFrame;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$equals$0(Object obj, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
            return equalsInTopScope(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Boolean lambda$equalsInTopScope$1(Object obj, EqualObjectGraphs equalObjectGraphs) {
            return equals(this, (CallFrame) obj, equalObjectGraphs);
        }

        public CallFrame cloneFrozen() {
            if (!this.frozen) {
                Kit.codeBug();
            }
            try {
                CallFrame callFrame = (CallFrame) clone();
                callFrame.stack = (Object[]) this.stack.clone();
                callFrame.stackAttributes = (int[]) this.stackAttributes.clone();
                callFrame.sDbl = (double[]) this.sDbl.clone();
                callFrame.frozen = false;
                return callFrame;
            } catch (CloneNotSupportedException unused) {
                Node$$ExternalSyntheticBUOutline0.m();
                return null;
            }
        }

        public Object[] ensureStackLength(int i) {
            Object[] objArr = this.stack;
            if (i > objArr.length) {
                this.stack = Arrays.copyOf(objArr, i);
                this.sDbl = Arrays.copyOf(this.sDbl, i);
            }
            return this.stack;
        }

        public boolean equals(Object obj) {
            int i = 0;
            if (!(obj instanceof CallFrame)) {
                return false;
            }
            Context enter = Context.enter();
            try {
                if (ScriptRuntime.hasTopCall(enter)) {
                    boolean booleanValue = equalsInTopScope(obj).booleanValue();
                    if (enter != null) {
                        enter.close();
                    }
                    return booleanValue;
                }
                Scriptable topLevelScope = ScriptableObject.getTopLevelScope(this.scope);
                boolean booleanValue2 = ((Boolean) ScriptRuntime.doTopCall(new Interpreter$CallFrame$$ExternalSyntheticLambda1(this, obj, i), enter, topLevelScope, topLevelScope, ScriptRuntime.emptyArgs, isStrictTopFrame())).booleanValue();
                if (enter != null) {
                    enter.close();
                }
                return booleanValue2;
            } finally {
            }
        }

        public int hashCode() {
            int i = 0;
            int i2 = 0;
            while (true) {
                i = (((i * 31) + this.pc) * 31) + this.idata.icodeHashCode();
                this = this.parentFrame;
                if (this == null) {
                    break;
                }
                int i3 = i2 + 1;
                if (i2 >= 8) {
                    break;
                }
                i2 = i3;
            }
            return i;
        }

        public void initializeArgs(Context context, Scriptable scriptable, Object[] objArr, double[] dArr, int i, int i2, Scriptable scriptable2) {
            Object[] objArr2;
            double[] dArr2;
            int i3;
            InterpreterData interpreterData;
            InterpreterData interpreterData2;
            Object[] objArr3;
            if (this.useActivation) {
                if (dArr != null) {
                    objArr = Interpreter.getArgsArray(objArr, dArr, i, i2);
                }
                dArr2 = null;
                objArr2 = objArr;
                i3 = 0;
            } else {
                objArr2 = objArr;
                dArr2 = dArr;
                i3 = i;
            }
            if (this.idata.itsFunctionType != 0) {
                Scriptable parentScope = this.fnOrScript.getParentScope();
                this.scope = parentScope;
                if (this.useActivation) {
                    InterpreterData interpreterData3 = this.idata;
                    int i4 = interpreterData3.itsFunctionType;
                    InterpretedFunction interpretedFunction = this.fnOrScript;
                    boolean z = interpreterData3.isStrict;
                    if (i4 == 4) {
                        this.scope = ScriptRuntime.createArrowFunctionActivation(interpretedFunction, context, parentScope, objArr2, z, interpreterData3.argsHasRest, scriptable2);
                    } else {
                        this.scope = ScriptRuntime.createFunctionActivation(interpretedFunction, context, parentScope, objArr2, z, interpreterData3.argsHasRest, scriptable2);
                    }
                }
            } else {
                this.scope = scriptable;
                InterpretedFunction interpretedFunction2 = this.fnOrScript;
                ScriptRuntime.initScript(interpretedFunction2, this.thisObj, context, scriptable, interpretedFunction2.idata.evalScriptFlag);
            }
            InterpreterData interpreterData4 = this.idata;
            if (interpreterData4.itsNestedFunctions != null) {
                if (interpreterData4.itsFunctionType != 0 && !interpreterData4.itsNeedsActivation) {
                    Kit.codeBug();
                }
                int i5 = 0;
                while (true) {
                    InterpreterData[] interpreterDataArr = this.idata.itsNestedFunctions;
                    if (i5 >= interpreterDataArr.length) {
                        break;
                    }
                    if (interpreterDataArr[i5].itsFunctionType == 1) {
                        Interpreter.initFunction(context, this.scope, this.fnOrScript, i5);
                    }
                    i5++;
                }
            }
            InterpreterData interpreterData5 = this.idata;
            int i6 = interpreterData5.itsMaxFrameArray;
            if (i6 != this.emptyStackTop + interpreterData5.itsMaxStack + 1) {
                Kit.codeBug();
            }
            this.stack = new Object[i6];
            this.stackAttributes = new int[i6];
            this.sDbl = new double[i6];
            int paramAndVarCount = this.idata.getParamAndVarCount();
            int i7 = 0;
            while (true) {
                interpreterData = this.idata;
                if (i7 >= paramAndVarCount) {
                    break;
                }
                if (interpreterData.getParamOrVarConst(i7)) {
                    this.stackAttributes[i7] = 13;
                }
                i7++;
            }
            int i8 = interpreterData.argCount;
            if (i8 > i2) {
                i8 = i2;
            }
            System.arraycopy(objArr2, i3, this.stack, 0, i8);
            if (dArr2 != null) {
                System.arraycopy(dArr2, i3, this.sDbl, 0, i8);
            }
            while (true) {
                interpreterData2 = this.idata;
                if (i8 == interpreterData2.itsMaxVars) {
                    break;
                }
                this.stack[i8] = Undefined.instance;
                i8++;
            }
            if (interpreterData2.argsHasRest) {
                int i9 = interpreterData2.argCount;
                int i10 = i9 - 1;
                if (i2 >= i9) {
                    int i11 = i2 - i10;
                    objArr3 = new Object[i11];
                    int i12 = i3 + i10;
                    for (int i13 = 0; i13 != i11; i13++) {
                        Object obj = objArr2[i12];
                        if (obj == UniqueTag.DOUBLE_MARK) {
                            obj = ScriptRuntime.wrapNumber(dArr2[i12]);
                        }
                        objArr3[i13] = obj;
                        i12++;
                    }
                } else {
                    objArr3 = ScriptRuntime.emptyArgs;
                }
                this.stack[i10] = context.newArray(this.scope, objArr3);
            }
        }

        private static Boolean equals(CallFrame callFrame, CallFrame callFrame2, EqualObjectGraphs equalObjectGraphs) {
            while (callFrame != callFrame2) {
                if (callFrame != null && callFrame2 != null) {
                    if (!callFrame.fieldsEqual(callFrame2, equalObjectGraphs)) {
                        return Boolean.FALSE;
                    }
                    callFrame = callFrame.parentFrame;
                    callFrame2 = callFrame2.parentFrame;
                } else {
                    return Boolean.FALSE;
                }
            }
            return Boolean.TRUE;
        }
    }

    public static NativeContinuation captureContinuation(Context context) {
        Object obj = context.lastInterpreterFrame;
        if (obj != null && (obj instanceof CallFrame)) {
            return captureContinuation(context, (CallFrame) obj, true);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Interpreter frames not found");
        return null;
    }
}
