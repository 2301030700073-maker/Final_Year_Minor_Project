package defpackage;

import com.google.android.material.chip.ChipGroup;
import defpackage.InterfaceC0483Rr;
import java.util.HashMap;
import java.util.HashSet;

/* renamed from: v7, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3842v7<T extends InterfaceC0483Rr<T>> {

    /* renamed from: do, reason: not valid java name */
    public final HashMap f16018do = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f16019do = new HashSet();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f16020do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16021do;

    /* renamed from: if, reason: not valid java name */
    public boolean f16022if;

    /* renamed from: v7$do, reason: invalid class name */
    public interface Cdo {
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m8431do(InterfaceC0483Rr<T> interfaceC0483Rr) {
        int id = interfaceC0483Rr.getId();
        HashSet hashSet = this.f16019do;
        if (hashSet.contains(Integer.valueOf(id))) {
            return false;
        }
        InterfaceC0483Rr<T> interfaceC0483Rr2 = (InterfaceC0483Rr) this.f16018do.get(Integer.valueOf((!this.f16021do || hashSet.isEmpty()) ? -1 : ((Integer) hashSet.iterator().next()).intValue()));
        if (interfaceC0483Rr2 != null) {
            m8432for(interfaceC0483Rr2, false);
        }
        boolean add = hashSet.add(Integer.valueOf(id));
        if (!interfaceC0483Rr.isChecked()) {
            interfaceC0483Rr.setChecked(true);
        }
        return add;
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m8432for(InterfaceC0483Rr<T> interfaceC0483Rr, boolean z) {
        int id = interfaceC0483Rr.getId();
        HashSet hashSet = this.f16019do;
        if (!hashSet.contains(Integer.valueOf(id))) {
            return false;
        }
        if (z && hashSet.size() == 1 && hashSet.contains(Integer.valueOf(id))) {
            interfaceC0483Rr.setChecked(true);
            return false;
        }
        boolean remove = hashSet.remove(Integer.valueOf(id));
        if (interfaceC0483Rr.isChecked()) {
            interfaceC0483Rr.setChecked(false);
        }
        return remove;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m8433if() {
        Cdo cdo = this.f16020do;
        if (cdo != null) {
            new HashSet(this.f16019do);
            int i = ChipGroup.f10812this;
            ChipGroup.this.getClass();
        }
    }
}
