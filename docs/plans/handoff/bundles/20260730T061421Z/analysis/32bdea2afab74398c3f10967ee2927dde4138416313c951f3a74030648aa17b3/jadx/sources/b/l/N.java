package b.l;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.SwitchPreference;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class N {
    public static final Class[] e = {Context.class, AttributeSet.class};
    public static final HashMap f = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Context f1034a;

    /* renamed from: c, reason: collision with root package name */
    public S f1036c;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f1035b = new Object[2];

    /* renamed from: d, reason: collision with root package name */
    public String[] f1037d = {Preference.class.getPackage().getName() + ".", SwitchPreference.class.getPackage().getName() + "."};

    public N(Context context, S s) {
        this.f1034a = context;
        this.f1036c = s;
    }

    public final Preference a(String str, String[] strArr, AttributeSet attributeSet) {
        Class<?> cls;
        Constructor<?> constructor = (Constructor) f.get(str);
        if (constructor == null) {
            try {
                try {
                    ClassLoader classLoader = this.f1034a.getClassLoader();
                    if (strArr != null && strArr.length != 0) {
                        cls = null;
                        ClassNotFoundException e2 = null;
                        for (String str2 : strArr) {
                            try {
                                cls = Class.forName(str2 + str, false, classLoader);
                                break;
                            } catch (ClassNotFoundException e3) {
                                e2 = e3;
                            }
                        }
                        if (cls == null) {
                            if (e2 != null) {
                                throw e2;
                            }
                            throw new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                        }
                        constructor = cls.getConstructor(e);
                        constructor.setAccessible(true);
                        f.put(str, constructor);
                    }
                    cls = Class.forName(str, false, classLoader);
                    constructor = cls.getConstructor(e);
                    constructor.setAccessible(true);
                    f.put(str, constructor);
                } catch (ClassNotFoundException e4) {
                    throw e4;
                }
            } catch (Exception e5) {
                InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
                inflateException.initCause(e5);
                throw inflateException;
            }
        }
        Object[] objArr = this.f1035b;
        objArr[1] = attributeSet;
        return (Preference) constructor.newInstance(objArr);
    }

    public final Preference b(String str, AttributeSet attributeSet) {
        try {
            return -1 == str.indexOf(46) ? a(str, this.f1037d, attributeSet) : a(str, null, attributeSet);
        } catch (InflateException e2) {
            throw e2;
        } catch (ClassNotFoundException e3) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class (not found)" + str);
            inflateException.initCause(e3);
            throw inflateException;
        } catch (Exception e4) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException2.initCause(e4);
            throw inflateException2;
        }
    }

    public Preference c(XmlPullParser xmlPullParser, PreferenceGroup preferenceGroup) {
        int next;
        synchronized (this.f1035b) {
            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
            this.f1035b[0] = this.f1034a;
            do {
                try {
                    try {
                        try {
                            next = xmlPullParser.next();
                            if (next == 2) {
                                break;
                            }
                        } catch (XmlPullParserException e2) {
                            InflateException inflateException = new InflateException(e2.getMessage());
                            inflateException.initCause(e2);
                            throw inflateException;
                        }
                    } catch (InflateException e3) {
                        throw e3;
                    }
                } catch (IOException e4) {
                    InflateException inflateException2 = new InflateException(xmlPullParser.getPositionDescription() + ": " + e4.getMessage());
                    inflateException2.initCause(e4);
                    throw inflateException2;
                }
            } while (next != 1);
            if (next != 2) {
                throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
            }
            PreferenceGroup preferenceGroup2 = (PreferenceGroup) b(xmlPullParser.getName(), asAttributeSet);
            if (preferenceGroup == null) {
                preferenceGroup2.onAttachedToHierarchy(this.f1036c);
                preferenceGroup = preferenceGroup2;
            }
            d(xmlPullParser, preferenceGroup, asAttributeSet);
        }
        return preferenceGroup;
    }

    public final void d(XmlPullParser xmlPullParser, Preference preference, AttributeSet attributeSet) {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if ("intent".equals(name)) {
                    try {
                        preference.mIntent = Intent.parseIntent(this.f1034a.getResources(), xmlPullParser, attributeSet);
                    } catch (IOException e2) {
                        XmlPullParserException xmlPullParserException = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException.initCause(e2);
                        throw xmlPullParserException;
                    }
                } else if ("extra".equals(name)) {
                    this.f1034a.getResources().parseBundleExtra("extra", attributeSet, preference.getExtras());
                    try {
                        int depth2 = xmlPullParser.getDepth();
                        while (true) {
                            int next2 = xmlPullParser.next();
                            if (next2 != 1 && (next2 != 3 || xmlPullParser.getDepth() > depth2)) {
                            }
                        }
                    } catch (IOException e3) {
                        XmlPullParserException xmlPullParserException2 = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException2.initCause(e3);
                        throw xmlPullParserException2;
                    }
                } else {
                    Preference b2 = b(name, attributeSet);
                    ((PreferenceGroup) preference).e(b2);
                    d(xmlPullParser, b2, attributeSet);
                }
            }
        }
    }
}
