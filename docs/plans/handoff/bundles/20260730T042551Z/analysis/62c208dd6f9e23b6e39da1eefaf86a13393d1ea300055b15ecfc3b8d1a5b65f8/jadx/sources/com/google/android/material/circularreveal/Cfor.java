package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.google.android.material.circularreveal.Cif;
import defpackage.C3850vF;

/* renamed from: com.google.android.material.circularreveal.for, reason: invalid class name */
/* loaded from: classes3.dex */
public interface Cfor extends Cif.Cdo {

    /* renamed from: com.google.android.material.circularreveal.for$do, reason: invalid class name */
    public static class Cdo implements TypeEvaluator<Cnew> {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f10887do = new Cdo();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cnew f10888do = new Cnew();

        @Override // android.animation.TypeEvaluator
        public final Cnew evaluate(float f, Cnew cnew, Cnew cnew2) {
            Cnew cnew3 = cnew;
            Cnew cnew4 = cnew2;
            float m8463throw = C3850vF.m8463throw(cnew3.f10891do, cnew4.f10891do, f);
            float m8463throw2 = C3850vF.m8463throw(cnew3.f10893if, cnew4.f10893if, f);
            float m8463throw3 = C3850vF.m8463throw(cnew3.f10892for, cnew4.f10892for, f);
            Cnew cnew5 = this.f10888do;
            cnew5.f10891do = m8463throw;
            cnew5.f10893if = m8463throw2;
            cnew5.f10892for = m8463throw3;
            return cnew5;
        }
    }

    /* renamed from: com.google.android.material.circularreveal.for$for, reason: invalid class name and collision with other inner class name */
    public static class C0069for extends Property<Cfor, Integer> {

        /* renamed from: do, reason: not valid java name */
        public static final C0069for f10889do = new C0069for();

        public C0069for() {
            super(Integer.class, "circularRevealScrimColor");
        }

        @Override // android.util.Property
        public final Integer get(Cfor cfor) {
            return Integer.valueOf(cfor.mo5766case());
        }

        @Override // android.util.Property
        public final void set(Cfor cfor, Integer num) {
            cfor.mo5768for(num.intValue());
        }
    }

    /* renamed from: com.google.android.material.circularreveal.for$if, reason: invalid class name */
    public static class Cif extends Property<Cfor, Cnew> {

        /* renamed from: do, reason: not valid java name */
        public static final Cif f10890do = new Cif();

        public Cif() {
            super(Cnew.class, "circularReveal");
        }

        @Override // android.util.Property
        public final Cnew get(Cfor cfor) {
            return cfor.mo5771new();
        }

        @Override // android.util.Property
        public final void set(Cfor cfor, Cnew cnew) {
            cfor.mo5769goto(cnew);
        }
    }

    /* renamed from: case */
    int mo5766case();

    /* renamed from: else */
    void mo5767else();

    /* renamed from: for */
    void mo5768for(int i);

    /* renamed from: goto */
    void mo5769goto(Cnew cnew);

    /* renamed from: new */
    Cnew mo5771new();

    /* renamed from: this */
    void mo5772this(Drawable drawable);

    /* renamed from: try */
    void mo5773try();

    /* renamed from: com.google.android.material.circularreveal.for$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        public float f10891do;

        /* renamed from: for, reason: not valid java name */
        public float f10892for;

        /* renamed from: if, reason: not valid java name */
        public float f10893if;

        public Cnew() {
        }

        public Cnew(float f, float f2, float f3) {
            this.f10891do = f;
            this.f10893if = f2;
            this.f10892for = f3;
        }

        public Cnew(Cnew cnew) {
            this(cnew.f10891do, cnew.f10893if, cnew.f10892for);
        }
    }
}
