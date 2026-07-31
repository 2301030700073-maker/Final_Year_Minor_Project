package org.mozilla.javascript;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface SlotMap extends Iterable<Slot> {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    @FunctionalInterface
    public interface SlotComputer<S extends Slot> {
        S compute(Object obj, int i, Slot slot);
    }

    void add(Slot slot);

    <S extends Slot> S compute(Object obj, int i, SlotComputer<S> slotComputer);

    boolean isEmpty();

    Slot modify(Object obj, int i, int i2);

    Slot query(Object obj, int i);

    int size();
}
