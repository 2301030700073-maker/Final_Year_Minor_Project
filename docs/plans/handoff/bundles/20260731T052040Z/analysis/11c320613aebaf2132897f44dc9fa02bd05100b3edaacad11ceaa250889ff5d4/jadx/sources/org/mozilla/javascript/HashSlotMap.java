package org.mozilla.javascript;

import j$.util.Map;
import j$.util.function.BiFunction$CC;
import j$.util.function.Function$CC;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.function.BiFunction;
import org.mozilla.javascript.SlotMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class HashSlotMap implements SlotMap {
    private final LinkedHashMap<Object, Slot> map;

    public HashSlotMap(SlotMap slotMap) {
        this.map = new LinkedHashMap<>(slotMap.size());
        Iterator<Slot> it = slotMap.iterator();
        while (it.hasNext()) {
            add(it.next().copySlot());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Slot lambda$compute$1(SlotMap.SlotComputer slotComputer, Object obj, int i, Object obj2, Slot slot) {
        return slotComputer.compute(obj, i, slot);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Slot lambda$modify$0(Object obj, int i, int i2, Object obj2) {
        return new Slot(obj, i, i2);
    }

    private Object makeKey(Slot slot) {
        Object obj = slot.name;
        return obj == null ? String.valueOf(slot.indexOrHash) : obj;
    }

    @Override // org.mozilla.javascript.SlotMap
    public void add(Slot slot) {
        this.map.put(makeKey(slot), slot);
    }

    @Override // org.mozilla.javascript.SlotMap
    public <S extends Slot> S compute(final Object obj, final int i, final SlotMap.SlotComputer<S> slotComputer) {
        return (S) Map.EL.compute(this.map, makeKey(obj, i), new BiFunction() { // from class: org.mozilla.javascript.HashSlotMap$$ExternalSyntheticLambda0
            public /* synthetic */ BiFunction andThen(java.util.function.Function function) {
                return BiFunction$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj2, Object obj3) {
                Slot lambda$compute$1;
                lambda$compute$1 = HashSlotMap.lambda$compute$1(slotComputer, obj, i, obj2, (Slot) obj3);
                return lambda$compute$1;
            }
        });
    }

    @Override // org.mozilla.javascript.SlotMap
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<Slot> iterator() {
        return this.map.values().iterator();
    }

    @Override // org.mozilla.javascript.SlotMap
    public Slot modify(final Object obj, final int i, final int i2) {
        return (Slot) Map.EL.computeIfAbsent(this.map, makeKey(obj, i), new java.util.function.Function() { // from class: org.mozilla.javascript.HashSlotMap$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ java.util.function.Function mo646andThen(java.util.function.Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj2) {
                Slot lambda$modify$0;
                lambda$modify$0 = HashSlotMap.lambda$modify$0(obj, i, i2, obj2);
                return lambda$modify$0;
            }

            public /* synthetic */ java.util.function.Function compose(java.util.function.Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }

    @Override // org.mozilla.javascript.SlotMap
    public Slot query(Object obj, int i) {
        return this.map.get(makeKey(obj, i));
    }

    @Override // org.mozilla.javascript.SlotMap
    public int size() {
        return this.map.size();
    }

    private Object makeKey(Object obj, int i) {
        return obj == null ? String.valueOf(i) : obj;
    }

    public HashSlotMap() {
        this.map = new LinkedHashMap<>();
    }
}
