package com.google.protobuf;

import defpackage.AbstractC3429o6;
import defpackage.C0765bh;

/* renamed from: com.google.protobuf.final, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinal {

    /* renamed from: do, reason: not valid java name */
    public volatile Cstatic f12063do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile AbstractC3429o6 f12064do;

    static {
        C0765bh.m4853do();
    }

    /* renamed from: do, reason: not valid java name */
    public final Cstatic m6202do(Cstatic cstatic) {
        if (this.f12063do == null) {
            synchronized (this) {
                if (this.f12063do == null) {
                    try {
                        this.f12063do = cstatic;
                        this.f12064do = AbstractC3429o6.f14685do;
                    } catch (Cclass unused) {
                        this.f12063do = cstatic;
                        this.f12064do = AbstractC3429o6.f14685do;
                    }
                }
            }
        }
        return this.f12063do;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cfinal)) {
            return false;
        }
        Cfinal cfinal = (Cfinal) obj;
        Cstatic cstatic = this.f12063do;
        Cstatic cstatic2 = cfinal.f12063do;
        return (cstatic == null && cstatic2 == null) ? m6203if().equals(cfinal.m6203if()) : (cstatic == null || cstatic2 == null) ? cstatic != null ? cstatic.equals(cfinal.m6202do(cstatic.mo2198this())) : m6202do(cstatic2.mo2198this()).equals(cstatic2) : cstatic.equals(cstatic2);
    }

    public int hashCode() {
        return 1;
    }

    /* renamed from: if, reason: not valid java name */
    public final AbstractC3429o6 m6203if() {
        if (this.f12064do != null) {
            return this.f12064do;
        }
        synchronized (this) {
            if (this.f12064do != null) {
                return this.f12064do;
            }
            if (this.f12063do == null) {
                this.f12064do = AbstractC3429o6.f14685do;
            } else {
                this.f12064do = this.f12063do.mo6196catch();
            }
            return this.f12064do;
        }
    }
}
