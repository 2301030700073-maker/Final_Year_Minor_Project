package com.fsck.k9.activity.misc;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentState;
import com.fsck.k9.message.Attachment;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Attachment implements Parcelable, com.fsck.k9.message.Attachment {
    public static final Parcelable.Creator<Attachment> CREATOR = new FragmentState.AnonymousClass1(25);
    public final boolean allowMessageType;
    public final String contentType;
    public final String fileName;
    public final boolean isInternalAttachment;
    public final int loaderId;
    public final String name;
    public final Long size;
    public final Attachment.LoadingState state;
    public final Uri uri;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Attachment(android.os.Parcel r14) {
        /*
            r13 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            java.lang.Class<android.net.Uri> r1 = android.net.Uri.class
            r2 = 33
            if (r0 < r2) goto L14
            java.lang.ClassLoader r3 = r1.getClassLoader()
            java.lang.Object r1 = r14.readParcelable(r3, r1)
            android.net.Uri r1 = (android.net.Uri) r1
        L12:
            r4 = r1
            goto L1f
        L14:
            java.lang.ClassLoader r1 = r1.getClassLoader()
            android.os.Parcelable r1 = r14.readParcelable(r1)
            android.net.Uri r1 = (android.net.Uri) r1
            goto L12
        L1f:
            r1 = 0
            java.lang.String r3 = "Required value was null."
            if (r4 == 0) goto L7d
            if (r0 < r2) goto L34
            java.lang.Class<com.fsck.k9.message.Attachment$LoadingState> r0 = com.fsck.k9.message.Attachment.LoadingState.class
            java.lang.ClassLoader r2 = r0.getClassLoader()
            java.lang.Object r0 = r14.readSerializable(r2, r0)
            com.fsck.k9.message.Attachment$LoadingState r0 = (com.fsck.k9.message.Attachment.LoadingState) r0
        L32:
            r5 = r0
            goto L3e
        L34:
            java.io.Serializable r0 = r14.readSerializable()
            r0.getClass()
            com.fsck.k9.message.Attachment$LoadingState r0 = (com.fsck.k9.message.Attachment.LoadingState) r0
            goto L32
        L3e:
            if (r5 == 0) goto L79
            int r6 = r14.readInt()
            java.lang.String r7 = r14.readString()
            int r0 = r14.readInt()
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L52
            r8 = r3
            goto L53
        L52:
            r8 = r2
        L53:
            java.lang.String r9 = r14.readString()
            int r0 = r14.readInt()
            if (r0 == 0) goto L65
            long r0 = r14.readLong()
            java.lang.Long r1 = java.lang.Long.valueOf(r0)
        L65:
            r10 = r1
            java.lang.String r11 = r14.readString()
            int r14 = r14.readInt()
            if (r14 == 0) goto L73
            r12 = r3
        L71:
            r3 = r13
            goto L75
        L73:
            r12 = r2
            goto L71
        L75:
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return
        L79:
            coil3.UriKt$$ExternalSyntheticBUOutline0.m(r3)
            throw r1
        L7d:
            coil3.UriKt$$ExternalSyntheticBUOutline0.m(r3)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.activity.misc.Attachment.<init>(android.os.Parcel):void");
    }

    public final Attachment deriveWithLoadCancelled() {
        return new Attachment(this.uri, Attachment.LoadingState.CANCELLED, this.loaderId, this.contentType, this.allowMessageType, this.name, this.size, null, this.isInternalAttachment);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeParcelable(this.uri, i);
        parcel.writeSerializable(this.state);
        parcel.writeInt(this.loaderId);
        parcel.writeString(this.contentType);
        parcel.writeInt(this.allowMessageType ? 1 : 0);
        parcel.writeString(this.name);
        Long l = this.size;
        if (l != null) {
            parcel.writeInt(1);
            parcel.writeLong(l.longValue());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.fileName);
        parcel.writeInt(this.isInternalAttachment ? 1 : 0);
    }

    public Attachment(Uri uri, Attachment.LoadingState loadingState, int i, String str, boolean z, String str2, Long l, String str3, boolean z2) {
        uri.getClass();
        this.uri = uri;
        this.state = loadingState;
        this.loaderId = i;
        this.contentType = str;
        this.allowMessageType = z;
        this.name = str2;
        this.size = l;
        this.fileName = str3;
        this.isInternalAttachment = z2;
    }
}
