package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcelable;
import b.p.b;
import b.p.c;
import java.nio.charset.Charset;
import java.util.Objects;

/* loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(b bVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f84a = bVar.i(iconCompat.f84a, 1);
        byte[] bArr = iconCompat.f86c;
        if (bVar.h(2)) {
            c cVar = (c) bVar;
            int readInt = cVar.e.readInt();
            if (readInt < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[readInt];
                cVar.e.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.f86c = bArr;
        iconCompat.f87d = bVar.j(iconCompat.f87d, 3);
        iconCompat.e = bVar.i(iconCompat.e, 4);
        iconCompat.f = bVar.i(iconCompat.f, 5);
        iconCompat.g = (ColorStateList) bVar.j(iconCompat.g, 6);
        String str = iconCompat.i;
        if (bVar.h(7)) {
            str = ((c) bVar).e.readString();
        }
        iconCompat.i = str;
        String str2 = iconCompat.j;
        if (bVar.h(8)) {
            str2 = ((c) bVar).e.readString();
        }
        iconCompat.j = str2;
        iconCompat.h = PorterDuff.Mode.valueOf(iconCompat.i);
        switch (iconCompat.f84a) {
            case -1:
                Parcelable parcelable = iconCompat.f87d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                iconCompat.f85b = parcelable;
                return iconCompat;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.f87d;
                if (parcelable2 != null) {
                    iconCompat.f85b = parcelable2;
                } else {
                    byte[] bArr3 = iconCompat.f86c;
                    iconCompat.f85b = bArr3;
                    iconCompat.f84a = 3;
                    iconCompat.e = 0;
                    iconCompat.f = bArr3.length;
                }
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str3 = new String(iconCompat.f86c, Charset.forName("UTF-16"));
                iconCompat.f85b = str3;
                if (iconCompat.f84a == 2 && iconCompat.j == null) {
                    iconCompat.j = str3.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.f85b = iconCompat.f86c;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, b bVar) {
        Objects.requireNonNull(bVar);
        iconCompat.i = iconCompat.h.name();
        switch (iconCompat.f84a) {
            case -1:
                iconCompat.f87d = (Parcelable) iconCompat.f85b;
                break;
            case 1:
            case 5:
                iconCompat.f87d = (Parcelable) iconCompat.f85b;
                break;
            case 2:
                iconCompat.f86c = ((String) iconCompat.f85b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.f86c = (byte[]) iconCompat.f85b;
                break;
            case 4:
            case 6:
                iconCompat.f86c = iconCompat.f85b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i = iconCompat.f84a;
        if (-1 != i) {
            bVar.m(i, 1);
        }
        byte[] bArr = iconCompat.f86c;
        if (bArr != null) {
            bVar.l(2);
            c cVar = (c) bVar;
            cVar.e.writeInt(bArr.length);
            cVar.e.writeByteArray(bArr);
        }
        Parcelable parcelable = iconCompat.f87d;
        if (parcelable != null) {
            bVar.l(3);
            ((c) bVar).e.writeParcelable(parcelable, 0);
        }
        int i2 = iconCompat.e;
        if (i2 != 0) {
            bVar.m(i2, 4);
        }
        int i3 = iconCompat.f;
        if (i3 != 0) {
            bVar.m(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.g;
        if (colorStateList != null) {
            bVar.l(6);
            ((c) bVar).e.writeParcelable(colorStateList, 0);
        }
        String str = iconCompat.i;
        if (str != null) {
            bVar.l(7);
            ((c) bVar).e.writeString(str);
        }
        String str2 = iconCompat.j;
        if (str2 != null) {
            bVar.l(8);
            ((c) bVar).e.writeString(str2);
        }
    }
}
