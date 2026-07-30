package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: iF, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2917iF {

    /* renamed from: do, reason: not valid java name */
    public int f13445do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SparseArray<Cdo> f13446do = new SparseArray<>();

    /* renamed from: iF$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f13447do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList<Cif> f13448do = new ArrayList<>();

        /* renamed from: if, reason: not valid java name */
        public final int f13449if;

        public Cdo(Context context, XmlResourceParser xmlResourceParser) {
            this.f13449if = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), O2.R);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.f13447do = obtainStyledAttributes.getResourceId(index, this.f13447do);
                } else if (index == 1) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.f13449if);
                    this.f13449if = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    "layout".equals(resourceTypeName);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: iF$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final float f13450do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final int f13451do;

        /* renamed from: for, reason: not valid java name */
        public final float f13452for;

        /* renamed from: if, reason: not valid java name */
        public final float f13453if;

        /* renamed from: new, reason: not valid java name */
        public final float f13454new;

        public Cif(Context context, XmlResourceParser xmlResourceParser) {
            this.f13450do = Float.NaN;
            this.f13453if = Float.NaN;
            this.f13452for = Float.NaN;
            this.f13454new = Float.NaN;
            this.f13451do = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), O2.V);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.f13451do);
                    this.f13451do = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    "layout".equals(resourceTypeName);
                } else if (index == 1) {
                    this.f13454new = obtainStyledAttributes.getDimension(index, this.f13454new);
                } else if (index == 2) {
                    this.f13453if = obtainStyledAttributes.getDimension(index, this.f13453if);
                } else if (index == 3) {
                    this.f13452for = obtainStyledAttributes.getDimension(index, this.f13452for);
                } else if (index == 4) {
                    this.f13450do = obtainStyledAttributes.getDimension(index, this.f13450do);
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: do, reason: not valid java name */
        public final boolean m6888do(float f, float f2) {
            float f3 = this.f13450do;
            if (!Float.isNaN(f3) && f < f3) {
                return false;
            }
            float f4 = this.f13453if;
            if (!Float.isNaN(f4) && f2 < f4) {
                return false;
            }
            float f5 = this.f13452for;
            if (!Float.isNaN(f5) && f > f5) {
                return false;
            }
            float f6 = this.f13454new;
            return Float.isNaN(f6) || f2 <= f6;
        }
    }

    public C2917iF(Context context, XmlResourceParser xmlResourceParser) {
        char c;
        this.f13445do = -1;
        new SparseArray();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), O2.S);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 0) {
                this.f13445do = obtainStyledAttributes.getResourceId(index, this.f13445do);
            }
        }
        try {
            int eventType = xmlResourceParser.getEventType();
            Cdo cdo = null;
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlResourceParser.getName();
                } else if (eventType == 2) {
                    String name = xmlResourceParser.getName();
                    switch (name.hashCode()) {
                        case 80204913:
                            if (name.equals("State")) {
                                c = 2;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1301459538:
                            if (name.equals("LayoutDescription")) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                c = 3;
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    if (c != 0 && c != 1) {
                        if (c == 2) {
                            Cdo cdo2 = new Cdo(context, xmlResourceParser);
                            this.f13446do.put(cdo2.f13447do, cdo2);
                            cdo = cdo2;
                        } else if (c == 3) {
                            Cif cif = new Cif(context, xmlResourceParser);
                            if (cdo != null) {
                                cdo.f13448do.add(cif);
                            }
                        }
                    }
                } else if (eventType != 3) {
                    continue;
                } else if ("StateSet".equals(xmlResourceParser.getName())) {
                    return;
                }
                eventType = xmlResourceParser.next();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final int m6887do(int i) {
        ArrayList<Cif> arrayList;
        int i2;
        ArrayList<Cif> arrayList2;
        float f = -1;
        SparseArray<Cdo> sparseArray = this.f13446do;
        int i3 = 0;
        if (-1 == i) {
            Cdo valueAt = i == -1 ? sparseArray.valueAt(0) : sparseArray.get(-1);
            if (valueAt == null) {
                return -1;
            }
            while (true) {
                arrayList2 = valueAt.f13448do;
                if (i3 >= arrayList2.size()) {
                    i3 = -1;
                    break;
                }
                if (arrayList2.get(i3).m6888do(f, f)) {
                    break;
                }
                i3++;
            }
            if (-1 == i3) {
                return -1;
            }
            i2 = i3 == -1 ? valueAt.f13449if : arrayList2.get(i3).f13451do;
        } else {
            Cdo cdo = sparseArray.get(i);
            if (cdo == null) {
                return -1;
            }
            while (true) {
                arrayList = cdo.f13448do;
                if (i3 >= arrayList.size()) {
                    i3 = -1;
                    break;
                }
                if (arrayList.get(i3).m6888do(f, f)) {
                    break;
                }
                i3++;
            }
            i2 = i3 == -1 ? cdo.f13449if : arrayList.get(i3).f13451do;
        }
        return i2;
    }
}
