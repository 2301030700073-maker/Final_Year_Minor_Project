package b.b.f;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import b.b.f.m.s;
import b.b.g.C0055j0;
import b.b.g.a1;
import b.e.i.AbstractC0089c;
import com.android.systemui.shared.system.QuickStepContract;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class j extends MenuInflater {
    public static final Class[] e;
    public static final Class[] f;

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f349a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f350b;

    /* renamed from: c, reason: collision with root package name */
    public Context f351c;

    /* renamed from: d, reason: collision with root package name */
    public Object f352d;

    static {
        Class[] clsArr = {Context.class};
        e = clsArr;
        f = clsArr;
    }

    public j(Context context) {
        super(context);
        this.f351c = context;
        Object[] objArr = {context};
        this.f349a = objArr;
        this.f350b = objArr;
    }

    public final Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    public final void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        ColorStateList colorStateList;
        i iVar = new i(this, menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException(c.a.c.a.a.e("Expecting menu, got ", name));
                }
                eventType = xmlPullParser.next();
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        String str = null;
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            z = z;
            z = z;
            if (eventType != 2) {
                if (eventType == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z2 && name2.equals(str)) {
                        str = null;
                        z2 = false;
                    } else if (name2.equals("group")) {
                        iVar.f346b = 0;
                        iVar.f347c = 0;
                        iVar.f348d = 0;
                        iVar.e = 0;
                        iVar.f = true;
                        iVar.g = true;
                        z = z;
                    } else if (name2.equals("item")) {
                        z = z;
                        if (!iVar.h) {
                            AbstractC0089c abstractC0089c = iVar.A;
                            if (abstractC0089c == null || !((s) abstractC0089c).f412b.hasSubMenu()) {
                                iVar.h = true;
                                iVar.c(iVar.f345a.add(iVar.f346b, iVar.i, iVar.j, iVar.k));
                                z = z;
                            } else {
                                iVar.a();
                                z = z;
                            }
                        }
                    } else {
                        z = z;
                        if (name2.equals("menu")) {
                            z = true;
                        }
                    }
                }
            } else if (!z2) {
                String name3 = xmlPullParser.getName();
                if (name3.equals("group")) {
                    TypedArray obtainStyledAttributes = iVar.F.f351c.obtainStyledAttributes(attributeSet, b.b.b.p);
                    iVar.f346b = obtainStyledAttributes.getResourceId(1, 0);
                    iVar.f347c = obtainStyledAttributes.getInt(3, 0);
                    iVar.f348d = obtainStyledAttributes.getInt(4, 0);
                    iVar.e = obtainStyledAttributes.getInt(5, 0);
                    iVar.f = obtainStyledAttributes.getBoolean(2, true);
                    iVar.g = obtainStyledAttributes.getBoolean(0, true);
                    obtainStyledAttributes.recycle();
                    z = z;
                } else if (name3.equals("item")) {
                    a1 n = a1.n(iVar.F.f351c, attributeSet, b.b.b.q);
                    iVar.i = n.j(2, 0);
                    iVar.j = (n.h(5, iVar.f347c) & (-65536)) | (n.h(6, iVar.f348d) & 65535);
                    iVar.k = n.l(7);
                    iVar.l = n.l(8);
                    iVar.m = n.j(0, 0);
                    String k = n.k(9);
                    iVar.n = k == null ? (char) 0 : k.charAt(0);
                    iVar.o = n.h(16, QuickStepContract.SYSUI_STATE_TRACING_ENABLED);
                    String k2 = n.k(10);
                    iVar.p = k2 == null ? (char) 0 : k2.charAt(0);
                    iVar.q = n.h(20, QuickStepContract.SYSUI_STATE_TRACING_ENABLED);
                    if (n.m(11)) {
                        iVar.r = n.a(11, false) ? 1 : 0;
                    } else {
                        iVar.r = iVar.e;
                    }
                    iVar.s = n.a(3, false);
                    iVar.t = n.a(4, iVar.f);
                    iVar.u = n.a(1, iVar.g);
                    iVar.v = n.h(21, -1);
                    iVar.z = n.k(12);
                    iVar.w = n.j(13, 0);
                    iVar.x = n.k(15);
                    String k3 = n.k(14);
                    iVar.y = k3;
                    boolean z3 = k3 != null;
                    if (z3 && iVar.w == 0 && iVar.x == null) {
                        iVar.A = (AbstractC0089c) iVar.b(iVar.y, f, iVar.F.f350b);
                    } else {
                        if (z3) {
                            Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                        }
                        iVar.A = null;
                    }
                    iVar.B = n.l(17);
                    iVar.C = n.l(22);
                    if (n.m(19)) {
                        iVar.E = C0055j0.d(n.h(19, -1), iVar.E);
                        colorStateList = null;
                    } else {
                        colorStateList = null;
                        iVar.E = null;
                    }
                    if (n.m(18)) {
                        iVar.D = n.b(18);
                    } else {
                        iVar.D = colorStateList;
                    }
                    n.f513b.recycle();
                    iVar.h = false;
                    z = z;
                } else if (name3.equals("menu")) {
                    b(xmlPullParser, attributeSet, iVar.a());
                } else {
                    str = name3;
                    z2 = true;
                }
            }
            eventType = xmlPullParser.next();
            z = z;
            z2 = z2;
        }
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        if (!(menu instanceof b.e.e.a.a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = this.f351c.getResources().getLayout(i);
                    b(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
                    xmlResourceParser.close();
                } catch (XmlPullParserException e2) {
                    throw new InflateException("Error inflating menu XML", e2);
                }
            } catch (IOException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
