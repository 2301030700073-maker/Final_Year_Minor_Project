package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.C3656rz;
import defpackage.F2;
import java.util.Map;

@SafeParcelable.Class(creator = "RemoteMessageCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class RemoteMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new C3656rz();

    /* renamed from: do, reason: not valid java name */
    public F2 f11908do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    @SafeParcelable.Field(id = 2)
    public final Bundle f11909do;

    @SafeParcelable.Constructor
    public RemoteMessage(@SafeParcelable.Param(id = 2) Bundle bundle) {
        this.f11909do = bundle;
    }

    public final Map<String, String> f() {
        if (this.f11908do == null) {
            F2 f2 = new F2();
            Bundle bundle = this.f11909do;
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals("message_type") && !str.equals("collapse_key")) {
                        f2.put(str, str2);
                    }
                }
            }
            this.f11908do = f2;
        }
        return this.f11908do;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 2, this.f11909do, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
