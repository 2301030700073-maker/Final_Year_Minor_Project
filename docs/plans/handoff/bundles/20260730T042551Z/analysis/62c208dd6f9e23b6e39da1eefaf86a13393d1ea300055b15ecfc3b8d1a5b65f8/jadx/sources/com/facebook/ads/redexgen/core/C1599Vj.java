package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.extractor.metadata.scte35.SpliceNullCommand;

/* renamed from: com.facebook.ads.redexgen.X.Vj, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1599Vj implements Parcelable.Creator<SpliceNullCommand> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.Parcelable.Creator
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final SpliceNullCommand createFromParcel(Parcel parcel) {
        return new SpliceNullCommand();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.Parcelable.Creator
    /* renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final SpliceNullCommand[] newArray(int i) {
        return new SpliceNullCommand[i];
    }
}
