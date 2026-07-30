package com.facebook.internal;

import defpackage.C0173Do;
import defpackage.C2819gd;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public enum SmartLoginOption {
    None(0),
    Enabled(1),
    RequireConfirm(2);

    private static final EnumSet<SmartLoginOption> ALL;
    public static final Companion Companion = new Companion(null);
    private final long value;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        public final EnumSet<SmartLoginOption> parseOptions(long j) {
            EnumSet<SmartLoginOption> noneOf = EnumSet.noneOf(SmartLoginOption.class);
            Iterator it = SmartLoginOption.ALL.iterator();
            while (it.hasNext()) {
                SmartLoginOption smartLoginOption = (SmartLoginOption) it.next();
                if ((smartLoginOption.getValue() & j) != 0) {
                    noneOf.add(smartLoginOption);
                }
            }
            C0173Do.m399new(noneOf, "result");
            return noneOf;
        }
    }

    static {
        EnumSet<SmartLoginOption> allOf = EnumSet.allOf(SmartLoginOption.class);
        C0173Do.m399new(allOf, "allOf(SmartLoginOption::class.java)");
        ALL = allOf;
    }

    SmartLoginOption(long j) {
        this.value = j;
    }

    public static final EnumSet<SmartLoginOption> parseOptions(long j) {
        return Companion.parseOptions(j);
    }

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static SmartLoginOption[] valuesCustom() {
        SmartLoginOption[] valuesCustom = values();
        return (SmartLoginOption[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
    }

    public final long getValue() {
        return this.value;
    }
}
