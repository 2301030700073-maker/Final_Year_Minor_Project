package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C3977xO;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;

@SafeParcelable.Class(creator = "GoogleSignInOptionsCreator")
@Deprecated
/* loaded from: classes.dex */
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;

    /* renamed from: break, reason: not valid java name */
    @SafeParcelable.Field(getter = "getServerClientId", id = 7)
    public final String f10159break;

    /* renamed from: catch, reason: not valid java name */
    @SafeParcelable.Field(getter = "getHostedDomain", id = 8)
    public final String f10160catch;

    /* renamed from: class, reason: not valid java name */
    @SafeParcelable.Field(getter = "getLogSessionId", id = 10)
    public final String f10161class;

    /* renamed from: do, reason: not valid java name */
    @SafeParcelable.Field(getter = "getAccount", id = 3)
    public final Account f10162do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "getScopes", id = 2)
    public final ArrayList f10163do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "isIdTokenRequested", id = 4)
    public final boolean f10164do;

    /* renamed from: for, reason: not valid java name */
    @SafeParcelable.VersionField(id = 1)
    public final int f10165for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "isForceCodeForRefreshToken", id = 6)
    public final boolean f10166for;

    /* renamed from: if, reason: not valid java name */
    @SafeParcelable.Field(getter = "getExtensions", id = 9)
    public final ArrayList f10167if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(getter = "isServerAuthCodeRequested", id = 5)
    public final boolean f10168if;

    static {
        Scope scope = new Scope(Scopes.PROFILE);
        new Scope(Scopes.EMAIL);
        Scope scope2 = new Scope(Scopes.OPEN_ID);
        Scope scope3 = new Scope(Scopes.GAMES_LITE);
        Scope scope4 = new Scope(Scopes.GAMES);
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        hashSet.add(scope2);
        hashSet.add(scope);
        if (hashSet.contains(scope4) && hashSet.contains(scope3)) {
            hashSet.remove(scope3);
        }
        new GoogleSignInOptions(3, new ArrayList(hashSet), null, false, false, false, null, null, hashMap, null);
        HashSet hashSet2 = new HashSet();
        HashMap hashMap2 = new HashMap();
        hashSet2.add(scope3);
        hashSet2.addAll(Arrays.asList(new Scope[0]));
        if (hashSet2.contains(scope4) && hashSet2.contains(scope3)) {
            hashSet2.remove(scope3);
        }
        new GoogleSignInOptions(3, new ArrayList(hashSet2), null, false, false, false, null, null, hashMap2, null);
        CREATOR = new C3977xO();
    }

    public GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, HashMap hashMap, String str3) {
        this.f10165for = i;
        this.f10163do = arrayList;
        this.f10162do = account;
        this.f10164do = z;
        this.f10168if = z2;
        this.f10166for = z3;
        this.f10159break = str;
        this.f10160catch = str2;
        this.f10167if = new ArrayList(hashMap.values());
        this.f10161class = str3;
    }

    public final boolean equals(Object obj) {
        String str = this.f10159break;
        ArrayList arrayList = this.f10163do;
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.f10167if.isEmpty()) {
                ArrayList arrayList2 = googleSignInOptions.f10167if;
                ArrayList arrayList3 = googleSignInOptions.f10163do;
                if (arrayList2.isEmpty() && arrayList.size() == new ArrayList(arrayList3).size() && arrayList.containsAll(new ArrayList(arrayList3))) {
                    Account account = this.f10162do;
                    Account account2 = googleSignInOptions.f10162do;
                    if (account != null ? account.equals(account2) : account2 == null) {
                        boolean isEmpty = TextUtils.isEmpty(str);
                        String str2 = googleSignInOptions.f10159break;
                        if (isEmpty) {
                            if (TextUtils.isEmpty(str2)) {
                            }
                        } else if (!str.equals(str2)) {
                        }
                        if (this.f10166for == googleSignInOptions.f10166for && this.f10164do == googleSignInOptions.f10164do && this.f10168if == googleSignInOptions.f10168if) {
                            if (TextUtils.equals(this.f10161class, googleSignInOptions.f10161class)) {
                                return true;
                            }
                        }
                    }
                }
            }
        } catch (ClassCastException unused) {
        }
        return false;
    }

    public final int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f10163do;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(((Scope) arrayList2.get(i)).getScopeUri());
        }
        Collections.sort(arrayList);
        int hashCode = (arrayList.hashCode() + (1 * 31)) * 31;
        Account account = this.f10162do;
        int hashCode2 = (hashCode + (account == null ? 0 : account.hashCode())) * 31;
        String str = this.f10159break;
        int hashCode3 = (((((((hashCode2 + (str == null ? 0 : str.hashCode())) * 31) + (this.f10166for ? 1 : 0)) * 31) + (this.f10164do ? 1 : 0)) * 31) + (this.f10168if ? 1 : 0)) * 31;
        String str2 = this.f10161class;
        return hashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10165for);
        SafeParcelWriter.writeTypedList(parcel, 2, new ArrayList(this.f10163do), false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f10162do, i, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.f10164do);
        SafeParcelWriter.writeBoolean(parcel, 5, this.f10168if);
        SafeParcelWriter.writeBoolean(parcel, 6, this.f10166for);
        SafeParcelWriter.writeString(parcel, 7, this.f10159break, false);
        SafeParcelWriter.writeString(parcel, 8, this.f10160catch, false);
        SafeParcelWriter.writeTypedList(parcel, 9, this.f10167if, false);
        SafeParcelWriter.writeString(parcel, 10, this.f10161class, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
