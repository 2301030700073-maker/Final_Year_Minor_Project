package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.d.g.c;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzbkv;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* loaded from: classes.dex */
public class GoogleSignInOptions extends zzbkv implements c, ReflectedParcelable {
    public static final Parcelable.Creator CREATOR;
    public static final Scope j = new Scope(1, "profile");
    public static final Scope k;
    public static final Scope l;
    public static final Scope m;

    /* renamed from: a, reason: collision with root package name */
    public final int f3342a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f3343b;

    /* renamed from: c, reason: collision with root package name */
    public Account f3344c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3345d;
    public final boolean e;
    public final boolean f;
    public String g;
    public String h;
    public ArrayList i;

    static {
        new Scope(1, "email");
        k = new Scope(1, "openid");
        l = new Scope(1, "https://www.googleapis.com/auth/games_lite");
        m = new Scope(1, "https://www.googleapis.com/auth/games");
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        hashSet.add(k);
        hashSet.add(j);
        if (hashSet.contains(m) && hashSet.contains(l)) {
            hashSet.remove(l);
        }
        new GoogleSignInOptions(3, new ArrayList(hashSet), null, false, false, false, null, null, hashMap);
        HashSet hashSet2 = new HashSet();
        HashMap hashMap2 = new HashMap();
        hashSet2.add(l);
        hashSet2.addAll(Arrays.asList(new Scope[0]));
        if (hashSet2.contains(m) && hashSet2.contains(l)) {
            hashSet2.remove(l);
        }
        new GoogleSignInOptions(3, new ArrayList(hashSet2), null, false, false, false, null, null, hashMap2);
        CREATOR = new c.b.a.c.a.a.a.c();
    }

    public GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map) {
        this.f3342a = i;
        this.f3343b = arrayList;
        this.f3344c = account;
        this.f3345d = z;
        this.e = z2;
        this.f = z3;
        this.g = str;
        this.h = str2;
        this.i = new ArrayList(map.values());
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0060, code lost:
    
        if (r3.g.equals(r4.g) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0045, code lost:
    
        if (r3.f3344c.equals(r4.f3344c) != false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r4 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r4     // Catch: java.lang.ClassCastException -> L76
            java.util.ArrayList r1 = r3.i     // Catch: java.lang.ClassCastException -> L76
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L76
            if (r1 > 0) goto L76
            java.util.ArrayList r1 = r4.i     // Catch: java.lang.ClassCastException -> L76
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L76
            if (r1 <= 0) goto L17
            goto L76
        L17:
            java.util.ArrayList r1 = r3.f3343b     // Catch: java.lang.ClassCastException -> L76
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L76
            java.util.ArrayList r2 = r4.h()     // Catch: java.lang.ClassCastException -> L76
            int r2 = r2.size()     // Catch: java.lang.ClassCastException -> L76
            if (r1 != r2) goto L76
            java.util.ArrayList r1 = r3.f3343b     // Catch: java.lang.ClassCastException -> L76
            java.util.ArrayList r2 = r4.h()     // Catch: java.lang.ClassCastException -> L76
            boolean r1 = r1.containsAll(r2)     // Catch: java.lang.ClassCastException -> L76
            if (r1 != 0) goto L34
            goto L76
        L34:
            android.accounts.Account r1 = r3.f3344c     // Catch: java.lang.ClassCastException -> L76
            if (r1 != 0) goto L3d
            android.accounts.Account r1 = r4.f3344c     // Catch: java.lang.ClassCastException -> L76
            if (r1 != 0) goto L76
            goto L47
        L3d:
            android.accounts.Account r1 = r3.f3344c     // Catch: java.lang.ClassCastException -> L76
            android.accounts.Account r2 = r4.f3344c     // Catch: java.lang.ClassCastException -> L76
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L76
            if (r1 == 0) goto L76
        L47:
            java.lang.String r1 = r3.g     // Catch: java.lang.ClassCastException -> L76
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L76
            if (r1 == 0) goto L58
            java.lang.String r1 = r4.g     // Catch: java.lang.ClassCastException -> L76
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L76
            if (r1 == 0) goto L76
            goto L62
        L58:
            java.lang.String r1 = r3.g     // Catch: java.lang.ClassCastException -> L76
            java.lang.String r2 = r4.g     // Catch: java.lang.ClassCastException -> L76
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L76
            if (r1 == 0) goto L76
        L62:
            boolean r1 = r3.f     // Catch: java.lang.ClassCastException -> L76
            boolean r2 = r4.f     // Catch: java.lang.ClassCastException -> L76
            if (r1 != r2) goto L76
            boolean r1 = r3.f3345d     // Catch: java.lang.ClassCastException -> L76
            boolean r2 = r4.f3345d     // Catch: java.lang.ClassCastException -> L76
            if (r1 != r2) goto L76
            boolean r3 = r3.e     // Catch: java.lang.ClassCastException -> L76
            boolean r4 = r4.e     // Catch: java.lang.ClassCastException -> L76
            if (r3 != r4) goto L76
            r3 = 1
            return r3
        L76:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public final ArrayList h() {
        return new ArrayList(this.f3343b);
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f3343b;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            arrayList.add(((Scope) obj).f3372b);
        }
        Collections.sort(arrayList);
        int hashCode = (1 * 31) + arrayList.hashCode();
        Account account = this.f3344c;
        int hashCode2 = (hashCode * 31) + (account == null ? 0 : account.hashCode());
        String str = this.g;
        return (((((((hashCode2 * 31) + (str != null ? str.hashCode() : 0)) * 31) + (this.f ? 1 : 0)) * 31) + (this.f3345d ? 1 : 0)) * 31) + (this.e ? 1 : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3342a);
        a.I0(parcel, 2, h(), false);
        a.b0(parcel, 3, this.f3344c, i, false);
        a.d0(parcel, 4, this.f3345d);
        a.d0(parcel, 5, this.e);
        a.d0(parcel, 6, this.f);
        a.c0(parcel, 7, this.g, false);
        a.c0(parcel, 8, this.h, false);
        a.I0(parcel, 9, this.i, false);
        a.H0(parcel, q0);
    }
}
