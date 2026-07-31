package com.braze.models.dust;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final d f149a;
    public static final d b;
    public static final /* synthetic */ d[] c;

    static {
        d dVar = new d("UNKNOWN", 0, "");
        f149a = dVar;
        d dVar2 = new d("CONTENT_CARD_REFRESH", 1, "ccr");
        b = dVar2;
        d[] dVarArr = {dVar, dVar2};
        c = dVarArr;
        EnumEntriesKt.enumEntries(dVarArr);
    }

    public d(String str, int i, String str2) {
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) c.clone();
    }
}
