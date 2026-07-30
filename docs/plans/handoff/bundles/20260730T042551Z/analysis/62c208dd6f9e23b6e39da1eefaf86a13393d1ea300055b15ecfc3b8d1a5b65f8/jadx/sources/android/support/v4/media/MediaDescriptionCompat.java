package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new Cdo();

    /* renamed from: break, reason: not valid java name */
    public final String f5033break;

    /* renamed from: do, reason: not valid java name */
    public final Bitmap f5034do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Uri f5035do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bundle f5036do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CharSequence f5037do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object f5038do;

    /* renamed from: for, reason: not valid java name */
    public final CharSequence f5039for;

    /* renamed from: if, reason: not valid java name */
    public final Uri f5040if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final CharSequence f5041if;

    /* renamed from: android.support.v4.media.MediaDescriptionCompat$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<MediaDescriptionCompat> {
        @Override // android.os.Parcelable.Creator
        public final MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return MediaDescriptionCompat.m3177do(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    }

    public MediaDescriptionCompat() {
        throw null;
    }

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f5033break = str;
        this.f5037do = charSequence;
        this.f5041if = charSequence2;
        this.f5039for = charSequence3;
        this.f5034do = bitmap;
        this.f5035do = uri;
        this.f5036do = bundle;
        this.f5040if = uri2;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0050  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.support.v4.media.MediaDescriptionCompat m3177do(java.lang.Object r15) {
        /*
            r0 = 0
            if (r15 == 0) goto L61
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = r15
            android.media.MediaDescription r2 = (android.media.MediaDescription) r2
            java.lang.String r4 = r2.getMediaId()
            java.lang.CharSequence r5 = r2.getTitle()
            java.lang.CharSequence r6 = r2.getSubtitle()
            java.lang.CharSequence r7 = r2.getDescription()
            android.graphics.Bitmap r8 = r2.getIconBitmap()
            android.net.Uri r9 = r2.getIconUri()
            android.os.Bundle r3 = r2.getExtras()
            java.lang.String r10 = "android.support.v4.media.description.MEDIA_URI"
            if (r3 == 0) goto L32
            android.support.v4.media.session.MediaSessionCompat.m3184do(r3)
            android.os.Parcelable r11 = r3.getParcelable(r10)
            android.net.Uri r11 = (android.net.Uri) r11
            goto L33
        L32:
            r11 = r0
        L33:
            if (r11 == 0) goto L4c
            java.lang.String r12 = "android.support.v4.media.description.NULL_BUNDLE_FLAG"
            boolean r13 = r3.containsKey(r12)
            if (r13 == 0) goto L46
            int r13 = r3.size()
            r14 = 2
            if (r13 != r14) goto L46
            r10 = r0
            goto L4d
        L46:
            r3.remove(r10)
            r3.remove(r12)
        L4c:
            r10 = r3
        L4d:
            if (r11 == 0) goto L50
            goto L59
        L50:
            r3 = 23
            if (r1 < r3) goto L58
            android.net.Uri r0 = defpackage.C3245l.m7311goto(r2)
        L58:
            r11 = r0
        L59:
            android.support.v4.media.MediaDescriptionCompat r0 = new android.support.v4.media.MediaDescriptionCompat
            r3 = r0
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11)
            r0.f5038do = r15
        L61:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaDescriptionCompat.m3177do(java.lang.Object):android.support.v4.media.MediaDescriptionCompat");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return ((Object) this.f5037do) + ", " + ((Object) this.f5041if) + ", " + ((Object) this.f5039for);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = Build.VERSION.SDK_INT;
        Object obj = this.f5038do;
        if (obj == null) {
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.f5033break);
            builder.setTitle(this.f5037do);
            builder.setSubtitle(this.f5041if);
            builder.setDescription(this.f5039for);
            builder.setIconBitmap(this.f5034do);
            builder.setIconUri(this.f5035do);
            Uri uri = this.f5040if;
            Bundle bundle = this.f5036do;
            if (i2 < 23 && uri != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                    bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                }
                bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", uri);
            }
            builder.setExtras(bundle);
            if (i2 >= 23) {
                builder.setMediaUri(uri);
            }
            obj = builder.build();
            this.f5038do = obj;
        }
        ((MediaDescription) obj).writeToParcel(parcel, i);
    }
}
