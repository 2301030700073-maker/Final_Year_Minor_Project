package com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.b.a.a.a.a.a.a.C0359d;
import c.b.a.b.a.a.a.a.a.a.E;
import c.b.a.b.a.a.a.a.a.a.F;
import c.b.a.b.a.a.a.a.a.a.w;
import c.b.a.b.a.a.a.a.a.a.x;
import c.b.a.b.a.a.a.a.a.a.z;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class EntitiesData implements Parcelable {
    public static final Parcelable.Creator CREATOR = new C0359d();

    /* renamed from: a, reason: collision with root package name */
    public final w f3236a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f3237b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f3238c;

    public EntitiesData(w wVar, Map map, Map map2) {
        this.f3236a = wVar;
        this.f3237b = map;
        this.f3238c = map2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        w wVar = this.f3236a;
        Objects.requireNonNull(wVar);
        Bundle bundle = new Bundle();
        bundle.putString("id", wVar.f2355a);
        bundle.putBoolean("success", wVar.f2356b);
        if (wVar.f2357c == null) {
            bundle.putParcelableArrayList("entities", null);
        } else {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(wVar.f2357c.size());
            for (x xVar : wVar.f2357c) {
                if (xVar == null) {
                    arrayList.add(null);
                } else {
                    arrayList.add(xVar.a());
                }
            }
            bundle.putParcelableArrayList("entities", arrayList);
        }
        F f = wVar.f2358d;
        if (f == null) {
            bundle.putBundle("stats", null);
        } else {
            bundle.putBundle("stats", f.a());
        }
        if (wVar.e == null) {
            bundle.putBundle("debugInfo", null);
        } else {
            bundle.putBundle("debugInfo", new Bundle());
        }
        z zVar = wVar.f;
        if (zVar == null) {
            bundle.putBundle("extrasInfo", null);
        } else {
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("containsPendingIntents", zVar.f2366a);
            bundle2.putBoolean("containsBitmaps", zVar.f2367b);
            bundle.putBundle("extrasInfo", bundle2);
        }
        bundle.putString("opaquePayload", wVar.g);
        E e = wVar.h;
        if (e == null) {
            bundle.putBundle("setupInfo", null);
        } else {
            bundle.putBundle("setupInfo", e.a());
        }
        bundle.writeToParcel(parcel, 0);
        z zVar2 = this.f3236a.f;
        if (zVar2 != null) {
            if (zVar2.f2367b) {
                parcel.writeMap(this.f3237b);
            }
            if (this.f3236a.f.f2366a) {
                parcel.writeMap(this.f3238c);
            }
        }
    }
}
