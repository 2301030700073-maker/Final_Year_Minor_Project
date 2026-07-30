package com.braze.enums;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final f f42a;
    public static final f b;
    public static final f c;
    public static final f d;
    public static final /* synthetic */ f[] e;

    static {
        f fVar = new f("NONE", 0);
        f42a = fVar;
        f fVar2 = new f("BAD", 1);
        b = fVar2;
        f fVar3 = new f("GOOD", 2);
        c = fVar3;
        f fVar4 = new f("GREAT", 3);
        d = fVar4;
        f[] fVarArr = {fVar, fVar2, fVar3, fVar4};
        e = fVarArr;
        EnumEntriesKt.enumEntries(fVarArr);
    }

    public f(String str, int i) {
    }

    public static f valueOf(String str) {
        return (f) Enum.valueOf(f.class, str);
    }

    public static f[] values() {
        return (f[]) e.clone();
    }
}
