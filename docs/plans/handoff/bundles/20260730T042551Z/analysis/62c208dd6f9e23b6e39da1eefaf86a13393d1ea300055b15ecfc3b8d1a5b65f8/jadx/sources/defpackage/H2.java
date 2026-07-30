package defpackage;

import java.util.Map;

/* loaded from: classes.dex */
public final class H2 extends AbstractC3884vr<Object, Object> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ I2 f1286do;

    public H2(I2 i2) {
        this.f1286do = i2;
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: case */
    public final int mo417case(Object obj) {
        return this.f1286do.indexOf(obj);
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: do */
    public final void mo418do() {
        this.f1286do.clear();
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: else */
    public final void mo419else(Object obj, Object obj2) {
        this.f1286do.add(obj);
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: for */
    public final Map<Object, Object> mo420for() {
        throw new UnsupportedOperationException("not a map");
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: goto */
    public final void mo421goto(int i) {
        this.f1286do.m907this(i);
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: if */
    public final Object mo422if(int i, int i2) {
        return this.f1286do.f1424do[i];
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: new */
    public final int mo423new() {
        return this.f1286do.f1425for;
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: this */
    public final Object mo424this(int i, Object obj) {
        throw new UnsupportedOperationException("not a map");
    }

    @Override // defpackage.AbstractC3884vr
    /* renamed from: try */
    public final int mo425try(Object obj) {
        return this.f1286do.indexOf(obj);
    }
}
