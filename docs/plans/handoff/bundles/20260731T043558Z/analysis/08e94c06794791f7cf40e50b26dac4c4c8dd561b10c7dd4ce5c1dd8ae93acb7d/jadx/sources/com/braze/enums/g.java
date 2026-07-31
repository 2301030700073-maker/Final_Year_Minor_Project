package com.braze.enums;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final g f43a;
    public static final g b;
    public static final /* synthetic */ g[] c;

    static {
        g gVar = new g("OPEN_SESSION", 0);
        f43a = gVar;
        g gVar2 = new g("NO_SESSION", 1);
        b = gVar2;
        g[] gVarArr = {gVar, gVar2};
        c = gVarArr;
        EnumEntriesKt.enumEntries(gVarArr);
    }

    public g(String str, int i) {
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) c.clone();
    }
}
