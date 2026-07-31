package androidx.compose.ui.input.pointer;

import android.os.Build;
import android.util.SparseBooleanArray;
import android.util.SparseLongArray;
import android.view.MotionEvent;
import androidx.collection.LongSparseArray;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.WeakCache;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MotionEventAdapter {
    public Offset inferredCursorRawOffset;
    public boolean isInFakeFingerGesture;
    public boolean isReinterpretingFakeFingerGesture;
    public long nextId;
    public final SparseLongArray motionEventToComposePointerIdMap = new SparseLongArray();
    public final SparseBooleanArray activeHoverIds = new SparseBooleanArray();
    public final ArrayList pointers = new ArrayList();
    public final LongSparseArray previousIndirectPointerEventData = new LongSparseArray((Object) null);
    public int previousToolType = -1;
    public int previousSource = -1;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class IndirectPointerEventData {
        public final long packedValue;

        public /* synthetic */ IndirectPointerEventData(long j) {
            this.packedValue = j;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof IndirectPointerEventData) {
                return this.packedValue == ((IndirectPointerEventData) obj).packedValue;
            }
            return false;
        }

        public final int hashCode() {
            long j = this.packedValue;
            return (int) (j ^ (j >>> 32));
        }

        public final String toString() {
            return "IndirectPointerEventData(packedValue=" + this.packedValue + ')';
        }
    }

    public final void addFreshIds(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        SparseLongArray sparseLongArray = this.motionEventToComposePointerIdMap;
        if (actionMasked != 0 && actionMasked != 5) {
            if (actionMasked != 9) {
                return;
            }
            int pointerId = motionEvent.getPointerId(0);
            if (sparseLongArray.indexOfKey(pointerId) < 0) {
                long j = this.nextId;
                this.nextId = 1 + j;
                sparseLongArray.put(pointerId, j);
                return;
            }
            return;
        }
        int actionIndex = motionEvent.getActionIndex();
        int pointerId2 = motionEvent.getPointerId(actionIndex);
        if (sparseLongArray.indexOfKey(pointerId2) < 0) {
            long j2 = this.nextId;
            this.nextId = 1 + j2;
            sparseLongArray.put(pointerId2, j2);
            if (motionEvent.getToolType(actionIndex) == 3) {
                this.activeHoverIds.put(pointerId2, true);
            }
        }
    }

    public final void clearOnDeviceChange(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() != 1) {
            return;
        }
        int toolType = motionEvent.getToolType(0);
        int source = motionEvent.getSource();
        if (toolType == this.previousToolType && source == this.previousSource) {
            return;
        }
        this.previousToolType = toolType;
        this.previousSource = source;
        this.activeHoverIds.clear();
        this.motionEventToComposePointerIdMap.clear();
    }

    public final WeakCache convertToPointerInputEvent$ui(MotionEvent motionEvent, AndroidComposeView androidComposeView) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        SparseBooleanArray sparseBooleanArray = this.activeHoverIds;
        if (actionMasked == 3 || actionMasked == 4) {
            this.motionEventToComposePointerIdMap.clear();
            sparseBooleanArray.clear();
            this.isInFakeFingerGesture = false;
            this.isReinterpretingFakeFingerGesture = false;
            this.inferredCursorRawOffset = null;
            return null;
        }
        clearOnDeviceChange(motionEvent);
        addFreshIds(motionEvent);
        boolean z = actionMasked == 9 || actionMasked == 7 || actionMasked == 10;
        boolean z2 = actionMasked == 8;
        if (z) {
            sparseBooleanArray.put(motionEvent.getPointerId(motionEvent.getActionIndex()), true);
        }
        if (actionMasked != 1) {
            i = actionMasked != 6 ? -1 : motionEvent.getActionIndex();
        } else {
            i = 0;
        }
        ArrayList arrayList = this.pointers;
        arrayList.clear();
        if (motionEvent.getActionMasked() == 0) {
            boolean z3 = Build.VERSION.SDK_INT >= 34 && (motionEvent.getClassification() == 3 || motionEvent.getClassification() == 5);
            boolean z4 = motionEvent.getButtonState() == 0 && (motionEvent.isFromSource(8194) || motionEvent.isFromSource(1048584));
            if (z3 || z4) {
                this.isInFakeFingerGesture = true;
            }
        }
        if (Build.VERSION.SDK_INT < 34 || motionEvent.getClassification() != 3) {
            this.isReinterpretingFakeFingerGesture = false;
            int pointerCount = motionEvent.getPointerCount();
            int i2 = 0;
            while (i2 < pointerCount) {
                arrayList.add(m563createPointerInputEventDataInuC1xA(androidComposeView, motionEvent, null, i2, (z || i2 == i || (z2 && motionEvent.getButtonState() == 0)) ? false : true));
                i2++;
            }
        } else {
            this.isReinterpretingFakeFingerGesture = true;
            if (motionEvent.getActionMasked() == 0) {
                this.inferredCursorRawOffset = new Offset((Float.floatToRawIntBits(motionEvent.getRawX(0)) << 32) | (Float.floatToRawIntBits(motionEvent.getRawY(0)) & 4294967295L));
            }
            arrayList.add(m563createPointerInputEventDataInuC1xA(androidComposeView, motionEvent, this.inferredCursorRawOffset, 0, false));
        }
        if (motionEvent.getActionMasked() == 1) {
            this.isInFakeFingerGesture = false;
            this.isReinterpretingFakeFingerGesture = false;
            this.inferredCursorRawOffset = null;
        }
        removeStaleIds(motionEvent);
        motionEvent.getEventTime();
        return new WeakCache(5, arrayList, motionEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00b3, code lost:
    
        if (r1 != 4) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0182 A[EDGE_INSN: B:41:0x0182->B:42:0x0182 BREAK  A[LOOP:0: B:20:0x00ea->B:38:0x0179], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01a9  */
    /* renamed from: createPointerInputEventData-InuC1xA, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.ui.input.pointer.PointerInputEventData m563createPointerInputEventDataInuC1xA(androidx.compose.ui.platform.AndroidComposeView r43, android.view.MotionEvent r44, androidx.compose.ui.geometry.Offset r45, int r46, boolean r47) {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.MotionEventAdapter.m563createPointerInputEventDataInuC1xA(androidx.compose.ui.platform.AndroidComposeView, android.view.MotionEvent, androidx.compose.ui.geometry.Offset, int, boolean):androidx.compose.ui.input.pointer.PointerInputEventData");
    }

    public final void removeStaleIds(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        SparseBooleanArray sparseBooleanArray = this.activeHoverIds;
        SparseLongArray sparseLongArray = this.motionEventToComposePointerIdMap;
        if (actionMasked == 1 || actionMasked == 6) {
            int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
            if (!sparseBooleanArray.get(pointerId, false)) {
                sparseLongArray.delete(pointerId);
                sparseBooleanArray.delete(pointerId);
            }
        }
        if (sparseLongArray.size() > motionEvent.getPointerCount()) {
            for (int size = sparseLongArray.size() - 1; -1 < size; size--) {
                int keyAt = sparseLongArray.keyAt(size);
                int pointerCount = motionEvent.getPointerCount();
                int i = 0;
                while (true) {
                    if (i >= pointerCount) {
                        sparseLongArray.removeAt(size);
                        sparseBooleanArray.delete(keyAt);
                        break;
                    } else if (motionEvent.getPointerId(i) == keyAt) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
    }
}
