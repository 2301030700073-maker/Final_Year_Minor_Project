package androidx.compose.runtime.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.RememberManager;
import androidx.compose.runtime.SlotWriter;
import java.util.Arrays;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: Operations.kt */
/* loaded from: classes.dex */
public final class Operations extends OperationsDebugStringFormattable {
    private int intArgsSize;
    private int objectArgsSize;
    private int opCodesSize;
    private int pushedIntMask;
    private int pushedObjectMask;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private Operation[] opCodes = new Operation[16];
    private int[] intArgs = new int[16];
    private Object[] objectArgs = new Object[16];

    /* JADX INFO: Access modifiers changed from: private */
    public final int createExpectedArgMask(int i) {
        if (i == 0) {
            return 0;
        }
        return (-1) >>> (32 - i);
    }

    public final int getSize() {
        return this.opCodesSize;
    }

    public final boolean isEmpty() {
        return getSize() == 0;
    }

    public final boolean isNotEmpty() {
        return getSize() != 0;
    }

    public final void clear() {
        this.opCodesSize = 0;
        this.intArgsSize = 0;
        ArraysKt.fill(this.objectArgs, (Object) null, 0, this.objectArgsSize);
        this.objectArgsSize = 0;
    }

    public final void pushOp(Operation operation) {
        this.pushedIntMask = 0;
        this.pushedObjectMask = 0;
        int i = this.opCodesSize;
        if (i == this.opCodes.length) {
            Object[] copyOf = Arrays.copyOf(this.opCodes, this.opCodesSize + RangesKt.coerceAtMost(i, 1024));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.opCodes = (Operation[]) copyOf;
        }
        ensureIntArgsSizeAtLeast(this.intArgsSize + operation.getInts());
        ensureObjectArgsSizeAtLeast(this.objectArgsSize + operation.getObjects());
        Operation[] operationArr = this.opCodes;
        int i2 = this.opCodesSize;
        this.opCodesSize = i2 + 1;
        operationArr[i2] = operation;
        this.intArgsSize += operation.getInts();
        this.objectArgsSize += operation.getObjects();
    }

    private final int determineNewSize(int i, int i2) {
        return RangesKt.coerceAtLeast(i + RangesKt.coerceAtMost(i, 1024), i2);
    }

    private final void ensureIntArgsSizeAtLeast(int i) {
        int[] iArr = this.intArgs;
        int length = iArr.length;
        if (i > length) {
            int[] copyOf = Arrays.copyOf(iArr, determineNewSize(length, i));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.intArgs = copyOf;
        }
    }

    private final void ensureObjectArgsSizeAtLeast(int i) {
        Object[] objArr = this.objectArgs;
        int length = objArr.length;
        if (i > length) {
            Object[] copyOf = Arrays.copyOf(objArr, determineNewSize(length, i));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.objectArgs = copyOf;
        }
    }

    public final void push(Operation operation) {
        if (!(operation.getInts() == 0 && operation.getObjects() == 0)) {
            PreconditionsKt.throwIllegalArgumentException("Cannot push " + operation + " without arguments because it expects " + operation.getInts() + " ints and " + operation.getObjects() + " objects.");
        }
        pushOp(operation);
    }

    public final void popInto(Operations operations) {
        if (isEmpty()) {
            throw new NoSuchElementException("Cannot pop(), because the stack is empty.");
        }
        Operation[] operationArr = this.opCodes;
        int i = this.opCodesSize - 1;
        this.opCodesSize = i;
        Operation operation = operationArr[i];
        Intrinsics.checkNotNull(operation);
        this.opCodes[this.opCodesSize] = null;
        operations.pushOp(operation);
        int i2 = this.objectArgsSize;
        int i3 = operations.objectArgsSize;
        int objects = operation.getObjects();
        for (int i4 = 0; i4 < objects; i4++) {
            i3--;
            i2--;
            Object[] objArr = operations.objectArgs;
            Object[] objArr2 = this.objectArgs;
            objArr[i3] = objArr2[i2];
            objArr2[i2] = null;
        }
        int i5 = this.intArgsSize;
        int i6 = operations.intArgsSize;
        int ints = operation.getInts();
        for (int i7 = 0; i7 < ints; i7++) {
            i6--;
            i5--;
            int[] iArr = operations.intArgs;
            int[] iArr2 = this.intArgs;
            iArr[i6] = iArr2[i5];
            iArr2[i5] = 0;
        }
        this.objectArgsSize -= operation.getObjects();
        this.intArgsSize -= operation.getInts();
    }

