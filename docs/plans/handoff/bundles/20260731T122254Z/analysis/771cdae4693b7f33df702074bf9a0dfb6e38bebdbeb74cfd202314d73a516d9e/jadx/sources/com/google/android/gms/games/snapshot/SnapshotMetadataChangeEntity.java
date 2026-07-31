package com.google.android.gms.games.snapshot;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* loaded from: classes.dex */
public final class SnapshotMetadataChangeEntity extends SnapshotMetadataChange implements SafeParcelable {
    public static final SnapshotMetadataChangeCreator CREATOR = new SnapshotMetadataChangeCreator();
    private final int zzCY;
    private final String zzakM;
    private final Long zzavn;
    private final Uri zzavp;
    private final Long zzavq;
    private BitmapTeleporter zzavr;

    SnapshotMetadataChangeEntity() {
        this(5, null, null, null, null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
    
        if (r3.zzavr == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0017, code lost:
    
        if (r3.zzavp == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0019, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001a, code lost:
    
        com.google.android.gms.common.internal.zzu.zza(r1, "Cannot set both a URI and an image");
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    SnapshotMetadataChangeEntity(int r4, java.lang.String r5, java.lang.Long r6, com.google.android.gms.common.data.BitmapTeleporter r7, android.net.Uri r8, java.lang.Long r9) {
        /*
            r3 = this;
            r3.<init>()
            r3.zzCY = r4
            r3.zzakM = r5
            r3.zzavq = r6
            r3.zzavr = r7
            r3.zzavp = r8
            r3.zzavn = r9
            com.google.android.gms.common.data.BitmapTeleporter r0 = r3.zzavr
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L20
            android.net.Uri r0 = r3.zzavp
            if (r0 != 0) goto L1a
        L19:
            r1 = 1
        L1a:
            java.lang.String r0 = "Cannot set both a URI and an image"
            com.google.android.gms.common.internal.zzu.zza(r1, r0)
            return
        L20:
            android.net.Uri r0 = r3.zzavp
            if (r0 == 0) goto L29
            com.google.android.gms.common.data.BitmapTeleporter r0 = r3.zzavr
            if (r0 != 0) goto L1a
            goto L19
        L29:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.games.snapshot.SnapshotMetadataChangeEntity.<init>(int, java.lang.String, java.lang.Long, com.google.android.gms.common.data.BitmapTeleporter, android.net.Uri, java.lang.Long):void");
    }

    SnapshotMetadataChangeEntity(String str, Long l, BitmapTeleporter bitmapTeleporter, Uri uri, Long l2) {
        this(5, str, l, bitmapTeleporter, uri, l2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public Bitmap getCoverImage() {
        if (this.zzavr == null) {
            return null;
        }
        return this.zzavr.zznc();
    }

    public Uri getCoverImageUri() {
        return this.zzavp;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public String getDescription() {
        return this.zzakM;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public Long getPlayedTimeMillis() {
        return this.zzavq;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public Long getProgressValue() {
        return this.zzavn;
    }

    public int getVersionCode() {
        return this.zzCY;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        SnapshotMetadataChangeCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public BitmapTeleporter zztQ() {
        return this.zzavr;
    }
}
