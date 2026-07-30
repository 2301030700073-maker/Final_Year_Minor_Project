package com.google.android.gms.common.internal;

import j$.util.DesugarCollections;
import java.util.Set;

/* loaded from: classes.dex */
public final class zab {
    public final Set zaa;

    public zab(Set set) {
        Preconditions.checkNotNull(set);
        this.zaa = DesugarCollections.unmodifiableSet(set);
    }
}
