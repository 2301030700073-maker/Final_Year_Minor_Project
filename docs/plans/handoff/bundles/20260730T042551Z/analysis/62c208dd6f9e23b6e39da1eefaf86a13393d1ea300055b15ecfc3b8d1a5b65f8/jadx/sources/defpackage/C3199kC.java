package defpackage;

import android.view.View;
import j$.util.Iterator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

/* renamed from: kC, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3199kC<T> extends AbstractC3258lC<T> implements Iterator<T>, InterfaceC0576Wa<C3206kJ>, InterfaceC3941wp, j$.util.Iterator {

    /* renamed from: do, reason: not valid java name */
    public InterfaceC0576Wa<? super C3206kJ> f13881do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public T f13882do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Iterator<? extends T> f13883do;

    /* renamed from: for, reason: not valid java name */
    public int f13884for;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.AbstractC3258lC
    /* renamed from: do, reason: not valid java name */
    public final void mo7218do(View view, InterfaceC0576Wa interfaceC0576Wa) {
        this.f13882do = view;
        this.f13884for = 3;
        this.f13881do = interfaceC0576Wa;
        C0173Do.m401try(interfaceC0576Wa, "frame");
    }

    @Override // defpackage.AbstractC3258lC
    /* renamed from: for, reason: not valid java name */
    public final Object mo7219for(Iterator<? extends T> it, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
        if (!it.hasNext()) {
            return C3206kJ.f13965do;
        }
        this.f13883do = it;
        this.f13884for = 2;
        this.f13881do = interfaceC0576Wa;
        EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
        C0173Do.m401try(interfaceC0576Wa, "frame");
        return enumC3750tb;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        Iterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i = this.f13884for;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 || i == 3) {
                        return true;
                    }
                    if (i == 4) {
                        return false;
                    }
                    throw m7220new();
                }
                java.util.Iterator<? extends T> it = this.f13883do;
                C0173Do.m398if(it);
                if (it.hasNext()) {
                    this.f13884for = 2;
                    return true;
                }
                this.f13883do = null;
            }
            this.f13884for = 5;
            InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa = this.f13881do;
            C0173Do.m398if(interfaceC0576Wa);
            this.f13881do = null;
            interfaceC0576Wa.mo1746while(C3206kJ.f13965do);
        }
    }

    @Override // defpackage.InterfaceC0576Wa
    /* renamed from: if */
    public final InterfaceC3161jb mo2221if() {
        return C0405Of.f2659do;
    }

    /* renamed from: new, reason: not valid java name */
    public final RuntimeException m7220new() {
        int i = this.f13884for;
        if (i == 4) {
            return new NoSuchElementException();
        }
        if (i == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f13884for);
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final T next() {
        int i = this.f13884for;
        if (i == 0 || i == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (i == 2) {
            this.f13884for = 1;
            java.util.Iterator<? extends T> it = this.f13883do;
            C0173Do.m398if(it);
            return it.next();
        }
        if (i != 3) {
            throw m7220new();
        }
        this.f13884for = 0;
        T t = this.f13882do;
        this.f13882do = null;
        return t;
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // defpackage.InterfaceC0576Wa
    /* renamed from: while */
    public final void mo1746while(Object obj) {
        C3645ro.m8017synchronized(obj);
        this.f13884for = 4;
    }
}
