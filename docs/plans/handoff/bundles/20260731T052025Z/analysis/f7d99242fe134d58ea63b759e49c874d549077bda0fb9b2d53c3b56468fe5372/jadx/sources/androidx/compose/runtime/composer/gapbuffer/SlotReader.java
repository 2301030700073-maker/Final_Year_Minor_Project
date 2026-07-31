package androidx.compose.runtime.composer.gapbuffer;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.IntStack;
import androidx.compose.runtime.PreconditionsKt;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SlotReader {
    public final /* synthetic */ int $r8$classId = 1;
    public boolean closed;
    public int currentEnd;
    public int currentGroup;
    public int currentSlot;
    public int currentSlotEnd;
    public Object currentSlotStack;
    public int emptyCount;
    public int[] groups;
    public int groupsSize;
    public boolean hadNext;
    public int parent;
    public Object slots;
    public int slotsSize;
    public Object table;

    public SlotReader(SlotTable slotTable) {
        this.table = slotTable;
        this.groups = slotTable.groups;
        int i = slotTable.groupsSize;
        this.groupsSize = i;
        this.slots = slotTable.slots;
        this.slotsSize = slotTable.slotsSize;
        this.currentEnd = i;
        this.parent = -1;
        this.currentSlotStack = new IntStack();
    }

    public void ExpandBuff(boolean z) {
        int i = this.groupsSize;
        int i2 = i + 2048;
        char[] cArr = new char[i2];
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        char[] cArr2 = (char[]) this.currentSlotStack;
        int i3 = this.currentGroup;
        try {
            if (z) {
                System.arraycopy(cArr2, i3, cArr, 0, i - i3);
                System.arraycopy((char[]) this.currentSlotStack, 0, cArr, this.groupsSize - this.currentGroup, this.currentEnd);
                this.currentSlotStack = cArr;
                int[] iArr3 = this.groups;
                int i4 = this.currentGroup;
                System.arraycopy(iArr3, i4, iArr, 0, this.groupsSize - i4);
                System.arraycopy(this.groups, 0, iArr, this.groupsSize - this.currentGroup, this.currentEnd);
                this.groups = iArr;
                int[] iArr4 = (int[]) this.table;
                int i5 = this.currentGroup;
                System.arraycopy(iArr4, i5, iArr2, 0, this.groupsSize - i5);
                System.arraycopy((int[]) this.table, 0, iArr2, this.groupsSize - this.currentGroup, this.currentEnd);
                this.table = iArr2;
                int i6 = (this.groupsSize - this.currentGroup) + this.currentEnd;
                this.currentEnd = i6;
                this.currentSlot = i6;
            } else {
                System.arraycopy(cArr2, i3, cArr, 0, i - i3);
                this.currentSlotStack = cArr;
                int[] iArr5 = this.groups;
                int i7 = this.currentGroup;
                System.arraycopy(iArr5, i7, iArr, 0, this.groupsSize - i7);
                this.groups = iArr;
                int[] iArr6 = (int[]) this.table;
                int i8 = this.currentGroup;
                System.arraycopy(iArr6, i8, iArr2, 0, this.groupsSize - i8);
                this.table = iArr2;
                int i9 = this.currentEnd - this.currentGroup;
                this.currentEnd = i9;
                this.currentSlot = i9;
            }
            int i10 = this.groupsSize + 2048;
            this.groupsSize = i10;
            this.slotsSize = i10;
            this.currentGroup = 0;
        } catch (Throwable th) {
            throw new Error(th.getMessage());
        }
    }

    public String GetImage() {
        int i = this.currentEnd;
        int i2 = this.currentGroup;
        char[] cArr = (char[]) this.currentSlotStack;
        return i >= i2 ? new String(cArr, i2, (i - i2) + 1) : new String(cArr, i2, this.groupsSize - i2).concat(new String((char[]) this.currentSlotStack, 0, this.currentEnd + 1));
    }

    public char[] GetSuffix(int i) {
        char[] cArr = new char[i];
        int i2 = this.currentEnd;
        int i3 = i2 + 1;
        char[] cArr2 = (char[]) this.currentSlotStack;
        if (i3 >= i) {
            System.arraycopy(cArr2, (i2 - i) + 1, cArr, 0, i);
            return cArr;
        }
        System.arraycopy(cArr2, this.groupsSize - ((i - i2) - 1), cArr, 0, (i - i2) - 1);
        System.arraycopy((char[]) this.currentSlotStack, 0, cArr, (i - r6) - 1, this.currentEnd + 1);
        return cArr;
    }

    public GapAnchor anchor(int i) {
        ArrayList arrayList = ((SlotTable) this.table).anchors;
        int search = SlotTableKt.search(arrayList, i, this.groupsSize);
        if (search >= 0) {
            return (GapAnchor) arrayList.get(search);
        }
        GapAnchor gapAnchor = new GapAnchor(i);
        arrayList.add(-(search + 1), gapAnchor);
        return gapAnchor;
    }

    public Object aux(int[] iArr, int i) {
        int i2 = i * 5;
        int i3 = iArr[i2 + 1];
        if ((268435456 & i3) != 0) {
            return ((Object[]) this.slots)[i2 >= iArr.length ? iArr.length : iArr[i2 + 4] + Integer.bitCount(i3 >> 29)];
        }
        return Composer.Companion.Empty;
    }

    public void backup(int i) {
        this.currentSlotEnd += i;
        int i2 = this.currentEnd - i;
        this.currentEnd = i2;
        if (i2 < 0) {
            this.currentEnd = i2 + this.groupsSize;
        }
    }

    public void close() {
        this.closed = true;
        if (((SlotTable) this.table).readers <= 0) {
            ComposerKt.composeImmediateRuntimeError("Unexpected reader close()");
        }
        r0.readers--;
        this.slots = new Object[0];
    }

    public boolean containsMark(int i) {
        return (this.groups[(i * 5) + 1] & 67108864) != 0;
    }

    public void endGroup() {
        int i = this.groupsSize;
        int[] iArr = this.groups;
        if (this.emptyCount == 0) {
            if (this.currentGroup != this.currentEnd) {
                ComposerKt.composeImmediateRuntimeError("endGroup() not called at the end of a group");
            }
            int i2 = iArr[(this.parent * 5) + 2];
            this.parent = i2;
            this.currentEnd = i2 < 0 ? i : iArr[(i2 * 5) + 3] + i2;
            int pop = ((IntStack) this.currentSlotStack).pop();
            if (pop < 0) {
                this.currentSlot = 0;
                this.currentSlotEnd = 0;
            } else {
                this.currentSlot = pop;
                this.currentSlotEnd = i2 >= i + (-1) ? this.slotsSize : iArr[((i2 + 1) * 5) + 4];
            }
        }
    }

    public Object getGroupAux() {
        int i = this.currentGroup;
        if (i < this.currentEnd) {
            return aux(this.groups, i);
        }
        return 0;
    }

    public int getGroupKey() {
        int i = this.currentGroup;
        if (i < this.currentEnd) {
            return this.groups[i * 5];
        }
        return 0;
    }

    public Object groupGet(int i, int i2) {
        int[] iArr = this.groups;
        int access$slotAnchor = SlotTableKt.access$slotAnchor(iArr, i);
        int i3 = i + 1;
        int i4 = access$slotAnchor + i2;
        return i4 < (i3 < this.groupsSize ? iArr[(i3 * 5) + 4] : this.slotsSize) ? ((Object[]) this.slots)[i4] : Composer.Companion.Empty;
    }

    public int groupKey(int i) {
        return this.groups[i * 5];
    }

    public boolean hasMark(int i) {
        return (this.groups[(i * 5) + 1] & 134217728) != 0;
    }

    public boolean hasObjectKey(int i) {
        return (this.groups[(i * 5) + 1] & 536870912) != 0;
    }

    public boolean isNode(int i) {
        return (this.groups[(i * 5) + 1] & 1073741824) != 0;
    }

    public Object next() {
        int i;
        if (this.emptyCount > 0 || (i = this.currentSlot) >= this.currentSlotEnd) {
            this.hadNext = false;
            return Composer.Companion.Empty;
        }
        this.hadNext = true;
        Object[] objArr = (Object[]) this.slots;
        this.currentSlot = i + 1;
        return objArr[i];
    }

    public Object node(int i) {
        int[] iArr = this.groups;
        int i2 = i * 5;
        int i3 = iArr[i2 + 1] & 1073741824;
        if (i3 != 0) {
            return i3 != 0 ? ((Object[]) this.slots)[iArr[i2 + 4]] : Composer.Companion.Empty;
        }
        return null;
    }

    public int nodeCount(int i) {
        return this.groups[(i * 5) + 1] & 67108863;
    }

    public Object objectKey(int[] iArr, int i) {
        int i2 = i * 5;
        int i3 = iArr[i2 + 1];
        if ((536870912 & i3) == 0) {
            return null;
        }
        return ((Object[]) this.slots)[Integer.bitCount(i3 >> 30) + iArr[i2 + 4]];
    }

    public int parent(int i) {
        return this.groups[(i * 5) + 2];
    }

    public char readChar() {
        int i = this.currentSlotEnd;
        if (i > 0) {
            this.currentSlotEnd = i - 1;
            int i2 = this.currentEnd + 1;
            this.currentEnd = i2;
            if (i2 == this.groupsSize) {
                this.currentEnd = 0;
            }
            return ((char[]) this.currentSlotStack)[this.currentEnd];
        }
        int i3 = this.currentEnd + 1;
        this.currentEnd = i3;
        int i4 = this.currentSlot;
        if (i3 >= i4) {
            StringReader stringReader = (StringReader) this.slots;
            int i5 = this.slotsSize;
            if (i4 == i5) {
                int i6 = this.groupsSize;
                int i7 = this.currentGroup;
                if (i5 == i6) {
                    if (i7 > 2048) {
                        this.currentSlot = 0;
                        this.currentEnd = 0;
                        this.slotsSize = i7;
                    } else if (i7 < 0) {
                        this.currentSlot = 0;
                        this.currentEnd = 0;
                    } else {
                        ExpandBuff(false);
                    }
                } else if (i5 > i7) {
                    this.slotsSize = i6;
                } else if (i7 - i5 < 2048) {
                    ExpandBuff(true);
                } else {
                    this.slotsSize = i7;
                }
            }
            try {
                char[] cArr = (char[]) this.currentSlotStack;
                int i8 = this.currentSlot;
                int read = stringReader.read(cArr, i8, this.slotsSize - i8);
                if (read == -1) {
                    stringReader.close();
                    throw new IOException();
                }
                this.currentSlot += read;
            } catch (IOException e) {
                this.currentEnd--;
                backup(0);
                if (this.currentGroup == -1) {
                    this.currentGroup = this.currentEnd;
                }
                throw e;
            }
        }
        char[] cArr2 = (char[]) this.currentSlotStack;
        int i9 = this.currentEnd;
        char c = cArr2[i9];
        this.parent++;
        if (this.hadNext) {
            this.hadNext = false;
            int i10 = this.emptyCount;
            this.parent = 1;
            this.emptyCount = i10 + 1;
        } else if (this.closed) {
            this.closed = false;
            if (c == '\n') {
                this.hadNext = true;
            } else {
                int i11 = this.emptyCount;
                this.parent = 1;
                this.emptyCount = i11 + 1;
            }
        }
        if (c == '\t') {
            int i12 = this.parent - 1;
            this.parent = (8 - (i12 % 8)) + i12;
        } else if (c == '\n') {
            this.hadNext = true;
        } else if (c == '\r') {
            this.closed = true;
        }
        this.groups[i9] = this.emptyCount;
        ((int[]) this.table)[i9] = this.parent;
        return c;
    }

    public void reposition(int i) {
        int[] iArr = this.groups;
        if (this.emptyCount != 0) {
            ComposerKt.composeImmediateRuntimeError("Cannot reposition while in an empty region");
        }
        this.currentGroup = i;
        int i2 = this.groupsSize;
        int i3 = i < i2 ? iArr[(i * 5) + 2] : -1;
        if (i3 != this.parent) {
            this.parent = i3;
            if (i3 < 0) {
                this.currentEnd = i2;
            } else {
                this.currentEnd = iArr[(i3 * 5) + 3] + i3;
            }
            this.currentSlot = 0;
            this.currentSlotEnd = 0;
        }
    }

    public int skipGroup() {
        if (this.emptyCount != 0) {
            ComposerKt.composeImmediateRuntimeError("Cannot skip while in an empty region");
        }
        int[] iArr = this.groups;
        int i = this.currentGroup;
        int i2 = i * 5;
        int i3 = iArr[i2 + 1];
        int i4 = (1073741824 & i3) != 0 ? 1 : i3 & 67108863;
        this.currentGroup = iArr[i2 + 3] + i;
        return i4;
    }

    public void skipToGroupEnd() {
        if (!(this.emptyCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot skip the enclosing group while in an empty region");
        }
        this.currentGroup = this.currentEnd;
        this.currentSlot = 0;
        this.currentSlotEnd = 0;
    }

    public void startGroup() {
        int[] iArr = this.groups;
        if (this.emptyCount <= 0) {
            int i = this.parent;
            int i2 = this.currentGroup;
            int i3 = i2 * 5;
            if (iArr[i3 + 2] != i) {
                PreconditionsKt.throwIllegalArgumentException("Invalid slot table detected");
            }
            IntStack intStack = (IntStack) this.currentSlotStack;
            int i4 = this.currentSlot;
            int i5 = this.currentSlotEnd;
            if (i4 == 0 && i5 == 0) {
                intStack.push(-1);
            } else {
                intStack.push(i4);
            }
            this.parent = i2;
            this.currentEnd = iArr[i3 + 3] + i2;
            int i6 = i2 + 1;
            this.currentGroup = i6;
            this.currentSlot = SlotTableKt.access$slotAnchor(iArr, i2);
            this.currentSlotEnd = i2 >= this.groupsSize + (-1) ? this.slotsSize : iArr[(i6 * 5) + 4];
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                StringBuilder sb = new StringBuilder("SlotReader(current=");
                sb.append(this.currentGroup);
                sb.append(", key=");
                sb.append(getGroupKey());
                sb.append(", parent=");
                sb.append(this.parent);
                sb.append(", end=");
                return CameraDevices$CC.m(sb, this.currentEnd, ')');
            default:
                return super.toString();
        }
    }

    public /* synthetic */ SlotReader() {
    }
}
