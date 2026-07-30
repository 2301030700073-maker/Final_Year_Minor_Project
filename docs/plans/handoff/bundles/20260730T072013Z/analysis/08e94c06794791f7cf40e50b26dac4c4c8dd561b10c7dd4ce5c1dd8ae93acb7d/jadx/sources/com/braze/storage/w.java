package com.braze.storage;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class w {
    public static final w c;
    public static final w d;
    public static final /* synthetic */ w[] e;

    /* renamed from: a, reason: collision with root package name */
    public final String f235a;
    public final String b;

    static {
        w wVar = new w("READ_CARDS", 0, "read_cards_set", "read_cards_flat");
        c = wVar;
        w wVar2 = new w("VIEWED_CARDS", 1, "viewed_cards_set", "viewed_cards_flat");
        d = wVar2;
        w[] wVarArr = {wVar, wVar2};
        e = wVarArr;
        EnumEntriesKt.enumEntries(wVarArr);
    }

    public w(String str, int i, String str2, String str3) {
        this.f235a = str2;
        this.b = str3;
    }

    public static w valueOf(String str) {
        return (w) Enum.valueOf(w.class, str);
    }

    public static w[] values() {
        return (w[]) e.clone();
    }
}
