package org.mozilla.classfile;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Okio;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ClassFileWriter {
    public static final boolean GenerateStackMap;
    public static final int MajorVersion;
    public static final int MinorVersion;
    public final String generatedClassName;
    public ArrayList itsBootstrapMethods;
    public int itsCodeBufferTop;
    public final ConstantPool itsConstantPool;
    public ClassFileMethod itsCurrentMethod;
    public ExceptionTableEntry[] itsExceptionTable;
    public int itsExceptionTableTop;
    public long[] itsFixupTable;
    public int itsFixupTableTop;
    public final int itsFlags;
    public int[] itsLabelTable;
    public int itsLabelTableTop;
    public int[] itsLineNumberTable;
    public int itsLineNumberTableTop;
    public int itsMaxLocals;
    public int itsMaxStack;
    public final int itsSourceFileNameIndex;
    public int itsStackTop;
    public final int itsSuperClassIndex;
    public final int itsThisClassIndex;
    public ArrayList itsVarDescriptors;
    public int[] itsSuperBlockStarts = null;
    public int itsSuperBlockStartsTop = 0;
    public HashMap itsJumpFroms = null;
    public byte[] itsCodeBuffer = new byte[256];
    public final ArrayList itsMethods = new ArrayList();
    public final ArrayList itsFields = new ArrayList();
    public final ArrayList itsInterfaces = new ArrayList();
    public int itsBootstrapMethodsLength = 0;
    public char[] tmpCharBuffer = new char[64];

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class BootstrapEntry {
        public final byte[] code;

        public BootstrapEntry(ClassFileWriter classFileWriter, MHandle mHandle, Object... objArr) {
            int addConstant;
            byte[] bArr = new byte[(objArr.length * 2) + 4];
            this.code = bArr;
            ClassFileWriter.putInt16(bArr, classFileWriter.itsConstantPool.addMethodHandle(mHandle), 0);
            ClassFileWriter.putInt16(bArr, objArr.length, 2);
            for (int i = 0; i < objArr.length; i++) {
                ConstantPool constantPool = classFileWriter.itsConstantPool;
                Object obj = objArr[i];
                constantPool.getClass();
                if ((obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short)) {
                    addConstant = constantPool.addConstant(((Number) obj).intValue());
                } else if (obj instanceof Character) {
                    addConstant = constantPool.addConstant((int) ((Character) obj).charValue());
                } else if (obj instanceof Boolean) {
                    addConstant = constantPool.addConstant(((Boolean) obj).booleanValue() ? 1 : 0);
                } else if (obj instanceof Float) {
                    float floatValue = ((Float) obj).floatValue();
                    constantPool.ensure(5);
                    byte[] bArr2 = constantPool.itsPool;
                    int i2 = constantPool.itsTop;
                    constantPool.itsTop = i2 + 1;
                    bArr2[i2] = 4;
                    constantPool.itsTop = ClassFileWriter.putInt32(constantPool.itsPool, Float.floatToIntBits(floatValue), constantPool.itsTop);
                    constantPool.itsPoolTypes.put(Integer.valueOf(constantPool.itsTopIndex), (byte) 4);
                    int i3 = constantPool.itsTopIndex;
                    constantPool.itsTopIndex = i3 + 1;
                    addConstant = i3;
                } else if (obj instanceof Long) {
                    addConstant = constantPool.addConstant(((Long) obj).longValue());
                } else if (obj instanceof Double) {
                    addConstant = constantPool.addConstant(((Double) obj).doubleValue());
                } else if (obj instanceof String) {
                    addConstant = constantPool.addConstant((String) obj);
                } else {
                    if (!(obj instanceof MHandle)) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("value ".concat(String.valueOf(obj)));
                        throw null;
                    }
                    addConstant = constantPool.addMethodHandle((MHandle) obj);
                }
                ClassFileWriter.putInt16(this.code, addConstant, (i * 2) + 4);
            }
        }

        public final boolean equals(Object obj) {
            if (obj instanceof BootstrapEntry) {
                return Arrays.equals(this.code, ((BootstrapEntry) obj).code);
            }
            return false;
        }

        public final int hashCode() {
            return ~Arrays.hashCode(this.code);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ClassFileFormatException extends RuntimeException {
        private static final long serialVersionUID = 1263998431033790599L;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MHandle {
        public final boolean equals(Object obj) {
            return obj == this || (obj instanceof MHandle);
        }

        public final int hashCode() {
            return -2021123556;
        }

        public final String toString() {
            return "org.mozilla.javascript.optimizer.Bootstrapper.bootstrap(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; (6)";
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class StackMapTable {
        public SuperBlock[] superBlocks = null;
        public int[] stack = null;
        public int[] locals = null;
        public SuperBlock[] workList = null;
        public byte[] rawStackMap = null;
        public int localsTop = 0;
        public int stackTop = 0;
        public int workListTop = 0;
        public int rawStackMapTop = 0;
        public boolean wide = false;

        public StackMapTable() {
        }

        public final void addToWorkList(SuperBlock superBlock) {
            if (superBlock.isInQueue) {
                return;
            }
            superBlock.isInQueue = true;
            superBlock.isInitialized = true;
            int i = this.workListTop;
            SuperBlock[] superBlockArr = this.workList;
            if (i == superBlockArr.length) {
                SuperBlock[] superBlockArr2 = new SuperBlock[i * 2];
                System.arraycopy(superBlockArr, 0, superBlockArr2, 0, i);
                this.workList = superBlockArr2;
            }
            SuperBlock[] superBlockArr3 = this.workList;
            int i2 = this.workListTop;
            this.workListTop = i2 + 1;
            superBlockArr3[i2] = superBlock;
        }

        public final void executeALoad(int i) {
            int i2 = i < this.localsTop ? this.locals[i] : 0;
            int i3 = i2 & 255;
            if (i3 == 7 || i3 == 6 || i3 == 8 || i3 == 5) {
                push(i2);
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2(Modifier.CC.m(i2, i, "bad local variable type: ", " at index: "));
            }
        }

        public final void executeStore(int i, int i2) {
            pop();
            int i3 = this.localsTop;
            if (i >= i3) {
                int i4 = i + 1;
                int[] iArr = new int[i4];
                System.arraycopy(this.locals, 0, iArr, 0, i3);
                this.locals = iArr;
                this.localsTop = i4;
            }
            this.locals[i] = i2;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x04a7, code lost:
        
            if (r2 != false) goto L201;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x04aa, code lost:
        
            if (r2 != false) goto L198;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:27:0x048b  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x04ac  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x04ae  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x04b6  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x04c2  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x052e  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0507 A[FALL_THROUGH] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void executeWorkList() {
            /*
                Method dump skipped, instructions count: 2346
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mozilla.classfile.ClassFileWriter.StackMapTable.executeWorkList():void");
        }

        public final void flowInto(SuperBlock superBlock) {
            if (superBlock.merge(this.locals, this.localsTop, this.stack, this.stackTop, ClassFileWriter.this.itsConstantPool)) {
                addToWorkList(superBlock);
            }
        }

        public final int getOperand(int i, int i2) {
            if (i2 > 4) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("bad operand size");
                return 0;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                i3 = (i3 << 8) | (ClassFileWriter.this.itsCodeBuffer[i + i4] & 255);
            }
            return i3;
        }

        public final SuperBlock getSuperBlockFromOffset(int i) {
            ClassFileWriter classFileWriter = ClassFileWriter.this;
            int binarySearch = Arrays.binarySearch(classFileWriter.itsSuperBlockStarts, 0, classFileWriter.itsSuperBlockStartsTop, i);
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            if (binarySearch >= classFileWriter.itsSuperBlockStartsTop) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, "bad offset: "));
                return null;
            }
            SuperBlock superBlock = this.superBlocks[binarySearch];
            if (i >= superBlock.start && i < superBlock.end) {
                return superBlock;
            }
            Kit.codeBug();
            return superBlock;
        }

        public final int pop() {
            int[] iArr = this.stack;
            int i = this.stackTop - 1;
            this.stackTop = i;
            return iArr[i];
        }

        public final long pop2() {
            long pop = pop();
            return Okio.isTwoWords((int) pop) ? pop : (pop << 32) | (pop() & 16777215);
        }

        public final void push(int i) {
            int i2 = this.stackTop;
            if (i2 == this.stack.length) {
                int[] iArr = new int[Math.max(i2 * 2, 4)];
                System.arraycopy(this.stack, 0, iArr, 0, this.stackTop);
                this.stack = iArr;
            }
            int[] iArr2 = this.stack;
            int i3 = this.stackTop;
            this.stackTop = i3 + 1;
            iArr2[i3] = i;
        }

        public final void push2(long j) {
            push((int) (j & 16777215));
            long j2 = j >>> 32;
            if (j2 != 0) {
                push((int) (j2 & 16777215));
            }
        }

        public final void writeFullFrame(int[] iArr, int[] iArr2, int i) {
            byte[] bArr = this.rawStackMap;
            int i2 = this.rawStackMapTop;
            int i3 = i2 + 1;
            this.rawStackMapTop = i3;
            bArr[i2] = -1;
            int putInt16 = ClassFileWriter.putInt16(bArr, i, i3);
            this.rawStackMapTop = putInt16;
            this.rawStackMapTop = ClassFileWriter.putInt16(this.rawStackMap, iArr.length, putInt16);
            writeTypes(iArr, 0);
            this.rawStackMapTop = ClassFileWriter.putInt16(this.rawStackMap, iArr2.length, this.rawStackMapTop);
            writeTypes(iArr2, 0);
        }

        public final int writeType(int i) {
            int i2 = i & 255;
            byte[] bArr = this.rawStackMap;
            int i3 = this.rawStackMapTop;
            int i4 = i3 + 1;
            this.rawStackMapTop = i4;
            bArr[i3] = (byte) i2;
            if (i2 == 7 || i2 == 8) {
                this.rawStackMapTop = ClassFileWriter.putInt16(bArr, i >>> 8, i4);
            }
            return this.rawStackMapTop;
        }

        public final int writeTypes(int[] iArr, int i) {
            while (i < iArr.length) {
                this.rawStackMapTop = writeType(iArr[i]);
                i++;
            }
            return this.rawStackMapTop;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a1  */
    /* renamed from: -$$Nest$mcreateInitialLocals, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] m742$$Nest$mcreateInitialLocals(org.mozilla.classfile.ClassFileWriter r10) {
        /*
            int r0 = r10.itsMaxLocals
            int[] r0 = new int[r0]
            org.mozilla.classfile.ClassFileMethod r1 = r10.itsCurrentMethod
            short r2 = r1.itsFlags
            r2 = r2 & 8
            r3 = 1
            r4 = 0
            if (r2 != 0) goto L26
            java.lang.String r2 = "<init>"
            java.lang.String r1 = r1.itsName
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L1d
            r1 = 6
            r0[r4] = r1
        L1b:
            r1 = r3
            goto L27
        L1d:
            int r1 = r10.itsThisClassIndex
            int r1 = okio.Okio.OBJECT(r1)
            r0[r4] = r1
            goto L1b
        L26:
            r1 = r4
        L27:
            org.mozilla.classfile.ClassFileMethod r2 = r10.itsCurrentMethod
            java.lang.String r2 = r2.itsType
            r5 = 40
            int r5 = r2.indexOf(r5)
            r6 = 41
            int r6 = r2.indexOf(r6)
            if (r5 != 0) goto La7
            if (r6 < 0) goto La7
            int r5 = r5 + r3
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
        L41:
            if (r5 >= r6) goto La6
            char r8 = r2.charAt(r5)
            r9 = 70
            if (r8 == r9) goto L7d
            r9 = 76
            if (r8 == r9) goto L6d
            r9 = 83
            if (r8 == r9) goto L7d
            r9 = 73
            if (r8 == r9) goto L7d
            r9 = 74
            if (r8 == r9) goto L7d
            r9 = 90
            if (r8 == r9) goto L7d
            r9 = 91
            if (r8 == r9) goto L67
            switch(r8) {
                case 66: goto L7d;
                case 67: goto L7d;
                case 68: goto L7d;
                default: goto L66;
            }
        L66:
            goto L86
        L67:
            r7.append(r9)
            int r5 = r5 + 1
            goto L41
        L6d:
            r8 = 59
            int r8 = r2.indexOf(r8, r5)
            int r8 = r8 + r3
            java.lang.String r5 = r2.substring(r5, r8)
            r7.append(r5)
            r5 = r8
            goto L86
        L7d:
            char r8 = r2.charAt(r5)
            r7.append(r8)
            int r5 = r5 + 1
        L86:
            java.lang.String r8 = r7.toString()
            java.lang.String r8 = descriptorToInternalName(r8)
            org.mozilla.classfile.ConstantPool r9 = r10.itsConstantPool
            int r8 = okio.Okio.fromType(r8, r9)
            int r9 = r1 + 1
            r0[r1] = r8
            boolean r8 = okio.Okio.isTwoWords(r8)
            if (r8 == 0) goto La1
            int r1 = r1 + 2
            goto La2
        La1:
            r1 = r9
        La2:
            r7.setLength(r4)
            goto L41
        La6:
            return r0
        La7:
            java.lang.String r10 = "bad method type"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1(r10)
            r10 = 0
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.classfile.ClassFileWriter.m742$$Nest$mcreateInitialLocals(org.mozilla.classfile.ClassFileWriter):int[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0083  */
    static {
        /*
            r0 = 1
            r1 = 50
            r2 = 0
            r3 = 48
            java.lang.Class<org.mozilla.classfile.ClassFileWriter> r4 = org.mozilla.classfile.ClassFileWriter.class
            java.lang.String r5 = "ClassFileWriter.class"
            java.io.InputStream r4 = r4.getResourceAsStream(r5)     // Catch: java.lang.Throwable -> L70 java.io.IOException -> L73
            if (r4 != 0) goto L16
            java.lang.String r4 = "org/mozilla/classfile/ClassFileWriter.class"
            java.io.InputStream r4 = java.lang.ClassLoader.getSystemResourceAsStream(r4)     // Catch: java.lang.Throwable -> L70 java.io.IOException -> L73
        L16:
            if (r4 == 0) goto L4a
            r5 = 8
            byte[] r6 = new byte[r5]     // Catch: java.lang.Throwable -> L2f
            r7 = r2
        L1d:
            if (r7 >= r5) goto L32
            int r8 = 8 - r7
            int r8 = r4.read(r6, r7, r8)     // Catch: java.lang.Throwable -> L2f
            if (r8 < 0) goto L29
            int r7 = r7 + r8
            goto L1d
        L29:
            java.io.IOException r5 = new java.io.IOException     // Catch: java.lang.Throwable -> L2f
            r5.<init>()     // Catch: java.lang.Throwable -> L2f
            throw r5     // Catch: java.lang.Throwable -> L2f
        L2f:
            r5 = move-exception
            r7 = r2
            goto L65
        L32:
            r7 = 4
            r7 = r6[r7]     // Catch: java.lang.Throwable -> L2f
            int r7 = r7 << r5
            r8 = 5
            r8 = r6[r8]     // Catch: java.lang.Throwable -> L2f
            r8 = r8 & 255(0xff, float:3.57E-43)
            r7 = r7 | r8
            r8 = 6
            r8 = r6[r8]     // Catch: java.lang.Throwable -> L48
            int r5 = r8 << 8
            r8 = 7
            r3 = r6[r8]     // Catch: java.lang.Throwable -> L48
            r3 = r3 & 255(0xff, float:3.57E-43)
            r3 = r3 | r5
            goto L52
        L48:
            r5 = move-exception
            goto L65
        L4a:
            java.io.PrintStream r5 = java.lang.System.err     // Catch: java.lang.Throwable -> L2f
            java.lang.String r6 = "Warning: Unable to read ClassFileWriter.class, using default bytecode version"
            r5.println(r6)     // Catch: java.lang.Throwable -> L2f
            r7 = r2
        L52:
            if (r4 == 0) goto L5a
            r4.close()     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L74
            goto L5a
        L58:
            r4 = move-exception
            goto L7c
        L5a:
            org.mozilla.classfile.ClassFileWriter.MinorVersion = r7
            org.mozilla.classfile.ClassFileWriter.MajorVersion = r3
            if (r3 < r1) goto L61
            goto L62
        L61:
            r0 = r2
        L62:
            org.mozilla.classfile.ClassFileWriter.GenerateStackMap = r0
            return
        L65:
            if (r4 == 0) goto L6f
            r4.close()     // Catch: java.lang.Throwable -> L6b
            goto L6f
        L6b:
            r4 = move-exception
            r5.addSuppressed(r4)     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L74
        L6f:
            throw r5     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L74
        L70:
            r4 = move-exception
            r7 = r2
            goto L7c
        L73:
            r7 = r2
        L74:
            java.lang.AssertionError r4 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> L58
            java.lang.String r5 = "Can't read ClassFileWriter.class to get bytecode version"
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L58
            throw r4     // Catch: java.lang.Throwable -> L58
        L7c:
            org.mozilla.classfile.ClassFileWriter.MinorVersion = r7
            org.mozilla.classfile.ClassFileWriter.MajorVersion = r3
            if (r3 < r1) goto L83
            goto L84
        L83:
            r0 = r2
        L84:
            org.mozilla.classfile.ClassFileWriter.GenerateStackMap = r0
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.classfile.ClassFileWriter.<clinit>():void");
    }

    public ClassFileWriter(String str, String str2, String str3) {
        this.generatedClassName = str;
        ConstantPool constantPool = new ConstantPool(this);
        this.itsConstantPool = constantPool;
        this.itsThisClassIndex = constantPool.addClass(str);
        this.itsSuperClassIndex = constantPool.addClass(str2);
        if (str3 != null) {
            this.itsSourceFileNameIndex = constantPool.addUtf8(str3);
        }
        this.itsFlags = 33;
    }

    public static void badStack(int i) {
        throw new IllegalStateException(i < 0 ? Modifier.CC.m(i, "Stack underflow: ") : Modifier.CC.m(i, "Too big stack: "));
    }

    public static String descriptorToInternalName(String str) {
        char charAt = str.charAt(0);
        if (charAt == 'F') {
            return str;
        }
        if (charAt == 'L') {
            return Owner.CC.m(1, 1, str);
        }
        if (charAt == 'S' || charAt == 'V' || charAt == 'I' || charAt == 'J' || charAt == 'Z' || charAt == '[') {
            return str;
        }
        switch (charAt) {
            case Token.ENUM_INIT_VALUES_IN_ORDER /* 66 */:
            case 'C':
            case Token.ENUM_ID /* 68 */:
                return str;
            default:
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("bad descriptor:".concat(str));
                return null;
        }
    }

    public static int putInt16(byte[] bArr, int i, int i2) {
        bArr[i2] = (byte) (i >>> 8);
        bArr[i2 + 1] = (byte) i;
        return i2 + 2;
    }

    public static int putInt32(byte[] bArr, int i, int i2) {
        bArr[i2] = (byte) (i >>> 24);
        bArr[i2 + 1] = (byte) (i >>> 16);
        bArr[i2 + 2] = (byte) (i >>> 8);
        bArr[i2 + 3] = (byte) i;
        return i2 + 4;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:68:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int sizeOfParameters(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.classfile.ClassFileWriter.sizeOfParameters(java.lang.String):int");
    }

    public static int stackChange(int i) {
        if (i == 254 || i == 255) {
            return 0;
        }
        switch (i) {
            case 0:
            case Token.NULL /* 47 */:
            case Token.FALSE /* 49 */:
            case Token.RC /* 95 */:
            case 116:
            case Token.OR /* 117 */:
            case Token.AND /* 118 */:
            case Token.INC /* 119 */:
            case Token.FOR /* 132 */:
            case 134:
            case 138:
            case Token.VOID /* 139 */:
            case Token.BLOCK /* 143 */:
            case Token.TARGET /* 145 */:
            case Token.LOOP /* 146 */:
            case Token.EXPR_VOID /* 147 */:
            case Token.LET /* 167 */:
            case Token.SETCONST /* 169 */:
            case Token.METHOD /* 177 */:
            case Token.ARROW /* 178 */:
            case Token.YIELD_STAR /* 179 */:
            case Token.DOTDOTDOT /* 184 */:
            case Token.QUESTION_DOT /* 186 */:
            case TsExtractor.TS_PACKET_SIZE /* 188 */:
            case PsExtractor.PRIVATE_STREAM_1 /* 189 */:
            case 190:
            case PsExtractor.AUDIO_STREAM /* 192 */:
            case 193:
            case 196:
            case 200:
            case 202:
                return 0;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case 12:
            case 13:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 23:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 34:
            case 35:
            case 36:
            case Token.SETPROP /* 37 */:
            case 42:
            case Token.CALL /* 43 */:
            case Token.NAME /* 44 */:
            case Token.NUMBER /* 45 */:
            case 89:
            case Token.TRY /* 90 */:
            case Token.SEMI /* 91 */:
            case Token.BREAK /* 133 */:
            case 135:
            case 140:
            case Token.EMPTY /* 141 */:
            case Token.CONST /* 168 */:
            case Token.LAST_TOKEN /* 187 */:
            case 197:
            case 201:
                return 1;
            case 9:
            case 10:
            case 14:
            case 15:
            case 20:
            case 22:
            case 24:
            case 30:
            case 31:
            case 32:
            case 33:
            case 38:
            case Token.GETELEM /* 39 */:
            case Token.GETELEM_SUPER /* 40 */:
            case Token.SETELEM /* 41 */:
            case Token.LB /* 92 */:
            case Token.RB /* 93 */:
            case Token.LC /* 94 */:
                return 2;
            case Token.STRING /* 46 */:
            case Token.THIS /* 48 */:
            case 50:
            case Token.SHEQ /* 51 */:
            case Token.SHNE /* 52 */:
            case Token.REGEXP /* 53 */:
            case Token.BINDNAME /* 54 */:
            case Token.RETHROW /* 56 */:
            case Token.INSTANCEOF /* 58 */:
            case Token.LOCAL_LOAD /* 59 */:
            case Token.GETVAR /* 60 */:
            case Token.SETVAR /* 61 */:
            case Token.CATCH_SCOPE /* 62 */:
            case 67:
            case Token.ENUM_ID /* 68 */:
            case Token.THISFN /* 69 */:
            case Token.RETURN_RESULT /* 70 */:
            case Token.DEL_REF /* 75 */:
            case Token.REF_CALL /* 76 */:
            case Token.REF_SPECIAL /* 77 */:
            case Token.YIELD /* 78 */:
            case Token.REF_NAME /* 87 */:
            case Token.LP /* 96 */:
            case Token.COMMA /* 98 */:
            case 100:
            case Token.ASSIGN_BITXOR /* 102 */:
            case Token.ASSIGN_LOGICAL_AND /* 104 */:
            case Token.ASSIGN_RSH /* 106 */:
            case Token.ASSIGN_ADD /* 108 */:
            case 110:
            case Token.ASSIGN_MOD /* 112 */:
            case 114:
            case 120:
            case Token.DOT /* 121 */:
            case Token.FUNCTION /* 122 */:
            case Token.EXPORT /* 123 */:
            case Token.IMPORT /* 124 */:
            case Token.IF /* 125 */:
            case Token.ELSE /* 126 */:
            case 128:
            case 130:
            case Token.WITH /* 136 */:
            case Token.CATCH /* 137 */:
            case Token.COMPUTED_PROPERTY /* 142 */:
            case Token.LABEL /* 144 */:
            case Token.JSR /* 149 */:
            case 150:
            case Token.SETPROP_OP /* 153 */:
            case Token.SETELEM_OP /* 154 */:
            case Token.LOCAL_BLOCK /* 155 */:
            case Token.SET_REF_OP /* 156 */:
            case Token.DOTDOT /* 157 */:
            case Token.COLONCOLON /* 158 */:
            case 170:
            case Token.ARRAYCOMP /* 171 */:
            case 172:
            case Token.DEBUGGER /* 174 */:
            case Token.GENEXPR /* 176 */:
            case 180:
            case Token.TEMPLATE_CHARS /* 181 */:
            case Token.TEMPLATE_LITERAL_SUBST /* 182 */:
            case Token.TAGGED_TEMPLATE_LITERAL /* 183 */:
            case Token.NULLISH_COALESCING /* 185 */:
            case 191:
            case 194:
            case 195:
            case 198:
            case 199:
                return -1;
            case Token.THROW /* 55 */:
            case Token.IN /* 57 */:
            case Token.ENUM_INIT_KEYS /* 63 */:
            case 64:
            case Token.ENUM_INIT_ARRAY /* 65 */:
            case Token.ENUM_INIT_VALUES_IN_ORDER /* 66 */:
            case 71:
            case Token.OBJECTLIT /* 72 */:
            case Token.GET_REF /* 73 */:
            case Token.SET_REF /* 74 */:
            case Token.REF_NS_NAME /* 88 */:
            case Token.RP /* 97 */:
            case 99:
            case Token.ASSIGN_LOGICAL_OR /* 101 */:
            case Token.ASSIGN_BITAND /* 103 */:
            case Token.ASSIGN_LSH /* 105 */:
            case Token.ASSIGN_URSH /* 107 */:
            case Token.ASSIGN_SUB /* 109 */:
            case Token.ASSIGN_DIV /* 111 */:
            case Token.ASSIGN_EXP /* 113 */:
            case Token.HOOK /* 115 */:
            case Token.SWITCH /* 127 */:
            case 129:
            case Token.DO /* 131 */:
            case Token.XML /* 159 */:
            case 160:
            case Token.XMLATTR /* 161 */:
            case Token.XMLEND /* 162 */:
            case Token.TO_OBJECT /* 163 */:
            case Token.TO_DOUBLE /* 164 */:
            case Token.GET /* 165 */:
            case Token.SET /* 166 */:
            case Token.WITHEXPR /* 173 */:
            case Token.COMMENT /* 175 */:
                return -2;
            case Token.SUPER /* 79 */:
            case Token.EXP /* 81 */:
            case Token.ESCXMLATTR /* 83 */:
            case Token.ESCXMLTEXT /* 84 */:
            case Token.REF_MEMBER /* 85 */:
            case Token.REF_NS_MEMBER /* 86 */:
            case Token.EXPR_RESULT /* 148 */:
            case Token.TYPEOFNAME /* 151 */:
            case Token.USE_STACK /* 152 */:
                return -3;
            case Token.STRICT_SETNAME /* 80 */:
            case Token.DEFAULTNAMESPACE /* 82 */:
                return -4;
            default:
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, "Bad opcode: "));
                return 0;
        }
    }

    public final int acquireLabel() {
        int i = this.itsLabelTableTop;
        int[] iArr = this.itsLabelTable;
        if (iArr == null || i == iArr.length) {
            if (iArr == null) {
                this.itsLabelTable = new int[32];
            } else {
                int[] iArr2 = new int[iArr.length * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                this.itsLabelTable = iArr2;
            }
        }
        this.itsLabelTableTop = i + 1;
        this.itsLabelTable[i] = -1;
        return Integer.MIN_VALUE | i;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void add(int r4) {
        /*
            r3 = this;
            r0 = 254(0xfe, float:3.56E-43)
            if (r4 == r0) goto L1e
            r0 = 255(0xff, float:3.57E-43)
            if (r4 == r0) goto L1e
            switch(r4) {
                case 0: goto L1e;
                case 1: goto L1e;
                case 2: goto L1e;
                case 3: goto L1e;
                case 4: goto L1e;
                case 5: goto L1e;
                case 6: goto L1e;
                case 7: goto L1e;
                case 8: goto L1e;
                case 9: goto L1e;
                case 10: goto L1e;
                case 11: goto L1e;
                case 12: goto L1e;
                case 13: goto L1e;
                case 14: goto L1e;
                case 15: goto L1e;
                case 16: goto L18;
                case 17: goto L18;
                case 18: goto L18;
                case 19: goto L18;
                case 20: goto L18;
                case 21: goto L18;
                case 22: goto L18;
                case 23: goto L18;
                case 24: goto L18;
                case 25: goto L18;
                case 26: goto L1e;
                case 27: goto L1e;
                case 28: goto L1e;
                case 29: goto L1e;
                case 30: goto L1e;
                case 31: goto L1e;
                case 32: goto L1e;
                case 33: goto L1e;
                case 34: goto L1e;
                case 35: goto L1e;
                case 36: goto L1e;
                case 37: goto L1e;
                case 38: goto L1e;
                case 39: goto L1e;
                case 40: goto L1e;
                case 41: goto L1e;
                case 42: goto L1e;
                case 43: goto L1e;
                case 44: goto L1e;
                case 45: goto L1e;
                case 46: goto L1e;
                case 47: goto L1e;
                case 48: goto L1e;
                case 49: goto L1e;
                case 50: goto L1e;
                case 51: goto L1e;
                case 52: goto L1e;
                case 53: goto L1e;
                case 54: goto L18;
                case 55: goto L18;
                case 56: goto L18;
                case 57: goto L18;
                case 58: goto L18;
                case 59: goto L1e;
                case 60: goto L1e;
                case 61: goto L1e;
                case 62: goto L1e;
                case 63: goto L1e;
                case 64: goto L1e;
                case 65: goto L1e;
                case 66: goto L1e;
                case 67: goto L1e;
                case 68: goto L1e;
                case 69: goto L1e;
                case 70: goto L1e;
                case 71: goto L1e;
                case 72: goto L1e;
                case 73: goto L1e;
                case 74: goto L1e;
                case 75: goto L1e;
                case 76: goto L1e;
                case 77: goto L1e;
                case 78: goto L1e;
                case 79: goto L1e;
                case 80: goto L1e;
                case 81: goto L1e;
                case 82: goto L1e;
                case 83: goto L1e;
                case 84: goto L1e;
                case 85: goto L1e;
                case 86: goto L1e;
                case 87: goto L1e;
                case 88: goto L1e;
                case 89: goto L1e;
                case 90: goto L1e;
                case 91: goto L1e;
                case 92: goto L1e;
                case 93: goto L1e;
                case 94: goto L1e;
                case 95: goto L1e;
                case 96: goto L1e;
                case 97: goto L1e;
                case 98: goto L1e;
                case 99: goto L1e;
                case 100: goto L1e;
                case 101: goto L1e;
                case 102: goto L1e;
                case 103: goto L1e;
                case 104: goto L1e;
                case 105: goto L1e;
                case 106: goto L1e;
                case 107: goto L1e;
                case 108: goto L1e;
                case 109: goto L1e;
                case 110: goto L1e;
                case 111: goto L1e;
                case 112: goto L1e;
                case 113: goto L1e;
                case 114: goto L1e;
                case 115: goto L1e;
                case 116: goto L1e;
                case 117: goto L1e;
                case 118: goto L1e;
                case 119: goto L1e;
                case 120: goto L1e;
                case 121: goto L1e;
                case 122: goto L1e;
                case 123: goto L1e;
                case 124: goto L1e;
                case 125: goto L1e;
                case 126: goto L1e;
                case 127: goto L1e;
                case 128: goto L1e;
                case 129: goto L1e;
                case 130: goto L1e;
                case 131: goto L1e;
                case 132: goto L18;
                case 133: goto L1e;
                case 134: goto L1e;
                case 135: goto L1e;
                case 136: goto L1e;
                case 137: goto L1e;
                case 138: goto L1e;
                case 139: goto L1e;
                case 140: goto L1e;
                case 141: goto L1e;
                case 142: goto L1e;
                case 143: goto L1e;
                case 144: goto L1e;
                case 145: goto L1e;
                case 146: goto L1e;
                case 147: goto L1e;
                case 148: goto L1e;
                case 149: goto L1e;
                case 150: goto L1e;
                case 151: goto L1e;
                case 152: goto L1e;
                case 153: goto L18;
                case 154: goto L18;
                case 155: goto L18;
                case 156: goto L18;
                case 157: goto L18;
                case 158: goto L18;
                case 159: goto L18;
                case 160: goto L18;
                case 161: goto L18;
                case 162: goto L18;
                case 163: goto L18;
                case 164: goto L18;
                case 165: goto L18;
                case 166: goto L18;
                case 167: goto L18;
                case 168: goto L18;
                case 169: goto L18;
                case 170: goto L18;
                case 171: goto L18;
                case 172: goto L1e;
                case 173: goto L1e;
                case 174: goto L1e;
                case 175: goto L1e;
                case 176: goto L1e;
                case 177: goto L1e;
                case 178: goto L18;
                case 179: goto L18;
                case 180: goto L18;
                case 181: goto L18;
                case 182: goto L18;
                case 183: goto L18;
                case 184: goto L18;
                case 185: goto L18;
                default: goto Lb;
            }
        Lb:
            switch(r4) {
                case 187: goto L18;
                case 188: goto L18;
                case 189: goto L18;
                case 190: goto L1e;
                case 191: goto L1e;
                case 192: goto L18;
                case 193: goto L18;
                case 194: goto L1e;
                case 195: goto L1e;
                case 196: goto L1e;
                case 197: goto L18;
                case 198: goto L18;
                case 199: goto L18;
                case 200: goto L18;
                case 201: goto L18;
                case 202: goto L1e;
                default: goto Le;
            }
        Le:
            java.lang.String r3 = "Bad opcode: "
            java.lang.String r3 = androidx.compose.ui.Modifier.CC.m(r4, r3)
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1(r3)
            return
        L18:
            java.lang.String r3 = "Unexpected operands"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1(r3)
            return
        L1e:
            int r0 = r3.itsStackTop
            int r1 = stackChange(r4)
            int r1 = r1 + r0
            if (r1 < 0) goto L41
            r0 = 32767(0x7fff, float:4.5916E-41)
            if (r0 < r1) goto L41
            r3.addToCodeBuffer(r4)
            short r0 = (short) r1
            r3.itsStackTop = r0
            int r2 = r3.itsMaxStack
            if (r1 <= r2) goto L37
            r3.itsMaxStack = r0
        L37:
            r0 = 191(0xbf, float:2.68E-43)
            if (r4 != r0) goto L40
            int r4 = r3.itsCodeBufferTop
            r3.addSuperBlockStart(r4)
        L40:
            return
        L41:
            badStack(r1)
            r3 = 0
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.classfile.ClassFileWriter.add(int):void");
    }

    public final void addALoad(int i) {
        xop(42, 25, i);
    }

    public final void addAStore(int i) {
        xop(75, 58, i);
    }

    public final void addDLoad(int i) {
        xop(38, 24, i);
    }

    public final void addExceptionHandler(int i, String str, int i2, int i3) {
        if ((i & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Bad startLabel");
            return;
        }
        if ((i2 & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Bad endLabel");
            return;
        }
        if ((i3 & Integer.MIN_VALUE) != Integer.MIN_VALUE) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Bad handlerLabel");
            return;
        }
        short addClass = str == null ? (short) 0 : this.itsConstantPool.addClass(str);
        ExceptionTableEntry exceptionTableEntry = new ExceptionTableEntry();
        exceptionTableEntry.itsStartLabel = i;
        exceptionTableEntry.itsEndLabel = i2;
        exceptionTableEntry.itsHandlerLabel = i3;
        exceptionTableEntry.itsCatchType = addClass;
        int i4 = this.itsExceptionTableTop;
        if (i4 == 0) {
            this.itsExceptionTable = new ExceptionTableEntry[4];
        } else {
            ExceptionTableEntry[] exceptionTableEntryArr = this.itsExceptionTable;
            if (i4 == exceptionTableEntryArr.length) {
                ExceptionTableEntry[] exceptionTableEntryArr2 = new ExceptionTableEntry[i4 * 2];
                System.arraycopy(exceptionTableEntryArr, 0, exceptionTableEntryArr2, 0, i4);
                this.itsExceptionTable = exceptionTableEntryArr2;
            }
        }
        this.itsExceptionTable[i4] = exceptionTableEntry;
        this.itsExceptionTableTop = i4 + 1;
    }

    public final void addField(String str, String str2, short s) {
        ConstantPool constantPool = this.itsConstantPool;
        short addUtf8 = constantPool.addUtf8(str);
        short addUtf82 = constantPool.addUtf8(str2);
        ClassFileField classFileField = new ClassFileField();
        classFileField.itsNameIndex = addUtf8;
        classFileField.itsTypeIndex = addUtf82;
        classFileField.itsFlags = s;
        this.itsFields.add(classFileField);
    }

    public final void addILoad(int i) {
        xop(26, 21, i);
    }

    public final void addInvoke(String str, String str2, int i, String str3) {
        int sizeOfParameters = sizeOfParameters(str3);
        int i2 = sizeOfParameters >>> 16;
        int stackChange = stackChange(i) + this.itsStackTop + ((short) sizeOfParameters);
        if (stackChange < 0 || 32767 < stackChange) {
            badStack(stackChange);
            throw null;
        }
        switch (i) {
            case Token.TEMPLATE_LITERAL_SUBST /* 182 */:
            case Token.TAGGED_TEMPLATE_LITERAL /* 183 */:
            case Token.DOTDOTDOT /* 184 */:
            case Token.NULLISH_COALESCING /* 185 */:
                addToCodeBuffer(i);
                ConstantPool constantPool = this.itsConstantPool;
                if (i == 185) {
                    short addNameAndType = constantPool.addNameAndType(str2, str3);
                    short addClass = constantPool.addClass(str);
                    constantPool.ensure(5);
                    byte[] bArr = constantPool.itsPool;
                    int i3 = constantPool.itsTop;
                    int i4 = i3 + 1;
                    constantPool.itsTop = i4;
                    bArr[i3] = 11;
                    int putInt16 = putInt16(bArr, addClass, i4);
                    constantPool.itsTop = putInt16;
                    constantPool.itsTop = putInt16(constantPool.itsPool, addNameAndType, putInt16);
                    constantPool.setConstantData(constantPool.itsTopIndex, new FieldOrMethodRef(str, str2, str3));
                    constantPool.itsPoolTypes.put(Integer.valueOf(constantPool.itsTopIndex), (byte) 11);
                    int i5 = constantPool.itsTopIndex;
                    constantPool.itsTopIndex = i5 + 1;
                    addToCodeInt16((short) i5);
                    addToCodeBuffer(i2 + 1);
                    addToCodeBuffer(0);
                } else {
                    addToCodeInt16(constantPool.addMethodRef(str, str2, str3));
                }
                short s = (short) stackChange;
                this.itsStackTop = s;
                if (stackChange > this.itsMaxStack) {
                    this.itsMaxStack = s;
                    return;
                }
                return;
            default:
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("bad opcode for method reference");
                return;
        }
    }

    public final void addLineNumberEntry(short s) {
        if (this.itsCurrentMethod == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("No method to stop");
            return;
        }
        int i = this.itsLineNumberTableTop;
        if (i == 0) {
            this.itsLineNumberTable = new int[16];
        } else {
            int[] iArr = this.itsLineNumberTable;
            if (i == iArr.length) {
                int[] iArr2 = new int[i * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                this.itsLineNumberTable = iArr2;
            }
        }
        this.itsLineNumberTable[i] = (this.itsCodeBufferTop << 16) + s;
        this.itsLineNumberTableTop = i + 1;
    }

    public final void addLoadConstant(int i) {
        if (i == 0) {
            add(3);
            return;
        }
        if (i == 1) {
            add(4);
            return;
        }
        if (i == 2) {
            add(5);
            return;
        }
        if (i == 3) {
            add(6);
            return;
        }
        if (i == 4) {
            add(7);
        } else if (i != 5) {
            add(18, this.itsConstantPool.addConstant(i));
        } else {
            add(8);
        }
    }

    public final void addLoadThis() {
        add(42);
    }

    public final void addPush(String str) {
        int length = str.length();
        ConstantPool constantPool = this.itsConstantPool;
        constantPool.getClass();
        int i = 0;
        int utfEncodingLimit = ConstantPool.getUtfEncodingLimit(0, length, str);
        if (utfEncodingLimit == length) {
            add(18, constantPool.addConstant(str));
            return;
        }
        add(Token.LAST_TOKEN, "java/lang/StringBuilder");
        add(89);
        addPush(length);
        addInvoke("java/lang/StringBuilder", "<init>", Token.TAGGED_TEMPLATE_LITERAL, "(I)V");
        while (true) {
            add(89);
            add(18, constantPool.addConstant(str.substring(i, utfEncodingLimit)));
            addInvoke("java/lang/StringBuilder", "append", Token.TEMPLATE_LITERAL_SUBST, "(Ljava/lang/String;)Ljava/lang/StringBuilder;");
            add(87);
            if (utfEncodingLimit == length) {
                addInvoke("java/lang/StringBuilder", "toString", Token.TEMPLATE_LITERAL_SUBST, "()Ljava/lang/String;");
                return;
            } else {
                int i2 = utfEncodingLimit;
                utfEncodingLimit = ConstantPool.getUtfEncodingLimit(utfEncodingLimit, length, str);
                i = i2;
            }
        }
    }

    public final int addReservedCodeSpace(int i) {
        if (this.itsCurrentMethod == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("No method to add to");
            return 0;
        }
        int i2 = this.itsCodeBufferTop;
        int i3 = i + i2;
        byte[] bArr = this.itsCodeBuffer;
        if (i3 > bArr.length) {
            int length = bArr.length * 2;
            if (i3 > length) {
                length = i3;
            }
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, i2);
            this.itsCodeBuffer = bArr2;
        }
        this.itsCodeBufferTop = i3;
        return i2;
    }

    public final void addSuperBlockStart(int i) {
        if (GenerateStackMap) {
            int[] iArr = this.itsSuperBlockStarts;
            if (iArr == null) {
                this.itsSuperBlockStarts = new int[4];
            } else {
                int length = iArr.length;
                int i2 = this.itsSuperBlockStartsTop;
                if (length == i2) {
                    int[] iArr2 = new int[i2 * 2];
                    System.arraycopy(iArr, 0, iArr2, 0, i2);
                    this.itsSuperBlockStarts = iArr2;
                }
            }
            int[] iArr3 = this.itsSuperBlockStarts;
            int i3 = this.itsSuperBlockStartsTop;
            this.itsSuperBlockStartsTop = i3 + 1;
            iArr3[i3] = i;
        }
    }

    public final int addTableSwitch(int i, int i2) {
        byte[] bArr;
        if (i > i2) {
            throw new ClassFileFormatException(Modifier.CC.m(i, i2, "Bad bounds: ", " "));
        }
        int stackChange = stackChange(170) + this.itsStackTop;
        if (stackChange < 0 || 32767 < stackChange) {
            badStack(stackChange);
            throw null;
        }
        int i3 = (~this.itsCodeBufferTop) & 3;
        int addReservedCodeSpace = addReservedCodeSpace((((i2 - i) + 4) * 4) + i3 + 1);
        int i4 = addReservedCodeSpace + 1;
        this.itsCodeBuffer[addReservedCodeSpace] = -86;
        while (true) {
            bArr = this.itsCodeBuffer;
            if (i3 == 0) {
                break;
            }
            bArr[i4] = 0;
            i3--;
            i4++;
        }
        putInt32(this.itsCodeBuffer, i2, putInt32(bArr, i, i4 + 4));
        short s = (short) stackChange;
        this.itsStackTop = s;
        if (stackChange > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
        return addReservedCodeSpace;
    }

    public final void addToCodeBuffer(int i) {
        this.itsCodeBuffer[addReservedCodeSpace(1)] = (byte) i;
    }

    public final void addToCodeInt16(int i) {
        putInt16(this.itsCodeBuffer, i, addReservedCodeSpace(2));
    }

    public final void adjustStackTop() {
        int i = this.itsStackTop - 1;
        if (i < 0 || 32767 < i) {
            badStack(i);
            throw null;
        }
        short s = (short) i;
        this.itsStackTop = s;
        if (i > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
    }

    public final int getLabelPC(int i) {
        if (i >= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Bad label, no biscuit");
            return 0;
        }
        int i2 = i & Log.LOG_LEVEL_OFF;
        if (i2 < this.itsLabelTableTop) {
            return this.itsLabelTable[i2];
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Bad label");
        return 0;
    }

    public final void markLabel(int i) {
        if (i >= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Bad label, no biscuit");
            return;
        }
        int i2 = i & Log.LOG_LEVEL_OFF;
        if (i2 > this.itsLabelTableTop) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Bad label");
            return;
        }
        int[] iArr = this.itsLabelTable;
        if (iArr[i2] == -1) {
            iArr[i2] = this.itsCodeBufferTop;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Can only mark label once");
        }
    }

    public final void markTableSwitchCase(int i, int i2, int i3) {
        if (i3 < 0 || i3 > this.itsMaxStack) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i3, "Bad stack index: "));
            return;
        }
        this.itsStackTop = (short) i3;
        addSuperBlockStart(this.itsCodeBufferTop);
        this.itsJumpFroms.put(Integer.valueOf(this.itsCodeBufferTop), Integer.valueOf(i));
        setTableSwitchJump(i, i2, this.itsCodeBufferTop);
    }

    public final void markTableSwitchDefault(int i) {
        addSuperBlockStart(this.itsCodeBufferTop);
        this.itsJumpFroms.put(Integer.valueOf(this.itsCodeBufferTop), Integer.valueOf(i));
        setTableSwitchJump(i, -1, this.itsCodeBufferTop);
    }

    public final void setTableSwitchJump(int i, int i2, int i3) {
        int i4;
        if (i3 < 0 || (i4 = this.itsCodeBufferTop) < i3) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i3, "Bad jump target: "));
            return;
        }
        if (i2 < -1) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i2, "Bad case index: "));
            return;
        }
        int i5 = (~i) & 3;
        int i6 = i2 < 0 ? i + 1 + i5 : i + 1 + i5 + ((i2 + 3) * 4);
        if (i < 0 || ((i4 - 16) - i5) - 1 < i) {
            throw new IllegalArgumentException(i + " is outside a possible range of tableswitch in already generated code");
        }
        byte[] bArr = this.itsCodeBuffer;
        if ((bArr[i] & 255) != 170) {
            throw new IllegalArgumentException(i + " is not offset of tableswitch statement");
        }
        if (i6 < 0 || i4 < i6 + 4) {
            throw new ClassFileFormatException(Modifier.CC.m(i2, "Too big case index: "));
        }
        putInt32(bArr, i3 - i, i6);
    }

    public final void startMethod(String str, String str2, short s) {
        ConstantPool constantPool = this.itsConstantPool;
        short addUtf8 = constantPool.addUtf8(str);
        short addUtf82 = constantPool.addUtf8(str2);
        ClassFileMethod classFileMethod = new ClassFileMethod();
        classFileMethod.itsName = str;
        classFileMethod.itsNameIndex = addUtf8;
        classFileMethod.itsType = str2;
        classFileMethod.itsTypeIndex = addUtf82;
        classFileMethod.itsFlags = s;
        this.itsCurrentMethod = classFileMethod;
        this.itsJumpFroms = new HashMap();
        this.itsMethods.add(this.itsCurrentMethod);
        addSuperBlockStart(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:174:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0482  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void stopMethod(int r20) {
        /*
            Method dump skipped, instructions count: 1168
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.classfile.ClassFileWriter.stopMethod(int):void");
    }

    public final byte[] toByteArray() {
        short s;
        int i;
        short s2;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3 = this.itsBootstrapMethods;
        ConstantPool constantPool = this.itsConstantPool;
        if (arrayList3 != null) {
            s = constantPool.addUtf8("BootstrapMethods");
            i = 1;
        } else {
            s = 0;
            i = 0;
        }
        int i2 = this.itsSourceFileNameIndex;
        if (i2 != 0) {
            i++;
            s2 = constantPool.addUtf8("SourceFile");
        } else {
            s2 = 0;
        }
        if (i2 != 0) {
            constantPool.addUtf8("SourceFile");
        }
        int i3 = constantPool.itsTop + 18;
        ArrayList arrayList4 = this.itsInterfaces;
        int size = (arrayList4.size() * 2) + i3 + 2;
        int i4 = 0;
        while (true) {
            arrayList = this.itsFields;
            if (i4 >= arrayList.size()) {
                break;
            }
            ((ClassFileField) arrayList.get(i4)).getClass();
            size += 8;
            i4++;
        }
        int i5 = size + 2;
        int i6 = 0;
        while (true) {
            arrayList2 = this.itsMethods;
            if (i6 >= arrayList2.size()) {
                break;
            }
            i5 += ((ClassFileMethod) arrayList2.get(i6)).itsCodeAttribute.length + 8;
            i6++;
        }
        int i7 = i5 + 2;
        if (i2 != 0) {
            i7 = i5 + 10;
        }
        if (this.itsBootstrapMethods != null) {
            i7 = i7 + 8 + this.itsBootstrapMethodsLength;
        }
        byte[] bArr = new byte[i7];
        int putInt16 = putInt16(bArr, (short) constantPool.itsTopIndex, putInt16(bArr, MajorVersion, putInt16(bArr, MinorVersion, putInt32(bArr, -889275714, 0))));
        System.arraycopy(constantPool.itsPool, 0, bArr, putInt16, constantPool.itsTop);
        int putInt162 = putInt16(bArr, arrayList4.size(), putInt16(bArr, this.itsSuperClassIndex, putInt16(bArr, this.itsThisClassIndex, putInt16(bArr, this.itsFlags, putInt16 + constantPool.itsTop))));
        for (int i8 = 0; i8 < arrayList4.size(); i8++) {
            putInt162 = putInt16(bArr, ((Short) arrayList4.get(i8)).shortValue(), putInt162);
        }
        int putInt163 = putInt16(bArr, arrayList.size(), putInt162);
        for (int i9 = 0; i9 < arrayList.size(); i9++) {
            ClassFileField classFileField = (ClassFileField) arrayList.get(i9);
            putInt163 = putInt16(bArr, 0, putInt16(bArr, classFileField.itsTypeIndex, putInt16(bArr, classFileField.itsNameIndex, putInt16(bArr, classFileField.itsFlags, putInt163))));
        }
        int putInt164 = putInt16(bArr, arrayList2.size(), putInt163);
        for (int i10 = 0; i10 < arrayList2.size(); i10++) {
            ClassFileMethod classFileMethod = (ClassFileMethod) arrayList2.get(i10);
            int putInt165 = putInt16(bArr, 1, putInt16(bArr, classFileMethod.itsTypeIndex, putInt16(bArr, classFileMethod.itsNameIndex, putInt16(bArr, classFileMethod.itsFlags, putInt164))));
            byte[] bArr2 = classFileMethod.itsCodeAttribute;
            System.arraycopy(bArr2, 0, bArr, putInt165, bArr2.length);
            putInt164 = putInt165 + classFileMethod.itsCodeAttribute.length;
        }
        int putInt166 = putInt16(bArr, i, putInt164);
        if (this.itsBootstrapMethods != null) {
            putInt166 = putInt16(bArr, this.itsBootstrapMethods.size(), putInt32(bArr, this.itsBootstrapMethodsLength + 2, putInt16(bArr, s, putInt166)));
            for (int i11 = 0; i11 < this.itsBootstrapMethods.size(); i11++) {
                BootstrapEntry bootstrapEntry = (BootstrapEntry) this.itsBootstrapMethods.get(i11);
                byte[] bArr3 = bootstrapEntry.code;
                System.arraycopy(bArr3, 0, bArr, putInt166, bArr3.length);
                putInt166 += bootstrapEntry.code.length;
            }
        }
        if (i2 != 0) {
            putInt166 = putInt16(bArr, i2, putInt32(bArr, 2, putInt16(bArr, s2, putInt166)));
        }
        if (putInt166 == i7) {
            return bArr;
        }
        throw new RuntimeException();
    }

    public final void xop(int i, int i2, int i3) {
        if (i3 == 0) {
            add(i);
            return;
        }
        if (i3 == 1) {
            add(i + 1);
            return;
        }
        if (i3 == 2) {
            add(i + 2);
        } else if (i3 != 3) {
            add(i2, i3);
        } else {
            add(i + 3);
        }
    }

    public final void markLabel(int i, int i2) {
        markLabel(i);
        this.itsStackTop = i2;
    }

    public final void markTableSwitchCase(int i, int i2) {
        addSuperBlockStart(this.itsCodeBufferTop);
        this.itsJumpFroms.put(Integer.valueOf(this.itsCodeBufferTop), Integer.valueOf(i));
        setTableSwitchJump(i, i2, this.itsCodeBufferTop);
    }

    public final void add(int i, String str) {
        int stackChange = stackChange(i) + this.itsStackTop;
        if (stackChange < 0 || 32767 < stackChange) {
            badStack(stackChange);
            throw null;
        }
        if (i != 187 && i != 189 && i != 192 && i != 193) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("bad opcode for class reference");
            return;
        }
        short addClass = this.itsConstantPool.addClass(str);
        addToCodeBuffer(i);
        addToCodeInt16(addClass);
        short s = (short) stackChange;
        this.itsStackTop = s;
        if (stackChange > this.itsMaxStack) {
            this.itsMaxStack = s;
        }
    }

    public final void add(String str, String str2, int i, String str3) {
        int i2;
        int stackChange = stackChange(i) + this.itsStackTop;
        char charAt = str3.charAt(0);
        int i3 = (charAt == 'J' || charAt == 'D') ? 2 : 1;
        switch (i) {
            case Token.ARROW /* 178 */:
            case 180:
                i2 = stackChange + i3;
                break;
            case Token.YIELD_STAR /* 179 */:
            case Token.TEMPLATE_CHARS /* 181 */:
                i2 = stackChange - i3;
                break;
            default:
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("bad opcode for field reference");
                return;
        }
        if (i2 >= 0 && 32767 >= i2) {
            short addFieldRef = this.itsConstantPool.addFieldRef(str, str2, str3);
            addToCodeBuffer(i);
            addToCodeInt16(addFieldRef);
            short s = (short) i2;
            this.itsStackTop = s;
            if (i2 > this.itsMaxStack) {
                this.itsMaxStack = s;
                return;
            }
            return;
        }
        badStack(i2);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x003f A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void add(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.classfile.ClassFileWriter.add(int, int):void");
    }

    public final void addPush(boolean z) {
        add(z ? 4 : 3);
    }

    public final void addPush(double d) {
        if (d == 0.0d) {
            add(14);
            if (1.0d / d < 0.0d) {
                add(Token.INC);
                return;
            }
            return;
        }
        if (d != 1.0d && d != -1.0d) {
            add(20, this.itsConstantPool.addConstant(d));
            return;
        }
        add(15);
        if (d < 0.0d) {
            add(Token.INC);
        }
    }

    public final void addPush(int i) {
        byte b = (byte) i;
        if (b != i) {
            short s = (short) i;
            if (s == i) {
                add(17, s);
                return;
            } else {
                addLoadConstant(i);
                return;
            }
        }
        if (i == -1) {
            add(2);
        } else if (i >= 0 && i <= 5) {
            add((byte) (i + 3));
        } else {
            add(16, b);
        }
    }
}
