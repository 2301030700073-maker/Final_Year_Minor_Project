package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcelable;
import com.facebook.internal.security.CertificateUtil;
import defpackage.HK;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(HK hk) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f6521do = hk.m830break(iconCompat.f6521do, 1);
        byte[] bArr = iconCompat.f6527do;
        if (hk.mo839goto(2)) {
            bArr = hk.mo831case();
        }
        iconCompat.f6527do = bArr;
        Parcelable parcelable = iconCompat.f6524do;
        if (hk.mo839goto(3)) {
            parcelable = hk.mo832catch();
        }
        iconCompat.f6524do = parcelable;
        iconCompat.f6529if = hk.m830break(iconCompat.f6529if, 4);
        iconCompat.f6528for = hk.m830break(iconCompat.f6528for, 5);
        Parcelable parcelable2 = iconCompat.f6522do;
        if (hk.mo839goto(6)) {
            parcelable2 = hk.mo832catch();
        }
        iconCompat.f6522do = (ColorStateList) parcelable2;
        String str = iconCompat.f6526do;
        if (hk.mo839goto(7)) {
            str = hk.mo833class();
        }
        iconCompat.f6526do = str;
        String str2 = iconCompat.f6530if;
        if (hk.mo839goto(8)) {
            str2 = hk.mo833class();
        }
        iconCompat.f6530if = str2;
        iconCompat.f6523do = PorterDuff.Mode.valueOf(iconCompat.f6526do);
        switch (iconCompat.f6521do) {
            case -1:
                Parcelable parcelable3 = iconCompat.f6524do;
                if (parcelable3 == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                iconCompat.f6525do = parcelable3;
                return iconCompat;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable4 = iconCompat.f6524do;
                if (parcelable4 != null) {
                    iconCompat.f6525do = parcelable4;
                } else {
                    byte[] bArr2 = iconCompat.f6527do;
                    iconCompat.f6525do = bArr2;
                    iconCompat.f6521do = 3;
                    iconCompat.f6529if = 0;
                    iconCompat.f6528for = bArr2.length;
                }
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str3 = new String(iconCompat.f6527do, Charset.forName("UTF-16"));
                iconCompat.f6525do = str3;
                if (iconCompat.f6521do == 2 && iconCompat.f6530if == null) {
                    iconCompat.f6530if = str3.split(CertificateUtil.DELIMITER, -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.f6525do = iconCompat.f6527do;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, HK hk) {
        hk.getClass();
        iconCompat.f6526do = iconCompat.f6523do.name();
        switch (iconCompat.f6521do) {
            case -1:
                iconCompat.f6524do = (Parcelable) iconCompat.f6525do;
                break;
            case 1:
            case 5:
                iconCompat.f6524do = (Parcelable) iconCompat.f6525do;
                break;
            case 2:
                iconCompat.f6527do = ((String) iconCompat.f6525do).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.f6527do = (byte[]) iconCompat.f6525do;
                break;
            case 4:
            case 6:
                iconCompat.f6527do = iconCompat.f6525do.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i = iconCompat.f6521do;
        if (-1 != i) {
            hk.m842native(i, 1);
        }
        byte[] bArr = iconCompat.f6527do;
        if (bArr != null) {
            hk.mo837final(2);
            hk.mo849throw(bArr);
        }
        Parcelable parcelable = iconCompat.f6524do;
        if (parcelable != null) {
            hk.mo837final(3);
            hk.mo844public(parcelable);
        }
        int i2 = iconCompat.f6529if;
        if (i2 != 0) {
            hk.m842native(i2, 4);
        }
        int i3 = iconCompat.f6528for;
        if (i3 != 0) {
            hk.m842native(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.f6522do;
        if (colorStateList != null) {
            hk.mo837final(6);
            hk.mo844public(colorStateList);
        }
        String str = iconCompat.f6526do;
        if (str != null) {
            hk.mo837final(7);
            hk.mo845return(str);
        }
        String str2 = iconCompat.f6530if;
        if (str2 != null) {
            hk.mo837final(8);
            hk.mo845return(str2);
        }
    }
}
