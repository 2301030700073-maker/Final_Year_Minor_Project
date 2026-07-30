package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.CameraEffectArguments;
import com.facebook.share.model.CameraEffectTextures;
import defpackage.C0173Do;

/* loaded from: classes.dex */
public final class ShareCameraEffectContent extends ShareContent<ShareCameraEffectContent, Object> {
    public static final Parcelable.Creator<ShareCameraEffectContent> CREATOR = new Cdo();

    /* renamed from: const, reason: not valid java name */
    public final String f9432const;

    /* renamed from: do, reason: not valid java name */
    public final CameraEffectArguments f9433do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CameraEffectTextures f9434do;

    /* renamed from: com.facebook.share.model.ShareCameraEffectContent$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<ShareCameraEffectContent> {
        @Override // android.os.Parcelable.Creator
        public final ShareCameraEffectContent createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "parcel");
            return new ShareCameraEffectContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ShareCameraEffectContent[] newArray(int i) {
            return new ShareCameraEffectContent[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShareCameraEffectContent(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "parcel");
        this.f9432const = parcel.readString();
        CameraEffectArguments.Cdo cdo = new CameraEffectArguments.Cdo();
        CameraEffectArguments cameraEffectArguments = (CameraEffectArguments) parcel.readParcelable(CameraEffectArguments.class.getClassLoader());
        if (cameraEffectArguments != null) {
            cdo.f9418do.putAll(cameraEffectArguments.f9417do);
        }
        this.f9433do = new CameraEffectArguments(cdo);
        CameraEffectTextures.Cdo cdo2 = new CameraEffectTextures.Cdo();
        CameraEffectTextures cameraEffectTextures = (CameraEffectTextures) parcel.readParcelable(CameraEffectTextures.class.getClassLoader());
        if (cameraEffectTextures != null) {
            cdo2.f9420do.putAll(cameraEffectTextures.f9419do);
        }
        this.f9434do = new CameraEffectTextures(cdo2);
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f9432const);
        parcel.writeParcelable(this.f9433do, 0);
        parcel.writeParcelable(this.f9434do, 0);
    }
}
