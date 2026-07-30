package defpackage;

import android.content.Context;
import defpackage.AbstractC3904wA;
import defpackage.InterfaceC0741bG;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* renamed from: Vc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0556Vc {

    /* renamed from: do, reason: not valid java name */
    public final Context f4152do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0741bG.Cfor f4153do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f4154do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<AbstractC3904wA.Cif> f4155do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f4156do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3904wA.Cfor f4157do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f4158do;

    /* renamed from: if, reason: not valid java name */
    public final Executor f4159if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f4160if;

    public C0556Vc(Context context, String str, InterfaceC0741bG.Cfor cfor, AbstractC3904wA.Cfor cfor2, ArrayList arrayList, boolean z, int i, Executor executor, Executor executor2, boolean z2, boolean z3) {
        this.f4153do = cfor;
        this.f4152do = context;
        this.f4154do = str;
        this.f4157do = cfor2;
        this.f4155do = arrayList;
        this.f4156do = executor;
        this.f4159if = executor2;
        this.f4158do = z2;
        this.f4160if = z3;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m2658do(int i, int i2) {
        return !((i > i2) && this.f4160if) && this.f4158do;
    }
}
