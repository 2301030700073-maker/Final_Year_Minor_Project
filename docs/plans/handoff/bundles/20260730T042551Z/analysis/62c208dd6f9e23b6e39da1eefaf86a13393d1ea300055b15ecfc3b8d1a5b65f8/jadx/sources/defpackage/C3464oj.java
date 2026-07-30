package defpackage;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Base64;
import android.util.Xml;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: oj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3464oj {

    /* renamed from: oj$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static int m7720do(TypedArray typedArray, int i) {
            return typedArray.getType(i);
        }
    }

    /* renamed from: oj$for, reason: invalid class name */
    public static final class Cfor implements Cif {

        /* renamed from: do, reason: not valid java name */
        public final Cnew[] f14831do;

        public Cfor(Cnew[] cnewArr) {
            this.f14831do = cnewArr;
        }
    }

    /* renamed from: oj$if, reason: invalid class name */
    public interface Cif {
    }

    /* renamed from: oj$new, reason: invalid class name */
    public static final class Cnew {

        /* renamed from: do, reason: not valid java name */
        public final int f14832do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f14833do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final boolean f14834do;

        /* renamed from: for, reason: not valid java name */
        public final int f14835for;

        /* renamed from: if, reason: not valid java name */
        public final int f14836if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final String f14837if;

        public Cnew(int i, int i2, int i3, String str, String str2, boolean z) {
            this.f14833do = str;
            this.f14832do = i;
            this.f14834do = z;
            this.f14837if = str2;
            this.f14836if = i2;
            this.f14835for = i3;
        }
    }

    /* renamed from: oj$try, reason: invalid class name */
    public static final class Ctry implements Cif {

        /* renamed from: do, reason: not valid java name */
        public final int f14838do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C2942ij f14839do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f14840do;

        /* renamed from: if, reason: not valid java name */
        public final int f14841if;

        public Ctry(C2942ij c2942ij, int i, int i2, String str) {
            this.f14839do = c2942ij;
            this.f14841if = i;
            this.f14838do = i2;
            this.f14840do = str;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Cif m7717do(XmlResourceParser xmlResourceParser, Resources resources) {
        int next;
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        xmlResourceParser.require(2, null, "font-family");
        if (xmlResourceParser.getName().equals("font-family")) {
            TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), O4.f2546for);
            String string = obtainAttributes.getString(0);
            String string2 = obtainAttributes.getString(4);
            String string3 = obtainAttributes.getString(5);
            int resourceId = obtainAttributes.getResourceId(1, 0);
            int integer = obtainAttributes.getInteger(2, 1);
            int integer2 = obtainAttributes.getInteger(3, 500);
            String string4 = obtainAttributes.getString(6);
            obtainAttributes.recycle();
            if (string != null && string2 != null && string3 != null) {
                while (xmlResourceParser.next() != 3) {
                    m7718for(xmlResourceParser);
                }
                return new Ctry(new C2942ij(string, string2, string3, m7719if(resources, resourceId)), integer, integer2, string4);
            }
            ArrayList arrayList = new ArrayList();
            while (xmlResourceParser.next() != 3) {
                if (xmlResourceParser.getEventType() == 2) {
                    if (xmlResourceParser.getName().equals("font")) {
                        TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), O4.f2561new);
                        int i = obtainAttributes2.getInt(obtainAttributes2.hasValue(8) ? 8 : 1, 400);
                        boolean z = 1 == obtainAttributes2.getInt(obtainAttributes2.hasValue(6) ? 6 : 2, 0);
                        int i2 = obtainAttributes2.hasValue(9) ? 9 : 3;
                        String string5 = obtainAttributes2.getString(obtainAttributes2.hasValue(7) ? 7 : 4);
                        int i3 = obtainAttributes2.getInt(i2, 0);
                        int i4 = obtainAttributes2.hasValue(5) ? 5 : 0;
                        int resourceId2 = obtainAttributes2.getResourceId(i4, 0);
                        String string6 = obtainAttributes2.getString(i4);
                        obtainAttributes2.recycle();
                        while (xmlResourceParser.next() != 3) {
                            m7718for(xmlResourceParser);
                        }
                        arrayList.add(new Cnew(i, i3, resourceId2, string6, string5, z));
                    } else {
                        m7718for(xmlResourceParser);
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                return new Cfor((Cnew[]) arrayList.toArray(new Cnew[0]));
            }
        } else {
            m7718for(xmlResourceParser);
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m7718for(XmlResourceParser xmlResourceParser) {
        int i = 1;
        while (i > 0) {
            int next = xmlResourceParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static List<List<byte[]>> m7719if(Resources resources, int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (Cdo.m7720do(obtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                    int resourceId = obtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        String[] stringArray = resources.getStringArray(resourceId);
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArray) {
                            arrayList2.add(Base64.decode(str, 0));
                        }
                        arrayList.add(arrayList2);
                    }
                }
            } else {
                String[] stringArray2 = resources.getStringArray(i);
                ArrayList arrayList3 = new ArrayList();
                for (String str2 : stringArray2) {
                    arrayList3.add(Base64.decode(str2, 0));
                }
                arrayList.add(arrayList3);
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }
}
