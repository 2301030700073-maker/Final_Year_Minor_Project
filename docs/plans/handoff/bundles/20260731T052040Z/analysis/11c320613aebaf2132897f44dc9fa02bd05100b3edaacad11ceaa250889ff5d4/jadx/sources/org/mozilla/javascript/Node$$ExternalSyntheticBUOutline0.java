package org.mozilla.javascript;

import org.mozilla.javascript.SlotMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Node$$ExternalSyntheticBUOutline0 implements SlotMap.SlotComputer {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Node$$ExternalSyntheticBUOutline0(int i) {
        this.$r8$classId = i;
    }

    @Override // org.mozilla.javascript.SlotMap.SlotComputer
    public Slot compute(Object obj, int i, Slot slot) {
        Slot checkSlotRemoval;
        LazyLoadSlot ensureLazySlot;
        AccessorSlot ensureAccessorSlot;
        LambdaSlot ensureLambdaSlot;
        switch (this.$r8$classId) {
            case 2:
                checkSlotRemoval = ScriptableObject.checkSlotRemoval(obj, i, slot);
                return checkSlotRemoval;
            case 3:
                ensureLazySlot = ScriptableObject.ensureLazySlot(obj, i, slot);
                return ensureLazySlot;
            case 4:
                ensureAccessorSlot = ScriptableObject.ensureAccessorSlot(obj, i, slot);
                return ensureAccessorSlot;
            default:
                ensureLambdaSlot = ScriptableObject.ensureLambdaSlot(obj, i, slot);
                return ensureLambdaSlot;
        }
    }

    public static /* synthetic */ void m() {
        throw new IllegalStateException();
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m811m(String str) {
        throw new RuntimeException(str);
    }
}
