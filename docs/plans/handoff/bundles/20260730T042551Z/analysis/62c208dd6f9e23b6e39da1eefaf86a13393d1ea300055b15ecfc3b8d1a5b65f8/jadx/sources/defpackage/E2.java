package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class E2 extends AbstractC3884vr<Object, Object> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ F2 f715do;

    public E2(F2 f2) {
        this.f715do = f2;
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: case, reason: not valid java name */
    public final int mo417case(Object obj) {
        return this.f715do.m6526else(obj);
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: do, reason: not valid java name */
    public final void mo418do() {
        this.f715do.clear();
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: else, reason: not valid java name */
    public final void mo419else(Object obj, Object obj2) {
        this.f715do.put(obj, obj2);
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: for, reason: not valid java name */
    public final Map<Object, Object> mo420for() {
        return this.f715do;
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: goto, reason: not valid java name */
    public final void mo421goto(int i) {
        this.f715do.m6530this(i);
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: if, reason: not valid java name */
    public final Object mo422if(int i, int i2) {
        return ((C2680eE) this.f715do).f12631do[(i << 1) + i2];
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: new, reason: not valid java name */
    public final int mo423new() {
        return this.f715do.f12632for;
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: this, reason: not valid java name */
    public final Object mo424this(int i, Object obj) {
        int i2 = (i << 1) + 1;
        Object[] objArr = ((C2680eE) this.f715do).f12631do;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        return obj2;
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: try, reason: not valid java name */
    public final int mo425try(Object obj) {
        return this.f715do.m6531try(obj);
    }
}
