package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcelable;
import androidx.core.graphics.drawable.IconCompat;
import defpackage.HK;
import defpackage.JK;

/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(HK hk) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        JK jk = remoteActionCompat.f6505do;
        if (hk.mo839goto(1)) {
            jk = hk.m834const();
        }
        remoteActionCompat.f6505do = (IconCompat) jk;
        CharSequence charSequence = remoteActionCompat.f6506do;
        if (hk.mo839goto(2)) {
            charSequence = hk.mo836else();
        }
        remoteActionCompat.f6506do = charSequence;
        CharSequence charSequence2 = remoteActionCompat.f6508if;
        if (hk.mo839goto(3)) {
            charSequence2 = hk.mo836else();
        }
        remoteActionCompat.f6508if = charSequence2;
        Parcelable parcelable = remoteActionCompat.f6504do;
        if (hk.mo839goto(4)) {
            parcelable = hk.mo832catch();
        }
        remoteActionCompat.f6504do = (PendingIntent) parcelable;
        boolean z = remoteActionCompat.f6507do;
        if (hk.mo839goto(5)) {
            z = hk.mo850try();
        }
        remoteActionCompat.f6507do = z;
        boolean z2 = remoteActionCompat.f6509if;
        if (hk.mo839goto(6)) {
            z2 = hk.mo850try();
        }
        remoteActionCompat.f6509if = z2;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, HK hk) {
        hk.getClass();
        IconCompat iconCompat = remoteActionCompat.f6505do;
        hk.mo837final(1);
        hk.m846static(iconCompat);
        CharSequence charSequence = remoteActionCompat.f6506do;
        hk.mo837final(2);
        hk.mo851while(charSequence);
        CharSequence charSequence2 = remoteActionCompat.f6508if;
        hk.mo837final(3);
        hk.mo851while(charSequence2);
        PendingIntent pendingIntent = remoteActionCompat.f6504do;
        hk.mo837final(4);
        hk.mo844public(pendingIntent);
        boolean z = remoteActionCompat.f6507do;
        hk.mo837final(5);
        hk.mo847super(z);
        boolean z2 = remoteActionCompat.f6509if;
        hk.mo837final(6);
        hk.mo847super(z2);
    }
}
