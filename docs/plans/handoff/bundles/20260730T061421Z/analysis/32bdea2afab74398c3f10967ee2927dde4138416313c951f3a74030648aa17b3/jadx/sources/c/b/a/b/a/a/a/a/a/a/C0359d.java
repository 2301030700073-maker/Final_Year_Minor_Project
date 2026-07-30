package c.b.a.b.a.a.a.a.a.a;

import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import java.util.HashMap;

/* renamed from: c.b.a.b.a.a.a.a.a.a.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0359d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public Object createFromParcel(Parcel parcel) {
        w wVar = new w(parcel.readBundle());
        HashMap hashMap = new HashMap();
        z zVar = wVar.f;
        if (zVar != null && zVar.f2367b) {
            parcel.readMap(hashMap, Bitmap.class.getClassLoader());
        }
        HashMap hashMap2 = new HashMap();
        z zVar2 = wVar.f;
        if (zVar2 != null && zVar2.f2366a) {
            parcel.readMap(hashMap2, PendingIntent.class.getClassLoader());
        }
        return new EntitiesData(wVar, hashMap, hashMap2);
    }

    @Override // android.os.Parcelable.Creator
    public Object[] newArray(int i) {
        return new EntitiesData[i];
    }
}
