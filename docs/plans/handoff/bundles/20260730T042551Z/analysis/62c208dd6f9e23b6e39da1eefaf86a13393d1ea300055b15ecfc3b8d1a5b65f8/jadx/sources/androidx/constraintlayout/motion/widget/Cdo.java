package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.Cdo;
import com.joeykrim.rootcheck.R;
import defpackage.C0284Ip;
import defpackage.C0701ad;
import defpackage.C0743bI;
import defpackage.C2917iF;
import defpackage.C4004xt;
import defpackage.O2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* renamed from: androidx.constraintlayout.motion.widget.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    public float f6147do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f6148do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SparseArray<androidx.constraintlayout.widget.Cdo> f6149do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SparseIntArray f6150do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public MotionEvent f6151do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public MotionLayout.Ctry f6152do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final MotionLayout f6153do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0031do f6154do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2917iF f6155do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<C0031do> f6156do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap<String, Integer> f6157do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6158do;

    /* renamed from: if, reason: not valid java name */
    public float f6159if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int f6160if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public C0031do f6161if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList<C0031do> f6162if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f6163if;

    public Cdo(Context context, MotionLayout motionLayout, int i) {
        int eventType;
        C0031do c0031do = null;
        this.f6155do = null;
        this.f6154do = null;
        ArrayList<C0031do> arrayList = new ArrayList<>();
        this.f6156do = arrayList;
        this.f6161if = null;
        this.f6162if = new ArrayList<>();
        this.f6149do = new SparseArray<>();
        this.f6157do = new HashMap<>();
        this.f6150do = new SparseIntArray();
        this.f6148do = 400;
        this.f6160if = 0;
        this.f6158do = false;
        this.f6153do = motionLayout;
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            eventType = xml.getEventType();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
        while (true) {
            char c = 1;
            if (eventType == 1) {
                this.f6149do.put(R.id.motion_base, new androidx.constraintlayout.widget.Cdo());
                this.f6157do.put("motion_base", Integer.valueOf(R.id.motion_base));
                return;
            }
            if (eventType == 0) {
                xml.getName();
            } else if (eventType == 2) {
                String name = xml.getName();
                switch (name.hashCode()) {
                    case -1349929691:
                        if (name.equals("ConstraintSet")) {
                            c = 5;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1239391468:
                        if (name.equals("KeyFrameSet")) {
                            c = 6;
                            break;
                        }
                        c = 65535;
                        break;
                    case 269306229:
                        if (name.equals("Transition")) {
                            break;
                        }
                        c = 65535;
                        break;
                    case 312750793:
                        if (name.equals("OnClick")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case 327855227:
                        if (name.equals("OnSwipe")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case 793277014:
                        if (name.equals("MotionScene")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1382829617:
                        if (name.equals("StateSet")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                switch (c) {
                    case 0:
                        m3611goto(context, xml);
                        break;
                    case 1:
                        c0031do = new C0031do(this, context, xml);
                        arrayList.add(c0031do);
                        if (this.f6154do == null && !c0031do.f6172do) {
                            this.f6154do = c0031do;
                            C0743bI c0743bI = c0031do.f6169do;
                            if (c0743bI != null) {
                                c0743bI.m4827if(this.f6163if);
                            }
                        }
                        if (!c0031do.f6172do) {
                            break;
                        } else {
                            if (c0031do.f6176if == -1) {
                                this.f6161if = c0031do;
                            } else {
                                this.f6162if.add(c0031do);
                            }
                            arrayList.remove(c0031do);
                            break;
                        }
                        break;
                    case 2:
                        if (c0031do == null) {
                            context.getResources().getResourceEntryName(i);
                            xml.getLineNumber();
                        }
                        c0031do.f6169do = new C0743bI(context, this.f6153do, xml);
                        break;
                    case 3:
                        c0031do.getClass();
                        c0031do.f6177if.add(new C0031do.ViewOnClickListenerC0032do(context, c0031do, xml));
                        break;
                    case 4:
                        this.f6155do = new C2917iF(context, xml);
                        break;
                    case 5:
                        m3609else(context, xml);
                        break;
                    case 6:
                        c0031do.f6171do.add(new C0284Ip(context, xml));
                        break;
                }
            }
            eventType = xml.next();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
    
        if (r2 != (-1)) goto L13;
     */
    /* renamed from: break, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3605break(int r9, int r10) {
        /*
            r8 = this;
            iF r0 = r8.f6155do
            r1 = -1
            if (r0 == 0) goto L16
            int r0 = r0.m6887do(r9)
            if (r0 == r1) goto Lc
            goto Ld
        Lc:
            r0 = r9
        Ld:
            iF r2 = r8.f6155do
            int r2 = r2.m6887do(r10)
            if (r2 == r1) goto L17
            goto L18
        L16:
            r0 = r9
        L17:
            r2 = r10
        L18:
            java.util.ArrayList<androidx.constraintlayout.motion.widget.do$do> r3 = r8.f6156do
            java.util.Iterator r4 = r3.iterator()
        L1e:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L44
            java.lang.Object r5 = r4.next()
            androidx.constraintlayout.motion.widget.do$do r5 = (androidx.constraintlayout.motion.widget.Cdo.C0031do) r5
            int r6 = r5.f6176if
            if (r6 != r2) goto L32
            int r7 = r5.f6174for
            if (r7 == r0) goto L38
        L32:
            if (r6 != r10) goto L1e
            int r6 = r5.f6174for
            if (r6 != r9) goto L1e
        L38:
            r8.f6154do = r5
            bI r9 = r5.f6169do
            if (r9 == 0) goto L43
            boolean r10 = r8.f6163if
            r9.m4827if(r10)
        L43:
            return
        L44:
            androidx.constraintlayout.motion.widget.do$do r9 = r8.f6161if
            java.util.ArrayList<androidx.constraintlayout.motion.widget.do$do> r4 = r8.f6162if
            java.util.Iterator r4 = r4.iterator()
        L4c:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L5e
            java.lang.Object r5 = r4.next()
            androidx.constraintlayout.motion.widget.do$do r5 = (androidx.constraintlayout.motion.widget.Cdo.C0031do) r5
            int r6 = r5.f6176if
            if (r6 != r10) goto L4c
            r9 = r5
            goto L4c
        L5e:
            androidx.constraintlayout.motion.widget.do$do r10 = new androidx.constraintlayout.motion.widget.do$do
            r10.<init>(r8, r9)
            r10.f6174for = r0
            r10.f6176if = r2
            if (r0 == r1) goto L6c
            r3.add(r10)
        L6c:
            r8.f6154do = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.Cdo.m3605break(int, int):void");
    }

    /* renamed from: case, reason: not valid java name */
    public final int m3606case() {
        C0031do c0031do = this.f6154do;
        if (c0031do == null) {
            return -1;
        }
        return c0031do.f6174for;
    }

    /* renamed from: catch, reason: not valid java name */
    public final boolean m3607catch() {
        Iterator<C0031do> it = this.f6156do.iterator();
        while (it.hasNext()) {
            if (it.next().f6169do != null) {
                return true;
            }
        }
        C0031do c0031do = this.f6154do;
        return (c0031do == null || c0031do.f6169do == null) ? false : true;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m3608do(MotionLayout motionLayout, int i) {
        if (this.f6152do != null) {
            return false;
        }
        Iterator<C0031do> it = this.f6156do.iterator();
        while (it.hasNext()) {
            C0031do next = it.next();
            int i2 = next.f6173else;
            if (i2 != 0) {
                if (i == next.f6174for && (i2 == 4 || i2 == 2)) {
                    motionLayout.m3581finally(4);
                    motionLayout.m3585private(next);
                    if (next.f6173else == 4) {
                        motionLayout.m3590throw(1.0f);
                        motionLayout.m3581finally(2);
                        motionLayout.m3581finally(3);
                    } else {
                        motionLayout.m3580extends(1.0f);
                        motionLayout.m3582import(true);
                        motionLayout.m3581finally(2);
                        motionLayout.m3581finally(3);
                        motionLayout.m3581finally(4);
                    }
                    return true;
                }
                if (i == next.f6176if && (i2 == 3 || i2 == 1)) {
                    motionLayout.m3581finally(4);
                    motionLayout.m3585private(next);
                    if (next.f6173else == 3) {
                        motionLayout.m3590throw(0.0f);
                        motionLayout.m3581finally(2);
                        motionLayout.m3581finally(3);
                    } else {
                        motionLayout.m3580extends(0.0f);
                        motionLayout.m3582import(true);
                        motionLayout.m3581finally(2);
                        motionLayout.m3581finally(3);
                        motionLayout.m3581finally(4);
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: else, reason: not valid java name */
    public final void m3609else(Context context, XmlResourceParser xmlResourceParser) {
        androidx.constraintlayout.widget.Cdo cdo = new androidx.constraintlayout.widget.Cdo();
        cdo.f6348do = false;
        int attributeCount = xmlResourceParser.getAttributeCount();
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < attributeCount; i3++) {
            String attributeName = xmlResourceParser.getAttributeName(i3);
            String attributeValue = xmlResourceParser.getAttributeValue(i3);
            attributeName.getClass();
            if (attributeName.equals("deriveConstraintsFrom")) {
                i2 = m3610for(context, attributeValue);
            } else if (attributeName.equals("id")) {
                i = m3610for(context, attributeValue);
                int indexOf = attributeValue.indexOf(47);
                if (indexOf >= 0) {
                    attributeValue = attributeValue.substring(indexOf + 1);
                }
                this.f6157do.put(attributeValue, Integer.valueOf(i));
            }
        }
        if (i != -1) {
            int i4 = this.f6153do.f6104super;
            cdo.m3653this(context, xmlResourceParser);
            if (i2 != -1) {
                this.f6150do.put(i, i2);
            }
            this.f6149do.put(i, cdo);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final int m3610for(Context context, String str) {
        int identifier = str.contains("/") ? context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), "id", context.getPackageName()) : -1;
        return (identifier != -1 || str.length() <= 1) ? identifier : Integer.parseInt(str.substring(1));
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m3611goto(Context context, XmlResourceParser xmlResourceParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), O2.M);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 0) {
                this.f6148do = obtainStyledAttributes.getInt(index, this.f6148do);
            } else if (index == 1) {
                this.f6160if = obtainStyledAttributes.getInteger(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: if, reason: not valid java name */
    public final androidx.constraintlayout.widget.Cdo m3612if(int i) {
        int m6887do;
        C2917iF c2917iF = this.f6155do;
        if (c2917iF != null && (m6887do = c2917iF.m6887do(i)) != -1) {
            i = m6887do;
        }
        SparseArray<androidx.constraintlayout.widget.Cdo> sparseArray = this.f6149do;
        if (sparseArray.get(i) != null) {
            return sparseArray.get(i);
        }
        C0701ad.m3139if(this.f6153do.getContext(), i);
        return sparseArray.get(sparseArray.keyAt(0));
    }

    /* renamed from: new, reason: not valid java name */
    public final void m3613new(C4004xt c4004xt) {
        C0031do c0031do = this.f6154do;
        if (c0031do != null) {
            Iterator<C0284Ip> it = c0031do.f6171do.iterator();
            while (it.hasNext()) {
                it.next().m971do(c4004xt);
            }
        } else {
            C0031do c0031do2 = this.f6161if;
            if (c0031do2 != null) {
                Iterator<C0284Ip> it2 = c0031do2.f6171do.iterator();
                while (it2.hasNext()) {
                    it2.next().m971do(c4004xt);
                }
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m3614this(int i) {
        SparseIntArray sparseIntArray = this.f6150do;
        int i2 = sparseIntArray.get(i);
        if (i2 > 0) {
            m3614this(sparseIntArray.get(i));
            SparseArray<androidx.constraintlayout.widget.Cdo> sparseArray = this.f6149do;
            androidx.constraintlayout.widget.Cdo cdo = sparseArray.get(i);
            androidx.constraintlayout.widget.Cdo cdo2 = sparseArray.get(i2);
            if (cdo2 == null) {
                C0701ad.m3139if(this.f6153do.getContext(), i2);
                return;
            }
            cdo.getClass();
            HashMap<Integer, Cdo.C0033do> hashMap = cdo2.f6349if;
            for (Integer num : hashMap.keySet()) {
                int intValue = num.intValue();
                Cdo.C0033do c0033do = hashMap.get(num);
                HashMap<Integer, Cdo.C0033do> hashMap2 = cdo.f6349if;
                if (!hashMap2.containsKey(Integer.valueOf(intValue))) {
                    hashMap2.put(Integer.valueOf(intValue), new Cdo.C0033do());
                }
                Cdo.C0033do c0033do2 = hashMap2.get(Integer.valueOf(intValue));
                Cdo.Cif cif = c0033do2.f6352do;
                if (!cif.f6393if) {
                    cif.m3659do(c0033do.f6352do);
                }
                Cdo.Cnew cnew = c0033do2.f6353do;
                if (!cnew.f6423do) {
                    Cdo.Cnew cnew2 = c0033do.f6353do;
                    cnew.f6423do = cnew2.f6423do;
                    cnew.f6422do = cnew2.f6422do;
                    cnew.f6421do = cnew2.f6421do;
                    cnew.f6424if = cnew2.f6424if;
                    cnew.f6425if = cnew2.f6425if;
                }
                Cdo.Ctry ctry = c0033do2.f6354do;
                if (!ctry.f6431do) {
                    ctry.m3662do(c0033do.f6354do);
                }
                Cdo.Cfor cfor = c0033do2.f6351do;
                if (!cfor.f6360do) {
                    cfor.m3657do(c0033do.f6351do);
                }
                for (String str : c0033do.f6355do.keySet()) {
                    if (!c0033do2.f6355do.containsKey(str)) {
                        c0033do2.f6355do.put(str, c0033do.f6355do.get(str));
                    }
                }
            }
            sparseIntArray.put(i, -1);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final float m3615try() {
        C0743bI c0743bI;
        C0031do c0031do = this.f6154do;
        if (c0031do == null || (c0743bI = c0031do.f6169do) == null) {
            return 0.0f;
        }
        return c0743bI.f8376goto;
    }

    /* renamed from: androidx.constraintlayout.motion.widget.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0031do {

        /* renamed from: break, reason: not valid java name */
        public int f6164break;

        /* renamed from: case, reason: not valid java name */
        public int f6165case;

        /* renamed from: do, reason: not valid java name */
        public float f6166do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f6167do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cdo f6168do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0743bI f6169do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f6170do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList<C0284Ip> f6171do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f6172do;

        /* renamed from: else, reason: not valid java name */
        public int f6173else;

        /* renamed from: for, reason: not valid java name */
        public int f6174for;

        /* renamed from: goto, reason: not valid java name */
        public int f6175goto;

        /* renamed from: if, reason: not valid java name */
        public int f6176if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final ArrayList<ViewOnClickListenerC0032do> f6177if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f6178if;

        /* renamed from: new, reason: not valid java name */
        public int f6179new;

        /* renamed from: this, reason: not valid java name */
        public int f6180this;

        /* renamed from: try, reason: not valid java name */
        public int f6181try;

        /* renamed from: androidx.constraintlayout.motion.widget.do$do$do, reason: invalid class name and collision with other inner class name */
        public static class ViewOnClickListenerC0032do implements View.OnClickListener {

            /* renamed from: do, reason: not valid java name */
            public final C0031do f6182do;

            /* renamed from: for, reason: not valid java name */
            public final int f6183for;

            /* renamed from: new, reason: not valid java name */
            public final int f6184new;

            public ViewOnClickListenerC0032do(Context context, C0031do c0031do, XmlResourceParser xmlResourceParser) {
                this.f6183for = -1;
                this.f6184new = 17;
                this.f6182do = c0031do;
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), O2.O);
                int indexCount = obtainStyledAttributes.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int index = obtainStyledAttributes.getIndex(i);
                    if (index == 1) {
                        this.f6183for = obtainStyledAttributes.getResourceId(index, this.f6183for);
                    } else if (index == 0) {
                        this.f6184new = obtainStyledAttributes.getInt(index, this.f6184new);
                    }
                }
                obtainStyledAttributes.recycle();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r8v2, types: [android.view.View] */
            /* renamed from: do, reason: not valid java name */
            public final void m3616do(MotionLayout motionLayout, int i, C0031do c0031do) {
                int i2 = this.f6183for;
                MotionLayout motionLayout2 = motionLayout;
                if (i2 != -1) {
                    motionLayout2 = motionLayout.findViewById(i2);
                }
                if (motionLayout2 == null) {
                    return;
                }
                int i3 = c0031do.f6174for;
                int i4 = c0031do.f6176if;
                if (i3 == -1) {
                    motionLayout2.setOnClickListener(this);
                    return;
                }
                int i5 = this.f6184new;
                int i6 = i5 & 1;
                boolean z = false;
                boolean z2 = (i6 != 0 && i == i3) | (i6 != 0 && i == i3) | ((i5 & 256) != 0 && i == i3) | ((i5 & 16) != 0 && i == i4);
                if ((i5 & 4096) != 0 && i == i4) {
                    z = true;
                }
                if (z2 || z) {
                    motionLayout2.setOnClickListener(this);
                }
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i;
                C0031do c0031do = this.f6182do;
                Cdo cdo = c0031do.f6168do;
                MotionLayout motionLayout = cdo.f6153do;
                if (motionLayout.f6094if) {
                    if (c0031do.f6174for == -1) {
                        int i2 = motionLayout.f6064catch;
                        if (i2 == -1) {
                            motionLayout.m3577continue(c0031do.f6176if);
                            return;
                        }
                        C0031do c0031do2 = new C0031do(cdo, c0031do);
                        c0031do2.f6174for = i2;
                        c0031do2.f6176if = c0031do.f6176if;
                        motionLayout.m3585private(c0031do2);
                        motionLayout.m3590throw(1.0f);
                        return;
                    }
                    C0031do c0031do3 = cdo.f6154do;
                    int i3 = this.f6184new;
                    int i4 = i3 & 1;
                    boolean z = true;
                    boolean z2 = (i4 == 0 && (i3 & 256) == 0) ? false : true;
                    int i5 = i3 & 16;
                    boolean z3 = (i5 == 0 && (i3 & 4096) == 0) ? false : true;
                    if (z2 && z3) {
                        if (c0031do3 != c0031do) {
                            motionLayout.m3585private(c0031do);
                        }
                        if (motionLayout.f6064catch == motionLayout.f6065class || motionLayout.f6097new > 0.5f) {
                            z2 = false;
                        } else {
                            z3 = false;
                        }
                    }
                    if (c0031do != c0031do3) {
                        int i6 = c0031do.f6176if;
                        int i7 = c0031do.f6174for;
                        if (i7 != -1 ? !((i = motionLayout.f6064catch) == i7 || i == i6) : motionLayout.f6064catch == i6) {
                            z = false;
                        }
                    }
                    if (z) {
                        if (z2 && i4 != 0) {
                            motionLayout.m3585private(c0031do);
                            motionLayout.m3590throw(1.0f);
                            return;
                        }
                        if (z3 && i5 != 0) {
                            motionLayout.m3585private(c0031do);
                            motionLayout.m3590throw(0.0f);
                        } else if (z2 && (i3 & 256) != 0) {
                            motionLayout.m3585private(c0031do);
                            motionLayout.m3580extends(1.0f);
                        } else {
                            if (!z3 || (i3 & 4096) == 0) {
                                return;
                            }
                            motionLayout.m3585private(c0031do);
                            motionLayout.m3580extends(0.0f);
                        }
                    }
                }
            }
        }

        public C0031do(Cdo cdo, C0031do c0031do) {
            this.f6167do = -1;
            this.f6172do = false;
            this.f6176if = -1;
            this.f6174for = -1;
            this.f6179new = 0;
            this.f6170do = null;
            this.f6181try = -1;
            this.f6165case = 400;
            this.f6166do = 0.0f;
            this.f6171do = new ArrayList<>();
            this.f6169do = null;
            this.f6177if = new ArrayList<>();
            this.f6173else = 0;
            this.f6178if = false;
            this.f6175goto = -1;
            this.f6180this = 0;
            this.f6164break = 0;
            this.f6168do = cdo;
            if (c0031do != null) {
                this.f6175goto = c0031do.f6175goto;
                this.f6179new = c0031do.f6179new;
                this.f6170do = c0031do.f6170do;
                this.f6181try = c0031do.f6181try;
                this.f6165case = c0031do.f6165case;
                this.f6171do = c0031do.f6171do;
                this.f6166do = c0031do.f6166do;
                this.f6180this = c0031do.f6180this;
            }
        }

        public C0031do(Cdo cdo, Context context, XmlResourceParser xmlResourceParser) {
            this.f6167do = -1;
            this.f6172do = false;
            this.f6176if = -1;
            this.f6174for = -1;
            this.f6179new = 0;
            this.f6170do = null;
            this.f6181try = -1;
            this.f6165case = 400;
            this.f6166do = 0.0f;
            this.f6171do = new ArrayList<>();
            this.f6169do = null;
            this.f6177if = new ArrayList<>();
            this.f6173else = 0;
            this.f6178if = false;
            this.f6175goto = -1;
            this.f6180this = 0;
            this.f6164break = 0;
            this.f6165case = cdo.f6148do;
            this.f6180this = cdo.f6160if;
            this.f6168do = cdo;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), O2.U);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                SparseArray<androidx.constraintlayout.widget.Cdo> sparseArray = cdo.f6149do;
                if (index == 2) {
                    this.f6176if = obtainStyledAttributes.getResourceId(index, this.f6176if);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.f6176if))) {
                        androidx.constraintlayout.widget.Cdo cdo2 = new androidx.constraintlayout.widget.Cdo();
                        cdo2.m3650goto(context, this.f6176if);
                        sparseArray.append(this.f6176if, cdo2);
                    }
                } else if (index == 3) {
                    this.f6174for = obtainStyledAttributes.getResourceId(index, this.f6174for);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.f6174for))) {
                        androidx.constraintlayout.widget.Cdo cdo3 = new androidx.constraintlayout.widget.Cdo();
                        cdo3.m3650goto(context, this.f6174for);
                        sparseArray.append(this.f6174for, cdo3);
                    }
                } else if (index == 6) {
                    int i2 = obtainStyledAttributes.peekValue(index).type;
                    if (i2 == 1) {
                        int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                        this.f6181try = resourceId;
                        if (resourceId != -1) {
                            this.f6179new = -2;
                        }
                    } else if (i2 == 3) {
                        String string = obtainStyledAttributes.getString(index);
                        this.f6170do = string;
                        if (string.indexOf("/") > 0) {
                            this.f6181try = obtainStyledAttributes.getResourceId(index, -1);
                            this.f6179new = -2;
                        } else {
                            this.f6179new = -1;
                        }
                    } else {
                        this.f6179new = obtainStyledAttributes.getInteger(index, this.f6179new);
                    }
                } else if (index == 4) {
                    this.f6165case = obtainStyledAttributes.getInt(index, this.f6165case);
                } else if (index == 8) {
                    this.f6166do = obtainStyledAttributes.getFloat(index, this.f6166do);
                } else if (index == 1) {
                    this.f6173else = obtainStyledAttributes.getInteger(index, this.f6173else);
                } else if (index == 0) {
                    this.f6167do = obtainStyledAttributes.getResourceId(index, this.f6167do);
                } else if (index == 9) {
                    this.f6178if = obtainStyledAttributes.getBoolean(index, this.f6178if);
                } else if (index == 7) {
                    this.f6175goto = obtainStyledAttributes.getInteger(index, -1);
                } else if (index == 5) {
                    this.f6180this = obtainStyledAttributes.getInteger(index, 0);
                } else if (index == 10) {
                    this.f6164break = obtainStyledAttributes.getInteger(index, 0);
                }
            }
            if (this.f6174for == -1) {
                this.f6172do = true;
            }
            obtainStyledAttributes.recycle();
        }
    }
}
