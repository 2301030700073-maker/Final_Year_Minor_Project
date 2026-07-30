package com.facebook.internal;

import java.util.Arrays;

/* loaded from: classes.dex */
public enum GamingAction {
    ContextChoose("context_choose"),
    JoinTournament("join_tournament");

    private final String rawValue;

    GamingAction(String str) {
        this.rawValue = str;
    }

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static GamingAction[] valuesCustom() {
        GamingAction[] valuesCustom = values();
        return (GamingAction[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
    }

    public final String getRawValue() {
        return this.rawValue;
    }
}