    public final void executeAndFlushAllPendingOperations(Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
        if (isNotEmpty()) {
            OpIterator opIterator = new OpIterator();
            do {
                opIterator.getOperation().execute(opIterator, applier, slotWriter, rememberManager);
            } while (opIterator.next());
        }
        clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Operation peekOperation() {
        Operation operation = this.opCodes[this.opCodesSize - 1];
        Intrinsics.checkNotNull(operation);
        return operation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: topIntIndexOf-w8GmfQM, reason: not valid java name */
    public final int m1055topIntIndexOfw8GmfQM(int i) {
        return (this.intArgsSize - peekOperation().getInts()) + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: topObjectIndexOf-31yXWZQ, reason: not valid java name */
    public final int m1056topObjectIndexOf31yXWZQ(int i) {
        return (this.objectArgsSize - peekOperation().getObjects()) + i;
    }

    /* compiled from: Operations.kt */
    public static final class WriteScope {
        /* renamed from: constructor-impl, reason: not valid java name */
        public static Operations m1057constructorimpl(Operations operations) {
            return operations;
        }

        /* renamed from: getOperation-impl, reason: not valid java name */
        public static final Operation m1058getOperationimpl(Operations operations) {
            return operations.peekOperation();
        }

        /* renamed from: setInt-A6tL2VI, reason: not valid java name */
        public static final void m1059setIntA6tL2VI(Operations operations, int i, int i2) {
            int i3 = 1 << i;
            if (!((operations.pushedIntMask & i3) == 0)) {
                PreconditionsKt.throwIllegalStateException("Already pushed argument " + m1058getOperationimpl(operations).mo1045intParamNamew8GmfQM(i));
            }
            operations.pushedIntMask |= i3;
            operations.intArgs[operations.m1055topIntIndexOfw8GmfQM(i)] = i2;
        }

        /* renamed from: setObject-DKhxnng, reason: not valid java name */
        public static final void m1060setObjectDKhxnng(Operations operations, int i, Object obj) {
            int i2 = 1 << i;
            if (!((operations.pushedObjectMask & i2) == 0)) {
                PreconditionsKt.throwIllegalStateException("Already pushed argument " + m1058getOperationimpl(operations).mo1046objectParamName31yXWZQ(i));
            }
            operations.pushedObjectMask |= i2;
            operations.objectArgs[operations.m1056topObjectIndexOf31yXWZQ(i)] = obj;
        }
    }

    /* compiled from: Operations.kt */
    public final class OpIterator implements OperationArgContainer {
        private int intIdx;
        private int objIdx;
        private int opIdx;

        public OpIterator() {
        }

        public final boolean next() {
            if (this.opIdx >= Operations.this.opCodesSize) {
                return false;
            }
            Operation operation = getOperation();
            this.intIdx += operation.getInts();
            this.objIdx += operation.getObjects();
            int i = this.opIdx + 1;
            this.opIdx = i;
            return i < Operations.this.opCodesSize;
        }

        public final Operation getOperation() {
            Operation operation = Operations.this.opCodes[this.opIdx];
            Intrinsics.checkNotNull(operation);
            return operation;
        }

        @Override // androidx.compose.runtime.changelist.OperationArgContainer
        /* renamed from: getInt-w8GmfQM */
        public int mo1051getIntw8GmfQM(int i) {
            return Operations.this.intArgs[this.intIdx + i];
        }

        @Override // androidx.compose.runtime.changelist.OperationArgContainer
        /* renamed from: getObject-31yXWZQ */
        public Object mo1052getObject31yXWZQ(int i) {
            return Operations.this.objectArgs[this.objIdx + i];
        }
    }

    /* compiled from: Operations.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public String toString() {
        return super.toString();
    }
}
