package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.extractor.metadata.mp4.SmtaMetadataEntry;

/* renamed from: com.facebook.ads.redexgen.X.Vd, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1593Vd implements Parcelable.Creator<SmtaMetadataEntry> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.Parcelable.Creator
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final SmtaMetadataEntry createFromParcel(Parcel parcel) {
        return new SmtaMetadataEntry(parcel, (C1593Vd) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.Parcelable.Creator
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final SmtaMetadataEntry[] newArray(int i) {
        return new SmtaMetadataEntry[i];
    }
}
