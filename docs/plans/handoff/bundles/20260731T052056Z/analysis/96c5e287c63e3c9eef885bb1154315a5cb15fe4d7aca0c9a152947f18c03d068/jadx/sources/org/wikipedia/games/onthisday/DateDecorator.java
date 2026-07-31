package org.wikipedia.games.onthisday;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DateDecorator implements Parcelable {
    public static final CREATOR CREATOR = new CREATOR();
    public final Calendar calendar;
    public final Date endDate;
    public final Map scoreData;
    public final Date startDate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CREATOR implements Parcelable.Creator {
        public static long getDateKey(int i, int i2, int i3) {
            return (i2 * 100) + (i * 10000) + i3;
        }

        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new DateDecorator(new Date(), new Date(), new HashMap());
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new DateDecorator[i];
        }
    }

    public DateDecorator(Date date, Date date2, Map map) {
        map.getClass();
        this.startDate = date;
        this.endDate = date2;
        this.scoreData = map;
        this.calendar = Calendar.getInstance();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
    }
}
