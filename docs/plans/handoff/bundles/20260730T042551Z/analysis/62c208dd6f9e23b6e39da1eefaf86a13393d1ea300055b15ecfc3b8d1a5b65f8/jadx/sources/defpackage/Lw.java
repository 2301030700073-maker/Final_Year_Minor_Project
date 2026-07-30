package defpackage;

import android.app.Person;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.net.Uri;
import androidx.core.graphics.drawable.IconCompat;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class Lw {

    /* renamed from: do, reason: not valid java name */
    public final IconCompat f2038do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CharSequence f2039do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f2040do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f2041do;

    /* renamed from: if, reason: not valid java name */
    public final String f2042if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f2043if;

    /* renamed from: Lw$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static Lw m1359do(Person person) {
            CharSequence name;
            Icon icon;
            String uri;
            String key;
            boolean isBot;
            boolean isImportant;
            Icon icon2;
            IconCompat iconCompat;
            Cif cif = new Cif();
            name = person.getName();
            cif.f2045do = name;
            icon = person.getIcon();
            IconCompat iconCompat2 = null;
            if (icon != null) {
                icon2 = person.getIcon();
                PorterDuff.Mode mode = IconCompat.f6520if;
                icon2.getClass();
                int m3728for = IconCompat.Cdo.m3728for(icon2);
                if (m3728for != 2) {
                    if (m3728for == 4) {
                        Uri m3730new = IconCompat.Cdo.m3730new(icon2);
                        m3730new.getClass();
                        String uri2 = m3730new.toString();
                        uri2.getClass();
                        iconCompat = new IconCompat(4);
                        iconCompat.f6525do = uri2;
                    } else if (m3728for != 6) {
                        iconCompat2 = new IconCompat(-1);
                        iconCompat2.f6525do = icon2;
                    } else {
                        Uri m3730new2 = IconCompat.Cdo.m3730new(icon2);
                        m3730new2.getClass();
                        String uri3 = m3730new2.toString();
                        uri3.getClass();
                        iconCompat = new IconCompat(6);
                        iconCompat.f6525do = uri3;
                    }
                    iconCompat2 = iconCompat;
                } else {
                    iconCompat2 = IconCompat.m3720if(null, IconCompat.Cdo.m3729if(icon2), IconCompat.Cdo.m3727do(icon2));
                }
            }
            cif.f2044do = iconCompat2;
            uri = person.getUri();
            cif.f2046do = uri;
            key = person.getKey();
            cif.f2048if = key;
            isBot = person.isBot();
            cif.f2047do = isBot;
            isImportant = person.isImportant();
            cif.f2049if = isImportant;
            return new Lw(cif);
        }

        /* renamed from: if, reason: not valid java name */
        public static Person m1360if(Lw lw) {
            Person.Builder name = new Person.Builder().setName(lw.f2039do);
            IconCompat iconCompat = lw.f2038do;
            return name.setIcon(iconCompat != null ? iconCompat.m3722else(null) : null).setUri(lw.f2040do).setKey(lw.f2042if).setBot(lw.f2041do).setImportant(lw.f2043if).build();
        }
    }

    /* renamed from: Lw$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public IconCompat f2044do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public CharSequence f2045do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f2046do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f2047do;

        /* renamed from: if, reason: not valid java name */
        public String f2048if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f2049if;
    }

    public Lw(Cif cif) {
        this.f2039do = cif.f2045do;
        this.f2038do = cif.f2044do;
        this.f2040do = cif.f2046do;
        this.f2042if = cif.f2048if;
        this.f2041do = cif.f2047do;
        this.f2043if = cif.f2049if;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Lw)) {
            return false;
        }
        Lw lw = (Lw) obj;
        String str = this.f2042if;
        String str2 = lw.f2042if;
        return (str == null && str2 == null) ? Objects.equals(Objects.toString(this.f2039do), Objects.toString(lw.f2039do)) && Objects.equals(this.f2040do, lw.f2040do) && Objects.equals(Boolean.valueOf(this.f2041do), Boolean.valueOf(lw.f2041do)) && Objects.equals(Boolean.valueOf(this.f2043if), Boolean.valueOf(lw.f2043if)) : Objects.equals(str, str2);
    }

    public final int hashCode() {
        String str = this.f2042if;
        return str != null ? str.hashCode() : Objects.hash(this.f2039do, this.f2040do, Boolean.valueOf(this.f2041do), Boolean.valueOf(this.f2043if));
    }
}
