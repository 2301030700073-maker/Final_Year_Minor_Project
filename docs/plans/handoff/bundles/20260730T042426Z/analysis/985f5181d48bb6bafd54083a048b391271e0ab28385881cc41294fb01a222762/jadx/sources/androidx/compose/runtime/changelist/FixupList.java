package androidx.compose.runtime.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RememberManager;
import androidx.compose.runtime.SlotWriter;

/* compiled from: FixupList.kt */
/* loaded from: classes.dex */
public final class FixupList extends OperationsDebugStringFormattable {
    private final Operations operations = new Operations();
    private final Operations pendingOperations = new Operations();

    public final boolean isEmpty() {
        return this.operations.isEmpty();
    }

    public final void clear() {
        this.pendingOperations.clear();
        this.operations.clear();
    }

    public final void executeAndFlushAllPendingFixups(Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
        if (!this.pendingOperations.isEmpty()) {
            ComposerKt.composeImmediateRuntimeError("FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?");
        }
        this.operations.executeAndFlushAllPendingOperations(applier, slotWriter, rememberManager);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void createAndInsertNode(kotlin.jvm.functions.Function0 r20, int r21, androidx.compose.runtime.Anchor r22) {
        /*
            Method dump skipped, instructions count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.FixupList.createAndInsertNode(kotlin.jvm.functions.Function0, int, androidx.compose.runtime.Anchor):void");
    }

    public final void endNodeInsert() {
        if (!this.pendingOperations.isNotEmpty()) {
            ComposerKt.composeImmediateRuntimeError("Cannot end node insertion, there are no pending operations that can be realized.");
        }
        this.pendingOperations.popInto(this.operations);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateNode(java.lang.Object r12, kotlin.jvm.functions.Function2 r13) {
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.FixupList.updateNode(java.lang.Object, kotlin.jvm.functions.Function2):void");
    }
}
