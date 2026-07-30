package com.android.launcher3;

import android.appwidget.AppWidgetHost;
import android.content.ComponentName;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.util.Patterns;
import android.util.Xml;
import c.a.a.C0238g;
import c.a.c.a.a;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.qsb.QsbContainerView;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.systemui.shared.R;
import java.util.Locale;
import java.util.function.Supplier;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class AutoInstallsLayout {
    public static final String HOTSEAT_CONTAINER_NAME = LauncherSettings$Favorites.containerToString(-101);
    public final AppWidgetHost mAppWidgetHost;
    public final LayoutParserCallback mCallback;
    public final int mColumnCount;
    public final Context mContext;
    public SQLiteDatabase mDb;
    public final InvariantDeviceProfile mIdp;
    public final Supplier mInitialLayoutSupplier;
    public final PackageManager mPackageManager;
    public final String mRootTag;
    public final int mRowCount;
    public final Resources mSourceRes;
    public final int[] mTemp = new int[2];
    public final ContentValues mValues = new ContentValues();

    public class AppShortcutParser implements TagParser {
        public AppShortcutParser() {
        }

        public int invalidPackageOrClass(XmlPullParser xmlPullParser) {
            Log.w("AutoInstalls", "Skipping invalid <favorite> with no component");
            return -1;
        }

        @Override // com.android.launcher3.AutoInstallsLayout.TagParser
        public int parseAndAdd(XmlPullParser xmlPullParser) {
            ActivityInfo activityInfo;
            ComponentName componentName;
            String attributeValue = AutoInstallsLayout.getAttributeValue(xmlPullParser, "packageName");
            String attributeValue2 = AutoInstallsLayout.getAttributeValue(xmlPullParser, "className");
            if (TextUtils.isEmpty(attributeValue) || TextUtils.isEmpty(attributeValue2)) {
                return invalidPackageOrClass(xmlPullParser);
            }
            try {
                try {
                    componentName = new ComponentName(attributeValue, attributeValue2);
                    activityInfo = AutoInstallsLayout.this.mPackageManager.getActivityInfo(componentName, 0);
                } catch (PackageManager.NameNotFoundException unused) {
                    ComponentName componentName2 = new ComponentName(AutoInstallsLayout.this.mPackageManager.currentToCanonicalPackageNames(new String[]{attributeValue})[0], attributeValue2);
                    activityInfo = AutoInstallsLayout.this.mPackageManager.getActivityInfo(componentName2, 0);
                    componentName = componentName2;
                }
                return AutoInstallsLayout.this.addShortcut(activityInfo.loadLabel(AutoInstallsLayout.this.mPackageManager).toString(), new Intent("android.intent.action.MAIN", (Uri) null).addCategory("android.intent.category.LAUNCHER").setComponent(componentName).setFlags(270532608), 0);
            } catch (PackageManager.NameNotFoundException unused2) {
                Log.e("AutoInstalls", "Favorite not found: " + attributeValue + "/" + attributeValue2);
                return -1;
            }
        }
    }

    public class AutoInstallParser implements TagParser {
        public AutoInstallParser() {
        }

        @Override // com.android.launcher3.AutoInstallsLayout.TagParser
        public int parseAndAdd(XmlPullParser xmlPullParser) {
            String attributeValue = AutoInstallsLayout.getAttributeValue(xmlPullParser, "packageName");
            String attributeValue2 = AutoInstallsLayout.getAttributeValue(xmlPullParser, "className");
            if (TextUtils.isEmpty(attributeValue) || TextUtils.isEmpty(attributeValue2)) {
                return -1;
            }
            AutoInstallsLayout.this.mValues.put("restored", (Integer) 2);
            Intent flags = new Intent("android.intent.action.MAIN", (Uri) null).addCategory("android.intent.category.LAUNCHER").setComponent(new ComponentName(attributeValue, attributeValue2)).setFlags(270532608);
            AutoInstallsLayout autoInstallsLayout = AutoInstallsLayout.this;
            return autoInstallsLayout.addShortcut(autoInstallsLayout.mContext.getString(R.string.package_state_unknown), flags, 0);
        }
    }

    public interface LayoutParserCallback {
        int generateNewItemId();

        int insertAndCheck(SQLiteDatabase sQLiteDatabase, ContentValues contentValues);
    }

    public class PendingWidgetParser implements TagParser {
        public PendingWidgetParser() {
        }

        public ComponentName getComponentName(XmlPullParser xmlPullParser) {
            String attributeValue = AutoInstallsLayout.getAttributeValue(xmlPullParser, "packageName");
            String attributeValue2 = AutoInstallsLayout.getAttributeValue(xmlPullParser, "className");
            if (TextUtils.isEmpty(attributeValue) || TextUtils.isEmpty(attributeValue2)) {
                return null;
            }
            return new ComponentName(attributeValue, attributeValue2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:26:0x0077, code lost:
        
            throw new java.lang.RuntimeException("Widget extras must have a key and value");
         */
        @Override // com.android.launcher3.AutoInstallsLayout.TagParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int parseAndAdd(org.xmlpull.v1.XmlPullParser r6) {
            /*
                r5 = this;
                android.content.ComponentName r0 = r5.getComponentName(r6)
                if (r0 != 0) goto L8
                r5 = -1
                return r5
            L8:
                com.android.launcher3.AutoInstallsLayout r1 = com.android.launcher3.AutoInstallsLayout.this
                android.content.ContentValues r1 = r1.mValues
                java.lang.String r2 = "spanX"
                java.lang.String r3 = com.android.launcher3.AutoInstallsLayout.getAttributeValue(r6, r2)
                r1.put(r2, r3)
                com.android.launcher3.AutoInstallsLayout r1 = com.android.launcher3.AutoInstallsLayout.this
                android.content.ContentValues r1 = r1.mValues
                java.lang.String r2 = "spanY"
                java.lang.String r3 = com.android.launcher3.AutoInstallsLayout.getAttributeValue(r6, r2)
                r1.put(r2, r3)
                com.android.launcher3.AutoInstallsLayout r1 = com.android.launcher3.AutoInstallsLayout.this
                android.content.ContentValues r1 = r1.mValues
                r2 = 4
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                java.lang.String r3 = "itemType"
                r1.put(r3, r2)
                android.os.Bundle r1 = new android.os.Bundle
                r1.<init>()
                int r2 = r6.getDepth()
            L39:
                int r3 = r6.next()
                r4 = 3
                if (r3 != r4) goto L4c
                int r4 = r6.getDepth()
                if (r4 <= r2) goto L47
                goto L4c
            L47:
                int r5 = r5.verifyAndInsert(r0, r1)
                return r5
            L4c:
                r4 = 2
                if (r3 == r4) goto L50
                goto L39
            L50:
                java.lang.String r3 = r6.getName()
                java.lang.String r4 = "extra"
                boolean r3 = r4.equals(r3)
                if (r3 == 0) goto L78
                java.lang.String r3 = "key"
                java.lang.String r3 = com.android.launcher3.AutoInstallsLayout.getAttributeValue(r6, r3)
                java.lang.String r4 = "value"
                java.lang.String r4 = com.android.launcher3.AutoInstallsLayout.getAttributeValue(r6, r4)
                if (r3 == 0) goto L70
                if (r4 == 0) goto L70
                r1.putString(r3, r4)
                goto L39
            L70:
                java.lang.RuntimeException r5 = new java.lang.RuntimeException
                java.lang.String r6 = "Widget extras must have a key and value"
                r5.<init>(r6)
                throw r5
            L78:
                java.lang.RuntimeException r5 = new java.lang.RuntimeException
                java.lang.String r6 = "Widgets can contain only extras"
                r5.<init>(r6)
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.AutoInstallsLayout.PendingWidgetParser.parseAndAdd(org.xmlpull.v1.XmlPullParser):int");
        }

        public int verifyAndInsert(ComponentName componentName, Bundle bundle) {
            AutoInstallsLayout.this.mValues.put("appWidgetProvider", componentName.flattenToString());
            AutoInstallsLayout.this.mValues.put("restored", (Integer) 35);
            AutoInstallsLayout autoInstallsLayout = AutoInstallsLayout.this;
            autoInstallsLayout.mValues.put("_id", Integer.valueOf(autoInstallsLayout.mCallback.generateNewItemId()));
            if (!bundle.isEmpty()) {
                AutoInstallsLayout.this.mValues.put("intent", new Intent().putExtras(bundle).toUri(0));
            }
            AutoInstallsLayout autoInstallsLayout2 = AutoInstallsLayout.this;
            int insertAndCheck = autoInstallsLayout2.mCallback.insertAndCheck(autoInstallsLayout2.mDb, autoInstallsLayout2.mValues);
            if (insertAndCheck < 0) {
                return -1;
            }
            return insertAndCheck;
        }
    }

    public class SearchWidgetParser extends PendingWidgetParser {
        public SearchWidgetParser() {
            super();
        }

        @Override // com.android.launcher3.AutoInstallsLayout.PendingWidgetParser
        public ComponentName getComponentName(XmlPullParser xmlPullParser) {
            return QsbContainerView.getSearchComponentName(AutoInstallsLayout.this.mContext);
        }

        @Override // com.android.launcher3.AutoInstallsLayout.PendingWidgetParser
        public int verifyAndInsert(ComponentName componentName, Bundle bundle) {
            AutoInstallsLayout.this.mValues.put("options", (Integer) 1);
            AutoInstallsLayout.this.mValues.put("restored", Integer.valueOf(AutoInstallsLayout.this.mValues.getAsInteger("restored").intValue() | 8));
            return super.verifyAndInsert(componentName, bundle);
        }
    }

    public class ShortcutParser implements TagParser {
        public final Resources mIconRes;

        public ShortcutParser(Resources resources) {
            this.mIconRes = resources;
        }

        @Override // com.android.launcher3.AutoInstallsLayout.TagParser
        public int parseAndAdd(XmlPullParser xmlPullParser) {
            Intent parseIntent;
            Drawable drawable;
            int attributeResourceValue = AutoInstallsLayout.getAttributeResourceValue(xmlPullParser, "title", 0);
            int attributeResourceValue2 = AutoInstallsLayout.getAttributeResourceValue(xmlPullParser, "icon", 0);
            if (attributeResourceValue == 0 || attributeResourceValue2 == 0 || (parseIntent = parseIntent(xmlPullParser)) == null || (drawable = this.mIconRes.getDrawable(attributeResourceValue2)) == null) {
                return -1;
            }
            LauncherIcons obtain = LauncherIcons.obtain(AutoInstallsLayout.this.mContext);
            AutoInstallsLayout.this.mValues.put("icon", GraphicsUtils.flattenBitmap(obtain.createBadgedIconBitmap(drawable, Process.myUserHandle(), Build.VERSION.SDK_INT, false).icon));
            obtain.recycle();
            AutoInstallsLayout.this.mValues.put("iconPackage", this.mIconRes.getResourcePackageName(attributeResourceValue2));
            AutoInstallsLayout.this.mValues.put("iconResource", this.mIconRes.getResourceName(attributeResourceValue2));
            parseIntent.setFlags(270532608);
            AutoInstallsLayout autoInstallsLayout = AutoInstallsLayout.this;
            return autoInstallsLayout.addShortcut(autoInstallsLayout.mSourceRes.getString(attributeResourceValue), parseIntent, 1);
        }

        public Intent parseIntent(XmlPullParser xmlPullParser) {
            String attributeValue = AutoInstallsLayout.getAttributeValue(xmlPullParser, "url");
            if (TextUtils.isEmpty(attributeValue) || !Patterns.WEB_URL.matcher(attributeValue).matches()) {
                return null;
            }
            return new Intent("android.intent.action.VIEW", (Uri) null).setData(Uri.parse(attributeValue));
        }
    }

    public interface TagParser {
        int parseAndAdd(XmlPullParser xmlPullParser);
    }

    public AutoInstallsLayout(Context context, AppWidgetHost appWidgetHost, LayoutParserCallback layoutParserCallback, Resources resources, Supplier supplier, String str) {
        this.mContext = context;
        this.mAppWidgetHost = appWidgetHost;
        this.mCallback = layoutParserCallback;
        this.mPackageManager = context.getPackageManager();
        this.mRootTag = str;
        this.mSourceRes = resources;
        this.mInitialLayoutSupplier = supplier;
        InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        this.mIdp = idp;
        this.mRowCount = idp.numRows;
        this.mColumnCount = idp.numColumns;
    }

    public static void beginDocument(XmlPullParser xmlPullParser, String str) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        if (xmlPullParser.getName().equals(str)) {
            return;
        }
        StringBuilder f = a.f("Unexpected start tag: found ");
        f.append(xmlPullParser.getName());
        f.append(", expected ");
        f.append(str);
        throw new XmlPullParserException(f.toString());
    }

    public static AutoInstallsLayout get(Context context, AppWidgetHost appWidgetHost, LayoutParserCallback layoutParserCallback) {
        Pair findSystemApk = PackageManagerHelper.findSystemApk("android.autoinstalls.config.action.PLAY_AUTO_INSTALL", context.getPackageManager());
        if (findSystemApk == null) {
            return null;
        }
        String str = (String) findSystemApk.first;
        Resources resources = (Resources) findSystemApk.second;
        InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        String format = String.format(Locale.ENGLISH, "default_layout_%dx%d_h%s", Integer.valueOf(idp.numColumns), Integer.valueOf(idp.numRows), Integer.valueOf(idp.numHotseatIcons));
        int identifier = resources.getIdentifier(format, "xml", str);
        if (identifier == 0) {
            Log.d("AutoInstalls", "Formatted layout: " + format + " not found. Trying layout without hosteat");
            format = String.format(Locale.ENGLISH, "default_layout_%dx%d", Integer.valueOf(idp.numColumns), Integer.valueOf(idp.numRows));
            identifier = resources.getIdentifier(format, "xml", str);
        }
        if (identifier == 0) {
            Log.d("AutoInstalls", "Formatted layout: " + format + " not found. Trying the default layout");
            identifier = resources.getIdentifier("default_layout", "xml", str);
        }
        if (identifier != 0) {
            return new AutoInstallsLayout(context, appWidgetHost, layoutParserCallback, resources, new C0238g(resources, identifier), "workspace");
        }
        Log.e("AutoInstalls", "Layout definition not found in package: " + str);
        return null;
    }

    public static int getAttributeResourceValue(XmlPullParser xmlPullParser, String str, int i) {
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        int attributeResourceValue = asAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res-auto/com.android.launcher3", str, i);
        return attributeResourceValue == i ? asAttributeSet.getAttributeResourceValue(null, str, i) : attributeResourceValue;
    }

    public static String getAttributeValue(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res-auto/com.android.launcher3", str);
        return attributeValue == null ? xmlPullParser.getAttributeValue(null, str) : attributeValue;
    }

    public int addShortcut(String str, Intent intent, int i) {
        int generateNewItemId = this.mCallback.generateNewItemId();
        this.mValues.put("intent", intent.toUri(0));
        this.mValues.put("title", str);
        this.mValues.put("itemType", Integer.valueOf(i));
        this.mValues.put("spanX", (Integer) 1);
        this.mValues.put("spanY", (Integer) 1);
        this.mValues.put("_id", Integer.valueOf(generateNewItemId));
        if (this.mCallback.insertAndCheck(this.mDb, this.mValues) < 0) {
            return -1;
        }
        return generateNewItemId;
    }

    public ArrayMap getFolderElementsMap() {
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put("appicon", new AppShortcutParser());
        arrayMap.put("autoinstall", new AutoInstallParser());
        arrayMap.put("shortcut", new ShortcutParser(this.mSourceRes));
        return arrayMap;
    }

    public ArrayMap getLayoutElementsMap() {
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put("appicon", new AppShortcutParser());
        arrayMap.put("autoinstall", new AutoInstallParser());
        arrayMap.put("folder", new FolderParser(this));
        arrayMap.put("appwidget", new PendingWidgetParser());
        arrayMap.put("searchwidget", new SearchWidgetParser());
        arrayMap.put("shortcut", new ShortcutParser(this.mSourceRes));
        return arrayMap;
    }

    public int loadLayout(SQLiteDatabase sQLiteDatabase, IntArray intArray) {
        this.mDb = sQLiteDatabase;
        try {
            return parseLayout((XmlPullParser) this.mInitialLayoutSupplier.get(), intArray);
        } catch (Exception e) {
            Log.e("AutoInstalls", "Error parsing layout: ", e);
            return -1;
        }
    }

    public void parseContainerAndScreen(XmlPullParser xmlPullParser, int[] iArr) {
        if (HOTSEAT_CONTAINER_NAME.equals(getAttributeValue(xmlPullParser, "container"))) {
            iArr[0] = -101;
            iArr[1] = Integer.parseInt(getAttributeValue(xmlPullParser, "rank"));
        } else {
            iArr[0] = -100;
            iArr[1] = Integer.parseInt(getAttributeValue(xmlPullParser, "screen"));
        }
    }

    public int parseLayout(XmlPullParser xmlPullParser, IntArray intArray) {
        int parseInt;
        int parseInt2;
        beginDocument(xmlPullParser, this.mRootTag);
        int depth = xmlPullParser.getDepth();
        ArrayMap layoutElementsMap = getLayoutElementsMap();
        int i = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                break;
            }
            int i2 = 1;
            if (next == 1) {
                break;
            }
            if (next == 2) {
                if ("include".equals(xmlPullParser.getName())) {
                    int attributeResourceValue = getAttributeResourceValue(xmlPullParser, "workspace", 0);
                    if (attributeResourceValue != 0) {
                        i2 = parseLayout(this.mSourceRes.getXml(attributeResourceValue), intArray);
                        i += i2;
                    }
                    i2 = 0;
                    i += i2;
                } else {
                    this.mValues.clear();
                    parseContainerAndScreen(xmlPullParser, this.mTemp);
                    int[] iArr = this.mTemp;
                    int i3 = iArr[0];
                    int i4 = iArr[1];
                    this.mValues.put("container", Integer.valueOf(i3));
                    this.mValues.put("screen", Integer.valueOf(i4));
                    ContentValues contentValues = this.mValues;
                    String attributeValue = getAttributeValue(xmlPullParser, "x");
                    int i5 = this.mColumnCount;
                    if (!TextUtils.isEmpty(attributeValue) && (parseInt2 = Integer.parseInt(attributeValue)) < 0) {
                        attributeValue = Integer.toString(i5 + parseInt2);
                    }
                    contentValues.put("cellX", attributeValue);
                    ContentValues contentValues2 = this.mValues;
                    String attributeValue2 = getAttributeValue(xmlPullParser, "y");
                    int i6 = this.mRowCount;
                    if (!TextUtils.isEmpty(attributeValue2) && (parseInt = Integer.parseInt(attributeValue2)) < 0) {
                        attributeValue2 = Integer.toString(i6 + parseInt);
                    }
                    contentValues2.put("cellY", attributeValue2);
                    TagParser tagParser = (TagParser) layoutElementsMap.get(xmlPullParser.getName());
                    if (tagParser != null && tagParser.parseAndAdd(xmlPullParser) >= 0) {
                        if (!intArray.contains(i4) && i3 == -100) {
                            intArray.add(intArray.mSize, i4);
                        }
                        i += i2;
                    }
                    i2 = 0;
                    i += i2;
                }
            }
        }
        return i;
    }

    public class FolderParser implements TagParser {
        public final ArrayMap mFolderElements;

        public FolderParser(AutoInstallsLayout autoInstallsLayout) {
            ArrayMap folderElementsMap = autoInstallsLayout.getFolderElementsMap();
            AutoInstallsLayout.this = autoInstallsLayout;
            this.mFolderElements = folderElementsMap;
        }

        @Override // com.android.launcher3.AutoInstallsLayout.TagParser
        public int parseAndAdd(XmlPullParser xmlPullParser) {
            String attributeValue;
            String sb;
            String str;
            int attributeResourceValue = AutoInstallsLayout.getAttributeResourceValue(xmlPullParser, "title", 0);
            if (attributeResourceValue != 0) {
                attributeValue = AutoInstallsLayout.this.mSourceRes.getString(attributeResourceValue);
            } else {
                attributeValue = AutoInstallsLayout.getAttributeValue(xmlPullParser, "titleText");
                if (TextUtils.isEmpty(attributeValue)) {
                    attributeValue = "";
                }
            }
            AutoInstallsLayout.this.mValues.put("title", attributeValue);
            AutoInstallsLayout.this.mValues.put("itemType", (Integer) 2);
            AutoInstallsLayout.this.mValues.put("spanX", (Integer) 1);
            AutoInstallsLayout.this.mValues.put("spanY", (Integer) 1);
            AutoInstallsLayout autoInstallsLayout = AutoInstallsLayout.this;
            autoInstallsLayout.mValues.put("_id", Integer.valueOf(autoInstallsLayout.mCallback.generateNewItemId()));
            AutoInstallsLayout autoInstallsLayout2 = AutoInstallsLayout.this;
            int insertAndCheck = autoInstallsLayout2.mCallback.insertAndCheck(autoInstallsLayout2.mDb, autoInstallsLayout2.mValues);
            if (insertAndCheck < 0) {
                return -1;
            }
            ContentValues contentValues = new ContentValues(AutoInstallsLayout.this.mValues);
            int[] iArr = new int[10];
            int depth = xmlPullParser.getDepth();
            int i = 0;
            int i2 = 0;
            while (true) {
                int next = xmlPullParser.next();
                if (next == 3 && xmlPullParser.getDepth() <= depth) {
                    if (i >= 2) {
                        return insertAndCheck;
                    }
                    Uri contentUri = LauncherSettings$Favorites.getContentUri(insertAndCheck);
                    if (contentUri.getPathSegments().size() == 1) {
                        str = contentUri.getPathSegments().get(0);
                        sb = null;
                    } else {
                        if (contentUri.getPathSegments().size() != 2) {
                            throw new IllegalArgumentException("Invalid URI: " + contentUri);
                        }
                        if (!TextUtils.isEmpty(null)) {
                            throw new UnsupportedOperationException("WHERE clause not supported: " + contentUri);
                        }
                        String str2 = contentUri.getPathSegments().get(0);
                        StringBuilder f = a.f("_id=");
                        f.append(ContentUris.parseId(contentUri));
                        sb = f.toString();
                        str = str2;
                    }
                    AutoInstallsLayout.this.mDb.delete(str, sb, null);
                    if (i != 1) {
                        return -1;
                    }
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("container", contentValues.getAsInteger("container"));
                    contentValues2.put("screen", contentValues.getAsInteger("screen"));
                    contentValues2.put("cellX", contentValues.getAsInteger("cellX"));
                    contentValues2.put("cellY", contentValues.getAsInteger("cellY"));
                    IntArray.checkBounds(i, 0);
                    int i3 = iArr[0];
                    AutoInstallsLayout.this.mDb.update("favorites", contentValues2, a.c("_id=", i3), null);
                    return i3;
                }
                if (next == 2) {
                    AutoInstallsLayout.this.mValues.clear();
                    AutoInstallsLayout.this.mValues.put("container", Integer.valueOf(insertAndCheck));
                    AutoInstallsLayout.this.mValues.put("rank", Integer.valueOf(i2));
                    TagParser tagParser = (TagParser) this.mFolderElements.get(xmlPullParser.getName());
                    if (tagParser == null) {
                        StringBuilder f2 = a.f("Invalid folder item ");
                        f2.append(xmlPullParser.getName());
                        throw new RuntimeException(f2.toString());
                    }
                    int parseAndAdd = tagParser.parseAndAdd(xmlPullParser);
                    if (parseAndAdd >= 0) {
                        int i4 = 1 + i;
                        if (i4 >= iArr.length) {
                            int i5 = (i < 6 ? 12 : i >> 1) + i;
                            if (i5 > i4) {
                                i4 = i5;
                            }
                            int[] iArr2 = new int[i4];
                            System.arraycopy(iArr, 0, iArr2, 0, i);
                            iArr = iArr2;
                        }
                        int i6 = i - i;
                        int i7 = i + 1;
                        IntArray.checkBounds(i7, i);
                        if (i6 != 0) {
                            System.arraycopy(iArr, i, iArr, i + 1, i6);
                        }
                        iArr[i] = parseAndAdd;
                        i2++;
                        i = i7;
                    }
                }
            }
        }

        public FolderParser(ArrayMap arrayMap) {
            this.mFolderElements = arrayMap;
        }
    }
}
