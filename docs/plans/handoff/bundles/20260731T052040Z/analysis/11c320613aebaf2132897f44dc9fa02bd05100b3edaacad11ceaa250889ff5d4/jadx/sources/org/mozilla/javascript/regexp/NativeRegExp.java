package org.mozilla.javascript.regexp;

import androidx.compose.ui.node.Owner;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.AbstractEcmaObjectOperations;
import org.mozilla.javascript.Constructable;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.NativeObject;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.ScriptRuntimeES6;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Symbol;
import org.mozilla.javascript.SymbolKey;
import org.mozilla.javascript.Token;
import org.mozilla.javascript.TopLevel;
import org.mozilla.javascript.Undefined;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class NativeRegExp extends IdScriptableObject {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ANCHOR_BOL = -2;
    private static final int INDEX_LEN = 2;
    private static final int Id_compile = 1;
    private static final int Id_dotAll = 7;
    private static final int Id_exec = 4;
    private static final int Id_flags = 3;
    private static final int Id_global = 4;
    private static final int Id_ignoreCase = 5;
    private static final int Id_lastIndex = 1;
    private static final int Id_multiline = 6;
    private static final int Id_prefix = 6;
    private static final int Id_source = 2;
    private static final int Id_sticky = 8;
    private static final int Id_test = 5;
    private static final int Id_toSource = 3;
    private static final int Id_toString = 2;
    public static final int JSREG_DOTALL = 8;
    public static final int JSREG_FOLD = 2;
    public static final int JSREG_GLOB = 1;
    public static final int JSREG_MULTILINE = 4;
    public static final int JSREG_STICKY = 16;
    public static final int MATCH = 1;
    private static final int MAX_INSTANCE_ID = 8;
    private static final int MAX_PROTOTYPE_ID = 9;
    public static final int PREFIX = 2;
    private static final Object REGEXP_TAG = new Object();
    private static final byte REOP_ALNUM = 9;
    private static final byte REOP_ALT = 31;
    private static final byte REOP_ALTPREREQ = 53;
    private static final byte REOP_ALTPREREQ2 = 55;
    private static final byte REOP_ALTPREREQi = 54;
    private static final byte REOP_ASSERT = 41;
    private static final byte REOP_ASSERTNOTTEST = 44;
    private static final byte REOP_ASSERTTEST = 43;
    private static final byte REOP_ASSERT_NOT = 42;
    private static final byte REOP_BACKREF = 13;
    private static final byte REOP_BOL = 2;
    private static final byte REOP_CLASS = 22;
    private static final byte REOP_DIGIT = 7;
    private static final byte REOP_DOT = 6;
    private static final byte REOP_EMPTY = 1;
    private static final byte REOP_END = 57;
    private static final byte REOP_ENDCHILD = 49;
    private static final byte REOP_EOL = 3;
    private static final byte REOP_FLAT = 14;
    private static final byte REOP_FLAT1 = 15;
    private static final byte REOP_FLAT1i = 17;
    private static final byte REOP_FLATi = 16;
    private static final byte REOP_JUMP = 32;
    private static final byte REOP_LPAREN = 29;
    private static final byte REOP_MINIMALOPT = 47;
    private static final byte REOP_MINIMALPLUS = 46;
    private static final byte REOP_MINIMALQUANT = 48;
    private static final byte REOP_MINIMALREPEAT = 52;
    private static final byte REOP_MINIMALSTAR = 45;
    private static final byte REOP_NCLASS = 23;
    private static final byte REOP_NONALNUM = 10;
    private static final byte REOP_NONDIGIT = 8;
    private static final byte REOP_NONSPACE = 12;
    private static final byte REOP_OPT = 28;
    private static final byte REOP_PLUS = 27;
    private static final byte REOP_QUANT = 25;
    private static final byte REOP_REPEAT = 51;
    private static final byte REOP_RPAREN = 30;
    private static final byte REOP_SIMPLE_END = 23;
    private static final byte REOP_SIMPLE_START = 1;
    private static final byte REOP_SPACE = 11;
    private static final byte REOP_STAR = 26;
    private static final byte REOP_UCFLAT1 = 18;
    private static final byte REOP_UCFLAT1i = 19;
    private static final byte REOP_WBDRY = 4;
    private static final byte REOP_WNONBDRY = 5;
    private static final int SymbolId_match = 7;
    private static final int SymbolId_matchAll = 8;
    private static final int SymbolId_search = 9;
    public static final int TEST = 0;
    private static final boolean debug = false;
    private static final long serialVersionUID = 4965263491464903264L;
    Object lastIndex;
    private int lastIndexAttr;
    private RECompiled re;

    public NativeRegExp(Scriptable scriptable, RECompiled rECompiled) {
        Integer num = ScriptRuntime.zeroObj;
        this.lastIndex = num;
        this.lastIndexAttr = 6;
        this.re = rECompiled;
        setLastIndex(num);
        ScriptRuntime.setBuiltinProtoAndParent(this, scriptable, TopLevel.Builtins.RegExp);
    }

    private static void addCharacterRangeToCharSet(RECharSet rECharSet, char c, char c2) {
        int i = c / '\b';
        int i2 = c2 / '\b';
        if (c2 >= rECharSet.length || c > c2) {
            throw ScriptRuntime.constructError("SyntaxError", "invalid range in character class");
        }
        char c3 = (char) (c & 7);
        char c4 = (char) (c2 & 7);
        byte[] bArr = rECharSet.bits;
        if (i == i2) {
            bArr[i] = (byte) (bArr[i] | ((byte) ((255 >> (7 - (c4 - c3))) << c3)));
            return;
        }
        bArr[i] = (byte) (((byte) (255 << c3)) | bArr[i]);
        while (true) {
            i++;
            byte[] bArr2 = rECharSet.bits;
            if (i >= i2) {
                bArr2[i2] = (byte) (bArr2[i2] | ((byte) (255 >> (7 - c4))));
                return;
            }
            bArr2[i] = -1;
        }
    }

    private static void addCharacterToCharSet(RECharSet rECharSet, char c) {
        int i = c / '\b';
        if (c >= rECharSet.length) {
            throw ScriptRuntime.constructError("SyntaxError", "invalid range in character class");
        }
        byte[] bArr = rECharSet.bits;
        bArr[i] = (byte) (((byte) (1 << (c & 7))) | bArr[i]);
    }

    private static int addIndex(byte[] bArr, int i, int i2) {
        if (i2 < 0) {
            throw Kit.codeBug();
        }
        if (i2 > 65535) {
            throw Context.reportRuntimeError("Too complex regexp");
        }
        bArr[i] = (byte) (i2 >> 8);
        bArr[i + 1] = (byte) i2;
        return i + 2;
    }

    private void appendFlags(StringBuilder sb) {
        if ((this.re.flags & 1) != 0) {
            sb.append('g');
        }
        if ((this.re.flags & 2) != 0) {
            sb.append('i');
        }
        if ((this.re.flags & 4) != 0) {
            sb.append('m');
        }
        if ((this.re.flags & 8) != 0) {
            sb.append('s');
        }
        if ((this.re.flags & 16) != 0) {
            sb.append('y');
        }
    }

    private static boolean backrefMatcher(REGlobalData rEGlobalData, int i, String str, int i2) {
        long[] jArr = rEGlobalData.parens;
        if (jArr == null || i >= jArr.length) {
            return false;
        }
        int parensIndex = rEGlobalData.parensIndex(i);
        if (parensIndex == -1) {
            return true;
        }
        int parensLength = rEGlobalData.parensLength(i);
        int i3 = rEGlobalData.cp;
        if (i3 + parensLength > i2) {
            return false;
        }
        if ((rEGlobalData.regexp.flags & 2) != 0) {
            for (int i4 = 0; i4 < parensLength; i4++) {
                char charAt = str.charAt(parensIndex + i4);
                char charAt2 = str.charAt(rEGlobalData.cp + i4);
                if (charAt != charAt2 && upcase(charAt) != upcase(charAt2)) {
                    return false;
                }
            }
        } else if (!str.regionMatches(parensIndex, str, i3, parensLength)) {
            return false;
        }
        rEGlobalData.cp += parensLength;
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0063 A[LOOP:1: B:55:0x004f->B:59:0x0063, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x005d A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v11, types: [int] */
    /* JADX WARN: Type inference failed for: r5v15, types: [int] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v8, types: [int] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r9v10, types: [int] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean calculateBitmapSize(org.mozilla.javascript.regexp.CompilerState r11, org.mozilla.javascript.regexp.RENode r12, char[] r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.calculateBitmapSize(org.mozilla.javascript.regexp.CompilerState, org.mozilla.javascript.regexp.RENode, char[], int, int):boolean");
    }

    private static boolean classMatcher(REGlobalData rEGlobalData, RECharSet rECharSet, char c) {
        if (!rECharSet.converted) {
            processCharSet(rEGlobalData, rECharSet);
        }
        int i = c >> 3;
        int i2 = rECharSet.length;
        boolean z = true;
        if (i2 != 0 && c < i2 && (rECharSet.bits[i] & (1 << (c & 7))) != 0) {
            z = false;
        }
        return rECharSet.sense ^ z;
    }

    public static RECompiled compileRE(Context context, String str, String str2, boolean z) {
        int i;
        int i2;
        RECompiled rECompiled = new RECompiled(str);
        int length = str.length();
        if (str2 != null) {
            i = 0;
            for (int i3 = 0; i3 < str2.length(); i3++) {
                char charAt = str2.charAt(i3);
                if (charAt == 'g') {
                    i2 = 1;
                } else if (charAt == 'i') {
                    i2 = 2;
                } else if (charAt == 'm') {
                    i2 = 4;
                } else if (charAt == 's') {
                    i2 = 8;
                } else if (charAt == 'y') {
                    i2 = 16;
                } else {
                    reportError("msg.invalid.re.flag", String.valueOf(charAt));
                    i2 = 0;
                }
                if ((i & i2) != 0) {
                    reportError("msg.invalid.re.flag", String.valueOf(charAt));
                }
                i |= i2;
            }
        } else {
            i = 0;
        }
        rECompiled.flags = i;
        CompilerState compilerState = new CompilerState(context, rECompiled.source, length, i);
        if (z && length > 0) {
            RENode rENode = new RENode(REOP_FLAT);
            compilerState.result = rENode;
            rENode.chr = compilerState.cpbegin[0];
            rENode.length = length;
            rENode.flatIndex = 0;
            compilerState.progLength += 5;
        } else {
            if (!parseDisjunction(compilerState)) {
                return null;
            }
            if (compilerState.maxBackReference > compilerState.parenCount) {
                compilerState = new CompilerState(context, rECompiled.source, length, i);
                compilerState.backReferenceLimit = compilerState.parenCount;
                if (!parseDisjunction(compilerState)) {
                    return null;
                }
            }
        }
        rECompiled.program = new byte[compilerState.progLength + 1];
        int i4 = compilerState.classCount;
        if (i4 != 0) {
            rECompiled.classList = new RECharSet[i4];
            rECompiled.classCount = i4;
        }
        int emitREBytecode = emitREBytecode(compilerState, rECompiled, 0, compilerState.result);
        byte[] bArr = rECompiled.program;
        bArr[emitREBytecode] = REOP_END;
        rECompiled.parenCount = compilerState.parenCount;
        byte b = bArr[0];
        if (b == 2) {
            rECompiled.anchorCh = -2;
            return rECompiled;
        }
        if (b != 31) {
            switch (b) {
                case 14:
                case 16:
                    rECompiled.anchorCh = rECompiled.source[getIndex(bArr, 1)];
                    break;
                case 15:
                case 17:
                    rECompiled.anchorCh = (char) (bArr[1] & 255);
                    break;
                case 18:
                case 19:
                    rECompiled.anchorCh = (char) getIndex(bArr, 1);
                    break;
            }
            return null;
        }
        RENode rENode2 = compilerState.result;
        if (rENode2.kid.op == 2 && rENode2.kid2.op == 2) {
            rECompiled.anchorCh = -2;
        }
        return rECompiled;
    }

    private static void doFlat(CompilerState compilerState, char c) {
        RENode rENode = new RENode(REOP_FLAT);
        compilerState.result = rENode;
        rENode.chr = c;
        rENode.length = 1;
        rENode.flatIndex = -1;
        compilerState.progLength += 3;
    }

    private static char downcase(char c) {
        if (c >= 128) {
            char lowerCase = Character.toLowerCase(c);
            if (lowerCase >= 128) {
                return lowerCase;
            }
        } else if ('A' <= c && c <= 'Z') {
            return (char) (c + ' ');
        }
        return c;
    }

    private static int emitREBytecode(CompilerState compilerState, RECompiled rECompiled, int i, RENode rENode) {
        int i2;
        byte[] bArr = rECompiled.program;
        while (rENode != null) {
            int i3 = i + 1;
            byte b = rENode.op;
            bArr[i] = b;
            if (b != 1) {
                if (b != 22) {
                    if (b == 25) {
                        int i4 = rENode.min;
                        if (i4 == 0 && rENode.max == -1) {
                            bArr[i] = rENode.greedy ? REOP_STAR : REOP_MINIMALSTAR;
                        } else if (i4 == 0 && rENode.max == 1) {
                            bArr[i] = rENode.greedy ? REOP_OPT : REOP_MINIMALOPT;
                        } else if (i4 == 1 && rENode.max == -1) {
                            bArr[i] = rENode.greedy ? REOP_PLUS : REOP_MINIMALPLUS;
                        } else {
                            if (!rENode.greedy) {
                                bArr[i] = REOP_MINIMALQUANT;
                            }
                            i3 = addIndex(bArr, addIndex(bArr, i3, i4), rENode.max + 1);
                        }
                        int addIndex = addIndex(bArr, addIndex(bArr, i3, rENode.parenCount), rENode.parenIndex);
                        int emitREBytecode = emitREBytecode(compilerState, rECompiled, addIndex + 2, rENode.kid);
                        i2 = emitREBytecode + 1;
                        bArr[emitREBytecode] = REOP_ENDCHILD;
                        resolveForwardJump(bArr, addIndex, i2);
                    } else if (b != 29) {
                        if (b != 31) {
                            if (b == 13) {
                                i = addIndex(bArr, i3, rENode.parenIndex);
                            } else if (b == 14) {
                                if (rENode.flatIndex != -1) {
                                    while (true) {
                                        RENode rENode2 = rENode.next;
                                        if (rENode2 != null && rENode2.op == 14) {
                                            int i5 = rENode.flatIndex;
                                            int i6 = rENode.length;
                                            if (i5 + i6 == rENode2.flatIndex) {
                                                rENode.length = i6 + rENode2.length;
                                                rENode.next = rENode2.next;
                                            }
                                        }
                                    }
                                }
                                int i7 = rENode.flatIndex;
                                if (i7 == -1 || rENode.length <= 1) {
                                    char c = rENode.chr;
                                    if (c < 256) {
                                        if ((compilerState.flags & 2) != 0) {
                                            bArr[i] = REOP_FLAT1i;
                                        } else {
                                            bArr[i] = REOP_FLAT1;
                                        }
                                        i += 2;
                                        bArr[i3] = (byte) c;
                                    } else {
                                        if ((compilerState.flags & 2) != 0) {
                                            bArr[i] = REOP_UCFLAT1i;
                                        } else {
                                            bArr[i] = REOP_UCFLAT1;
                                        }
                                        i = addIndex(bArr, i3, c);
                                    }
                                } else {
                                    if ((compilerState.flags & 2) != 0) {
                                        bArr[i] = REOP_FLATi;
                                    } else {
                                        bArr[i] = REOP_FLAT;
                                    }
                                    i = addIndex(bArr, addIndex(bArr, i3, i7), rENode.length);
                                }
                            } else if (b == 41) {
                                int emitREBytecode2 = emitREBytecode(compilerState, rECompiled, i + 3, rENode.kid);
                                i2 = emitREBytecode2 + 1;
                                bArr[emitREBytecode2] = REOP_ASSERTTEST;
                                resolveForwardJump(bArr, i3, i2);
                            } else if (b != 42) {
                                switch (b) {
                                    case Token.REGEXP /* 53 */:
                                    case Token.BINDNAME /* 54 */:
                                    case Token.THROW /* 55 */:
                                        boolean z = b == 54;
                                        char c2 = rENode.chr;
                                        if (z) {
                                            c2 = upcase(c2);
                                        }
                                        addIndex(bArr, i3, c2);
                                        int i8 = i + 3;
                                        int i9 = rENode.index;
                                        if (z) {
                                            i9 = upcase((char) i9);
                                        }
                                        addIndex(bArr, i8, i9);
                                        i3 = i + 5;
                                        break;
                                    default:
                                        i = i3;
                                        continue;
                                }
                            } else {
                                int emitREBytecode3 = emitREBytecode(compilerState, rECompiled, i + 3, rENode.kid);
                                i2 = emitREBytecode3 + 1;
                                bArr[emitREBytecode3] = REOP_ASSERTNOTTEST;
                                resolveForwardJump(bArr, i3, i2);
                            }
                        }
                        RENode rENode3 = rENode.kid2;
                        int emitREBytecode4 = emitREBytecode(compilerState, rECompiled, i3 + 2, rENode.kid);
                        int i10 = emitREBytecode4 + 1;
                        bArr[emitREBytecode4] = REOP_JUMP;
                        int i11 = emitREBytecode4 + 3;
                        resolveForwardJump(bArr, i3, i11);
                        int emitREBytecode5 = emitREBytecode(compilerState, rECompiled, i11, rENode3);
                        int i12 = emitREBytecode5 + 1;
                        bArr[emitREBytecode5] = REOP_JUMP;
                        i = emitREBytecode5 + 3;
                        resolveForwardJump(bArr, i10, i);
                        resolveForwardJump(bArr, i12, i);
                    } else {
                        int emitREBytecode6 = emitREBytecode(compilerState, rECompiled, addIndex(bArr, i3, rENode.parenIndex), rENode.kid);
                        bArr[emitREBytecode6] = REOP_RPAREN;
                        i = addIndex(bArr, emitREBytecode6 + 1, rENode.parenIndex);
                    }
                    i = i2;
                } else {
                    if (!rENode.sense) {
                        bArr[i] = 23;
                    }
                    i = addIndex(bArr, i3, rENode.index);
                    rECompiled.classList[rENode.index] = new RECharSet(rENode.bmsize, rENode.startIndex, rENode.kidlen, rENode.sense);
                }
            }
            rENode = rENode.next;
        }
        return i;
    }

    private static String escapeRegExp(Object obj) {
        String scriptRuntime = ScriptRuntime.toString(obj);
        StringBuilder sb = null;
        int i = 0;
        for (int indexOf = scriptRuntime.indexOf(47); indexOf > -1; indexOf = scriptRuntime.indexOf(47, indexOf + 1)) {
            if (indexOf == i || scriptRuntime.charAt(indexOf - 1) != '\\') {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append((CharSequence) scriptRuntime, i, indexOf);
                sb.append("\\/");
                i = indexOf + 1;
            }
        }
        if (sb == null) {
            return scriptRuntime;
        }
        sb.append((CharSequence) scriptRuntime, i, scriptRuntime.length());
        return sb.toString();
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    private static boolean executeREBytecode(org.mozilla.javascript.Context r19, org.mozilla.javascript.regexp.REGlobalData r20, java.lang.String r21, int r22) {
        /*
            Method dump skipped, instructions count: 1176
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.executeREBytecode(org.mozilla.javascript.Context, org.mozilla.javascript.regexp.REGlobalData, java.lang.String, int):boolean");
    }

    private static boolean flatNIMatcher(REGlobalData rEGlobalData, int i, int i2, String str, int i3) {
        if (rEGlobalData.cp + i2 > i3) {
            return false;
        }
        char[] cArr = rEGlobalData.regexp.source;
        for (int i4 = 0; i4 < i2; i4++) {
            char c = cArr[i + i4];
            char charAt = str.charAt(rEGlobalData.cp + i4);
            if (c != charAt && upcase(c) != upcase(charAt)) {
                return false;
            }
        }
        rEGlobalData.cp += i2;
        return true;
    }

    private static boolean flatNMatcher(REGlobalData rEGlobalData, int i, int i2, String str, int i3) {
        if (rEGlobalData.cp + i2 > i3) {
            return false;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            if (rEGlobalData.regexp.source[i + i4] != str.charAt(rEGlobalData.cp + i4)) {
                return false;
            }
        }
        rEGlobalData.cp += i2;
        return true;
    }

    private static int getDecimalValue(char c, CompilerState compilerState, String str) {
        int i = compilerState.cp;
        char[] cArr = compilerState.cpbegin;
        int i2 = c - '0';
        boolean z = false;
        while (true) {
            int i3 = compilerState.cp;
            if (i3 == compilerState.cpend) {
                break;
            }
            char c2 = cArr[i3];
            if (!isDigit(c2)) {
                break;
            }
            if (!z) {
                int i4 = (c2 - '0') + (i2 * 10);
                i2 = 65535;
                if (i4 < 65535) {
                    i2 = i4;
                } else {
                    z = true;
                }
            }
            compilerState.cp++;
        }
        if (z) {
            reportError(str, String.valueOf(cArr, i, compilerState.cp - i));
        }
        return i2;
    }

    private static RegExpImpl getImpl(Context context) {
        return (RegExpImpl) ScriptRuntime.getRegExpProxy(context);
    }

    private static int getIndex(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    private static int getOffset(byte[] bArr, int i) {
        return getIndex(bArr, i);
    }

    public static void init(Context context, Scriptable scriptable, boolean z) {
        NativeRegExp withLanguageVersion = NativeRegExpInstantiator.withLanguageVersion(context.getLanguageVersion());
        withLanguageVersion.re = compileRE(context, "", null, false);
        withLanguageVersion.activatePrototypeMap(9);
        withLanguageVersion.setParentScope(scriptable);
        withLanguageVersion.setPrototype(ScriptableObject.getObjectPrototype(scriptable));
        NativeRegExpCtor nativeRegExpCtor = new NativeRegExpCtor();
        withLanguageVersion.defineProperty("constructor", nativeRegExpCtor, 2);
        ScriptRuntime.setFunctionProtoAndParent(nativeRegExpCtor, context, scriptable);
        nativeRegExpCtor.setImmunePrototypeProperty(withLanguageVersion);
        if (z) {
            withLanguageVersion.sealObject();
            nativeRegExpCtor.sealObject();
        }
        ScriptableObject.defineProperty(scriptable, "RegExp", nativeRegExpCtor, 2);
        ScriptRuntimeES6.addSymbolSpecies(context, scriptable, nativeRegExpCtor);
    }

    private static boolean isControlLetter(char c) {
        if ('a' > c || c > 'z') {
            return 'A' <= c && c <= 'Z';
        }
        return true;
    }

    public static boolean isDigit(char c) {
        return '0' <= c && c <= '9';
    }

    private static boolean isLineTerm(char c) {
        return ScriptRuntime.isJSLineTerminator(c);
    }

    private static boolean isREWhiteSpace(int i) {
        return ScriptRuntime.isJSWhitespaceOrLineTerminator(i);
    }

    private static boolean isWord(char c) {
        if ('a' > c || c > 'z') {
            return ('A' <= c && c <= 'Z') || isDigit(c) || c == '_';
        }
        return true;
    }

    private Object js_SymbolMatchAll(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!ScriptRuntime.isObject(scriptable2)) {
            throw ScriptRuntime.typeErrorById("msg.arg.not.object", ScriptRuntime.typeof(scriptable2));
        }
        String scriptRuntime = ScriptRuntime.toString(objArr.length > 0 ? objArr[0] : Undefined.instance);
        Constructable speciesConstructor = AbstractEcmaObjectOperations.speciesConstructor(context, scriptable2, ScriptRuntime.getExistingCtor(context, ScriptableObject.getTopLevelScope(scriptable), getClassName()));
        String scriptRuntime2 = ScriptRuntime.toString(ScriptRuntime.getObjectProp(scriptable2, "flags", context));
        Scriptable construct = speciesConstructor.construct(context, scriptable, new Object[]{scriptable2, scriptRuntime2});
        ScriptRuntime.setObjectProp(construct, "lastIndex", (Object) Long.valueOf(ScriptRuntime.toLength(ScriptRuntime.getObjectProp(scriptable2, "lastIndex", context))), context);
        return new NativeRegExpStringIterator(scriptable, construct, scriptRuntime, scriptRuntime2.indexOf(Token.ASSIGN_BITAND) != -1, (scriptRuntime2.indexOf(Token.OR) == -1 && scriptRuntime2.indexOf(Token.AND) == -1) ? false : true);
    }

    public static Object js_exec(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return realThis(scriptable2, "exec").execSub(context, scriptable, objArr, 1);
    }

    private static boolean matchRegExp(Context context, REGlobalData rEGlobalData, RECompiled rECompiled, String str, int i, int i2, boolean z) {
        int i3 = rECompiled.parenCount;
        if (i3 != 0) {
            rEGlobalData.parens = new long[i3];
        } else {
            rEGlobalData.parens = null;
        }
        rEGlobalData.backTrackStackTop = null;
        rEGlobalData.stateStackTop = null;
        rEGlobalData.multiline = z || (rECompiled.flags & 4) != 0;
        rEGlobalData.regexp = rECompiled;
        int i4 = rECompiled.anchorCh;
        int i5 = i;
        while (i5 <= i2) {
            if (i4 >= 0) {
                while (i5 != i2) {
                    char charAt = str.charAt(i5);
                    if (charAt != i4 && ((rEGlobalData.regexp.flags & 2) == 0 || upcase(charAt) != upcase((char) i4))) {
                        if ((rEGlobalData.regexp.flags & 16) != 0) {
                            return false;
                        }
                        i5++;
                    }
                }
                return false;
            }
            rEGlobalData.cp = i5;
            rEGlobalData.skipped = i5 - i;
            for (int i6 = 0; i6 < rECompiled.parenCount; i6++) {
                rEGlobalData.parens[i6] = -1;
            }
            boolean executeREBytecode = executeREBytecode(context, rEGlobalData, str, i2);
            rEGlobalData.backTrackStackTop = null;
            rEGlobalData.stateStackTop = null;
            if (executeREBytecode) {
                return true;
            }
            if (i4 == -2 && !rEGlobalData.multiline) {
                rEGlobalData.skipped = i2;
                return false;
            }
            if ((rEGlobalData.regexp.flags & 16) != 0) {
                return false;
            }
            i5 = rEGlobalData.skipped + i + 1;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0031, code lost:
    
        if (r1 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
    
        r5.result = new org.mozilla.javascript.regexp.RENode((byte) 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003b, code lost:
    
        r5.result = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean parseAlternative(org.mozilla.javascript.regexp.CompilerState r5) {
        /*
            char[] r0 = r5.cpbegin
            r1 = 0
            r2 = r1
        L4:
            int r3 = r5.cp
            int r4 = r5.cpend
            if (r3 == r4) goto L30
            char r3 = r0[r3]
            r4 = 124(0x7c, float:1.74E-43)
            if (r3 == r4) goto L30
            int r4 = r5.parenNesting
            if (r4 == 0) goto L19
            r4 = 41
            if (r3 != r4) goto L19
            goto L30
        L19:
            boolean r3 = parseTerm(r5)
            if (r3 != 0) goto L21
            r5 = 0
            return r5
        L21:
            org.mozilla.javascript.regexp.RENode r3 = r5.result
            if (r1 != 0) goto L28
            r1 = r3
            r2 = r1
            goto L2a
        L28:
            r2.next = r3
        L2a:
            org.mozilla.javascript.regexp.RENode r3 = r2.next
            if (r3 == 0) goto L4
            r2 = r3
            goto L2a
        L30:
            r0 = 1
            if (r1 != 0) goto L3b
            org.mozilla.javascript.regexp.RENode r1 = new org.mozilla.javascript.regexp.RENode
            r1.<init>(r0)
            r5.result = r1
            goto L3d
        L3b:
            r5.result = r1
        L3d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.parseAlternative(org.mozilla.javascript.regexp.CompilerState):boolean");
    }

    private static boolean parseDisjunction(CompilerState compilerState) {
        int i;
        int i2;
        if (!parseAlternative(compilerState)) {
            return false;
        }
        char[] cArr = compilerState.cpbegin;
        int i3 = compilerState.cp;
        if (i3 != cArr.length && cArr[i3] == '|') {
            compilerState.cp = i3 + 1;
            RENode rENode = new RENode(REOP_ALT);
            rENode.kid = compilerState.result;
            if (!parseDisjunction(compilerState)) {
                return false;
            }
            RENode rENode2 = compilerState.result;
            rENode.kid2 = rENode2;
            compilerState.result = rENode;
            RENode rENode3 = rENode.kid;
            byte b = rENode3.op;
            if (b == 14 && rENode2.op == 14) {
                rENode.op = (compilerState.flags & 2) == 0 ? REOP_ALTPREREQ : REOP_ALTPREREQi;
                rENode.chr = rENode3.chr;
                rENode.index = rENode2.chr;
                compilerState.progLength += 13;
            } else if (b == 22 && (i2 = rENode3.index) < 256 && rENode2.op == 14 && (compilerState.flags & 2) == 0) {
                rENode.op = REOP_ALTPREREQ2;
                rENode.chr = rENode2.chr;
                rENode.index = i2;
                compilerState.progLength += 13;
            } else if (b == 14 && rENode2.op == 22 && (i = rENode2.index) < 256 && (compilerState.flags & 2) == 0) {
                rENode.op = REOP_ALTPREREQ2;
                rENode.chr = rENode3.chr;
                rENode.index = i;
                compilerState.progLength += 13;
            } else {
                compilerState.progLength += 9;
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0164 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x03ff A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x03ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean parseTerm(org.mozilla.javascript.regexp.CompilerState r22) {
        /*
            Method dump skipped, instructions count: 1146
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.parseTerm(org.mozilla.javascript.regexp.CompilerState):boolean");
    }

    private static REProgState popProgState(REGlobalData rEGlobalData) {
        REProgState rEProgState = rEGlobalData.stateStackTop;
        rEGlobalData.stateStackTop = rEProgState.previous;
        return rEProgState;
    }

    private static void processCharSet(REGlobalData rEGlobalData, RECharSet rECharSet) {
        synchronized (rECharSet) {
            try {
                if (!rECharSet.converted) {
                    processCharSetImpl(rEGlobalData, rECharSet);
                    rECharSet.converted = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x0056. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x0059. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0098 A[LOOP:4: B:85:0x0081->B:89:0x0098, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0093 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void processCharSetImpl(org.mozilla.javascript.regexp.REGlobalData r17, org.mozilla.javascript.regexp.RECharSet r18) {
        /*
            Method dump skipped, instructions count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.processCharSetImpl(org.mozilla.javascript.regexp.REGlobalData, org.mozilla.javascript.regexp.RECharSet):void");
    }

    private static void pushBackTrackState(REGlobalData rEGlobalData, byte b, int i) {
        REProgState rEProgState = rEGlobalData.stateStackTop;
        rEGlobalData.backTrackStackTop = new REBackTrackData(rEGlobalData, b, i, rEGlobalData.cp, rEProgState.continuationOp, rEProgState.continuationPc);
    }

    private static void pushProgState(REGlobalData rEGlobalData, int i, int i2, int i3, REBackTrackData rEBackTrackData, int i4, int i5) {
        rEGlobalData.stateStackTop = new REProgState(rEGlobalData.stateStackTop, i, i2, i3, rEBackTrackData, i4, i5);
    }

    private static NativeRegExp realThis(Scriptable scriptable, IdFunctionObject idFunctionObject) {
        return realThis(scriptable, idFunctionObject.getFunctionName());
    }

    private static boolean reopIsSimple(int i) {
        return i >= 1 && i <= 23;
    }

    private static void reportError(String str, String str2) {
        throw ScriptRuntime.constructError("SyntaxError", ScriptRuntime.getMessageById(str, str2));
    }

    private static void reportWarning(Context context, String str, String str2) {
        if (context.hasFeature(11)) {
            Context.reportWarning(ScriptRuntime.getMessageById(str, str2));
        }
    }

    private static void resolveForwardJump(byte[] bArr, int i, int i2) {
        if (i > i2) {
            throw Kit.codeBug();
        }
        addIndex(bArr, i, i2 - i);
    }

    private void setLastIndex(Object obj) {
        if ((this.lastIndexAttr & 1) != 0) {
            throw ScriptRuntime.typeErrorById("msg.modify.readonly", "lastIndex");
        }
        this.lastIndex = obj;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01c8, code lost:
    
        if (isLineTerm(r4.charAt(r0 - 1)) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0180, code lost:
    
        if (isWord(r4.charAt(r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01a4, code lost:
    
        if (isWord(r4.charAt(r6)) != false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01b5, code lost:
    
        if (isLineTerm(r4.charAt(r0)) == false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int simpleMatch(org.mozilla.javascript.regexp.REGlobalData r3, java.lang.String r4, int r5, byte[] r6, int r7, int r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.regexp.NativeRegExp.simpleMatch(org.mozilla.javascript.regexp.REGlobalData, java.lang.String, int, byte[], int, int, boolean):int");
    }

    private static int toASCIIHexDigit(int i) {
        if (i < 48) {
            return -1;
        }
        if (i <= 57) {
            return i - 48;
        }
        int i2 = i | 32;
        if (97 > i2 || i2 > 102) {
            return -1;
        }
        return i2 - 87;
    }

    private static char upcase(char c) {
        if (c >= 128) {
            char upperCase = Character.toUpperCase(c);
            if (upperCase >= 128) {
                return upperCase;
            }
        } else if ('a' <= c && c <= 'z') {
            return (char) (c - ' ');
        }
        return c;
    }

    public Scriptable compile(Context context, Scriptable scriptable, Object[] objArr) {
        Object obj;
        Object obj2;
        if (objArr.length >= 1) {
            Object obj3 = objArr[0];
            if ((obj3 instanceof NativeRegExp) && (objArr.length == 1 || objArr[1] == Undefined.instance)) {
                this.re = ((NativeRegExp) obj3).re;
                setLastIndex(ScriptRuntime.zeroObj);
                return this;
            }
        }
        String str = (objArr.length == 0 || (obj2 = objArr[0]) == Undefined.instance) ? "" : obj2 instanceof NativeRegExp ? new String(((NativeRegExp) obj2).re.source) : escapeRegExp(obj2);
        String scriptRuntime = (objArr.length <= 1 || (obj = objArr[1]) == Undefined.instance) ? null : ScriptRuntime.toString(obj);
        if (objArr.length > 0 && (objArr[0] instanceof NativeRegExp) && scriptRuntime != null && context.getLanguageVersion() < 200) {
            throw ScriptRuntime.typeErrorById("msg.bad.regexp.compile", new Object[0]);
        }
        this.re = compileRE(context, str, scriptRuntime, false);
        setLastIndex(ScriptRuntime.zeroObj);
        return this;
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(REGEXP_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        switch (methodId) {
            case 1:
                return realThis(scriptable2, idFunctionObject).compile(context, scriptable, objArr);
            case 2:
                if (scriptable2 == scriptable || !(scriptable2 instanceof NativeObject)) {
                    return realThis(scriptable2, idFunctionObject).toString();
                }
                Object obj = scriptable2.get("source", scriptable2);
                Object obj2 = Scriptable.NOT_FOUND;
                String escapeRegExp = obj.equals(obj2) ? "undefined" : escapeRegExp(obj);
                Object obj3 = scriptable2.get("flags", scriptable2);
                return Owner.CC.m("/", escapeRegExp, "/", obj3.equals(obj2) ? "undefined" : obj3.toString());
            case 3:
                return realThis(scriptable2, idFunctionObject).toString();
            case 4:
                return js_exec(context, scriptable, scriptable2, objArr);
            case 5:
                Object execSub = realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 0);
                Boolean bool = Boolean.TRUE;
                return bool.equals(execSub) ? bool : Boolean.FALSE;
            case 6:
                return realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 2);
            case 7:
                return realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 1);
            case 8:
                return js_SymbolMatchAll(context, scriptable, scriptable2, objArr);
            case 9:
                Scriptable scriptable3 = (Scriptable) realThis(scriptable2, idFunctionObject).execSub(context, scriptable, objArr, 1);
                if (scriptable3 == null) {
                    return -1;
                }
                return scriptable3.get("index", scriptable3);
            default:
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(String.valueOf(methodId));
                return null;
        }
    }

    public Object execSub(Context context, Scriptable scriptable, Object[] objArr, int i) {
        String scriptRuntime;
        RegExpImpl impl = getImpl(context);
        if (objArr.length == 0) {
            scriptRuntime = impl.input;
            if (scriptRuntime == null) {
                scriptRuntime = ScriptRuntime.toString(Undefined.instance);
            }
        } else {
            scriptRuntime = ScriptRuntime.toString(objArr[0]);
        }
        String str = scriptRuntime;
        int i2 = this.re.flags;
        boolean z = ((i2 & 1) == 0 && (i2 & 16) == 0) ? false : true;
        double d = 0.0d;
        if (z) {
            double integer = ScriptRuntime.toInteger(this.lastIndex);
            if (integer < 0.0d || str.length() < integer) {
                setLastIndex(ScriptRuntime.zeroObj);
                return null;
            }
            d = integer;
        }
        Object executeRegExp = executeRegExp(context, scriptable, impl, str, new int[]{(int) d}, i);
        if (z) {
            if (executeRegExp != null && executeRegExp != Undefined.instance) {
                setLastIndex(Double.valueOf(r5[0]));
                return executeRegExp;
            }
            setLastIndex(ScriptRuntime.zeroObj);
        }
        return executeRegExp;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.lang.Boolean] */
    public Object executeRegExp(Context context, Scriptable scriptable, RegExpImpl regExpImpl, String str, int[] iArr, int i) {
        Context context2;
        Scriptable newArray;
        Scriptable scriptable2;
        NativeRegExp nativeRegExp = this;
        REGlobalData rEGlobalData = new REGlobalData();
        int i2 = iArr[0];
        int length = str.length();
        int i3 = i2 > length ? length : i2;
        SubString subString = null;
        if (!matchRegExp(context, rEGlobalData, nativeRegExp.re, str, i3, length, regExpImpl.multiline)) {
            if (i != 2) {
                return null;
            }
            return Undefined.instance;
        }
        int i4 = rEGlobalData.cp;
        iArr[0] = i4;
        int i5 = i4 - (rEGlobalData.skipped + i3);
        int i6 = i4 - i5;
        if (i == 0) {
            scriptable2 = null;
            newArray = Boolean.TRUE;
            context2 = context;
        } else {
            context2 = context;
            newArray = context2.newArray(scriptable, 0);
            newArray.put(0, newArray, str.substring(i6, i6 + i5));
            scriptable2 = newArray;
        }
        int i7 = nativeRegExp.re.parenCount;
        if (i7 == 0) {
            regExpImpl.parens = null;
            regExpImpl.lastParen = new SubString();
        } else {
            regExpImpl.parens = new SubString[i7];
            int i8 = 0;
            while (i8 < nativeRegExp.re.parenCount) {
                int parensIndex = rEGlobalData.parensIndex(i8);
                if (parensIndex != -1) {
                    subString = new SubString(str, parensIndex, rEGlobalData.parensLength(i8));
                    regExpImpl.parens[i8] = subString;
                    if (i != 0) {
                        scriptable2.put(i8 + 1, scriptable2, subString.toString());
                    }
                } else if (i != 0) {
                    scriptable2.put(i8 + 1, scriptable2, Undefined.instance);
                }
                i8++;
                nativeRegExp = this;
            }
            regExpImpl.lastParen = subString;
        }
        if (i != 0) {
            scriptable2.put("index", scriptable2, Integer.valueOf(rEGlobalData.skipped + i3));
            scriptable2.put("input", scriptable2, str);
        }
        if (regExpImpl.lastMatch == null) {
            regExpImpl.lastMatch = new SubString();
            regExpImpl.leftContext = new SubString();
            regExpImpl.rightContext = new SubString();
        }
        SubString subString2 = regExpImpl.lastMatch;
        subString2.str = str;
        subString2.index = i6;
        subString2.length = i5;
        regExpImpl.leftContext.str = str;
        int languageVersion = context2.getLanguageVersion();
        SubString subString3 = regExpImpl.leftContext;
        if (languageVersion == 120) {
            subString3.index = i3;
            subString3.length = rEGlobalData.skipped;
        } else {
            subString3.index = 0;
            subString3.length = i3 + rEGlobalData.skipped;
        }
        SubString subString4 = regExpImpl.rightContext;
        subString4.str = str;
        subString4.index = i4;
        subString4.length = length - i4;
        return newArray;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        int i;
        str.getClass();
        i = 6;
        int i2 = 7;
        switch (str) {
            case "dotAll":
                i = 7;
                break;
            case "global":
                i = 4;
                break;
            case "multiline":
                break;
            case "source":
                i = 2;
                break;
            case "sticky":
                i = 8;
                break;
            case "flags":
                i = 3;
                break;
            case "ignoreCase":
                i = 5;
                break;
            case "lastIndex":
                i = 1;
                break;
            default:
                i = 0;
                break;
        }
        if (i == 0) {
            return super.findInstanceIdInfo(str);
        }
        switch (i) {
            case 1:
                i2 = this.lastIndexAttr;
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                break;
            default:
                Node$$ExternalSyntheticBUOutline0.m();
                return 0;
        }
        return IdScriptableObject.instanceIdInfo(i2, i);
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(String str) {
        str.getClass();
        switch (str) {
            case "toSource":
                return 3;
            case "toString":
                return 2;
            case "prefix":
                return 6;
            case "exec":
                return 4;
            case "test":
                return 5;
            case "compile":
                return 1;
            default:
                return 0;
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "RegExp";
    }

    public int getFlags() {
        return this.re.flags;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        switch (i) {
            case 1:
                return "lastIndex";
            case 2:
                return "source";
            case 3:
                return "flags";
            case 4:
                return "global";
            case 5:
                return "ignoreCase";
            case 6:
                return "multiline";
            case 7:
                return "dotAll";
            case 8:
                return "sticky";
            default:
                return super.getInstanceIdName(i);
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        switch (i) {
            case 1:
                return this.lastIndex;
            case 2:
                return new String(this.re.source);
            case 3:
                StringBuilder sb = new StringBuilder();
                appendFlags(sb);
                return sb.toString();
            case 4:
                return ScriptRuntime.wrapBoolean((this.re.flags & 1) != 0);
            case 5:
                return ScriptRuntime.wrapBoolean((this.re.flags & 2) != 0);
            case 6:
                return ScriptRuntime.wrapBoolean((this.re.flags & 4) != 0);
            case 7:
                return ScriptRuntime.wrapBoolean((this.re.flags & 8) != 0);
            case 8:
                return ScriptRuntime.wrapBoolean((this.re.flags & 16) != 0);
            default:
                return super.getInstanceIdValue(i);
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 8;
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public String getTypeOf() {
        return "object";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        String str;
        String str2;
        if (i == 7) {
            initPrototypeMethod(REGEXP_TAG, i, SymbolKey.MATCH, "[Symbol.match]", 1);
        }
        if (i == 8) {
            initPrototypeMethod(REGEXP_TAG, i, SymbolKey.MATCH_ALL, "[Symbol.matchAll]", 1);
            return;
        }
        if (i == 9) {
            initPrototypeMethod(REGEXP_TAG, i, SymbolKey.SEARCH, "[Symbol.search]", 1);
            return;
        }
        int i2 = 0;
        int i3 = 1;
        switch (i) {
            case 1:
                i2 = 2;
                str = "compile";
                String str3 = str;
                i3 = i2;
                str2 = str3;
                initPrototypeMethod(REGEXP_TAG, i, str2, i3);
                break;
            case 2:
                str = "toString";
                String str32 = str;
                i3 = i2;
                str2 = str32;
                initPrototypeMethod(REGEXP_TAG, i, str2, i3);
                break;
            case 3:
                str = "toSource";
                String str322 = str;
                i3 = i2;
                str2 = str322;
                initPrototypeMethod(REGEXP_TAG, i, str2, i3);
                break;
            case 4:
                str2 = "exec";
                initPrototypeMethod(REGEXP_TAG, i, str2, i3);
                break;
            case 5:
                str2 = "test";
                initPrototypeMethod(REGEXP_TAG, i, str2, i3);
                break;
            case 6:
                str2 = "prefix";
                initPrototypeMethod(REGEXP_TAG, i, str2, i3);
                break;
            default:
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(String.valueOf(i));
                break;
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdAttributes(int i, int i2) {
        if (i == 1) {
            this.lastIndexAttr = i2;
        } else {
            super.setInstanceIdAttributes(i, i2);
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdValue(int i, Object obj) {
        switch (i) {
            case 1:
                setLastIndex(obj);
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                break;
            default:
                super.setInstanceIdValue(i, obj);
                break;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('/');
        char[] cArr = this.re.source;
        if (cArr.length != 0) {
            sb.append(cArr);
        } else {
            sb.append("(?:)");
        }
        sb.append('/');
        appendFlags(sb);
        return sb.toString();
    }

    private static NativeRegExp realThis(Scriptable scriptable, String str) {
        return (NativeRegExp) IdScriptableObject.ensureType(scriptable, NativeRegExp.class, str);
    }

    private static void pushBackTrackState(REGlobalData rEGlobalData, byte b, int i, int i2, int i3, int i4) {
        rEGlobalData.backTrackStackTop = new REBackTrackData(rEGlobalData, b, i, i2, i3, i4);
    }

    public NativeRegExp() {
        this.lastIndex = ScriptRuntime.zeroObj;
        this.lastIndexAttr = 6;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(Symbol symbol) {
        if (SymbolKey.MATCH.equals(symbol)) {
            return 7;
        }
        if (SymbolKey.MATCH_ALL.equals(symbol)) {
            return 8;
        }
        return SymbolKey.SEARCH.equals(symbol) ? 9 : 0;
    }
}
