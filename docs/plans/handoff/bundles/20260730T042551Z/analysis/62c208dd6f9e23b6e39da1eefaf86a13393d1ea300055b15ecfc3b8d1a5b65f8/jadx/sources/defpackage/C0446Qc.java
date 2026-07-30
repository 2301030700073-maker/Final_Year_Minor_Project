package defpackage;

import defpackage.C0490Sc;
import java.io.Serializable;
import java.util.Iterator;

@InterfaceC0761bd(c = "androidx.datastore.core.DataMigrationInitializer$Companion", f = "DataMigrationInitializer.kt", l = {42, 57}, m = "runMigrations")
/* renamed from: Qc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0446Qc<T> extends AbstractC0620Ya {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C0490Sc.Cdo f2974do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Serializable f2975do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public /* synthetic */ Object f2976do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Iterator f2977do;

    /* renamed from: for, reason: not valid java name */
    public int f2978for;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0446Qc(C0490Sc.Cdo cdo, InterfaceC0576Wa<? super C0446Qc> interfaceC0576Wa) {
        super(interfaceC0576Wa);
        this.f2974do = cdo;
    }

    @Override // defpackage.P4
    /* renamed from: class */
    public final Object mo358class(Object obj) {
        this.f2976do = obj;
        this.f2978for |= Integer.MIN_VALUE;
        return C0490Sc.Cdo.m2172do(this.f2974do, null, null, this);
    }
}
