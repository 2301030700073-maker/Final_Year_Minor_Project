package androidx.compose.runtime.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.RememberManager;
import androidx.compose.runtime.SlotWriter;
import androidx.compose.runtime.changelist.Operation;

/* compiled from: ChangeList.kt */
/* loaded from: classes.dex */
public final class ChangeList extends OperationsDebugStringFormattable {
    private final Operations operations = new Operations();

    public final boolean isEmpty() {
        return this.operations.isEmpty();
    }

    public final boolean isNotEmpty() {
        return this.operations.isNotEmpty();
    }

    public final void clear() {
        this.operations.clear();
    }

    public final void executeAndFlushAllPendingChanges(Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
        this.operations.executeAndFlushAllPendingOperations(applier, slotWriter, rememberManager);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushRemember(androidx.compose.runtime.RememberObserver r13) {
        /*
            r12 = this;
            androidx.compose.runtime.changelist.Operations r0 = r12.operations
            androidx.compose.runtime.changelist.Operation$Remember r1 = androidx.compose.runtime.changelist.Operation.Remember.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            r4 = 1
            if (r13 != r2) goto L32
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L32
            r13 = r4
            goto L33
        L32:
            r13 = r3
        L33:
            if (r13 != 0) goto Ld5
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r5 = r3
            r6 = r5
        L40:
            java.lang.String r7 = ", "
            if (r5 >= r2) goto L62
            int r8 = r4 << r5
            int r9 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r8 = r8 & r9
            if (r8 == 0) goto L5f
            if (r6 <= 0) goto L52
            r13.append(r7)
        L52:
            int r7 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r5)
            java.lang.String r7 = r1.mo1045intParamNamew8GmfQM(r7)
            r13.append(r7)
            int r6 = r6 + 1
        L5f:
            int r5 = r5 + 1
            goto L40
        L62:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            int r8 = r1.getObjects()
            r9 = r3
        L75:
            if (r3 >= r8) goto L95
            int r10 = r4 << r3
            int r11 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r10 = r10 & r11
            if (r10 == 0) goto L92
            if (r6 <= 0) goto L85
            r5.append(r7)
        L85:
            int r10 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r10 = r1.mo1046objectParamName31yXWZQ(r10)
            r5.append(r10)
            int r9 = r9 + 1
        L92:
            int r3 = r3 + 1
            goto L75
        L95:
            java.lang.String r0 = r5.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Error while pushing "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r2.append(r1)
            r2.append(r6)
            java.lang.String r1 = " int arguments ("
            r2.append(r1)
            r2.append(r13)
            java.lang.String r13 = ") and "
            r2.append(r13)
            r2.append(r9)
            java.lang.String r13 = " object arguments ("
            r2.append(r13)
            r2.append(r0)
            java.lang.String r13 = ")."
            r2.append(r13)
            java.lang.String r13 = r2.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r13)
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushRemember(androidx.compose.runtime.RememberObserver):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushUpdateValue(java.lang.Object r12, int r13) {
        /*
            r11 = this;
            androidx.compose.runtime.changelist.Operations r0 = r11.operations
            androidx.compose.runtime.changelist.Operation$UpdateValue r1 = androidx.compose.runtime.changelist.Operation.UpdateValue.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r12)
            int r12 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1059setIntA6tL2VI(r2, r12, r13)
            int r12 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r13 = r1.getInts()
            int r13 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r13)
            r2 = 1
            if (r12 != r13) goto L39
            int r12 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r13 = r1.getObjects()
            int r13 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r13)
            if (r12 != r13) goto L39
            r12 = r2
            goto L3a
        L39:
            r12 = r3
        L3a:
            if (r12 != 0) goto Ldc
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            int r13 = r1.getInts()
            r4 = r3
            r5 = r4
        L47:
            java.lang.String r6 = ", "
            if (r4 >= r13) goto L69
            int r7 = r2 << r4
            int r8 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r7 = r7 & r8
            if (r7 == 0) goto L66
            if (r5 <= 0) goto L59
            r12.append(r6)
        L59:
            int r6 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r4)
            java.lang.String r6 = r1.mo1045intParamNamew8GmfQM(r6)
            r12.append(r6)
            int r5 = r5 + 1
        L66:
            int r4 = r4 + 1
            goto L47
        L69:
            java.lang.String r12 = r12.toString()
            java.lang.String r13 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r13)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            int r7 = r1.getObjects()
            r8 = r3
        L7c:
            if (r3 >= r7) goto L9c
            int r9 = r2 << r3
            int r10 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r9 = r9 & r10
            if (r9 == 0) goto L99
            if (r5 <= 0) goto L8c
            r4.append(r6)
        L8c:
            int r9 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r9 = r1.mo1046objectParamName31yXWZQ(r9)
            r4.append(r9)
            int r8 = r8 + 1
        L99:
            int r3 = r3 + 1
            goto L7c
        L9c:
            java.lang.String r0 = r4.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r13)
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r2 = "Error while pushing "
            r13.append(r2)
            r13.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r13.append(r1)
            r13.append(r5)
            java.lang.String r1 = " int arguments ("
            r13.append(r1)
            r13.append(r12)
            java.lang.String r12 = ") and "
            r13.append(r12)
            r13.append(r8)
            java.lang.String r12 = " object arguments ("
            r13.append(r12)
            r13.append(r0)
            java.lang.String r12 = ")."
            r13.append(r12)
            java.lang.String r12 = r13.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r12)
        Ldc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushUpdateValue(java.lang.Object, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushUpdateAnchoredValue(java.lang.Object r11, androidx.compose.runtime.Anchor r12, int r13) {
        /*
            r10 = this;
            androidx.compose.runtime.changelist.Operations r0 = r10.operations
            androidx.compose.runtime.changelist.Operation$UpdateAnchoredValue r1 = androidx.compose.runtime.changelist.Operation.UpdateAnchoredValue.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r11)
            r11 = 1
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r11)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r12)
            int r12 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1059setIntA6tL2VI(r2, r12, r13)
            int r12 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r13 = r1.getInts()
            int r13 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r13)
            if (r12 != r13) goto L40
            int r12 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r13 = r1.getObjects()
            int r13 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r13)
            if (r12 != r13) goto L40
            r12 = r11
            goto L41
        L40:
            r12 = r3
        L41:
            if (r12 != 0) goto Le3
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            int r13 = r1.getInts()
            r2 = r3
            r4 = r2
        L4e:
            java.lang.String r5 = ", "
            if (r2 >= r13) goto L70
            int r6 = r11 << r2
            int r7 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r6 = r6 & r7
            if (r6 == 0) goto L6d
            if (r4 <= 0) goto L60
            r12.append(r5)
        L60:
            int r5 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r2)
            java.lang.String r5 = r1.mo1045intParamNamew8GmfQM(r5)
            r12.append(r5)
            int r4 = r4 + 1
        L6d:
            int r2 = r2 + 1
            goto L4e
        L70:
            java.lang.String r12 = r12.toString()
            java.lang.String r13 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r13)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            int r6 = r1.getObjects()
            r7 = r3
        L83:
            if (r3 >= r6) goto La3
            int r8 = r11 << r3
            int r9 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r8 = r8 & r9
            if (r8 == 0) goto La0
            if (r4 <= 0) goto L93
            r2.append(r5)
        L93:
            int r8 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r8 = r1.mo1046objectParamName31yXWZQ(r8)
            r2.append(r8)
            int r7 = r7 + 1
        La0:
            int r3 = r3 + 1
            goto L83
        La3:
            java.lang.String r11 = r2.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r13)
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r0 = "Error while pushing "
            r13.append(r0)
            r13.append(r1)
            java.lang.String r0 = ". Not all arguments were provided. Missing "
            r13.append(r0)
            r13.append(r4)
            java.lang.String r0 = " int arguments ("
            r13.append(r0)
            r13.append(r12)
            java.lang.String r12 = ") and "
            r13.append(r12)
            r13.append(r7)
            java.lang.String r12 = " object arguments ("
            r13.append(r12)
            r13.append(r11)
            java.lang.String r11 = ")."
            r13.append(r11)
            java.lang.String r11 = r13.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r11)
        Le3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushUpdateAnchoredValue(java.lang.Object, androidx.compose.runtime.Anchor, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushAppendValue(androidx.compose.runtime.Anchor r12, java.lang.Object r13) {
        /*
            r11 = this;
            androidx.compose.runtime.changelist.Operations r0 = r11.operations
            androidx.compose.runtime.changelist.Operation$AppendValue r1 = androidx.compose.runtime.changelist.Operation.AppendValue.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r12)
            r12 = 1
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r12)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L39
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L39
            r13 = r12
            goto L3a
        L39:
            r13 = r3
        L3a:
            if (r13 != 0) goto Ldc
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r4 = r3
            r5 = r4
        L47:
            java.lang.String r6 = ", "
            if (r4 >= r2) goto L69
            int r7 = r12 << r4
            int r8 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r7 = r7 & r8
            if (r7 == 0) goto L66
            if (r5 <= 0) goto L59
            r13.append(r6)
        L59:
            int r6 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r4)
            java.lang.String r6 = r1.mo1045intParamNamew8GmfQM(r6)
            r13.append(r6)
            int r5 = r5 + 1
        L66:
            int r4 = r4 + 1
            goto L47
        L69:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            int r7 = r1.getObjects()
            r8 = r3
        L7c:
            if (r3 >= r7) goto L9c
            int r9 = r12 << r3
            int r10 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r9 = r9 & r10
            if (r9 == 0) goto L99
            if (r5 <= 0) goto L8c
            r4.append(r6)
        L8c:
            int r9 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r9 = r1.mo1046objectParamName31yXWZQ(r9)
            r4.append(r9)
            int r8 = r8 + 1
        L99:
            int r3 = r3 + 1
            goto L7c
        L9c:
            java.lang.String r12 = r4.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r2)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Error while pushing "
            r0.append(r2)
            r0.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r1 = " int arguments ("
            r0.append(r1)
            r0.append(r13)
            java.lang.String r13 = ") and "
            r0.append(r13)
            r0.append(r8)
            java.lang.String r13 = " object arguments ("
            r0.append(r13)
            r0.append(r12)
            java.lang.String r12 = ")."
            r0.append(r12)
            java.lang.String r12 = r0.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r12)
        Ldc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushAppendValue(androidx.compose.runtime.Anchor, java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushTrimValues(int r13) {
        /*
            r12 = this;
            androidx.compose.runtime.changelist.Operations r0 = r12.operations
            androidx.compose.runtime.changelist.Operation$TrimParentValues r1 = androidx.compose.runtime.changelist.Operation.TrimParentValues.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1059setIntA6tL2VI(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            r4 = 1
            if (r13 != r2) goto L32
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L32
            r13 = r4
            goto L33
        L32:
            r13 = r3
        L33:
            if (r13 != 0) goto Ld5
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r5 = r3
            r6 = r5
        L40:
            java.lang.String r7 = ", "
            if (r5 >= r2) goto L62
            int r8 = r4 << r5
            int r9 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r8 = r8 & r9
            if (r8 == 0) goto L5f
            if (r6 <= 0) goto L52
            r13.append(r7)
        L52:
            int r7 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r5)
            java.lang.String r7 = r1.mo1045intParamNamew8GmfQM(r7)
            r13.append(r7)
            int r6 = r6 + 1
        L5f:
            int r5 = r5 + 1
            goto L40
        L62:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            int r8 = r1.getObjects()
            r9 = r3
        L75:
            if (r3 >= r8) goto L95
            int r10 = r4 << r3
            int r11 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r10 = r10 & r11
            if (r10 == 0) goto L92
            if (r6 <= 0) goto L85
            r5.append(r7)
        L85:
            int r10 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r10 = r1.mo1046objectParamName31yXWZQ(r10)
            r5.append(r10)
            int r9 = r9 + 1
        L92:
            int r3 = r3 + 1
            goto L75
        L95:
            java.lang.String r0 = r5.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Error while pushing "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r2.append(r1)
            r2.append(r6)
            java.lang.String r1 = " int arguments ("
            r2.append(r1)
            r2.append(r13)
            java.lang.String r13 = ") and "
            r2.append(r13)
            r2.append(r9)
            java.lang.String r13 = " object arguments ("
            r2.append(r13)
            r2.append(r0)
            java.lang.String r13 = ")."
            r2.append(r13)
            java.lang.String r13 = r2.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r13)
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushTrimValues(int):void");
    }

    public final void pushResetSlots() {
        this.operations.push(Operation.ResetSlots.INSTANCE);
    }

    public final void pushDeactivateCurrentGroup() {
        this.operations.push(Operation.DeactivateCurrentGroup.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushUpdateAuxData(java.lang.Object r13) {
        /*
            r12 = this;
            androidx.compose.runtime.changelist.Operations r0 = r12.operations
            androidx.compose.runtime.changelist.Operation$UpdateAuxData r1 = androidx.compose.runtime.changelist.Operation.UpdateAuxData.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            r4 = 1
            if (r13 != r2) goto L32
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L32
            r13 = r4
            goto L33
        L32:
            r13 = r3
        L33:
            if (r13 != 0) goto Ld5
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r5 = r3
            r6 = r5
        L40:
            java.lang.String r7 = ", "
            if (r5 >= r2) goto L62
            int r8 = r4 << r5
            int r9 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r8 = r8 & r9
            if (r8 == 0) goto L5f
            if (r6 <= 0) goto L52
            r13.append(r7)
        L52:
            int r7 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r5)
            java.lang.String r7 = r1.mo1045intParamNamew8GmfQM(r7)
            r13.append(r7)
            int r6 = r6 + 1
        L5f:
            int r5 = r5 + 1
            goto L40
        L62:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            int r8 = r1.getObjects()
            r9 = r3
        L75:
            if (r3 >= r8) goto L95
            int r10 = r4 << r3
            int r11 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r10 = r10 & r11
            if (r10 == 0) goto L92
            if (r6 <= 0) goto L85
            r5.append(r7)
        L85:
            int r10 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r10 = r1.mo1046objectParamName31yXWZQ(r10)
            r5.append(r10)
            int r9 = r9 + 1
        L92:
            int r3 = r3 + 1
            goto L75
        L95:
            java.lang.String r0 = r5.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Error while pushing "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r2.append(r1)
            r2.append(r6)
            java.lang.String r1 = " int arguments ("
            r2.append(r1)
            r2.append(r13)
            java.lang.String r13 = ") and "
            r2.append(r13)
            r2.append(r9)
            java.lang.String r13 = " object arguments ("
            r2.append(r13)
            r2.append(r0)
            java.lang.String r13 = ")."
            r2.append(r13)
            java.lang.String r13 = r2.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r13)
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushUpdateAuxData(java.lang.Object):void");
    }

    public final void pushEnsureRootStarted() {
        this.operations.push(Operation.EnsureRootGroupStarted.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushEnsureGroupStarted(androidx.compose.runtime.Anchor r13) {
        /*
            r12 = this;
            androidx.compose.runtime.changelist.Operations r0 = r12.operations
            androidx.compose.runtime.changelist.Operation$EnsureGroupStarted r1 = androidx.compose.runtime.changelist.Operation.EnsureGroupStarted.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            r4 = 1
            if (r13 != r2) goto L32
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L32
            r13 = r4
            goto L33
        L32:
            r13 = r3
        L33:
            if (r13 != 0) goto Ld5
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r5 = r3
            r6 = r5
        L40:
            java.lang.String r7 = ", "
            if (r5 >= r2) goto L62
            int r8 = r4 << r5
            int r9 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r8 = r8 & r9
            if (r8 == 0) goto L5f
            if (r6 <= 0) goto L52
            r13.append(r7)
        L52:
            int r7 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r5)
            java.lang.String r7 = r1.mo1045intParamNamew8GmfQM(r7)
            r13.append(r7)
            int r6 = r6 + 1
        L5f:
            int r5 = r5 + 1
            goto L40
        L62:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            int r8 = r1.getObjects()
            r9 = r3
        L75:
            if (r3 >= r8) goto L95
            int r10 = r4 << r3
            int r11 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r10 = r10 & r11
            if (r10 == 0) goto L92
            if (r6 <= 0) goto L85
            r5.append(r7)
        L85:
            int r10 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r10 = r1.mo1046objectParamName31yXWZQ(r10)
            r5.append(r10)
            int r9 = r9 + 1
        L92:
            int r3 = r3 + 1
            goto L75
        L95:
            java.lang.String r0 = r5.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Error while pushing "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r2.append(r1)
            r2.append(r6)
            java.lang.String r1 = " int arguments ("
            r2.append(r1)
            r2.append(r13)
            java.lang.String r13 = ") and "
            r2.append(r13)
            r2.append(r9)
            java.lang.String r13 = " object arguments ("
            r2.append(r13)
            r2.append(r0)
            java.lang.String r13 = ")."
            r2.append(r13)
            java.lang.String r13 = r2.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r13)
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushEnsureGroupStarted(androidx.compose.runtime.Anchor):void");
    }

    public final void pushEndCurrentGroup() {
        this.operations.push(Operation.EndCurrentGroup.INSTANCE);
    }

    public final void pushSkipToEndOfCurrentGroup() {
        this.operations.push(Operation.SkipToEndOfCurrentGroup.INSTANCE);
    }

    public final void pushRemoveCurrentGroup() {
        this.operations.push(Operation.RemoveCurrentGroup.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushInsertSlots(androidx.compose.runtime.Anchor r12, androidx.compose.runtime.SlotTable r13) {
        /*
            r11 = this;
            androidx.compose.runtime.changelist.Operations r0 = r11.operations
            androidx.compose.runtime.changelist.Operation$InsertSlots r1 = androidx.compose.runtime.changelist.Operation.InsertSlots.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r12)
            r12 = 1
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r12)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L39
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L39
            r13 = r12
            goto L3a
        L39:
            r13 = r3
        L3a:
            if (r13 != 0) goto Ldc
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r4 = r3
            r5 = r4
        L47:
            java.lang.String r6 = ", "
            if (r4 >= r2) goto L69
            int r7 = r12 << r4
            int r8 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r7 = r7 & r8
            if (r7 == 0) goto L66
            if (r5 <= 0) goto L59
            r13.append(r6)
        L59:
            int r6 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r4)
            java.lang.String r6 = r1.mo1045intParamNamew8GmfQM(r6)
            r13.append(r6)
            int r5 = r5 + 1
        L66:
            int r4 = r4 + 1
            goto L47
        L69:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            int r7 = r1.getObjects()
            r8 = r3
        L7c:
            if (r3 >= r7) goto L9c
            int r9 = r12 << r3
            int r10 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r9 = r9 & r10
            if (r9 == 0) goto L99
            if (r5 <= 0) goto L8c
            r4.append(r6)
        L8c:
            int r9 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r9 = r1.mo1046objectParamName31yXWZQ(r9)
            r4.append(r9)
            int r8 = r8 + 1
        L99:
            int r3 = r3 + 1
            goto L7c
        L9c:
            java.lang.String r12 = r4.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r2)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Error while pushing "
            r0.append(r2)
            r0.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r1 = " int arguments ("
            r0.append(r1)
            r0.append(r13)
            java.lang.String r13 = ") and "
            r0.append(r13)
            r0.append(r8)
            java.lang.String r13 = " object arguments ("
            r0.append(r13)
            r0.append(r12)
            java.lang.String r12 = ")."
            r0.append(r12)
            java.lang.String r12 = r0.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r12)
        Ldc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushInsertSlots(androidx.compose.runtime.Anchor, androidx.compose.runtime.SlotTable):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushInsertSlots(androidx.compose.runtime.Anchor r11, androidx.compose.runtime.SlotTable r12, androidx.compose.runtime.changelist.FixupList r13) {
        /*
            r10 = this;
            androidx.compose.runtime.changelist.Operations r0 = r10.operations
            androidx.compose.runtime.changelist.Operation$InsertSlotsWithFixups r1 = androidx.compose.runtime.changelist.Operation.InsertSlotsWithFixups.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r11)
            r11 = 1
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r11)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r12)
            r12 = 2
            int r12 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r12)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r12, r13)
            int r12 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r13 = r1.getInts()
            int r13 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r13)
            if (r12 != r13) goto L41
            int r12 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r13 = r1.getObjects()
            int r13 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r13)
            if (r12 != r13) goto L41
            r12 = r11
            goto L42
        L41:
            r12 = r3
        L42:
            if (r12 != 0) goto Le4
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            int r13 = r1.getInts()
            r2 = r3
            r4 = r2
        L4f:
            java.lang.String r5 = ", "
            if (r2 >= r13) goto L71
            int r6 = r11 << r2
            int r7 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r6 = r6 & r7
            if (r6 == 0) goto L6e
            if (r4 <= 0) goto L61
            r12.append(r5)
        L61:
            int r5 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r2)
            java.lang.String r5 = r1.mo1045intParamNamew8GmfQM(r5)
            r12.append(r5)
            int r4 = r4 + 1
        L6e:
            int r2 = r2 + 1
            goto L4f
        L71:
            java.lang.String r12 = r12.toString()
            java.lang.String r13 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r13)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            int r6 = r1.getObjects()
            r7 = r3
        L84:
            if (r3 >= r6) goto La4
            int r8 = r11 << r3
            int r9 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r8 = r8 & r9
            if (r8 == 0) goto La1
            if (r4 <= 0) goto L94
            r2.append(r5)
        L94:
            int r8 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r8 = r1.mo1046objectParamName31yXWZQ(r8)
            r2.append(r8)
            int r7 = r7 + 1
        La1:
            int r3 = r3 + 1
            goto L84
        La4:
            java.lang.String r11 = r2.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r13)
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r0 = "Error while pushing "
            r13.append(r0)
            r13.append(r1)
            java.lang.String r0 = ". Not all arguments were provided. Missing "
            r13.append(r0)
            r13.append(r4)
            java.lang.String r0 = " int arguments ("
            r13.append(r0)
            r13.append(r12)
            java.lang.String r12 = ") and "
            r13.append(r12)
            r13.append(r7)
            java.lang.String r12 = " object arguments ("
            r13.append(r12)
            r13.append(r11)
            java.lang.String r11 = ")."
            r13.append(r11)
            java.lang.String r11 = r13.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r11)
        Le4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushInsertSlots(androidx.compose.runtime.Anchor, androidx.compose.runtime.SlotTable, androidx.compose.runtime.changelist.FixupList):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushMoveCurrentGroup(int r13) {
        /*
            r12 = this;
            androidx.compose.runtime.changelist.Operations r0 = r12.operations
            androidx.compose.runtime.changelist.Operation$MoveCurrentGroup r1 = androidx.compose.runtime.changelist.Operation.MoveCurrentGroup.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1059setIntA6tL2VI(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            r4 = 1
            if (r13 != r2) goto L32
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L32
            r13 = r4
            goto L33
        L32:
            r13 = r3
        L33:
            if (r13 != 0) goto Ld5
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r5 = r3
            r6 = r5
        L40:
            java.lang.String r7 = ", "
            if (r5 >= r2) goto L62
            int r8 = r4 << r5
            int r9 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r8 = r8 & r9
            if (r8 == 0) goto L5f
            if (r6 <= 0) goto L52
            r13.append(r7)
        L52:
            int r7 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r5)
            java.lang.String r7 = r1.mo1045intParamNamew8GmfQM(r7)
            r13.append(r7)
            int r6 = r6 + 1
        L5f:
            int r5 = r5 + 1
            goto L40
        L62:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            int r8 = r1.getObjects()
            r9 = r3
        L75:
            if (r3 >= r8) goto L95
            int r10 = r4 << r3
            int r11 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r10 = r10 & r11
            if (r10 == 0) goto L92
            if (r6 <= 0) goto L85
            r5.append(r7)
        L85:
            int r10 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r10 = r1.mo1046objectParamName31yXWZQ(r10)
            r5.append(r10)
            int r9 = r9 + 1
        L92:
            int r3 = r3 + 1
            goto L75
        L95:
            java.lang.String r0 = r5.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Error while pushing "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r2.append(r1)
            r2.append(r6)
            java.lang.String r1 = " int arguments ("
            r2.append(r1)
            r2.append(r13)
            java.lang.String r13 = ") and "
            r2.append(r13)
            r2.append(r9)
            java.lang.String r13 = " object arguments ("
            r2.append(r13)
            r2.append(r0)
            java.lang.String r13 = ")."
            r2.append(r13)
            java.lang.String r13 = r2.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r13)
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushMoveCurrentGroup(int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushEndCompositionScope(kotlin.jvm.functions.Function1 r12, androidx.compose.runtime.Composition r13) {
        /*
            r11 = this;
            androidx.compose.runtime.changelist.Operations r0 = r11.operations
            androidx.compose.runtime.changelist.Operation$EndCompositionScope r1 = androidx.compose.runtime.changelist.Operation.EndCompositionScope.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r12)
            r12 = 1
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r12)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L39
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L39
            r13 = r12
            goto L3a
        L39:
            r13 = r3
        L3a:
            if (r13 != 0) goto Ldc
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r4 = r3
            r5 = r4
        L47:
            java.lang.String r6 = ", "
            if (r4 >= r2) goto L69
            int r7 = r12 << r4
            int r8 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r7 = r7 & r8
            if (r7 == 0) goto L66
            if (r5 <= 0) goto L59
            r13.append(r6)
        L59:
            int r6 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r4)
            java.lang.String r6 = r1.mo1045intParamNamew8GmfQM(r6)
            r13.append(r6)
            int r5 = r5 + 1
        L66:
            int r4 = r4 + 1
            goto L47
        L69:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            int r7 = r1.getObjects()
            r8 = r3
        L7c:
            if (r3 >= r7) goto L9c
            int r9 = r12 << r3
            int r10 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r9 = r9 & r10
            if (r9 == 0) goto L99
            if (r5 <= 0) goto L8c
            r4.append(r6)
        L8c:
            int r9 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r9 = r1.mo1046objectParamName31yXWZQ(r9)
            r4.append(r9)
            int r8 = r8 + 1
        L99:
            int r3 = r3 + 1
            goto L7c
        L9c:
            java.lang.String r12 = r4.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r2)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Error while pushing "
            r0.append(r2)
            r0.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r1 = " int arguments ("
            r0.append(r1)
            r0.append(r13)
            java.lang.String r13 = ") and "
            r0.append(r13)
            r0.append(r8)
            java.lang.String r13 = " object arguments ("
            r0.append(r13)
            r0.append(r12)
            java.lang.String r12 = ")."
            r0.append(r12)
            java.lang.String r12 = r0.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r12)
        Ldc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushEndCompositionScope(kotlin.jvm.functions.Function1, androidx.compose.runtime.Composition):void");
    }

    public final void pushUseNode(Object obj) {
        if (obj instanceof ComposeNodeLifecycleCallback) {
            this.operations.push(Operation.UseCurrentNode.INSTANCE);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushUpdateNode(java.lang.Object r12, kotlin.jvm.functions.Function2 r13) {
        /*
            r11 = this;
            androidx.compose.runtime.changelist.Operations r0 = r11.operations
            androidx.compose.runtime.changelist.Operation$UpdateNode r1 = androidx.compose.runtime.changelist.Operation.UpdateNode.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r12)
            r12 = 1
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r12)
            java.lang.String r5 = "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r13, r5)
            r5 = 2
            java.lang.Object r13 = kotlin.jvm.internal.TypeIntrinsics.beforeCheckcastToFunctionOfArity(r13, r5)
            kotlin.jvm.functions.Function2 r13 = (kotlin.jvm.functions.Function2) r13
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L45
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L45
            r13 = r12
            goto L46
        L45:
            r13 = r3
        L46:
            if (r13 != 0) goto Le8
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r4 = r3
            r5 = r4
        L53:
            java.lang.String r6 = ", "
            if (r4 >= r2) goto L75
            int r7 = r12 << r4
            int r8 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r7 = r7 & r8
            if (r7 == 0) goto L72
            if (r5 <= 0) goto L65
            r13.append(r6)
        L65:
            int r6 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r4)
            java.lang.String r6 = r1.mo1045intParamNamew8GmfQM(r6)
            r13.append(r6)
            int r5 = r5 + 1
        L72:
            int r4 = r4 + 1
            goto L53
        L75:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            int r7 = r1.getObjects()
            r8 = r3
        L88:
            if (r3 >= r7) goto La8
            int r9 = r12 << r3
            int r10 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r9 = r9 & r10
            if (r9 == 0) goto La5
            if (r5 <= 0) goto L98
            r4.append(r6)
        L98:
            int r9 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r9 = r1.mo1046objectParamName31yXWZQ(r9)
            r4.append(r9)
            int r8 = r8 + 1
        La5:
            int r3 = r3 + 1
            goto L88
        La8:
            java.lang.String r12 = r4.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r2)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Error while pushing "
            r0.append(r2)
            r0.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r1 = " int arguments ("
            r0.append(r1)
            r0.append(r13)
            java.lang.String r13 = ") and "
            r0.append(r13)
            r0.append(r8)
            java.lang.String r13 = " object arguments ("
            r0.append(r13)
            r0.append(r12)
            java.lang.String r12 = ")."
            r0.append(r12)
            java.lang.String r12 = r0.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r12)
        Le8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushUpdateNode(java.lang.Object, kotlin.jvm.functions.Function2):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushRemoveNode(int r12, int r13) {
        /*
            r11 = this;
            androidx.compose.runtime.changelist.Operations r0 = r11.operations
            androidx.compose.runtime.changelist.Operation$RemoveNode r1 = androidx.compose.runtime.changelist.Operation.RemoveNode.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1059setIntA6tL2VI(r2, r4, r12)
            r12 = 1
            int r4 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r12)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1059setIntA6tL2VI(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L39
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L39
            r13 = r12
            goto L3a
        L39:
            r13 = r3
        L3a:
            if (r13 != 0) goto Ldc
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r4 = r3
            r5 = r4
        L47:
            java.lang.String r6 = ", "
            if (r4 >= r2) goto L69
            int r7 = r12 << r4
            int r8 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r7 = r7 & r8
            if (r7 == 0) goto L66
            if (r5 <= 0) goto L59
            r13.append(r6)
        L59:
            int r6 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r4)
            java.lang.String r6 = r1.mo1045intParamNamew8GmfQM(r6)
            r13.append(r6)
            int r5 = r5 + 1
        L66:
            int r4 = r4 + 1
            goto L47
        L69:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            int r7 = r1.getObjects()
            r8 = r3
        L7c:
            if (r3 >= r7) goto L9c
            int r9 = r12 << r3
            int r10 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r9 = r9 & r10
            if (r9 == 0) goto L99
            if (r5 <= 0) goto L8c
            r4.append(r6)
        L8c:
            int r9 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r9 = r1.mo1046objectParamName31yXWZQ(r9)
            r4.append(r9)
            int r8 = r8 + 1
        L99:
            int r3 = r3 + 1
            goto L7c
        L9c:
            java.lang.String r12 = r4.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r2)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Error while pushing "
            r0.append(r2)
            r0.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r1 = " int arguments ("
            r0.append(r1)
            r0.append(r13)
            java.lang.String r13 = ") and "
            r0.append(r13)
            r0.append(r8)
            java.lang.String r13 = " object arguments ("
            r0.append(r13)
            r0.append(r12)
            java.lang.String r12 = ")."
            r0.append(r12)
            java.lang.String r12 = r0.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r12)
        Ldc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushRemoveNode(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushMoveNode(int r11, int r12, int r13) {
        /*
            r10 = this;
            androidx.compose.runtime.changelist.Operations r0 = r10.operations
            androidx.compose.runtime.changelist.Operation$MoveNode r1 = androidx.compose.runtime.changelist.Operation.MoveNode.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 1
            int r4 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1059setIntA6tL2VI(r2, r4, r11)
            r11 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r11)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1059setIntA6tL2VI(r2, r4, r12)
            r12 = 2
            int r12 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r12)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1059setIntA6tL2VI(r2, r12, r13)
            int r12 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r13 = r1.getInts()
            int r13 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r13)
            if (r12 != r13) goto L41
            int r12 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r13 = r1.getObjects()
            int r13 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r13)
            if (r12 != r13) goto L41
            r12 = r3
            goto L42
        L41:
            r12 = r11
        L42:
            if (r12 != 0) goto Le4
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            int r13 = r1.getInts()
            r2 = r11
            r4 = r2
        L4f:
            java.lang.String r5 = ", "
            if (r2 >= r13) goto L71
            int r6 = r3 << r2
            int r7 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r6 = r6 & r7
            if (r6 == 0) goto L6e
            if (r4 <= 0) goto L61
            r12.append(r5)
        L61:
            int r5 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r2)
            java.lang.String r5 = r1.mo1045intParamNamew8GmfQM(r5)
            r12.append(r5)
            int r4 = r4 + 1
        L6e:
            int r2 = r2 + 1
            goto L4f
        L71:
            java.lang.String r12 = r12.toString()
            java.lang.String r13 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r13)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            int r6 = r1.getObjects()
            r7 = r11
        L84:
            if (r11 >= r6) goto La4
            int r8 = r3 << r11
            int r9 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r8 = r8 & r9
            if (r8 == 0) goto La1
            if (r4 <= 0) goto L94
            r2.append(r5)
        L94:
            int r8 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r11)
            java.lang.String r8 = r1.mo1046objectParamName31yXWZQ(r8)
            r2.append(r8)
            int r7 = r7 + 1
        La1:
            int r11 = r11 + 1
            goto L84
        La4:
            java.lang.String r11 = r2.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r13)
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r0 = "Error while pushing "
            r13.append(r0)
            r13.append(r1)
            java.lang.String r0 = ". Not all arguments were provided. Missing "
            r13.append(r0)
            r13.append(r4)
            java.lang.String r0 = " int arguments ("
            r13.append(r0)
            r13.append(r12)
            java.lang.String r12 = ") and "
            r13.append(r12)
            r13.append(r7)
            java.lang.String r12 = " object arguments ("
            r13.append(r12)
            r13.append(r11)
            java.lang.String r11 = ")."
            r13.append(r11)
            java.lang.String r11 = r13.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r11)
        Le4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushMoveNode(int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushAdvanceSlotsBy(int r13) {
        /*
            r12 = this;
            androidx.compose.runtime.changelist.Operations r0 = r12.operations
            androidx.compose.runtime.changelist.Operation$AdvanceSlotsBy r1 = androidx.compose.runtime.changelist.Operation.AdvanceSlotsBy.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1059setIntA6tL2VI(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            r4 = 1
            if (r13 != r2) goto L32
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L32
            r13 = r4
            goto L33
        L32:
            r13 = r3
        L33:
            if (r13 != 0) goto Ld5
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r5 = r3
            r6 = r5
        L40:
            java.lang.String r7 = ", "
            if (r5 >= r2) goto L62
            int r8 = r4 << r5
            int r9 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r8 = r8 & r9
            if (r8 == 0) goto L5f
            if (r6 <= 0) goto L52
            r13.append(r7)
        L52:
            int r7 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r5)
            java.lang.String r7 = r1.mo1045intParamNamew8GmfQM(r7)
            r13.append(r7)
            int r6 = r6 + 1
        L5f:
            int r5 = r5 + 1
            goto L40
        L62:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            int r8 = r1.getObjects()
            r9 = r3
        L75:
            if (r3 >= r8) goto L95
            int r10 = r4 << r3
            int r11 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r10 = r10 & r11
            if (r10 == 0) goto L92
            if (r6 <= 0) goto L85
            r5.append(r7)
        L85:
            int r10 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r10 = r1.mo1046objectParamName31yXWZQ(r10)
            r5.append(r10)
            int r9 = r9 + 1
        L92:
            int r3 = r3 + 1
            goto L75
        L95:
            java.lang.String r0 = r5.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Error while pushing "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r2.append(r1)
            r2.append(r6)
            java.lang.String r1 = " int arguments ("
            r2.append(r1)
            r2.append(r13)
            java.lang.String r13 = ") and "
            r2.append(r13)
            r2.append(r9)
            java.lang.String r13 = " object arguments ("
            r2.append(r13)
            r2.append(r0)
            java.lang.String r13 = ")."
            r2.append(r13)
            java.lang.String r13 = r2.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r13)
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushAdvanceSlotsBy(int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushUps(int r13) {
        /*
            r12 = this;
            androidx.compose.runtime.changelist.Operations r0 = r12.operations
            androidx.compose.runtime.changelist.Operation$Ups r1 = androidx.compose.runtime.changelist.Operation.Ups.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1059setIntA6tL2VI(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            r4 = 1
            if (r13 != r2) goto L32
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L32
            r13 = r4
            goto L33
        L32:
            r13 = r3
        L33:
            if (r13 != 0) goto Ld5
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r5 = r3
            r6 = r5
        L40:
            java.lang.String r7 = ", "
            if (r5 >= r2) goto L62
            int r8 = r4 << r5
            int r9 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r8 = r8 & r9
            if (r8 == 0) goto L5f
            if (r6 <= 0) goto L52
            r13.append(r7)
        L52:
            int r7 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r5)
            java.lang.String r7 = r1.mo1045intParamNamew8GmfQM(r7)
            r13.append(r7)
            int r6 = r6 + 1
        L5f:
            int r5 = r5 + 1
            goto L40
        L62:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            int r8 = r1.getObjects()
            r9 = r3
        L75:
            if (r3 >= r8) goto L95
            int r10 = r4 << r3
            int r11 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r10 = r10 & r11
            if (r10 == 0) goto L92
            if (r6 <= 0) goto L85
            r5.append(r7)
        L85:
            int r10 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r10 = r1.mo1046objectParamName31yXWZQ(r10)
            r5.append(r10)
            int r9 = r9 + 1
        L92:
            int r3 = r3 + 1
            goto L75
        L95:
            java.lang.String r0 = r5.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Error while pushing "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r2.append(r1)
            r2.append(r6)
            java.lang.String r1 = " int arguments ("
            r2.append(r1)
            r2.append(r13)
            java.lang.String r13 = ") and "
            r2.append(r13)
            r2.append(r9)
            java.lang.String r13 = " object arguments ("
            r2.append(r13)
            r2.append(r0)
            java.lang.String r13 = ")."
            r2.append(r13)
            java.lang.String r13 = r2.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r13)
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushUps(int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushDowns(java.lang.Object[] r13) {
        /*
            r12 = this;
            int r0 = r13.length
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L7
            r0 = r2
            goto L8
        L7:
            r0 = r1
        L8:
            if (r0 != 0) goto Ldd
            androidx.compose.runtime.changelist.Operations r0 = r12.operations
            androidx.compose.runtime.changelist.Operation$Downs r3 = androidx.compose.runtime.changelist.Operation.Downs.INSTANCE
            r0.pushOp(r3)
            androidx.compose.runtime.changelist.Operations r4 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            int r5 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r1)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r4, r5, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r4 = r3.getInts()
            int r4 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r4)
            if (r13 != r4) goto L3a
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r4 = r3.getObjects()
            int r4 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r4)
            if (r13 != r4) goto L3a
            r13 = r2
            goto L3b
        L3a:
            r13 = r1
        L3b:
            if (r13 != 0) goto Ldd
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r4 = r3.getInts()
            r5 = r1
            r6 = r5
        L48:
            java.lang.String r7 = ", "
            if (r5 >= r4) goto L6a
            int r8 = r2 << r5
            int r9 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r8 = r8 & r9
            if (r8 == 0) goto L67
            if (r6 <= 0) goto L5a
            r13.append(r7)
        L5a:
            int r7 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r5)
            java.lang.String r7 = r3.mo1045intParamNamew8GmfQM(r7)
            r13.append(r7)
            int r6 = r6 + 1
        L67:
            int r5 = r5 + 1
            goto L48
        L6a:
            java.lang.String r13 = r13.toString()
            java.lang.String r4 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r4)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            int r8 = r3.getObjects()
            r9 = r1
        L7d:
            if (r1 >= r8) goto L9d
            int r10 = r2 << r1
            int r11 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r10 = r10 & r11
            if (r10 == 0) goto L9a
            if (r6 <= 0) goto L8d
            r5.append(r7)
        L8d:
            int r10 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r1)
            java.lang.String r10 = r3.mo1046objectParamName31yXWZQ(r10)
            r5.append(r10)
            int r9 = r9 + 1
        L9a:
            int r1 = r1 + 1
            goto L7d
        L9d:
            java.lang.String r0 = r5.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r4)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Error while pushing "
            r1.append(r2)
            r1.append(r3)
            java.lang.String r2 = ". Not all arguments were provided. Missing "
            r1.append(r2)
            r1.append(r6)
            java.lang.String r2 = " int arguments ("
            r1.append(r2)
            r1.append(r13)
            java.lang.String r13 = ") and "
            r1.append(r13)
            r1.append(r9)
            java.lang.String r13 = " object arguments ("
            r1.append(r13)
            r1.append(r0)
            java.lang.String r13 = ")."
            r1.append(r13)
            java.lang.String r13 = r1.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r13)
        Ldd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushDowns(java.lang.Object[]):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushSideEffect(kotlin.jvm.functions.Function0 r13) {
        /*
            r12 = this;
            androidx.compose.runtime.changelist.Operations r0 = r12.operations
            androidx.compose.runtime.changelist.Operation$SideEffect r1 = androidx.compose.runtime.changelist.Operation.SideEffect.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            r4 = 1
            if (r13 != r2) goto L32
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L32
            r13 = r4
            goto L33
        L32:
            r13 = r3
        L33:
            if (r13 != 0) goto Ld5
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r5 = r3
            r6 = r5
        L40:
            java.lang.String r7 = ", "
            if (r5 >= r2) goto L62
            int r8 = r4 << r5
            int r9 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r8 = r8 & r9
            if (r8 == 0) goto L5f
            if (r6 <= 0) goto L52
            r13.append(r7)
        L52:
            int r7 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r5)
            java.lang.String r7 = r1.mo1045intParamNamew8GmfQM(r7)
            r13.append(r7)
            int r6 = r6 + 1
        L5f:
            int r5 = r5 + 1
            goto L40
        L62:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            int r8 = r1.getObjects()
            r9 = r3
        L75:
            if (r3 >= r8) goto L95
            int r10 = r4 << r3
            int r11 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r10 = r10 & r11
            if (r10 == 0) goto L92
            if (r6 <= 0) goto L85
            r5.append(r7)
        L85:
            int r10 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r10 = r1.mo1046objectParamName31yXWZQ(r10)
            r5.append(r10)
            int r9 = r9 + 1
        L92:
            int r3 = r3 + 1
            goto L75
        L95:
            java.lang.String r0 = r5.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Error while pushing "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r2.append(r1)
            r2.append(r6)
            java.lang.String r1 = " int arguments ("
            r2.append(r1)
            r2.append(r13)
            java.lang.String r13 = ") and "
            r2.append(r13)
            r2.append(r9)
            java.lang.String r13 = " object arguments ("
            r2.append(r13)
            r2.append(r0)
            java.lang.String r13 = ")."
            r2.append(r13)
            java.lang.String r13 = r2.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r13)
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushSideEffect(kotlin.jvm.functions.Function0):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushDetermineMovableContentNodeIndex(androidx.compose.runtime.internal.IntRef r12, androidx.compose.runtime.Anchor r13) {
        /*
            r11 = this;
            androidx.compose.runtime.changelist.Operations r0 = r11.operations
            androidx.compose.runtime.changelist.Operation$DetermineMovableContentNodeIndex r1 = androidx.compose.runtime.changelist.Operation.DetermineMovableContentNodeIndex.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r12)
            r12 = 1
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r12)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L39
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L39
            r13 = r12
            goto L3a
        L39:
            r13 = r3
        L3a:
            if (r13 != 0) goto Ldc
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r4 = r3
            r5 = r4
        L47:
            java.lang.String r6 = ", "
            if (r4 >= r2) goto L69
            int r7 = r12 << r4
            int r8 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r7 = r7 & r8
            if (r7 == 0) goto L66
            if (r5 <= 0) goto L59
            r13.append(r6)
        L59:
            int r6 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r4)
            java.lang.String r6 = r1.mo1045intParamNamew8GmfQM(r6)
            r13.append(r6)
            int r5 = r5 + 1
        L66:
            int r4 = r4 + 1
            goto L47
        L69:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            int r7 = r1.getObjects()
            r8 = r3
        L7c:
            if (r3 >= r7) goto L9c
            int r9 = r12 << r3
            int r10 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r9 = r9 & r10
            if (r9 == 0) goto L99
            if (r5 <= 0) goto L8c
            r4.append(r6)
        L8c:
            int r9 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r9 = r1.mo1046objectParamName31yXWZQ(r9)
            r4.append(r9)
            int r8 = r8 + 1
        L99:
            int r3 = r3 + 1
            goto L7c
        L9c:
            java.lang.String r12 = r4.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r2)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Error while pushing "
            r0.append(r2)
            r0.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r1 = " int arguments ("
            r0.append(r1)
            r0.append(r13)
            java.lang.String r13 = ") and "
            r0.append(r13)
            r0.append(r8)
            java.lang.String r13 = " object arguments ("
            r0.append(r13)
            r0.append(r12)
            java.lang.String r12 = ")."
            r0.append(r12)
            java.lang.String r12 = r0.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r12)
        Ldc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushDetermineMovableContentNodeIndex(androidx.compose.runtime.internal.IntRef, androidx.compose.runtime.Anchor):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushCopyNodesToNewAnchorLocation(java.util.List r12, androidx.compose.runtime.internal.IntRef r13) {
        /*
            r11 = this;
            boolean r0 = r12.isEmpty()
            if (r0 != 0) goto Le2
            androidx.compose.runtime.changelist.Operations r0 = r11.operations
            androidx.compose.runtime.changelist.Operation$CopyNodesToNewAnchorLocation r1 = androidx.compose.runtime.changelist.Operation.CopyNodesToNewAnchorLocation.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 1
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r12)
            r12 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r12)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L3f
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L3f
            r13 = r3
            goto L40
        L3f:
            r13 = r12
        L40:
            if (r13 != 0) goto Le2
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r4 = r12
            r5 = r4
        L4d:
            java.lang.String r6 = ", "
            if (r4 >= r2) goto L6f
            int r7 = r3 << r4
            int r8 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r7 = r7 & r8
            if (r7 == 0) goto L6c
            if (r5 <= 0) goto L5f
            r13.append(r6)
        L5f:
            int r6 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r4)
            java.lang.String r6 = r1.mo1045intParamNamew8GmfQM(r6)
            r13.append(r6)
            int r5 = r5 + 1
        L6c:
            int r4 = r4 + 1
            goto L4d
        L6f:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            int r7 = r1.getObjects()
            r8 = r12
        L82:
            if (r12 >= r7) goto La2
            int r9 = r3 << r12
            int r10 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r9 = r9 & r10
            if (r9 == 0) goto L9f
            if (r5 <= 0) goto L92
            r4.append(r6)
        L92:
            int r9 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r12)
            java.lang.String r9 = r1.mo1046objectParamName31yXWZQ(r9)
            r4.append(r9)
            int r8 = r8 + 1
        L9f:
            int r12 = r12 + 1
            goto L82
        La2:
            java.lang.String r12 = r4.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r2)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Error while pushing "
            r0.append(r2)
            r0.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r1 = " int arguments ("
            r0.append(r1)
            r0.append(r13)
            java.lang.String r13 = ") and "
            r0.append(r13)
            r0.append(r8)
            java.lang.String r13 = " object arguments ("
            r0.append(r13)
            r0.append(r12)
            java.lang.String r12 = ")."
            r0.append(r12)
            java.lang.String r12 = r0.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r12)
        Le2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushCopyNodesToNewAnchorLocation(java.util.List, androidx.compose.runtime.internal.IntRef):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushCopySlotTableToAnchorLocation(androidx.compose.runtime.MovableContentState r10, androidx.compose.runtime.CompositionContext r11, androidx.compose.runtime.MovableContentStateReference r12, androidx.compose.runtime.MovableContentStateReference r13) {
        /*
            r9 = this;
            androidx.compose.runtime.changelist.Operations r0 = r9.operations
            androidx.compose.runtime.changelist.Operation$CopySlotTableToAnchorLocation r1 = androidx.compose.runtime.changelist.Operation.CopySlotTableToAnchorLocation.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r10)
            r10 = 1
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r10)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r11)
            r11 = 3
            int r11 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r11)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r11, r13)
            r11 = 2
            int r11 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r11)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r11, r12)
            int r11 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r12 = r1.getInts()
            int r12 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r12)
            if (r11 != r12) goto L49
            int r11 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r12 = r1.getObjects()
            int r12 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r12)
            if (r11 != r12) goto L49
            r11 = r10
            goto L4a
        L49:
            r11 = r3
        L4a:
            if (r11 != 0) goto Lec
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            int r12 = r1.getInts()
            r13 = r3
            r2 = r13
        L57:
            java.lang.String r4 = ", "
            if (r13 >= r12) goto L79
            int r5 = r10 << r13
            int r6 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r5 = r5 & r6
            if (r5 == 0) goto L76
            if (r2 <= 0) goto L69
            r11.append(r4)
        L69:
            int r4 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r13)
            java.lang.String r4 = r1.mo1045intParamNamew8GmfQM(r4)
            r11.append(r4)
            int r2 = r2 + 1
        L76:
            int r13 = r13 + 1
            goto L57
        L79:
            java.lang.String r11 = r11.toString()
            java.lang.String r12 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r12)
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r5 = r1.getObjects()
            r6 = r3
        L8c:
            if (r3 >= r5) goto Lac
            int r7 = r10 << r3
            int r8 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r7 = r7 & r8
            if (r7 == 0) goto La9
            if (r2 <= 0) goto L9c
            r13.append(r4)
        L9c:
            int r7 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r7 = r1.mo1046objectParamName31yXWZQ(r7)
            r13.append(r7)
            int r6 = r6 + 1
        La9:
            int r3 = r3 + 1
            goto L8c
        Lac:
            java.lang.String r10 = r13.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r10, r12)
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.String r13 = "Error while pushing "
            r12.append(r13)
            r12.append(r1)
            java.lang.String r13 = ". Not all arguments were provided. Missing "
            r12.append(r13)
            r12.append(r2)
            java.lang.String r13 = " int arguments ("
            r12.append(r13)
            r12.append(r11)
            java.lang.String r11 = ") and "
            r12.append(r11)
            r12.append(r6)
            java.lang.String r11 = " object arguments ("
            r12.append(r11)
            r12.append(r10)
            java.lang.String r10 = ")."
            r12.append(r10)
            java.lang.String r10 = r12.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r10)
        Lec:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushCopySlotTableToAnchorLocation(androidx.compose.runtime.MovableContentState, androidx.compose.runtime.CompositionContext, androidx.compose.runtime.MovableContentStateReference, androidx.compose.runtime.MovableContentStateReference):void");
    }

    public final void pushEndMovableContentPlacement() {
        this.operations.push(Operation.EndMovableContentPlacement.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void pushExecuteOperationsIn(androidx.compose.runtime.changelist.ChangeList r12, androidx.compose.runtime.internal.IntRef r13) {
        /*
            r11 = this;
            boolean r0 = r12.isNotEmpty()
            if (r0 == 0) goto Le2
            androidx.compose.runtime.changelist.Operations r0 = r11.operations
            androidx.compose.runtime.changelist.Operation$ApplyChangeList r1 = androidx.compose.runtime.changelist.Operation.ApplyChangeList.INSTANCE
            r0.pushOp(r1)
            androidx.compose.runtime.changelist.Operations r2 = androidx.compose.runtime.changelist.Operations.WriteScope.m1057constructorimpl(r0)
            r3 = 0
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r12)
            r12 = 1
            int r4 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r12)
            androidx.compose.runtime.changelist.Operations.WriteScope.m1060setObjectDKhxnng(r2, r4, r13)
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            int r2 = r1.getInts()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L3f
            int r13 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            int r2 = r1.getObjects()
            int r2 = androidx.compose.runtime.changelist.Operations.access$createExpectedArgMask(r0, r2)
            if (r13 != r2) goto L3f
            r13 = r12
            goto L40
        L3f:
            r13 = r3
        L40:
            if (r13 != 0) goto Le2
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            int r2 = r1.getInts()
            r4 = r3
            r5 = r4
        L4d:
            java.lang.String r6 = ", "
            if (r4 >= r2) goto L6f
            int r7 = r12 << r4
            int r8 = androidx.compose.runtime.changelist.Operations.access$getPushedIntMask$p(r0)
            r7 = r7 & r8
            if (r7 == 0) goto L6c
            if (r5 <= 0) goto L5f
            r13.append(r6)
        L5f:
            int r6 = androidx.compose.runtime.changelist.Operation.IntParameter.m1047constructorimpl(r4)
            java.lang.String r6 = r1.mo1045intParamNamew8GmfQM(r6)
            r13.append(r6)
            int r5 = r5 + 1
        L6c:
            int r4 = r4 + 1
            goto L4d
        L6f:
            java.lang.String r13 = r13.toString()
            java.lang.String r2 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r2)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            int r7 = r1.getObjects()
            r8 = r3
        L82:
            if (r3 >= r7) goto La2
            int r9 = r12 << r3
            int r10 = androidx.compose.runtime.changelist.Operations.access$getPushedObjectMask$p(r0)
            r9 = r9 & r10
            if (r9 == 0) goto L9f
            if (r5 <= 0) goto L92
            r4.append(r6)
        L92:
            int r9 = androidx.compose.runtime.changelist.Operation.ObjectParameter.m1049constructorimpl(r3)
            java.lang.String r9 = r1.mo1046objectParamName31yXWZQ(r9)
            r4.append(r9)
            int r8 = r8 + 1
        L9f:
            int r3 = r3 + 1
            goto L82
        La2:
            java.lang.String r12 = r4.toString()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r2)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Error while pushing "
            r0.append(r2)
            r0.append(r1)
            java.lang.String r1 = ". Not all arguments were provided. Missing "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r1 = " int arguments ("
            r0.append(r1)
            r0.append(r13)
            java.lang.String r13 = ") and "
            r0.append(r13)
            r0.append(r8)
            java.lang.String r13 = " object arguments ("
            r0.append(r13)
            r0.append(r12)
            java.lang.String r12 = ")."
            r0.append(r12)
            java.lang.String r12 = r0.toString()
            androidx.compose.runtime.PreconditionsKt.throwIllegalStateException(r12)
        Le2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.ChangeList.pushExecuteOperationsIn(androidx.compose.runtime.changelist.ChangeList, androidx.compose.runtime.internal.IntRef):void");
    }
}
