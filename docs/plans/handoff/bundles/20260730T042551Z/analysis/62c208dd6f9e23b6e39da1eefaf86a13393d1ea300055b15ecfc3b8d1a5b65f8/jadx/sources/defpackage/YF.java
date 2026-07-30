package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.Cgoto;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class YF extends MenuInflater {

    /* renamed from: do, reason: not valid java name */
    public static final Class<?>[] f4676do;

    /* renamed from: if, reason: not valid java name */
    public static final Class<?>[] f4677if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f4678do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Object f4679do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object[] f4680do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Object[] f4681if;

    /* renamed from: YF$do, reason: invalid class name */
    public static class Cdo implements MenuItem.OnMenuItemClickListener {

        /* renamed from: do, reason: not valid java name */
        public static final Class<?>[] f4682do = {MenuItem.class};

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Object f4683do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Method f4684do;

        public Cdo(Object obj, String str) {
            this.f4683do = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f4684do = cls.getMethod(str, f4682do);
            } catch (Exception e) {
                StringBuilder m2493break = V1.m2493break("Couldn't resolve menu item onClick handler ", str, " in class ");
                m2493break.append(cls.getName());
                InflateException inflateException = new InflateException(m2493break.toString());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            Method method = this.f4684do;
            try {
                Class<?> returnType = method.getReturnType();
                Class<?> cls = Boolean.TYPE;
                Object obj = this.f4683do;
                if (returnType == cls) {
                    return ((Boolean) method.invoke(obj, menuItem)).booleanValue();
                }
                method.invoke(obj, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: YF$if, reason: invalid class name */
    public class Cif {

        /* renamed from: break, reason: not valid java name */
        public int f4685break;

        /* renamed from: case, reason: not valid java name */
        public int f4686case;

        /* renamed from: case, reason: not valid java name and collision with other field name */
        public boolean f4687case;

        /* renamed from: catch, reason: not valid java name */
        public int f4688catch;

        /* renamed from: class, reason: not valid java name */
        public int f4689class;

        /* renamed from: do, reason: not valid java name */
        public char f4690do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public H f4692do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Menu f4696do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public CharSequence f4697do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f4698do;

        /* renamed from: else, reason: not valid java name */
        public int f4700else;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public CharSequence f4702for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public boolean f4703for;

        /* renamed from: goto, reason: not valid java name */
        public int f4704goto;

        /* renamed from: if, reason: not valid java name */
        public char f4705if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public CharSequence f4707if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public String f4708if;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public CharSequence f4711new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public boolean f4712new;

        /* renamed from: this, reason: not valid java name */
        public int f4713this;

        /* renamed from: try, reason: not valid java name */
        public int f4714try;

        /* renamed from: try, reason: not valid java name and collision with other field name */
        public boolean f4715try;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ColorStateList f4694do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public PorterDuff.Mode f4695do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f4691do = 0;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public int f4706if = 0;

        /* renamed from: for, reason: not valid java name */
        public int f4701for = 0;

        /* renamed from: new, reason: not valid java name */
        public int f4710new = 0;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f4699do = true;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f4709if = true;

        public Cif(Menu menu) {
            this.f4696do = menu;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m2908do(MenuItem menuItem) {
            Object obj;
            boolean z = false;
            menuItem.setChecked(this.f4712new).setVisible(this.f4715try).setEnabled(this.f4687case).setCheckable(this.f4685break >= 1).setTitleCondensed(this.f4707if).setIcon(this.f4700else);
            int i = this.f4688catch;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            String str = this.f4708if;
            YF yf = YF.this;
            if (str != null) {
                if (yf.f4678do.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                if (yf.f4679do == null) {
                    yf.f4679do = YF.m2906do(yf.f4678do);
                }
                menuItem.setOnMenuItemClickListener(new Cdo(yf.f4679do, this.f4708if));
            }
            if (this.f4685break >= 2) {
                if (menuItem instanceof Cgoto) {
                    ((Cgoto) menuItem).m3352goto(true);
                } else if (menuItem instanceof MenuItemC0265Hs) {
                    MenuItemC0265Hs menuItemC0265Hs = (MenuItemC0265Hs) menuItem;
                    try {
                        Method method = menuItemC0265Hs.f1398do;
                        ZF zf = menuItemC0265Hs.f1397do;
                        if (method == null) {
                            menuItemC0265Hs.f1398do = zf.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                        }
                        menuItemC0265Hs.f1398do.invoke(zf, Boolean.TRUE);
                    } catch (Exception unused) {
                    }
                }
            }
            String str2 = this.f4698do;
            if (str2 != null) {
                Class<?>[] clsArr = YF.f4676do;
                Object[] objArr = yf.f4680do;
                try {
                    Constructor<?> constructor = Class.forName(str2, false, yf.f4678do.getClassLoader()).getConstructor(clsArr);
                    constructor.setAccessible(true);
                    obj = constructor.newInstance(objArr);
                } catch (Exception unused2) {
                    obj = null;
                }
                menuItem.setActionView((View) obj);
                z = true;
            }
            int i2 = this.f4689class;
            if (i2 > 0 && !z) {
                menuItem.setActionView(i2);
            }
            H h = this.f4692do;
            if (h != null && (menuItem instanceof ZF)) {
                ((ZF) menuItem).mo540new(h);
            }
            CharSequence charSequence = this.f4702for;
            boolean z2 = menuItem instanceof ZF;
            if (z2) {
                ((ZF) menuItem).mo537do(charSequence);
            } else if (Build.VERSION.SDK_INT >= 26) {
                C0221Fs.m643goto(menuItem, charSequence);
            }
            CharSequence charSequence2 = this.f4711new;
            if (z2) {
                ((ZF) menuItem).mo539if(charSequence2);
            } else if (Build.VERSION.SDK_INT >= 26) {
                C0221Fs.m639const(menuItem, charSequence2);
            }
            char c = this.f4690do;
            int i3 = this.f4704goto;
            if (z2) {
                ((ZF) menuItem).setAlphabeticShortcut(c, i3);
            } else if (Build.VERSION.SDK_INT >= 26) {
                C0221Fs.m641else(menuItem, c, i3);
            }
            char c2 = this.f4705if;
            int i4 = this.f4713this;
            if (z2) {
                ((ZF) menuItem).setNumericShortcut(c2, i4);
            } else if (Build.VERSION.SDK_INT >= 26) {
                C0221Fs.m637catch(menuItem, c2, i4);
            }
            PorterDuff.Mode mode = this.f4695do;
            if (mode != null) {
                if (z2) {
                    ((ZF) menuItem).setIconTintMode(mode);
                } else if (Build.VERSION.SDK_INT >= 26) {
                    C0221Fs.m635break(menuItem, mode);
                }
            }
            ColorStateList colorStateList = this.f4694do;
            if (colorStateList != null) {
                if (z2) {
                    ((ZF) menuItem).setIconTintList(colorStateList);
                } else if (Build.VERSION.SDK_INT >= 26) {
                    C0221Fs.m646this(menuItem, colorStateList);
                }
            }
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f4676do = clsArr;
        f4677if = clsArr;
    }

    public YF(Context context) {
        super(context);
        this.f4678do = context;
        Object[] objArr = {context};
        this.f4680do = objArr;
        this.f4681if = objArr;
    }

    /* renamed from: do, reason: not valid java name */
    public static Object m2906do(Context context) {
        return context instanceof Activity ? context : context instanceof ContextWrapper ? m2906do(((ContextWrapper) context).getBaseContext()) : context;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2907if(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Menu menu) {
        int i;
        ColorStateList colorStateList;
        Object obj;
        Cif cif = new Cif(menu);
        int eventType = xmlResourceParser.getEventType();
        while (true) {
            i = 2;
            if (eventType == 2) {
                String name = xmlResourceParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlResourceParser.next();
            } else {
                eventType = xmlResourceParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z = false;
        boolean z2 = false;
        String str = null;
        while (!z) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            Menu menu2 = cif.f4696do;
            if (eventType != i) {
                if (eventType == 3) {
                    String name2 = xmlResourceParser.getName();
                    if (z2 && name2.equals(str)) {
                        z2 = false;
                        str = null;
                    } else if (name2.equals("group")) {
                        cif.f4691do = 0;
                        cif.f4706if = 0;
                        cif.f4701for = 0;
                        cif.f4710new = 0;
                        cif.f4699do = true;
                        cif.f4709if = true;
                    } else if (name2.equals("item")) {
                        if (!cif.f4703for) {
                            H h = cif.f4692do;
                            if (h == null || !h.hasSubMenu()) {
                                cif.f4703for = true;
                                cif.m2908do(menu2.add(cif.f4691do, cif.f4714try, cif.f4686case, cif.f4697do));
                            } else {
                                cif.f4703for = true;
                                cif.m2908do(menu2.addSubMenu(cif.f4691do, cif.f4714try, cif.f4686case, cif.f4697do).getItem());
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z = true;
                    }
                }
            } else if (!z2) {
                String name3 = xmlResourceParser.getName();
                boolean equals = name3.equals("group");
                YF yf = YF.this;
                if (equals) {
                    TypedArray obtainStyledAttributes = yf.f4678do.obtainStyledAttributes(attributeSet, O4.f2576throws);
                    cif.f4691do = obtainStyledAttributes.getResourceId(1, 0);
                    cif.f4706if = obtainStyledAttributes.getInt(3, 0);
                    cif.f4701for = obtainStyledAttributes.getInt(4, 0);
                    cif.f4710new = obtainStyledAttributes.getInt(5, 0);
                    cif.f4699do = obtainStyledAttributes.getBoolean(2, true);
                    cif.f4709if = obtainStyledAttributes.getBoolean(0, true);
                    obtainStyledAttributes.recycle();
                } else if (name3.equals("item")) {
                    Context context = yf.f4678do;
                    C3970xH c3970xH = new C3970xH(context, context.obtainStyledAttributes(attributeSet, O4.f2531default));
                    cif.f4714try = c3970xH.m8638this(2, 0);
                    cif.f4686case = (c3970xH.m8635goto(5, cif.f4706if) & (-65536)) | (c3970xH.m8635goto(6, cif.f4701for) & 65535);
                    cif.f4697do = c3970xH.m8629catch(7);
                    cif.f4707if = c3970xH.m8629catch(8);
                    cif.f4700else = c3970xH.m8638this(0, 0);
                    String m8627break = c3970xH.m8627break(9);
                    cif.f4690do = m8627break == null ? (char) 0 : m8627break.charAt(0);
                    cif.f4704goto = c3970xH.m8635goto(16, 4096);
                    String m8627break2 = c3970xH.m8627break(10);
                    cif.f4705if = m8627break2 == null ? (char) 0 : m8627break2.charAt(0);
                    cif.f4713this = c3970xH.m8635goto(20, 4096);
                    if (c3970xH.m8630class(11)) {
                        cif.f4685break = c3970xH.m8631do(11, false) ? 1 : 0;
                    } else {
                        cif.f4685break = cif.f4710new;
                    }
                    cif.f4712new = c3970xH.m8631do(3, false);
                    cif.f4715try = c3970xH.m8631do(4, cif.f4699do);
                    cif.f4687case = c3970xH.m8631do(1, cif.f4709if);
                    cif.f4688catch = c3970xH.m8635goto(21, -1);
                    cif.f4708if = c3970xH.m8627break(12);
                    cif.f4689class = c3970xH.m8638this(13, 0);
                    cif.f4698do = c3970xH.m8627break(15);
                    String m8627break3 = c3970xH.m8627break(14);
                    if ((m8627break3 != null) && cif.f4689class == 0 && cif.f4698do == null) {
                        Class<?>[] clsArr = f4677if;
                        Object[] objArr = yf.f4681if;
                        try {
                            Constructor<?> constructor = Class.forName(m8627break3, false, yf.f4678do.getClassLoader()).getConstructor(clsArr);
                            constructor.setAccessible(true);
                            obj = constructor.newInstance(objArr);
                        } catch (Exception unused) {
                            obj = null;
                        }
                        cif.f4692do = (H) obj;
                    } else {
                        cif.f4692do = null;
                    }
                    cif.f4702for = c3970xH.m8629catch(17);
                    cif.f4711new = c3970xH.m8629catch(22);
                    if (c3970xH.m8630class(19)) {
                        cif.f4695do = C0470Re.m2062for(c3970xH.m8635goto(19, -1), cif.f4695do);
                        colorStateList = null;
                    } else {
                        colorStateList = null;
                        cif.f4695do = null;
                    }
                    if (c3970xH.m8630class(18)) {
                        cif.f4694do = c3970xH.m8636if(18);
                    } else {
                        cif.f4694do = colorStateList;
                    }
                    c3970xH.m8633final();
                    cif.f4703for = false;
                } else if (name3.equals("menu")) {
                    cif.f4703for = true;
                    SubMenu addSubMenu = menu2.addSubMenu(cif.f4691do, cif.f4714try, cif.f4686case, cif.f4697do);
                    cif.m2908do(addSubMenu.getItem());
                    m2907if(xmlResourceParser, attributeSet, addSubMenu);
                } else {
                    str = name3;
                    z2 = true;
                }
            }
            eventType = xmlResourceParser.next();
            i = 2;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof XF)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = this.f4678do.getResources().getLayout(i);
                    m2907if(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
                    xmlResourceParser.close();
                } catch (XmlPullParserException e) {
                    throw new InflateException("Error inflating menu XML", e);
                }
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            }
        } catch (Throwable th) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
