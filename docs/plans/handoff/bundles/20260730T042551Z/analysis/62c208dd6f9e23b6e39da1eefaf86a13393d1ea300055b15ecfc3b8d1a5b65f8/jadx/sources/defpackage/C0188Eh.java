package defpackage;

import defpackage.C3139jB;
import java.util.HashMap;

/* renamed from: Eh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0188Eh<K, V> extends C3139jB<K, V> {

    /* renamed from: do, reason: not valid java name */
    public final HashMap<K, C3139jB.Cfor<K, V>> f877do = new HashMap<>();

    @Override // defpackage.C3139jB
    /* renamed from: case, reason: not valid java name */
    public final V mo492case(K k, V v) {
        C3139jB.Cfor<K, V> mo494try = mo494try(k);
        if (mo494try != null) {
            return mo494try.f13652if;
        }
        HashMap<K, C3139jB.Cfor<K, V>> hashMap = this.f877do;
        C3139jB.Cfor<K, V> cfor = new C3139jB.Cfor<>(k, v);
        this.f13647for++;
        C3139jB.Cfor<K, V> cfor2 = this.f13648if;
        if (cfor2 == null) {
            ((C3139jB) this).f13645do = cfor;
            this.f13648if = cfor;
        } else {
            cfor2.f13649do = cfor;
            cfor.f13651if = cfor2;
            this.f13648if = cfor;
        }
        hashMap.put(k, cfor);
        return null;
    }

    @Override // defpackage.C3139jB
    /* renamed from: else, reason: not valid java name */
    public final V mo493else(K k) {
        V v = (V) super.mo493else(k);
        this.f877do.remove(k);
        return v;
    }

    @Override // defpackage.C3139jB
    /* renamed from: try, reason: not valid java name */
    public final C3139jB.Cfor<K, V> mo494try(K k) {
        return this.f877do.get(k);
    }
}
