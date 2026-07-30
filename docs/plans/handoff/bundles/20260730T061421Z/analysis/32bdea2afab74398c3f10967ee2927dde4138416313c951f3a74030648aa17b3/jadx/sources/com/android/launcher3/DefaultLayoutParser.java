package com.android.launcher3;

import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import c.a.a.C0238g;
import c.a.c.a.a;
import com.android.launcher3.AutoInstallsLayout;
import java.net.URISyntaxException;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class DefaultLayoutParser extends AutoInstallsLayout {

    public class AppShortcutWithUriParser extends AutoInstallsLayout.AppShortcutParser {
        public AppShortcutWithUriParser() {
            super();
        }

        @Override // com.android.launcher3.AutoInstallsLayout.AppShortcutParser
        public int invalidPackageOrClass(XmlPullParser xmlPullParser) {
            boolean z;
            String attributeValue = AutoInstallsLayout.getAttributeValue(xmlPullParser, "uri");
            if (TextUtils.isEmpty(attributeValue)) {
                Log.e("DefaultLayoutParser", "Skipping invalid <favorite> with no component or uri");
                return -1;
            }
            try {
                Intent parseUri = Intent.parseUri(attributeValue, 0);
                ResolveInfo resolveActivity = DefaultLayoutParser.this.mPackageManager.resolveActivity(parseUri, 65536);
                List<ResolveInfo> queryIntentActivities = DefaultLayoutParser.this.mPackageManager.queryIntentActivities(parseUri, 65536);
                int i = 0;
                while (true) {
                    if (i >= queryIntentActivities.size()) {
                        z = true;
                        break;
                    }
                    ResolveInfo resolveInfo = queryIntentActivities.get(i);
                    if (resolveInfo.activityInfo.name.equals(resolveActivity.activityInfo.name) && resolveInfo.activityInfo.packageName.equals(resolveActivity.activityInfo.packageName)) {
                        z = false;
                        break;
                    }
                    i++;
                }
                if (z) {
                    int size = queryIntentActivities.size();
                    ResolveInfo resolveInfo2 = null;
                    for (int i2 = 0; i2 < size; i2++) {
                        try {
                        } catch (PackageManager.NameNotFoundException e) {
                            Log.w("DefaultLayoutParser", "Unable to get info about resolve results", e);
                        }
                        if ((DefaultLayoutParser.this.mPackageManager.getApplicationInfo(queryIntentActivities.get(i2).activityInfo.packageName, 0).flags & 1) != 0) {
                            if (resolveInfo2 != null) {
                                resolveActivity = null;
                                break;
                            }
                            resolveInfo2 = queryIntentActivities.get(i2);
                        }
                    }
                    resolveActivity = resolveInfo2;
                    if (resolveActivity == null) {
                        StringBuilder f = a.f("No preference or single system activity found for ");
                        f.append(parseUri.toString());
                        Log.w("DefaultLayoutParser", f.toString());
                        return -1;
                    }
                }
                ActivityInfo activityInfo = resolveActivity.activityInfo;
                Intent launchIntentForPackage = DefaultLayoutParser.this.mPackageManager.getLaunchIntentForPackage(activityInfo.packageName);
                if (launchIntentForPackage == null) {
                    return -1;
                }
                launchIntentForPackage.setFlags(270532608);
                DefaultLayoutParser defaultLayoutParser = DefaultLayoutParser.this;
                return defaultLayoutParser.addShortcut(activityInfo.loadLabel(defaultLayoutParser.mPackageManager).toString(), launchIntentForPackage, 0);
            } catch (URISyntaxException e2) {
                Log.e("DefaultLayoutParser", "Unable to add meta-favorite: " + attributeValue, e2);
                return -1;
            }
        }
    }

    public class AppWidgetParser extends AutoInstallsLayout.PendingWidgetParser {
        public AppWidgetParser() {
            super();
        }

        @Override // com.android.launcher3.AutoInstallsLayout.PendingWidgetParser
        public int verifyAndInsert(ComponentName componentName, Bundle bundle) {
            int allocateAppWidgetId;
            int i = -1;
            try {
                DefaultLayoutParser.this.mPackageManager.getReceiverInfo(componentName, 0);
            } catch (Exception unused) {
                ComponentName componentName2 = new ComponentName(DefaultLayoutParser.this.mPackageManager.currentToCanonicalPackageNames(new String[]{componentName.getPackageName()})[0], componentName.getClassName());
                try {
                    DefaultLayoutParser.this.mPackageManager.getReceiverInfo(componentName2, 0);
                    componentName = componentName2;
                } catch (Exception unused2) {
                    StringBuilder f = a.f("Can't find widget provider: ");
                    f.append(componentName2.getClassName());
                    Log.d("DefaultLayoutParser", f.toString());
                    return -1;
                }
            }
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(DefaultLayoutParser.this.mContext);
            try {
                allocateAppWidgetId = DefaultLayoutParser.this.mAppWidgetHost.allocateAppWidgetId();
            } catch (RuntimeException e) {
                Log.e("DefaultLayoutParser", "Problem allocating appWidgetId", e);
            }
            if (!appWidgetManager.bindAppWidgetIdIfAllowed(allocateAppWidgetId, componentName)) {
                Log.e("DefaultLayoutParser", "Unable to bind app widget id " + componentName);
                DefaultLayoutParser.this.mAppWidgetHost.deleteAppWidgetId(allocateAppWidgetId);
                return -1;
            }
            DefaultLayoutParser.this.mValues.put("appWidgetId", Integer.valueOf(allocateAppWidgetId));
            DefaultLayoutParser.this.mValues.put("appWidgetProvider", componentName.flattenToString());
            DefaultLayoutParser.this.mValues.put("_id", Integer.valueOf(DefaultLayoutParser.this.mCallback.generateNewItemId()));
            i = DefaultLayoutParser.this.mCallback.insertAndCheck(DefaultLayoutParser.this.mDb, DefaultLayoutParser.this.mValues);
            if (i < 0) {
                DefaultLayoutParser.this.mAppWidgetHost.deleteAppWidgetId(allocateAppWidgetId);
                return i;
            }
            if (!bundle.isEmpty()) {
                Intent intent = new Intent("com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE");
                intent.setComponent(componentName);
                intent.putExtras(bundle);
                intent.putExtra("appWidgetId", allocateAppWidgetId);
                DefaultLayoutParser.this.mContext.sendBroadcast(intent);
            }
            return i;
        }
    }

    public class MyFolderParser extends AutoInstallsLayout.FolderParser {
        public MyFolderParser() {
            super(DefaultLayoutParser.this);
        }

        @Override // com.android.launcher3.AutoInstallsLayout.FolderParser, com.android.launcher3.AutoInstallsLayout.TagParser
        public int parseAndAdd(XmlPullParser xmlPullParser) {
            int attributeResourceValue = AutoInstallsLayout.getAttributeResourceValue(xmlPullParser, "folderItems", 0);
            if (attributeResourceValue != 0) {
                xmlPullParser = DefaultLayoutParser.this.mSourceRes.getXml(attributeResourceValue);
                AutoInstallsLayout.beginDocument(xmlPullParser, "folder");
            }
            return super.parseAndAdd(xmlPullParser);
        }
    }

    public class PartnerFolderParser implements AutoInstallsLayout.TagParser {
        public PartnerFolderParser() {
        }

        @Override // com.android.launcher3.AutoInstallsLayout.TagParser
        public int parseAndAdd(XmlPullParser xmlPullParser) {
            Resources resources;
            int identifier;
            Partner partner = Partner.get(DefaultLayoutParser.this.mPackageManager);
            if (partner == null || (identifier = (resources = partner.mResources).getIdentifier("partner_folder", "xml", partner.mPackageName)) == 0) {
                return -1;
            }
            XmlResourceParser xml = resources.getXml(identifier);
            AutoInstallsLayout.beginDocument(xml, "folder");
            DefaultLayoutParser defaultLayoutParser = DefaultLayoutParser.this;
            return new AutoInstallsLayout.FolderParser(defaultLayoutParser.getFolderElementsMap(resources)).parseAndAdd(xml);
        }
    }

    public class ResolveParser implements AutoInstallsLayout.TagParser {
        public final AppShortcutWithUriParser mChildParser;

        public ResolveParser() {
            this.mChildParser = DefaultLayoutParser.this.new AppShortcutWithUriParser();
        }

        @Override // com.android.launcher3.AutoInstallsLayout.TagParser
        public int parseAndAdd(XmlPullParser xmlPullParser) {
            int depth = xmlPullParser.getDepth();
            int i = -1;
            while (true) {
                int next = xmlPullParser.next();
                if (next == 3 && xmlPullParser.getDepth() <= depth) {
                    return i;
                }
                if (next == 2 && i <= -1) {
                    String name = xmlPullParser.getName();
                    if ("favorite".equals(name)) {
                        i = this.mChildParser.parseAndAdd(xmlPullParser);
                    } else {
                        Log.e("DefaultLayoutParser", "Fallback groups can contain only favorites, found " + name);
                    }
                }
            }
        }
    }

    public class UriShortcutParser extends AutoInstallsLayout.ShortcutParser {
        public UriShortcutParser(DefaultLayoutParser defaultLayoutParser, Resources resources) {
            super(resources);
        }

        @Override // com.android.launcher3.AutoInstallsLayout.ShortcutParser
        public Intent parseIntent(XmlPullParser xmlPullParser) {
            String str;
            try {
                str = AutoInstallsLayout.getAttributeValue(xmlPullParser, "uri");
            } catch (URISyntaxException unused) {
                str = null;
            }
            try {
                return Intent.parseUri(str, 0);
            } catch (URISyntaxException unused2) {
                Log.w("DefaultLayoutParser", "Shortcut has malformed uri: " + str);
                return null;
            }
        }
    }

    public DefaultLayoutParser(Context context, AppWidgetHost appWidgetHost, AutoInstallsLayout.LayoutParserCallback layoutParserCallback, Resources resources, int i) {
        super(context, appWidgetHost, layoutParserCallback, resources, new C0238g(resources, i), "favorites");
    }

    @Override // com.android.launcher3.AutoInstallsLayout
    public ArrayMap getFolderElementsMap() {
        return getFolderElementsMap(this.mSourceRes);
    }

    @Override // com.android.launcher3.AutoInstallsLayout
    public ArrayMap getLayoutElementsMap() {
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put("favorite", new AppShortcutWithUriParser());
        arrayMap.put("appwidget", new AppWidgetParser());
        arrayMap.put("searchwidget", new AutoInstallsLayout.SearchWidgetParser());
        arrayMap.put("shortcut", new UriShortcutParser(this, this.mSourceRes));
        arrayMap.put("resolve", new ResolveParser());
        arrayMap.put("folder", new MyFolderParser());
        arrayMap.put("partner-folder", new PartnerFolderParser());
        return arrayMap;
    }

    @Override // com.android.launcher3.AutoInstallsLayout
    public void parseContainerAndScreen(XmlPullParser xmlPullParser, int[] iArr) {
        iArr[0] = -100;
        String attributeValue = AutoInstallsLayout.getAttributeValue(xmlPullParser, "container");
        if (attributeValue != null) {
            iArr[0] = Integer.parseInt(attributeValue);
        }
        iArr[1] = Integer.parseInt(AutoInstallsLayout.getAttributeValue(xmlPullParser, "screen"));
    }

    public ArrayMap getFolderElementsMap(Resources resources) {
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put("favorite", new AppShortcutWithUriParser());
        arrayMap.put("shortcut", new UriShortcutParser(this, resources));
        return arrayMap;
    }
}
