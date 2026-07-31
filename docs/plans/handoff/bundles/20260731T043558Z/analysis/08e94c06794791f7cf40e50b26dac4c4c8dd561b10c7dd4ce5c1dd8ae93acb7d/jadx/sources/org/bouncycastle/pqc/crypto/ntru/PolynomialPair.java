package org.bouncycastle.pqc.crypto.ntru;

import org.bouncycastle.pqc.math.ntru.Polynomial;

/* loaded from: classes6.dex */
class PolynomialPair {

    /* renamed from: a, reason: collision with root package name */
    private final Polynomial f384a;
    private final Polynomial b;

    public PolynomialPair(Polynomial polynomial, Polynomial polynomial2) {
        this.f384a = polynomial;
        this.b = polynomial2;
    }

    public Polynomial f() {
        return this.f384a;
    }

    public Polynomial g() {
        return this.b;
    }

    public Polynomial m() {
        return this.b;
    }

    public Polynomial r() {
        return this.f384a;
    }
}
