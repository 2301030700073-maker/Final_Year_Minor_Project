package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Metadata;

/* renamed from: com.facebook.ads.redexgen.X.Pw, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1467Pw implements Parcelable.Creator<Metadata> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.Parcelable.Creator
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Metadata createFromParcel(Parcel parcel) {
        return new Metadata(parcel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.Parcelable.Creator
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final Metadata[] newArray(int i) {
        return new Metadata[i];
    }
}
