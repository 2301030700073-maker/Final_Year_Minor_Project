package org.mozilla.classfile;

import androidx.compose.ui.Modifier;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Okio;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SuperBlock {
    public int end;
    public int index;
    public boolean isInQueue;
    public boolean isInitialized;
    public int[] locals;
    public int[] stack;
    public int start;

    /* JADX WARN: Removed duplicated region for block: B:19:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00da A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean mergeState(int[] r11, int[] r12, int r13, org.mozilla.classfile.ConstantPool r14) {
        /*
            r0 = 0
            r1 = r0
            r2 = r1
        L3:
            if (r1 >= r13) goto Lde
            r3 = r11[r1]
            r4 = r12[r1]
            r5 = 1
            if (r3 != r4) goto Le
            goto L71
        Le:
            r6 = r3 & 255(0xff, float:3.57E-43)
            r7 = r4 & 255(0xff, float:3.57E-43)
            r8 = 7
            if (r6 != r8) goto L17
            r9 = r5
            goto L18
        L17:
            r9 = r0
        L18:
            if (r7 != r8) goto L1c
            r8 = r5
            goto L1d
        L1c:
            r8 = r0
        L1d:
            r10 = 5
            if (r9 == 0) goto L23
            if (r4 != r10) goto L23
            goto L71
        L23:
            if (r6 == 0) goto Ld4
            if (r7 != 0) goto L29
            goto Ld4
        L29:
            if (r3 != r10) goto L2f
            if (r8 == 0) goto L2f
            goto Ld5
        L2f:
            if (r9 == 0) goto Lc0
            if (r8 == 0) goto Lc0
            java.lang.String r6 = okio.Okio.getPayloadAsType(r3, r14)
            java.lang.String r7 = okio.Okio.getPayloadAsType(r4, r14)
            r8 = 2
            java.lang.Object r8 = r14.getConstantData(r8)
            java.lang.String r8 = (java.lang.String) r8
            r9 = 4
            java.lang.Object r9 = r14.getConstantData(r9)
            java.lang.String r9 = (java.lang.String) r9
            boolean r10 = r6.equals(r8)
            if (r10 == 0) goto L50
            r6 = r9
        L50:
            boolean r8 = r7.equals(r8)
            if (r8 == 0) goto L57
            r7 = r9
        L57:
            r8 = 46
            r9 = 47
            java.lang.String r6 = r6.replace(r9, r8)     // Catch: java.lang.ClassNotFoundException -> Lbb
            java.lang.Class r6 = java.lang.Class.forName(r6)     // Catch: java.lang.ClassNotFoundException -> Lbb
            java.lang.String r7 = r7.replace(r9, r8)     // Catch: java.lang.ClassNotFoundException -> Lb6
            java.lang.Class r7 = java.lang.Class.forName(r7)     // Catch: java.lang.ClassNotFoundException -> Lb6
            boolean r10 = r6.isAssignableFrom(r7)
            if (r10 == 0) goto L73
        L71:
            r4 = r3
            goto Ld5
        L73:
            boolean r10 = r7.isAssignableFrom(r6)
            if (r10 == 0) goto L7a
            goto Ld5
        L7a:
            boolean r10 = r7.isInterface()
            if (r10 != 0) goto Lab
            boolean r10 = r6.isInterface()
            if (r10 == 0) goto L87
            goto Lab
        L87:
            java.lang.Class r7 = r7.getSuperclass()
        L8b:
            if (r7 == 0) goto Lc0
            boolean r10 = r7.isAssignableFrom(r6)
            if (r10 == 0) goto La6
            java.lang.String r4 = r7.getName()
            int r6 = org.mozilla.classfile.ClassFileWriter.MajorVersion
            java.lang.String r4 = r4.replace(r8, r9)
            short r4 = r14.addClass(r4)
            int r4 = okio.Okio.OBJECT(r4)
            goto Ld5
        La6:
            java.lang.Class r7 = r7.getSuperclass()
            goto L8b
        Lab:
            java.lang.String r4 = "java/lang/Object"
            short r4 = r14.addClass(r4)
            int r4 = okio.Okio.OBJECT(r4)
            goto Ld5
        Lb6:
            r11 = move-exception
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m(r11)
            return r0
        Lbb:
            r11 = move-exception
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m(r11)
            return r0
        Lc0:
            java.lang.String r11 = okio.Okio.toString(r3, r14)
            java.lang.String r12 = okio.Okio.toString(r4, r14)
            java.lang.String r13 = "bad merge attempt between "
            java.lang.String r14 = " and "
            java.lang.String r11 = androidx.compose.ui.node.Owner.CC.m(r13, r11, r14, r12)
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$1(r11)
            return r0
        Ld4:
            r4 = r0
        Ld5:
            r11[r1] = r4
            if (r3 == r4) goto Lda
            r2 = r5
        Lda:
            int r1 = r1 + 1
            goto L3
        Lde:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.classfile.SuperBlock.mergeState(int[], int[], int, org.mozilla.classfile.ConstantPool):boolean");
    }

    public final int[] getTrimmedLocals() {
        int[] iArr = this.locals;
        int length = iArr.length - 1;
        while (length >= 0 && iArr[length] == 0 && !Okio.isTwoWords(iArr[length - 1])) {
            length--;
        }
        int i = length + 1;
        int i2 = 0;
        int i3 = i;
        for (int i4 = 0; i4 < i; i4++) {
            if (Okio.isTwoWords(iArr[i4])) {
                i3--;
            }
        }
        int[] iArr2 = new int[i3];
        int i5 = 0;
        while (i2 < i3) {
            iArr2[i2] = iArr[i5];
            if (Okio.isTwoWords(iArr[i5])) {
                i5++;
            }
            i2++;
            i5++;
        }
        return iArr2;
    }

    public final boolean merge(int[] iArr, int i, int[] iArr2, int i2, ConstantPool constantPool) {
        boolean z = this.isInitialized;
        int[] iArr3 = this.locals;
        if (z) {
            if (iArr3.length == i && this.stack.length == i2) {
                return mergeState(iArr3, iArr, i, constantPool) || mergeState(this.stack, iArr2, i2, constantPool);
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("bad merge attempt");
            return false;
        }
        System.arraycopy(iArr, 0, iArr3, 0, i);
        int[] iArr4 = new int[i2];
        this.stack = iArr4;
        System.arraycopy(iArr2, 0, iArr4, 0, i2);
        this.isInitialized = true;
        return true;
    }

    public final String toString() {
        return Modifier.CC.m(this.index, "sb ");
    }
}
