package com.android.launcher3.proxy;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class StartActivityParams implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.android.launcher3.proxy.StartActivityParams.1
        @Override // android.os.Parcelable.Creator
        public Object createFromParcel(Parcel parcel) {
            return new StartActivityParams(parcel, (AnonymousClass1) null);
        }

        @Override // android.os.Parcelable.Creator
        public Object[] newArray(int i) {
            return new StartActivityParams[i];
        }
    };
    public int extraFlags;
    public Intent fillInIntent;
    public int flagsMask;
    public int flagsValues;
    public Intent intent;
    public IntentSender intentSender;
    public final PendingIntent mPICallback;
    public Bundle options;
    public final int requestCode;

    public StartActivityParams(Activity activity, int i) {
        this.mPICallback = activity.createPendingResult(i, new Intent(), 1207959552);
        this.requestCode = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedObject(this.mPICallback, i);
        parcel.writeInt(this.requestCode);
        parcel.writeTypedObject(this.intent, i);
        parcel.writeTypedObject(this.intentSender, i);
        parcel.writeTypedObject(this.fillInIntent, i);
        parcel.writeInt(this.flagsMask);
        parcel.writeInt(this.flagsValues);
        parcel.writeInt(this.extraFlags);
        parcel.writeBundle(this.options);
    }

    public StartActivityParams(PendingIntent pendingIntent, int i) {
        this.mPICallback = pendingIntent;
        this.requestCode = i;
    }

    public StartActivityParams(Parcel parcel, AnonymousClass1 anonymousClass1) {
        this.mPICallback = (PendingIntent) parcel.readTypedObject(PendingIntent.CREATOR);
        this.requestCode = parcel.readInt();
        this.intent = (Intent) parcel.readTypedObject(Intent.CREATOR);
        this.intentSender = (IntentSender) parcel.readTypedObject(IntentSender.CREATOR);
        this.fillInIntent = (Intent) parcel.readTypedObject(Intent.CREATOR);
        this.flagsMask = parcel.readInt();
        this.flagsValues = parcel.readInt();
        this.extraFlags = parcel.readInt();
        this.options = parcel.readBundle();
    }
}
