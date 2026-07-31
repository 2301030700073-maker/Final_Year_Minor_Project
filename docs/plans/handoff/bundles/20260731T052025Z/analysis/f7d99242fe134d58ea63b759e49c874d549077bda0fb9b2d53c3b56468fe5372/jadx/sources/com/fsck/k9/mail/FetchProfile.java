package com.fsck.k9.mail;

import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FetchProfile extends ArrayList {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Item {
        public static final /* synthetic */ Item[] $VALUES;
        public static final Item BODY;
        public static final Item BODY_SANE;
        public static final Item ENVELOPE;
        public static final Item FLAGS;
        public static final Item STRUCTURE;

        static {
            Item item = new Item("FLAGS", 0);
            FLAGS = item;
            Item item2 = new Item("ENVELOPE", 1);
            ENVELOPE = item2;
            Item item3 = new Item("STRUCTURE", 2);
            STRUCTURE = item3;
            Item item4 = new Item("BODY_SANE", 3);
            BODY_SANE = item4;
            Item item5 = new Item("BODY", 4);
            BODY = item5;
            $VALUES = new Item[]{item, item2, item3, item4, item5};
        }

        public static Item valueOf(String str) {
            return (Item) Enum.valueOf(Item.class, str);
        }

        public static Item[] values() {
            return (Item[]) $VALUES.clone();
        }
    }

    public boolean canAddError() {
        return size() < 0;
    }
}
