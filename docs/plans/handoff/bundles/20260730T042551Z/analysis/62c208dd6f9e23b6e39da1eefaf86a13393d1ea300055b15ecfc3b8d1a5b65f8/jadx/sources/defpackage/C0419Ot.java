package defpackage;

import androidx.lifecycle.LiveData;

/* renamed from: Ot, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0419Ot<T> extends LiveData<T> {
    @Override // androidx.lifecycle.LiveData
    /* renamed from: goto, reason: not valid java name */
    public void mo1685goto(T t) {
        super.mo1685goto(t);
    }

    /* renamed from: this, reason: not valid java name */
    public final void m1686this(T t) {
        boolean z;
        synchronized (((LiveData) this).f7070do) {
            z = ((LiveData) this).f7072for == LiveData.f7066new;
            ((LiveData) this).f7072for = t;
        }
        if (z) {
            C3837v2.m8422throw().m8423while(((LiveData) this).f7068do);
        }
    }
}
