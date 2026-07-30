package androidx.lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.lifecycle.Cconst;
import androidx.savedstate.Cdo;
import defpackage.C0173Do;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* renamed from: androidx.lifecycle.const, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cconst {

    /* renamed from: do, reason: not valid java name */
    public static final Class<? extends Object>[] f7102do = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo.Cif f7103do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashMap f7104do;

    /* renamed from: for, reason: not valid java name */
    public final LinkedHashMap f7105for;

    /* renamed from: if, reason: not valid java name */
    public final LinkedHashMap f7106if;

    /* renamed from: new, reason: not valid java name */
    public final LinkedHashMap f7107new;

    /* renamed from: androidx.lifecycle.const$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static Cconst m4251do(Bundle bundle, Bundle bundle2) {
            if (bundle == null) {
                if (bundle2 == null) {
                    return new Cconst();
                }
                HashMap hashMap = new HashMap();
                for (String str : bundle2.keySet()) {
                    C0173Do.m399new(str, "key");
                    hashMap.put(str, bundle2.get(str));
                }
                return new Cconst(hashMap);
            }
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
            if (!((parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) ? false : true)) {
                throw new IllegalStateException("Invalid bundle passed as restored state".toString());
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int size = parcelableArrayList.size();
            for (int i = 0; i < size; i++) {
                Object obj = parcelableArrayList.get(i);
                C0173Do.m396for(obj, "null cannot be cast to non-null type kotlin.String");
                linkedHashMap.put((String) obj, parcelableArrayList2.get(i));
            }
            return new Cconst(linkedHashMap);
        }
    }

    public Cconst(HashMap hashMap) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f7104do = linkedHashMap;
        this.f7106if = new LinkedHashMap();
        this.f7105for = new LinkedHashMap();
        this.f7107new = new LinkedHashMap();
        this.f7103do = new Cdo.Cif() { // from class: lB
            @Override // androidx.savedstate.Cdo.Cif
            /* renamed from: do */
            public final Bundle mo94do() {
                return Cconst.m4250do(Cconst.this);
            }
        };
        linkedHashMap.putAll(hashMap);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007a A[SYNTHETIC] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.os.Bundle m4250do(androidx.lifecycle.Cconst r10) {
        /*
            Method dump skipped, instructions count: 677
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.Cconst.m4250do(androidx.lifecycle.const):android.os.Bundle");
    }

    public Cconst() {
        this.f7104do = new LinkedHashMap();
        this.f7106if = new LinkedHashMap();
        this.f7105for = new LinkedHashMap();
        this.f7107new = new LinkedHashMap();
        this.f7103do = new Cdo.Cif() { // from class: lB
            @Override // androidx.savedstate.Cdo.Cif
            /* renamed from: do */
            public final Bundle mo94do() {
                return Cconst.m4250do(Cconst.this);
            }
        };
    }
}
