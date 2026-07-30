package defpackage;

import j$.util.Iterator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

/* renamed from: Rd, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0469Rd implements InterfaceC3140jC<C3881vo> {

    /* renamed from: do, reason: not valid java name */
    public final int f3198do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CharSequence f3199do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3641rk<CharSequence, Integer, C3653rw<Integer, Integer>> f3200do;

    /* renamed from: if, reason: not valid java name */
    public final int f3201if;

    /* renamed from: Rd$do, reason: invalid class name */
    public static final class Cdo implements Iterator<C3881vo>, InterfaceC3941wp, j$.util.Iterator {

        /* renamed from: case, reason: not valid java name */
        public int f3202case;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C3881vo f3204do;

        /* renamed from: for, reason: not valid java name */
        public int f3205for = -1;

        /* renamed from: new, reason: not valid java name */
        public int f3206new;

        /* renamed from: try, reason: not valid java name */
        public int f3207try;

        public Cdo() {
            int i = C0469Rd.this.f3198do;
            int length = C0469Rd.this.f3199do.length();
            if (length < 0) {
                throw new IllegalArgumentException(Creturn.m7981if("Cannot coerce value to an empty range: maximum ", length, " is less than minimum 0."));
            }
            if (i < 0) {
                i = 0;
            } else if (i > length) {
                i = length;
            }
            this.f3206new = i;
            this.f3207try = i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
        
            if (r6 < r3) goto L9;
         */
        /* renamed from: do, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m2060do() {
            /*
                r7 = this;
                int r0 = r7.f3207try
                r1 = 0
                if (r0 >= 0) goto Lb
                r7.f3205for = r1
                r0 = 0
                r7.f3204do = r0
                goto L7b
            Lb:
                Rd r2 = defpackage.C0469Rd.this
                int r3 = r2.f3201if
                r4 = -1
                r5 = 1
                if (r3 <= 0) goto L1a
                int r6 = r7.f3202case
                int r6 = r6 + r5
                r7.f3202case = r6
                if (r6 >= r3) goto L22
            L1a:
                java.lang.CharSequence r3 = r2.f3199do
                int r3 = r3.length()
                if (r0 <= r3) goto L34
            L22:
                vo r0 = new vo
                int r1 = r7.f3206new
                java.lang.CharSequence r2 = r2.f3199do
                int r2 = defpackage.EF.l(r2)
                r0.<init>(r1, r2)
                r7.f3204do = r0
                r7.f3207try = r4
                goto L79
            L34:
                rk<java.lang.CharSequence, java.lang.Integer, rw<java.lang.Integer, java.lang.Integer>> r0 = r2.f3200do
                java.lang.CharSequence r3 = r2.f3199do
                int r6 = r7.f3207try
                java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
                java.lang.Object r0 = r0.invoke(r3, r6)
                rw r0 = (defpackage.C3653rw) r0
                if (r0 != 0) goto L58
                vo r0 = new vo
                int r1 = r7.f3206new
                java.lang.CharSequence r2 = r2.f3199do
                int r2 = defpackage.EF.l(r2)
                r0.<init>(r1, r2)
                r7.f3204do = r0
                r7.f3207try = r4
                goto L79
            L58:
                A r2 = r0.f15340do
                java.lang.Number r2 = (java.lang.Number) r2
                int r2 = r2.intValue()
                B r0 = r0.f15341if
                java.lang.Number r0 = (java.lang.Number) r0
                int r0 = r0.intValue()
                int r3 = r7.f3206new
                vo r3 = defpackage.C3850vF.m8461switch(r3, r2)
                r7.f3204do = r3
                int r2 = r2 + r0
                r7.f3206new = r2
                if (r0 != 0) goto L76
                r1 = 1
            L76:
                int r2 = r2 + r1
                r7.f3207try = r2
            L79:
                r7.f3205for = r5
            L7b:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0469Rd.Cdo.m2060do():void");
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final boolean hasNext() {
            if (this.f3205for == -1) {
                m2060do();
            }
            return this.f3205for == 1;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final Object next() {
            if (this.f3205for == -1) {
                m2060do();
            }
            if (this.f3205for == 0) {
                throw new NoSuchElementException();
            }
            C3881vo c3881vo = this.f3204do;
            C0173Do.m396for(c3881vo, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.f3204do = null;
            this.f3205for = -1;
            return c3881vo;
        }

        @Override // java.util.Iterator, j$.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public C0469Rd(CharSequence charSequence, int i, int i2, CF cf) {
        C0173Do.m401try(charSequence, "input");
        this.f3199do = charSequence;
        this.f3198do = i;
        this.f3201if = i2;
        this.f3200do = cf;
    }

    @Override // defpackage.InterfaceC3140jC
    public final java.util.Iterator<C3881vo> iterator() {
        return new Cdo();
    }
}
