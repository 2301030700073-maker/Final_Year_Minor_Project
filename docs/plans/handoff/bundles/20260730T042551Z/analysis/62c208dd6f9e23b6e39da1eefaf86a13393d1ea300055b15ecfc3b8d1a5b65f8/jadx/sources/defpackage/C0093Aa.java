package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.SparseArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: Aa, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0093Aa {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConstraintLayout f94do;

    /* renamed from: do, reason: not valid java name */
    public int f92do = -1;

    /* renamed from: if, reason: not valid java name */
    public int f95if = -1;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SparseArray<Cdo> f93do = new SparseArray<>();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final SparseArray<androidx.constraintlayout.widget.Cdo> f96if = new SparseArray<>();

    /* renamed from: Aa$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f97do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final androidx.constraintlayout.widget.Cdo f98do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList<Cif> f99do = new ArrayList<>();

        /* renamed from: if, reason: not valid java name */
        public final int f100if;

        public Cdo(Context context, XmlResourceParser xmlResourceParser) {
            this.f100if = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), O2.R);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.f97do = obtainStyledAttributes.getResourceId(index, this.f97do);
                } else if (index == 1) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.f100if);
                    this.f100if = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    if ("layout".equals(resourceTypeName)) {
                        androidx.constraintlayout.widget.Cdo cdo = new androidx.constraintlayout.widget.Cdo();
                        this.f98do = cdo;
                        cdo.m3652new((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: Aa$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final float f101do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final int f102do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final androidx.constraintlayout.widget.Cdo f103do;

        /* renamed from: for, reason: not valid java name */
        public final float f104for;

        /* renamed from: if, reason: not valid java name */
        public final float f105if;

        /* renamed from: new, reason: not valid java name */
        public final float f106new;

        public Cif(Context context, XmlResourceParser xmlResourceParser) {
            this.f101do = Float.NaN;
            this.f105if = Float.NaN;
            this.f104for = Float.NaN;
            this.f106new = Float.NaN;
            this.f102do = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), O2.V);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.f102do);
                    this.f102do = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    if ("layout".equals(resourceTypeName)) {
                        androidx.constraintlayout.widget.Cdo cdo = new androidx.constraintlayout.widget.Cdo();
                        this.f103do = cdo;
                        cdo.m3652new((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                    }
                } else if (index == 1) {
                    this.f106new = obtainStyledAttributes.getDimension(index, this.f106new);
                } else if (index == 2) {
                    this.f105if = obtainStyledAttributes.getDimension(index, this.f105if);
                } else if (index == 3) {
                    this.f104for = obtainStyledAttributes.getDimension(index, this.f104for);
                } else if (index == 4) {
                    this.f101do = obtainStyledAttributes.getDimension(index, this.f101do);
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: do, reason: not valid java name */
        public final boolean m77do(float f, float f2) {
            float f3 = this.f101do;
            if (!Float.isNaN(f3) && f < f3) {
                return false;
            }
            float f4 = this.f105if;
            if (!Float.isNaN(f4) && f2 < f4) {
                return false;
            }
            float f5 = this.f104for;
            if (!Float.isNaN(f5) && f > f5) {
                return false;
            }
            float f6 = this.f106new;
            return Float.isNaN(f6) || f2 <= f6;
        }
    }

    public C0093Aa(Context context, ConstraintLayout constraintLayout, int i) {
        char c;
        this.f94do = constraintLayout;
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            Cdo cdo = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                c = 4;
                                break;
                            }
                            c = 65535;
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                c = 2;
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
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                c = 0;
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
                            Cdo cdo2 = new Cdo(context, xml);
                            this.f93do.put(cdo2.f97do, cdo2);
                            cdo = cdo2;
                        } else if (c == 3) {
                            Cif cif = new Cif(context, xml);
                            if (cdo != null) {
                                cdo.f99do.add(cif);
                            }
                        } else if (c == 4) {
                            m76do(context, xml);
                        }
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m76do(Context context, XmlResourceParser xmlResourceParser) {
        androidx.constraintlayout.widget.Cdo cdo = new androidx.constraintlayout.widget.Cdo();
        int attributeCount = xmlResourceParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if ("id".equals(xmlResourceParser.getAttributeName(i))) {
                String attributeValue = xmlResourceParser.getAttributeValue(i);
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1 && attributeValue.length() > 1) {
                    identifier = Integer.parseInt(attributeValue.substring(1));
                }
                cdo.m3653this(context, xmlResourceParser);
                this.f96if.put(identifier, cdo);
                return;
            }
        }
    }
}
