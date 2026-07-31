package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.IntStack;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import java.util.ArrayList;
import kotlin.UnsignedKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ComposerChangeListWriter {
    public ChangeList changeList;
    public final GapComposer composer;
    public int moveCount;
    public int pendingUps;
    public boolean startedGroup;
    public int writersReaderDelta;
    public final IntStack startedGroups = new IntStack();
    public boolean implicitRootStart = true;
    public final ArrayList pendingDownNodes = new ArrayList();
    public int removeFrom = -1;
    public int moveFrom = -1;
    public int moveTo = -1;

    public ComposerChangeListWriter(GapComposer gapComposer, ChangeList changeList) {
        this.composer = gapComposer;
        this.changeList = changeList;
    }

    public final void moveUp() {
        realizeNodeMovementOperations();
        ArrayList arrayList = this.pendingDownNodes;
        if (arrayList.isEmpty()) {
            this.pendingUps++;
        } else {
            arrayList.remove(arrayList.size() - 1);
        }
    }

    public final void pushPendingUpsAndDowns() {
        int i = this.pendingUps;
        if (i > 0) {
            Operations operations = this.changeList.operations;
            operations.pushOp(Operation.Ups.INSTANCE);
            operations.intArgs[operations.intArgsSize - operations.opCodes[operations.opCodesSize - 1].ints] = i;
            this.pendingUps = 0;
        }
        ArrayList arrayList = this.pendingDownNodes;
        if (arrayList.isEmpty()) {
            return;
        }
        ChangeList changeList = this.changeList;
        int size = arrayList.size();
        Object[] objArr = new Object[size];
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i2] = arrayList.get(i2);
        }
        changeList.getClass();
        if (size != 0) {
            Operations operations2 = changeList.operations;
            operations2.pushOp(Operation.Downs.INSTANCE);
            UnsignedKt.m826setObjectsGr0YRc(operations2, 0, objArr);
        }
        arrayList.clear();
    }

    public final void realizeNodeMovementOperations() {
        int i = this.moveCount;
        if (i > 0) {
            int i2 = this.removeFrom;
            if (i2 >= 0) {
                pushPendingUpsAndDowns();
                Operations operations = this.changeList.operations;
                operations.pushOp(Operation.RemoveNode.INSTANCE);
                int i3 = operations.intArgsSize - operations.opCodes[operations.opCodesSize - 1].ints;
                int[] iArr = operations.intArgs;
                iArr[i3] = i2;
                iArr[i3 + 1] = i;
                this.removeFrom = -1;
            } else {
                int i4 = this.moveTo;
                int i5 = this.moveFrom;
                pushPendingUpsAndDowns();
                Operations operations2 = this.changeList.operations;
                operations2.pushOp(Operation.MoveNode.INSTANCE);
                int i6 = operations2.intArgsSize - operations2.opCodes[operations2.opCodesSize - 1].ints;
                int[] iArr2 = operations2.intArgs;
                iArr2[i6 + 1] = i4;
                iArr2[i6] = i5;
                iArr2[i6 + 2] = i;
                this.moveFrom = -1;
                this.moveTo = -1;
            }
            this.moveCount = 0;
        }
    }

    public final void realizeOperationLocation(boolean z) {
        SlotReader slotReader = this.composer.reader;
        int i = z ? slotReader.parent : slotReader.currentGroup;
        int i2 = i - this.writersReaderDelta;
        if (i2 < 0) {
            ComposerKt.composeImmediateRuntimeError("Tried to seek backward");
        }
        if (i2 > 0) {
            Operations operations = this.changeList.operations;
            operations.pushOp(Operation.AdvanceSlotsBy.INSTANCE);
            operations.intArgs[operations.intArgsSize - operations.opCodes[operations.opCodesSize - 1].ints] = i2;
            this.writersReaderDelta = i;
        }
    }

    public final void removeNode(int i, int i2) {
        if (i2 > 0) {
            if (!(i >= 0)) {
                ComposerKt.composeImmediateRuntimeError("Invalid remove index " + i);
            }
            if (this.removeFrom == i) {
                this.moveCount += i2;
                return;
            }
            realizeNodeMovementOperations();
            this.removeFrom = i;
            this.moveCount = i2;
        }
    }
}
