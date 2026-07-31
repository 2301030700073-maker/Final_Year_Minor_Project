package com.google.common.collect;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ImmutableMapEntry extends ImmutableEntry {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NonTerminalImmutableMapEntry extends ImmutableMapEntry {
        public final transient ImmutableMapEntry nextInKeyBucket;

        public NonTerminalImmutableMapEntry(Object obj, Object obj2, ImmutableMapEntry immutableMapEntry) {
            super(obj, obj2);
            this.nextInKeyBucket = immutableMapEntry;
        }

        @Override // com.google.common.collect.ImmutableMapEntry
        public final ImmutableMapEntry getNextInKeyBucket() {
            return this.nextInKeyBucket;
        }
    }

    public ImmutableMapEntry(Object obj, Object obj2) {
        super(obj, obj2);
        Maps.checkEntryNotNull(obj, obj2);
    }

    public ImmutableMapEntry getNextInKeyBucket() {
        return null;
    }
}
