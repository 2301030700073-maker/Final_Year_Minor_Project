package com.android.launcher3.icons.cache;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.LocaleList;
import android.os.Looper;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import c.a.c.a.a;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.SQLiteCacheHelper;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public abstract class BaseIconCache {
    public final Looper mBgLooper;
    public final Map mCache;
    public final Context mContext;
    public final String mDbFileName;
    public final BitmapFactory.Options mDecodeOptions;
    public IconDB mIconDb;
    public int mIconDpi;
    public final PackageManager mPackageManager;
    public final Handler mWorkerHandler;
    public final HashMap mDefaultIcons = new HashMap();
    public LocaleList mLocaleList = LocaleList.getEmptyLocaleList();
    public String mSystemState = "";

    public class CacheEntry {
        public BitmapInfo bitmap = BitmapInfo.LOW_RES_INFO;
        public CharSequence title = "";
        public CharSequence contentDescription = "";
    }

    public final class IconDB extends SQLiteCacheHelper {
        public static final String[] COLUMNS_HIGH_RES = {"icon_color", "label", "icon"};
        public static final String[] COLUMNS_LOW_RES = {"icon_color", "label"};

        public IconDB(Context context, String str, int i) {
            super(context, str, i + 1769472, "icons");
        }

        @Override // com.android.launcher3.util.SQLiteCacheHelper
        public void onCreateTable(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS icons (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, icon BLOB, icon_color INTEGER NOT NULL DEFAULT 0, label TEXT, system_state TEXT, keywords TEXT, PRIMARY KEY (componentName, profileId) );");
        }
    }

    public BaseIconCache(Context context, String str, Looper looper, int i, int i2, boolean z) {
        this.mContext = context;
        this.mDbFileName = str;
        this.mPackageManager = context.getPackageManager();
        this.mBgLooper = looper;
        this.mWorkerHandler = new Handler(this.mBgLooper);
        if (z) {
            this.mCache = new HashMap(50);
        } else {
            this.mCache = new AbstractMap(this) { // from class: com.android.launcher3.icons.cache.BaseIconCache.1
                @Override // java.util.AbstractMap, java.util.Map
                public Set entrySet() {
                    return Collections.emptySet();
                }

                @Override // java.util.AbstractMap, java.util.Map
                public Object put(Object obj, Object obj2) {
                    return (CacheEntry) obj2;
                }
            };
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        this.mDecodeOptions = options;
        options.inPreferredConfig = Bitmap.Config.HARDWARE;
        updateSystemState();
        this.mIconDpi = i;
        this.mIconDb = new IconDB(context, str, i2);
    }

    public static ComponentKey getPackageKey(String str, UserHandle userHandle) {
        return new ComponentKey(new ComponentName(str, a.e(str, ".")), userHandle);
    }

    public void a(int i, int i2) {
        synchronized (this) {
            this.mIconDpi = i;
            this.mDefaultIcons.clear();
            SQLiteCacheHelper.MySQLiteOpenHelper mySQLiteOpenHelper = this.mIconDb.mOpenHelper;
            mySQLiteOpenHelper.clearDB(mySQLiteOpenHelper.getWritableDatabase());
            this.mIconDb.mOpenHelper.close();
            this.mIconDb = new IconDB(this.mContext, this.mDbFileName, i2);
            this.mCache.clear();
        }
    }

    public final void addIconToDB(ContentValues contentValues, ComponentName componentName, PackageInfo packageInfo, long j, long j2) {
        contentValues.put("componentName", componentName.flattenToString());
        contentValues.put("profileId", Long.valueOf(j));
        contentValues.put("lastUpdated", Long.valueOf(j2));
        contentValues.put("version", Integer.valueOf(packageInfo.versionCode));
        this.mIconDb.insertOrReplace(contentValues);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
    
        r2 = new com.android.launcher3.icons.cache.BaseIconCache.CacheEntry();
        r2.bitmap = r11.loadIcon(r9.mContext, r10);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void addIconToDBAndMemCache(java.lang.Object r10, com.android.launcher3.icons.cache.CachingLogic r11, android.content.pm.PackageInfo r12, long r13, boolean r15) {
        /*
            r9 = this;
            monitor-enter(r9)
            android.os.UserHandle r0 = r11.getUser(r10)     // Catch: java.lang.Throwable -> L79
            android.content.ComponentName r3 = r11.getComponent(r10)     // Catch: java.lang.Throwable -> L79
            com.android.launcher3.util.ComponentKey r1 = new com.android.launcher3.util.ComponentKey     // Catch: java.lang.Throwable -> L79
            r1.<init>(r3, r0)     // Catch: java.lang.Throwable -> L79
            r2 = 0
            if (r15 != 0) goto L25
            java.util.Map r15 = r9.mCache     // Catch: java.lang.Throwable -> L79
            java.lang.Object r15 = r15.get(r1)     // Catch: java.lang.Throwable -> L79
            com.android.launcher3.icons.cache.BaseIconCache$CacheEntry r15 = (com.android.launcher3.icons.cache.BaseIconCache.CacheEntry) r15     // Catch: java.lang.Throwable -> L79
            if (r15 == 0) goto L25
            com.android.launcher3.icons.BitmapInfo r4 = r15.bitmap     // Catch: java.lang.Throwable -> L79
            boolean r4 = r4.isNullOrLowRes()     // Catch: java.lang.Throwable -> L79
            if (r4 == 0) goto L24
            goto L25
        L24:
            r2 = r15
        L25:
            if (r2 != 0) goto L34
            com.android.launcher3.icons.cache.BaseIconCache$CacheEntry r2 = new com.android.launcher3.icons.cache.BaseIconCache$CacheEntry     // Catch: java.lang.Throwable -> L79
            r2.<init>()     // Catch: java.lang.Throwable -> L79
            android.content.Context r15 = r9.mContext     // Catch: java.lang.Throwable -> L79
            com.android.launcher3.icons.BitmapInfo r15 = r11.loadIcon(r15, r10)     // Catch: java.lang.Throwable -> L79
            r2.bitmap = r15     // Catch: java.lang.Throwable -> L79
        L34:
            com.android.launcher3.icons.BitmapInfo r15 = r2.bitmap     // Catch: java.lang.Throwable -> L79
            boolean r15 = r15.isNullOrLowRes()     // Catch: java.lang.Throwable -> L79
            if (r15 == 0) goto L3e
            monitor-exit(r9)
            return
        L3e:
            java.lang.CharSequence r15 = r11.getLabel(r10)     // Catch: java.lang.Throwable -> L79
            r2.title = r15     // Catch: java.lang.Throwable -> L79
            android.content.pm.PackageManager r4 = r9.mPackageManager     // Catch: java.lang.Throwable -> L79
            java.lang.CharSequence r15 = r4.getUserBadgedLabel(r15, r0)     // Catch: java.lang.Throwable -> L79
            r2.contentDescription = r15     // Catch: java.lang.Throwable -> L79
            boolean r15 = r11.addToMemCache()     // Catch: java.lang.Throwable -> L79
            if (r15 == 0) goto L57
            java.util.Map r15 = r9.mCache     // Catch: java.lang.Throwable -> L79
            r15.put(r1, r2)     // Catch: java.lang.Throwable -> L79
        L57:
            com.android.launcher3.icons.BitmapInfo r15 = r2.bitmap     // Catch: java.lang.Throwable -> L79
            java.lang.CharSequence r0 = r2.title     // Catch: java.lang.Throwable -> L79
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L79
            java.lang.String r1 = r3.getPackageName()     // Catch: java.lang.Throwable -> L79
            android.os.LocaleList r2 = r9.mLocaleList     // Catch: java.lang.Throwable -> L79
            java.lang.String r2 = r11.getKeywords(r10, r2)     // Catch: java.lang.Throwable -> L79
            android.content.ContentValues r2 = r9.newContentValues(r15, r0, r1, r2)     // Catch: java.lang.Throwable -> L79
            long r7 = r11.getLastUpdatedTime(r10, r12)     // Catch: java.lang.Throwable -> L79
            r1 = r9
            r4 = r12
            r5 = r13
            r1.addIconToDB(r2, r3, r4, r5, r7)     // Catch: java.lang.Throwable -> L79
            monitor-exit(r9)
            return
        L79:
            r10 = move-exception
            monitor-exit(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.cache.BaseIconCache.addIconToDBAndMemCache(java.lang.Object, com.android.launcher3.icons.cache.CachingLogic, android.content.pm.PackageInfo, long, boolean):void");
    }

    public final void assertWorkerThread() {
        if (Looper.myLooper() == this.mBgLooper) {
            return;
        }
        StringBuilder f = a.f("Cache accessed on wrong thread ");
        f.append(Looper.myLooper());
        throw new IllegalStateException(f.toString());
    }

    public CacheEntry cacheLocked(ComponentName componentName, UserHandle userHandle, Supplier supplier, CachingLogic cachingLogic, boolean z, boolean z2) {
        assertWorkerThread();
        ComponentKey componentKey = new ComponentKey(componentName, userHandle);
        CacheEntry cacheEntry = (CacheEntry) this.mCache.get(componentKey);
        if (cacheEntry == null || (cacheEntry.bitmap.isLowRes() && !z2)) {
            cacheEntry = new CacheEntry();
            if (cachingLogic.addToMemCache()) {
                this.mCache.put(componentKey, cacheEntry);
            }
            Object obj = null;
            boolean entryFromDB = getEntryFromDB(componentKey, cacheEntry, z2);
            boolean z3 = false;
            if (!entryFromDB) {
                obj = supplier.get();
                if (obj != null) {
                    cacheEntry.bitmap = cachingLogic.loadIcon(this.mContext, obj);
                } else {
                    if (z) {
                        CacheEntry entryForPackageLocked = getEntryForPackageLocked(componentName.getPackageName(), userHandle, false);
                        cacheEntry.bitmap = entryForPackageLocked.bitmap;
                        cacheEntry.title = entryForPackageLocked.title;
                        cacheEntry.contentDescription = entryForPackageLocked.contentDescription;
                    }
                    if (cacheEntry.bitmap == null) {
                        cacheEntry.bitmap = getDefaultIcon(userHandle);
                    }
                }
                z3 = true;
            }
            if (TextUtils.isEmpty(cacheEntry.title)) {
                if (obj == null && !z3) {
                    obj = supplier.get();
                }
                if (obj != null) {
                    CharSequence label = cachingLogic.getLabel(obj);
                    cacheEntry.title = label;
                    cacheEntry.contentDescription = this.mPackageManager.getUserBadgedLabel(cachingLogic.getDescription(obj, label), userHandle);
                }
            }
        }
        return cacheEntry;
    }

    public synchronized BitmapInfo getDefaultIcon(UserHandle userHandle) {
        if (!this.mDefaultIcons.containsKey(userHandle)) {
            HashMap hashMap = this.mDefaultIcons;
            BaseIconFactory iconFactory = getIconFactory();
            try {
                BitmapInfo createBadgedIconBitmap = iconFactory.createBadgedIconBitmap(BaseIconFactory.getFullResDefaultActivityIcon(iconFactory.mFillResIconDpi), userHandle, Build.VERSION.SDK_INT);
                ((LauncherIcons) iconFactory).recycle();
                hashMap.put(userHandle, createBadgedIconBitmap);
            } finally {
            }
        }
        return (BitmapInfo) this.mDefaultIcons.get(userHandle);
    }

    public CacheEntry getEntryForPackageLocked(String str, UserHandle userHandle, boolean z) {
        assertWorkerThread();
        ComponentKey packageKey = getPackageKey(str, userHandle);
        CacheEntry cacheEntry = (CacheEntry) this.mCache.get(packageKey);
        if (cacheEntry != null && (!cacheEntry.bitmap.isLowRes() || z)) {
            return cacheEntry;
        }
        CacheEntry cacheEntry2 = new CacheEntry();
        boolean z2 = true;
        if (!getEntryFromDB(packageKey, cacheEntry2, z)) {
            try {
                PackageInfo packageInfo = this.mPackageManager.getPackageInfo(str, Process.myUserHandle().equals(userHandle) ? 0 : QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED);
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                if (applicationInfo == null) {
                    throw new PackageManager.NameNotFoundException("ApplicationInfo is null");
                }
                BaseIconFactory iconFactory = getIconFactory();
                BitmapInfo createBadgedIconBitmap = iconFactory.createBadgedIconBitmap(applicationInfo.loadIcon(this.mPackageManager), userHandle, applicationInfo.targetSdkVersion, ((IconCache) this).mInstantAppResolver.isInstantApp(applicationInfo));
                ((LauncherIcons) iconFactory).recycle();
                CharSequence loadLabel = applicationInfo.loadLabel(this.mPackageManager);
                cacheEntry2.title = loadLabel;
                cacheEntry2.contentDescription = this.mPackageManager.getUserBadgedLabel(loadLabel, userHandle);
                cacheEntry2.bitmap = new BitmapInfo(z ? BitmapInfo.LOW_RES_ICON : createBadgedIconBitmap.icon, createBadgedIconBitmap.color);
                addIconToDB(newContentValues(createBadgedIconBitmap, cacheEntry2.title.toString(), str, null), packageKey.componentName, packageInfo, ((IconCache) this).mUserManager.getSerialNumberForUser(userHandle), packageInfo.lastUpdateTime);
            } catch (PackageManager.NameNotFoundException unused) {
                z2 = false;
            }
        }
        if (z2) {
            this.mCache.put(packageKey, cacheEntry2);
        }
        return cacheEntry2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0086, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean getEntryFromDB(com.android.launcher3.util.ComponentKey r11, com.android.launcher3.icons.cache.BaseIconCache.CacheEntry r12, boolean r13) {
        /*
            r10 = this;
            java.lang.String r0 = ""
            r1 = 0
            r2 = 0
            com.android.launcher3.icons.cache.BaseIconCache$IconDB r3 = r10.mIconDb     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            if (r13 == 0) goto Lb
            java.lang.String[] r4 = com.android.launcher3.icons.cache.BaseIconCache.IconDB.COLUMNS_LOW_RES     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            goto Ld
        Lb:
            java.lang.String[] r4 = com.android.launcher3.icons.cache.BaseIconCache.IconDB.COLUMNS_HIGH_RES     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
        Ld:
            java.lang.String r5 = "componentName = ? AND profileId = ?"
            r6 = 2
            java.lang.String[] r7 = new java.lang.String[r6]     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            android.content.ComponentName r8 = r11.componentName     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            java.lang.String r8 = r8.flattenToString()     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            r7[r1] = r8     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            android.os.UserHandle r8 = r11.user     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            r9 = r10
            com.android.launcher3.icons.IconCache r9 = (com.android.launcher3.icons.IconCache) r9     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            com.android.launcher3.pm.UserCache r9 = r9.mUserManager     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            long r8 = r9.getSerialNumberForUser(r8)     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            java.lang.String r8 = java.lang.Long.toString(r8)     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            r9 = 1
            r7[r9] = r8     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            android.database.Cursor r2 = r3.query(r4, r5, r7)     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            boolean r3 = r2.moveToNext()     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            if (r3 == 0) goto L88
            android.graphics.Bitmap r3 = com.android.launcher3.icons.BitmapInfo.LOW_RES_ICON     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            int r4 = r2.getInt(r1)     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            r5 = 255(0xff, float:3.57E-43)
            int r4 = com.android.launcher3.icons.GraphicsUtils.setColorAlphaBound(r4, r5)     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            com.android.launcher3.icons.BitmapInfo r5 = new com.android.launcher3.icons.BitmapInfo     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            r5.<init>(r3, r4)     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            r12.bitmap = r5     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            java.lang.String r3 = r2.getString(r9)     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            r12.title = r3     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            if (r3 != 0) goto L56
            r12.title = r0     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            r12.contentDescription = r0     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            goto L60
        L56:
            android.content.pm.PackageManager r0 = r10.mPackageManager     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            android.os.UserHandle r11 = r11.user     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            java.lang.CharSequence r11 = r0.getUserBadgedLabel(r3, r11)     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            r12.contentDescription = r11     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
        L60:
            if (r13 != 0) goto L78
            byte[] r11 = r2.getBlob(r6)     // Catch: java.lang.Throwable -> L7c android.database.sqlite.SQLiteException -> L7e
            int r13 = r11.length     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L7c
            android.graphics.BitmapFactory$Options r10 = r10.mDecodeOptions     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L7c
            android.graphics.Bitmap r10 = android.graphics.BitmapFactory.decodeByteArray(r11, r1, r13, r10)     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L7c
            com.android.launcher3.icons.BitmapInfo r11 = r12.bitmap     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L7c
            int r11 = r11.color     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L7c
            com.android.launcher3.icons.BitmapInfo r13 = new com.android.launcher3.icons.BitmapInfo     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L7c
            r13.<init>(r10, r11)     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L7c
            r12.bitmap = r13     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L7c
        L78:
            r2.close()
            return r9
        L7c:
            r10 = move-exception
            goto L8c
        L7e:
            r10 = move-exception
            java.lang.String r11 = "BaseIconCache"
            java.lang.String r12 = "Error reading icon cache"
            android.util.Log.d(r11, r12, r10)     // Catch: java.lang.Throwable -> L7c
            if (r2 == 0) goto L8b
        L88:
            r2.close()
        L8b:
            return r1
        L8c:
            if (r2 == 0) goto L91
            r2.close()
        L91:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.cache.BaseIconCache.getEntryFromDB(com.android.launcher3.util.ComponentKey, com.android.launcher3.icons.cache.BaseIconCache$CacheEntry, boolean):boolean");
    }

    public Drawable getFullResIcon(String str, int i) {
        try {
            Resources resourcesForApplication = this.mPackageManager.getResourcesForApplication(str);
            if (resourcesForApplication != null && i != 0) {
                try {
                    return resourcesForApplication.getDrawableForDensity(i, this.mIconDpi);
                } catch (Resources.NotFoundException unused) {
                }
            }
            return BaseIconFactory.getFullResDefaultActivityIcon(this.mIconDpi);
        } catch (PackageManager.NameNotFoundException unused2) {
            return BaseIconFactory.getFullResDefaultActivityIcon(this.mIconDpi);
        }
    }

    public abstract BaseIconFactory getIconFactory();

    public String getIconSystemState(String str) {
        return this.mSystemState;
    }

    public boolean isDefaultIcon(BitmapInfo bitmapInfo, UserHandle userHandle) {
        return getDefaultIcon(userHandle).icon == bitmapInfo.icon;
    }

    public final ContentValues newContentValues(BitmapInfo bitmapInfo, String str, String str2, String str3) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("icon", bitmapInfo.isLowRes() ? null : GraphicsUtils.flattenBitmap(bitmapInfo.icon));
        contentValues.put("icon_color", Integer.valueOf(bitmapInfo.color));
        contentValues.put("label", str);
        contentValues.put("system_state", getIconSystemState(str2));
        contentValues.put("keywords", str3);
        return contentValues;
    }

    public synchronized void remove(ComponentName componentName, UserHandle userHandle) {
        this.mCache.remove(new ComponentKey(componentName, userHandle));
    }

    public final void removeFromMemCacheLocked(String str, UserHandle userHandle) {
        HashSet hashSet = new HashSet();
        for (ComponentKey componentKey : this.mCache.keySet()) {
            if (componentKey.componentName.getPackageName().equals(str) && componentKey.user.equals(userHandle)) {
                hashSet.add(componentKey);
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            this.mCache.remove((ComponentKey) it.next());
        }
    }

    public synchronized void removeIconsForPkg(String str, UserHandle userHandle) {
        removeFromMemCacheLocked(str, userHandle);
        long serialNumberForUser = ((IconCache) this).mUserManager.getSerialNumberForUser(userHandle);
        this.mIconDb.delete("componentName LIKE ? AND profileId = ?", new String[]{str + "/%", Long.toString(serialNumberForUser)});
    }

    public final void updateSystemState() {
        this.mLocaleList = this.mContext.getResources().getConfiguration().getLocales();
        this.mSystemState = this.mLocaleList.toLanguageTags() + "," + Build.VERSION.SDK_INT;
    }
}
