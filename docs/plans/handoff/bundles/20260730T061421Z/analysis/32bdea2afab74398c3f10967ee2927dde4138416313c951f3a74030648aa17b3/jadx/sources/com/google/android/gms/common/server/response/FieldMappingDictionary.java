package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.d.k.a.d;
import c.b.a.c.d.k.a.e;
import c.b.a.c.d.k.a.f;
import com.google.android.gms.internal.zzbkv;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class FieldMappingDictionary extends zzbkv {
    public static final Parcelable.Creator CREATOR = new e();

    /* renamed from: a, reason: collision with root package name */
    public final int f3426a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f3427b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3428c;

    public FieldMappingDictionary(int i, ArrayList arrayList, String str) {
        this.f3426a = i;
        HashMap hashMap = new HashMap();
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Entry entry = (Entry) arrayList.get(i2);
            String str2 = entry.f3430b;
            HashMap hashMap2 = new HashMap();
            int size2 = entry.f3431c.size();
            for (int i3 = 0; i3 < size2; i3++) {
                FieldMapPair fieldMapPair = (FieldMapPair) entry.f3431c.get(i3);
                hashMap2.put(fieldMapPair.f3433b, fieldMapPair.f3434c);
            }
            hashMap.put(str2, hashMap2);
        }
        this.f3427b = hashMap;
        a.R(str);
        this.f3428c = str;
        Iterator it = this.f3427b.keySet().iterator();
        while (it.hasNext()) {
            Map map = (Map) this.f3427b.get((String) it.next());
            Iterator it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                ((FastJsonResponse$Field) map.get((String) it2.next())).j = this;
            }
        }
    }

    public Map h(String str) {
        return (Map) this.f3427b.get(str);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f3427b.keySet()) {
            sb.append(str);
            sb.append(":\n");
            Map map = (Map) this.f3427b.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3426a);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f3427b.keySet()) {
            arrayList.add(new Entry(str, (Map) this.f3427b.get(str)));
        }
        a.I0(parcel, 2, arrayList, false);
        a.c0(parcel, 3, this.f3428c, false);
        a.H0(parcel, q0);
    }

    public class Entry extends zzbkv {
        public static final Parcelable.Creator CREATOR = new f();

        /* renamed from: a, reason: collision with root package name */
        public final int f3429a;

        /* renamed from: b, reason: collision with root package name */
        public final String f3430b;

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f3431c;

        public Entry(int i, String str, ArrayList arrayList) {
            this.f3429a = i;
            this.f3430b = str;
            this.f3431c = arrayList;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int q0 = a.q0(parcel);
            a.s0(parcel, 1, this.f3429a);
            a.c0(parcel, 2, this.f3430b, false);
            a.I0(parcel, 3, this.f3431c, false);
            a.H0(parcel, q0);
        }

        public Entry(String str, Map map) {
            ArrayList arrayList;
            this.f3429a = 1;
            this.f3430b = str;
            if (map == null) {
                arrayList = null;
            } else {
                arrayList = new ArrayList();
                for (String str2 : map.keySet()) {
                    arrayList.add(new FieldMapPair(str2, (FastJsonResponse$Field) map.get(str2)));
                }
            }
            this.f3431c = arrayList;
        }
    }

    public class FieldMapPair extends zzbkv {
        public static final Parcelable.Creator CREATOR = new d();

        /* renamed from: a, reason: collision with root package name */
        public final int f3432a;

        /* renamed from: b, reason: collision with root package name */
        public final String f3433b;

        /* renamed from: c, reason: collision with root package name */
        public final FastJsonResponse$Field f3434c;

        public FieldMapPair(int i, String str, FastJsonResponse$Field fastJsonResponse$Field) {
            this.f3432a = i;
            this.f3433b = str;
            this.f3434c = fastJsonResponse$Field;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            int q0 = a.q0(parcel);
            a.s0(parcel, 1, this.f3432a);
            a.c0(parcel, 2, this.f3433b, false);
            a.b0(parcel, 3, this.f3434c, i, false);
            a.H0(parcel, q0);
        }

        public FieldMapPair(String str, FastJsonResponse$Field fastJsonResponse$Field) {
            this.f3432a = 1;
            this.f3433b = str;
            this.f3434c = fastJsonResponse$Field;
        }
    }
}
