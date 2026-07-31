package android.support.v7.internal.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.appcompat.R;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.MenuItemWrapperICS;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.io.IOException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class SupportMenuInflater extends MenuInflater {
    private static final String LOG_TAG = "SupportMenuInflater";
    private static final int NO_ID = 0;
    private static final String XML_GROUP = "group";
    private static final String XML_ITEM = "item";
    private static final String XML_MENU = "menu";
    private final Object[] mActionProviderConstructorArguments;
    private final Object[] mActionViewConstructorArguments;
    private Context mContext;
    private Object mRealOwner;
    private static final Class<?>[] ACTION_VIEW_CONSTRUCTOR_SIGNATURE = {Context.class};
    private static final Class<?>[] ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE = ACTION_VIEW_CONSTRUCTOR_SIGNATURE;

    public SupportMenuInflater(Context context) {
        super(context);
        this.mContext = context;
        this.mActionViewConstructorArguments = new Object[]{context};
        this.mActionProviderConstructorArguments = this.mActionViewConstructorArguments;
    }

    @Override // android.view.MenuInflater
    public void inflate(int menuRes, Menu menu) {
        if (!(menu instanceof SupportMenu)) {
            super.inflate(menuRes, menu);
            return;
        }
        XmlResourceParser parser = null;
        try {
            try {
                try {
                    parser = this.mContext.getResources().getLayout(menuRes);
                    AttributeSet attrs = Xml.asAttributeSet(parser);
                    parseMenu(parser, attrs, menu);
                } catch (XmlPullParserException e) {
                    throw new InflateException("Error inflating menu XML", e);
                }
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            }
        } finally {
            if (parser != null) {
                parser.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0047, code lost:
    
        r3 = r9.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004b, code lost:
    
        if (r2 == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0051, code lost:
    
        if (r3.equals(r1) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0053, code lost:
    
        r2 = false;
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00ce, code lost:
    
        r4 = r9.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
    
        if (r3.equals(android.support.v7.internal.view.SupportMenuInflater.XML_GROUP) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005f, code lost:
    
        r0.resetGroup();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006a, code lost:
    
        if (r3.equals(android.support.v7.internal.view.SupportMenuInflater.XML_ITEM) == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0070, code lost:
    
        if (r0.hasAddedItem() != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0076, code lost:
    
        if (r0.itemActionProvider == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0080, code lost:
    
        if (r0.itemActionProvider.hasSubMenu() == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0082, code lost:
    
        r0.addSubMenuItem();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0086, code lost:
    
        r0.addItem();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0090, code lost:
    
        if (r3.equals(android.support.v7.internal.view.SupportMenuInflater.XML_MENU) == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0092, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0094, code lost:
    
        if (r2 == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0097, code lost:
    
        r3 = r9.getName();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a1, code lost:
    
        if (r3.equals(android.support.v7.internal.view.SupportMenuInflater.XML_GROUP) == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a3, code lost:
    
        r0.readGroup(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ad, code lost:
    
        if (r3.equals(android.support.v7.internal.view.SupportMenuInflater.XML_ITEM) == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00af, code lost:
    
        r0.readItem(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b9, code lost:
    
        if (r3.equals(android.support.v7.internal.view.SupportMenuInflater.XML_MENU) == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00bb, code lost:
    
        r6 = r0.addSubMenuItem();
        parseMenu(r9, r10, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00c3, code lost:
    
        r2 = true;
        r1 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00cd, code lost:
    
        throw new java.lang.RuntimeException("Unexpected end of document");
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d4, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003f, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0040, code lost:
    
        if (r5 != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0042, code lost:
    
        switch(r4) {
            case 1: goto L57;
            case 2: goto L37;
            case 3: goto L16;
            default: goto L69;
        };
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parseMenu(org.xmlpull.v1.XmlPullParser r9, android.util.AttributeSet r10, android.view.Menu r11) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r8 = this;
            android.support.v7.internal.view.SupportMenuInflater$MenuState r0 = new android.support.v7.internal.view.SupportMenuInflater$MenuState
            r0.<init>(r11)
            int r1 = r9.getEventType()
            r2 = 0
            r3 = 0
            r4 = r1
            r1 = r3
        Ld:
            r5 = 2
            if (r4 != r5) goto L38
            java.lang.String r3 = r9.getName()
            java.lang.String r5 = "menu"
            boolean r5 = r3.equals(r5)
            if (r5 == 0) goto L21
            int r4 = r9.next()
            goto L3f
        L21:
            java.lang.RuntimeException r5 = new java.lang.RuntimeException
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "Expecting menu, got "
            r6.append(r7)
            r6.append(r3)
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            throw r5
        L38:
            int r4 = r9.next()
            r5 = 1
            if (r4 != r5) goto Ld
        L3f:
            r5 = 0
        L40:
            if (r5 != 0) goto Ld4
            switch(r4) {
                case 1: goto Lc6;
                case 2: goto L94;
                case 3: goto L47;
                default: goto L45;
            }
        L45:
            goto Lce
        L47:
            java.lang.String r3 = r9.getName()
            if (r2 == 0) goto L57
            boolean r6 = r3.equals(r1)
            if (r6 == 0) goto L57
            r2 = 0
            r1 = 0
            goto Lce
        L57:
            java.lang.String r6 = "group"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L64
            r0.resetGroup()
            goto Lce
        L64:
            java.lang.String r6 = "item"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L8a
            boolean r6 = r0.hasAddedItem()
            if (r6 != 0) goto Lce
            android.support.v4.view.ActionProvider r6 = android.support.v7.internal.view.SupportMenuInflater.MenuState.access$000(r0)
            if (r6 == 0) goto L86
            android.support.v4.view.ActionProvider r6 = android.support.v7.internal.view.SupportMenuInflater.MenuState.access$000(r0)
            boolean r6 = r6.hasSubMenu()
            if (r6 == 0) goto L86
            r0.addSubMenuItem()
            goto Lce
        L86:
            r0.addItem()
            goto Lce
        L8a:
            java.lang.String r6 = "menu"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto Lce
            r5 = 1
            goto Lce
        L94:
            if (r2 == 0) goto L97
            goto Lce
        L97:
            java.lang.String r3 = r9.getName()
            java.lang.String r6 = "group"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto La7
            r0.readGroup(r10)
            goto Lce
        La7:
            java.lang.String r6 = "item"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto Lb3
            r0.readItem(r10)
            goto Lce
        Lb3:
            java.lang.String r6 = "menu"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto Lc3
            android.view.SubMenu r6 = r0.addSubMenuItem()
            r8.parseMenu(r9, r10, r6)
            goto Lce
        Lc3:
            r2 = 1
            r1 = r3
            goto Lce
        Lc6:
            java.lang.RuntimeException r6 = new java.lang.RuntimeException
            java.lang.String r7 = "Unexpected end of document"
            r6.<init>(r7)
            throw r6
        Lce:
            int r4 = r9.next()
            goto L40
        Ld4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.internal.view.SupportMenuInflater.parseMenu(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.Menu):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object getRealOwner() {
        if (this.mRealOwner == null) {
            this.mRealOwner = findRealOwner(this.mContext);
        }
        return this.mRealOwner;
    }

    private Object findRealOwner(Object owner) {
        if (owner instanceof Activity) {
            return owner;
        }
        if (owner instanceof ContextWrapper) {
            return findRealOwner(((ContextWrapper) owner).getBaseContext());
        }
        return owner;
    }

    private static class InflatedOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {
        private static final Class<?>[] PARAM_TYPES = {MenuItem.class};
        private Method mMethod;
        private Object mRealOwner;

        public InflatedOnMenuItemClickListener(Object realOwner, String methodName) {
            this.mRealOwner = realOwner;
            Class<?> c = realOwner.getClass();
            try {
                this.mMethod = c.getMethod(methodName, PARAM_TYPES);
            } catch (Exception e) {
                InflateException ex = new InflateException("Couldn't resolve menu item onClick handler " + methodName + " in class " + c.getName());
                ex.initCause(e);
                throw ex;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem item) {
            try {
                if (this.mMethod.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.mMethod.invoke(this.mRealOwner, item)).booleanValue();
                }
                this.mMethod.invoke(this.mRealOwner, item);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    private class MenuState {
        private static final int defaultGroupId = 0;
        private static final int defaultItemCategory = 0;
        private static final int defaultItemCheckable = 0;
        private static final boolean defaultItemChecked = false;
        private static final boolean defaultItemEnabled = true;
        private static final int defaultItemId = 0;
        private static final int defaultItemOrder = 0;
        private static final boolean defaultItemVisible = true;
        private int groupCategory;
        private int groupCheckable;
        private boolean groupEnabled;
        private int groupId;
        private int groupOrder;
        private boolean groupVisible;
        private ActionProvider itemActionProvider;
        private String itemActionProviderClassName;
        private String itemActionViewClassName;
        private int itemActionViewLayout;
        private boolean itemAdded;
        private char itemAlphabeticShortcut;
        private int itemCategoryOrder;
        private int itemCheckable;
        private boolean itemChecked;
        private boolean itemEnabled;
        private int itemIconResId;
        private int itemId;
        private String itemListenerMethodName;
        private char itemNumericShortcut;
        private int itemShowAsAction;
        private CharSequence itemTitle;
        private CharSequence itemTitleCondensed;
        private boolean itemVisible;
        private Menu menu;

        public MenuState(Menu menu) {
            this.menu = menu;
            resetGroup();
        }

        public void resetGroup() {
            this.groupId = 0;
            this.groupCategory = 0;
            this.groupOrder = 0;
            this.groupCheckable = 0;
            this.groupVisible = true;
            this.groupEnabled = true;
        }

        public void readGroup(AttributeSet attrs) {
            TypedArray a = SupportMenuInflater.this.mContext.obtainStyledAttributes(attrs, R.styleable.MenuGroup);
            this.groupId = a.getResourceId(R.styleable.MenuGroup_android_id, 0);
            this.groupCategory = a.getInt(R.styleable.MenuGroup_android_menuCategory, 0);
            this.groupOrder = a.getInt(R.styleable.MenuGroup_android_orderInCategory, 0);
            this.groupCheckable = a.getInt(R.styleable.MenuGroup_android_checkableBehavior, 0);
            this.groupVisible = a.getBoolean(R.styleable.MenuGroup_android_visible, true);
            this.groupEnabled = a.getBoolean(R.styleable.MenuGroup_android_enabled, true);
            a.recycle();
        }

        public void readItem(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = SupportMenuInflater.this.mContext.obtainStyledAttributes(attributeSet, R.styleable.MenuItem);
            this.itemId = obtainStyledAttributes.getResourceId(R.styleable.MenuItem_android_id, 0);
            this.itemCategoryOrder = ((-65536) & obtainStyledAttributes.getInt(R.styleable.MenuItem_android_menuCategory, this.groupCategory)) | (65535 & obtainStyledAttributes.getInt(R.styleable.MenuItem_android_orderInCategory, this.groupOrder));
            this.itemTitle = obtainStyledAttributes.getText(R.styleable.MenuItem_android_title);
            this.itemTitleCondensed = obtainStyledAttributes.getText(R.styleable.MenuItem_android_titleCondensed);
            this.itemIconResId = obtainStyledAttributes.getResourceId(R.styleable.MenuItem_android_icon, 0);
            this.itemAlphabeticShortcut = getShortcut(obtainStyledAttributes.getString(R.styleable.MenuItem_android_alphabeticShortcut));
            this.itemNumericShortcut = getShortcut(obtainStyledAttributes.getString(R.styleable.MenuItem_android_numericShortcut));
            if (obtainStyledAttributes.hasValue(R.styleable.MenuItem_android_checkable)) {
                this.itemCheckable = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.itemCheckable = this.groupCheckable;
            }
            this.itemChecked = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_checked, false);
            this.itemVisible = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_visible, this.groupVisible);
            this.itemEnabled = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_enabled, this.groupEnabled);
            this.itemShowAsAction = obtainStyledAttributes.getInt(R.styleable.MenuItem_showAsAction, -1);
            this.itemListenerMethodName = obtainStyledAttributes.getString(R.styleable.MenuItem_android_onClick);
            this.itemActionViewLayout = obtainStyledAttributes.getResourceId(R.styleable.MenuItem_actionLayout, 0);
            this.itemActionViewClassName = obtainStyledAttributes.getString(R.styleable.MenuItem_actionViewClass);
            this.itemActionProviderClassName = obtainStyledAttributes.getString(R.styleable.MenuItem_actionProviderClass);
            boolean z = this.itemActionProviderClassName != null;
            if (z && this.itemActionViewLayout == 0 && this.itemActionViewClassName == null) {
                this.itemActionProvider = (ActionProvider) newInstance(this.itemActionProviderClassName, SupportMenuInflater.ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE, SupportMenuInflater.this.mActionProviderConstructorArguments);
            } else {
                if (z) {
                    Log.w(SupportMenuInflater.LOG_TAG, "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.itemActionProvider = null;
            }
            obtainStyledAttributes.recycle();
            this.itemAdded = false;
        }

        private char getShortcut(String shortcutString) {
            if (shortcutString == null) {
                return (char) 0;
            }
            return shortcutString.charAt(0);
        }

        private void setItem(MenuItem item) {
            item.setChecked(this.itemChecked).setVisible(this.itemVisible).setEnabled(this.itemEnabled).setCheckable(this.itemCheckable >= 1).setTitleCondensed(this.itemTitleCondensed).setIcon(this.itemIconResId).setAlphabeticShortcut(this.itemAlphabeticShortcut).setNumericShortcut(this.itemNumericShortcut);
            if (this.itemShowAsAction >= 0) {
                MenuItemCompat.setShowAsAction(item, this.itemShowAsAction);
            }
            if (this.itemListenerMethodName != null) {
                if (SupportMenuInflater.this.mContext.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                item.setOnMenuItemClickListener(new InflatedOnMenuItemClickListener(SupportMenuInflater.this.getRealOwner(), this.itemListenerMethodName));
            }
            if (item instanceof MenuItemImpl) {
            }
            if (this.itemCheckable >= 2) {
                if (item instanceof MenuItemImpl) {
                    ((MenuItemImpl) item).setExclusiveCheckable(true);
                } else if (item instanceof MenuItemWrapperICS) {
                    ((MenuItemWrapperICS) item).setExclusiveCheckable(true);
                }
            }
            boolean actionViewSpecified = false;
            if (this.itemActionViewClassName != null) {
                View actionView = (View) newInstance(this.itemActionViewClassName, SupportMenuInflater.ACTION_VIEW_CONSTRUCTOR_SIGNATURE, SupportMenuInflater.this.mActionViewConstructorArguments);
                MenuItemCompat.setActionView(item, actionView);
                actionViewSpecified = true;
            }
            if (this.itemActionViewLayout > 0) {
                if (!actionViewSpecified) {
                    MenuItemCompat.setActionView(item, this.itemActionViewLayout);
                } else {
                    Log.w(SupportMenuInflater.LOG_TAG, "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            if (this.itemActionProvider != null) {
                MenuItemCompat.setActionProvider(item, this.itemActionProvider);
            }
        }

        public void addItem() {
            this.itemAdded = true;
            setItem(this.menu.add(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle));
        }

        public SubMenu addSubMenuItem() {
            this.itemAdded = true;
            SubMenu subMenu = this.menu.addSubMenu(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle);
            setItem(subMenu.getItem());
            return subMenu;
        }

        public boolean hasAddedItem() {
            return this.itemAdded;
        }

        private <T> T newInstance(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                return (T) SupportMenuInflater.this.mContext.getClassLoader().loadClass(str).getConstructor(clsArr).newInstance(objArr);
            } catch (Exception e) {
                Log.w(SupportMenuInflater.LOG_TAG, "Cannot instantiate class: " + str, e);
                return null;
            }
        }
    }
}
