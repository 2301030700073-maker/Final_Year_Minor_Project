package com.android.launcher3.provider;

import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Process;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.SparseBooleanArray;
import com.android.launcher3.AutoInstallsLayout;
import com.android.launcher3.DefaultLayoutParser;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.LauncherSettings$Settings;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.GridSizeMigrationTask;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.PackageManagerHelper;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ImportDataTask {

    public class HotseatLayoutParser extends DefaultLayoutParser {
        public HotseatLayoutParser(Context context, AutoInstallsLayout.LayoutParserCallback layoutParserCallback) {
            super(context, null, layoutParserCallback, context.getResources(), LauncherAppState.getIDP(context).defaultLayoutId);
        }

        @Override // com.android.launcher3.DefaultLayoutParser, com.android.launcher3.AutoInstallsLayout
        public ArrayMap getLayoutElementsMap() {
            ArrayMap arrayMap = new ArrayMap();
            arrayMap.put("favorite", new DefaultLayoutParser.AppShortcutWithUriParser());
            arrayMap.put("shortcut", new DefaultLayoutParser.UriShortcutParser(this, this.mSourceRes));
            arrayMap.put("resolve", new DefaultLayoutParser.ResolveParser());
            return arrayMap;
        }
    }

    public class HotseatParserCallback implements AutoInstallsLayout.LayoutParserCallback {
        public final HashSet mExistingApps;
        public final IntSparseArrayMap mExistingItems;
        public final ArrayList mOutOps;
        public final int mRequiredSize;
        public int mStartItemId;

        public HotseatParserCallback(HashSet hashSet, IntSparseArrayMap intSparseArrayMap, ArrayList arrayList, int i, int i2) {
            this.mExistingApps = hashSet;
            this.mExistingItems = intSparseArrayMap;
            this.mOutOps = arrayList;
            this.mRequiredSize = i2;
            this.mStartItemId = i;
        }

        @Override // com.android.launcher3.AutoInstallsLayout.LayoutParserCallback
        public int generateNewItemId() {
            int i = this.mStartItemId;
            this.mStartItemId = i + 1;
            return i;
        }

        @Override // com.android.launcher3.AutoInstallsLayout.LayoutParserCallback
        public int insertAndCheck(SQLiteDatabase sQLiteDatabase, ContentValues contentValues) {
            if (this.mExistingItems.size() >= this.mRequiredSize) {
                return 0;
            }
            Integer num = -101;
            if (!num.equals(contentValues.getAsInteger("container"))) {
                return 0;
            }
            try {
                Intent parseUri = Intent.parseUri(contentValues.getAsString("intent"), 0);
                String str = ImportDataTask.getPackage(parseUri);
                if (str != null && !this.mExistingApps.contains(str)) {
                    this.mExistingApps.add(str);
                    int i = 0;
                    while (this.mExistingItems.get(i) != null) {
                        i++;
                    }
                    this.mExistingItems.put(i, parseUri);
                    contentValues.put("screen", Integer.valueOf(i));
                    this.mOutOps.add(ContentProviderOperation.newInsert(LauncherSettings$Favorites.CONTENT_URI).withValues(contentValues).build());
                }
            } catch (URISyntaxException unused) {
            }
            return 0;
        }
    }

    public static String getPackage(Intent intent) {
        return intent.getComponent() != null ? intent.getComponent().getPackageName() : intent.getPackage();
    }

    public static boolean performImportIfPossible(Context context) {
        int i;
        String str;
        int i2;
        int i3;
        int i4;
        SparseBooleanArray sparseBooleanArray;
        int i5;
        int i6;
        int i7;
        int i8;
        String str2;
        int i9;
        String str3;
        int i10;
        Intent intent;
        int i11;
        HashSet hashSet;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        ContentValues contentValues;
        ArrayList<ContentProviderOperation> arrayList;
        String str9;
        Context context2 = context;
        SharedPreferences devicePrefs = Utilities.getDevicePrefs(context);
        String string = devicePrefs.getString("data_import_src_pkg", "");
        String string2 = devicePrefs.getString("data_import_src_authority", "");
        boolean z = false;
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
            return false;
        }
        devicePrefs.edit().remove("data_import_src_pkg").remove("data_import_src_authority").commit();
        if (!LauncherSettings$Settings.call(context.getContentResolver(), "get_empty_db_flag").getBoolean("value", false)) {
            return false;
        }
        Object obj = null;
        for (ProviderInfo providerInfo : context.getPackageManager().queryContentProviders((String) null, context.getApplicationInfo().uid, 0)) {
            if (string.equals(providerInfo.packageName)) {
                if ((providerInfo.applicationInfo.flags & 1) == 0) {
                    return z;
                }
                if (string2.equals(providerInfo.authority) && (TextUtils.isEmpty(providerInfo.readPermission) || context2.checkPermission(providerInfo.readPermission, Process.myPid(), Process.myUid()) == 0)) {
                    Uri parse = Uri.parse("content://" + string2 + "/favorites");
                    StringBuilder sb = new StringBuilder();
                    sb.append("Importing DB from ");
                    sb.append(parse);
                    FileLog.d("ImportDataTask", sb.toString());
                    String l = Long.toString(((UserCache) UserCache.INSTANCE.b(context2)).getSerialNumberForUser(Process.myUserHandle()));
                    String str10 = "ImportDataTask";
                    Cursor query = context.getContentResolver().query(parse, null, "profileId = ? AND container = -100 AND cellY = 0 AND screen = (SELECT MIN(screen) FROM favorites WHERE container = -100)", new String[]{l}, null);
                    try {
                        boolean moveToNext = query.moveToNext();
                        query.close();
                        ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>(15);
                        HashSet hashSet2 = new HashSet();
                        query = context.getContentResolver().query(parse, null, "profileId = ?", new String[]{l}, "container , screen");
                        try {
                            int columnIndexOrThrow = query.getColumnIndexOrThrow("_id");
                            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("intent");
                            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("title");
                            int columnIndexOrThrow4 = query.getColumnIndexOrThrow("container");
                            ArrayList<ContentProviderOperation> arrayList3 = arrayList2;
                            int columnIndexOrThrow5 = query.getColumnIndexOrThrow("itemType");
                            String str11 = "title";
                            int columnIndexOrThrow6 = query.getColumnIndexOrThrow("appWidgetProvider");
                            String str12 = "container";
                            int i12 = columnIndexOrThrow3;
                            int columnIndexOrThrow7 = query.getColumnIndexOrThrow("screen");
                            String str13 = "screen";
                            int columnIndexOrThrow8 = query.getColumnIndexOrThrow("cellX");
                            String str14 = "cellX";
                            int columnIndexOrThrow9 = query.getColumnIndexOrThrow("cellY");
                            String str15 = "cellY";
                            String str16 = "itemType";
                            int columnIndexOrThrow10 = query.getColumnIndexOrThrow("spanX");
                            String str17 = "spanX";
                            String str18 = "_id";
                            int columnIndexOrThrow11 = query.getColumnIndexOrThrow("spanY");
                            String str19 = "spanY";
                            int columnIndexOrThrow12 = query.getColumnIndexOrThrow("rank");
                            HashSet hashSet3 = hashSet2;
                            String str20 = "rank";
                            int columnIndexOrThrow13 = query.getColumnIndexOrThrow("icon");
                            int i13 = columnIndexOrThrow12;
                            String str21 = "intent";
                            int columnIndexOrThrow14 = query.getColumnIndexOrThrow("iconPackage");
                            String str22 = "icon";
                            int i14 = columnIndexOrThrow13;
                            int columnIndexOrThrow15 = query.getColumnIndexOrThrow("iconResource");
                            String str23 = "iconResource";
                            SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray();
                            int i15 = columnIndexOrThrow15;
                            ContentValues contentValues2 = new ContentValues();
                            String str24 = "iconPackage";
                            int i16 = columnIndexOrThrow14;
                            String str25 = "appWidgetProvider";
                            int i17 = columnIndexOrThrow2;
                            int i18 = 0;
                            int i19 = 0;
                            int i20 = 0;
                            int i21 = 0;
                            int i22 = 0;
                            Integer num = null;
                            while (true) {
                                int i23 = columnIndexOrThrow6;
                                if (!query.moveToNext()) {
                                    break;
                                }
                                contentValues2.clear();
                                int i24 = query.getInt(columnIndexOrThrow);
                                int max = Math.max(i18, i24);
                                int i25 = query.getInt(columnIndexOrThrow5);
                                int i26 = columnIndexOrThrow5;
                                int i27 = query.getInt(columnIndexOrThrow4);
                                int i28 = query.getInt(columnIndexOrThrow7);
                                int i29 = query.getInt(columnIndexOrThrow8);
                                int i30 = query.getInt(columnIndexOrThrow9);
                                int i31 = query.getInt(columnIndexOrThrow10);
                                int i32 = query.getInt(columnIndexOrThrow11);
                                int i33 = columnIndexOrThrow10;
                                int i34 = columnIndexOrThrow7;
                                if (i27 == -101) {
                                    str = str10;
                                    i2 = columnIndexOrThrow11;
                                    i19 = Math.max(i19, i28 + 1);
                                } else if (i27 == -100) {
                                    str = str10;
                                    if (i28 < 0) {
                                        FileLog.d(str, String.format("Skipping item %d, type %d not on a valid screen %d", Integer.valueOf(i24), Integer.valueOf(i25), Integer.valueOf(i28)));
                                        str10 = str;
                                        columnIndexOrThrow6 = i23;
                                        i18 = max;
                                        columnIndexOrThrow5 = i26;
                                        columnIndexOrThrow10 = i33;
                                        columnIndexOrThrow7 = i34;
                                    } else {
                                        if (num == null) {
                                            num = Integer.valueOf(i28);
                                        }
                                        Integer num2 = num;
                                        if (moveToNext) {
                                            i2 = columnIndexOrThrow11;
                                            if (num2.equals(Integer.valueOf(i28))) {
                                                i30++;
                                                i28 = 0;
                                            }
                                        } else {
                                            i2 = columnIndexOrThrow11;
                                        }
                                        int max2 = Math.max(i20, i29 + i31);
                                        num = num2;
                                        i21 = Math.max(i21, i30 + i32);
                                        i20 = max2;
                                    }
                                } else if (sparseBooleanArray2.get(i27)) {
                                    str = str10;
                                    i2 = columnIndexOrThrow11;
                                } else {
                                    str = str10;
                                    FileLog.d(str, String.format("Skipping item %d, type %d not in a valid folder %d", Integer.valueOf(i24), Integer.valueOf(i25), Integer.valueOf(i27)));
                                    str10 = str;
                                    columnIndexOrThrow6 = i23;
                                    i18 = max;
                                    columnIndexOrThrow5 = i26;
                                    columnIndexOrThrow10 = i33;
                                    columnIndexOrThrow7 = i34;
                                }
                                if (i25 == 0 || i25 == 1) {
                                    i3 = i23;
                                    i4 = i25;
                                    int i35 = i17;
                                    sparseBooleanArray = sparseBooleanArray2;
                                    i5 = i35;
                                    Intent parseUri = Intent.parseUri(query.getString(i35), 0);
                                    if (PackageManagerHelper.isLauncherAppTarget(parseUri)) {
                                        i8 = i14;
                                        str2 = str23;
                                        i7 = i16;
                                        i4 = 0;
                                        i6 = i19;
                                    } else {
                                        int i36 = i16;
                                        i6 = i19;
                                        String string3 = query.getString(i36);
                                        i7 = i36;
                                        String str26 = str24;
                                        contentValues2.put(str26, string3);
                                        str24 = str26;
                                        int i37 = i15;
                                        String string4 = query.getString(i37);
                                        i15 = i37;
                                        String str27 = str23;
                                        contentValues2.put(str27, string4);
                                        i8 = i14;
                                        str2 = str27;
                                    }
                                    byte[] blob = query.getBlob(i8);
                                    i9 = i8;
                                    String str28 = str22;
                                    contentValues2.put(str28, blob);
                                    str22 = str28;
                                    str3 = str21;
                                    contentValues2.put(str3, parseUri.toUri(0));
                                    int i38 = i13;
                                    i13 = i38;
                                    String str29 = str20;
                                    contentValues2.put(str29, Integer.valueOf(query.getInt(i38)));
                                    str20 = str29;
                                    i10 = 1;
                                    contentValues2.put("restored", (Integer) 1);
                                    intent = parseUri;
                                    i11 = -101;
                                } else {
                                    if (i25 == 2) {
                                        i3 = i23;
                                        i4 = i25;
                                        str9 = str25;
                                        sparseBooleanArray2.put(i24, true);
                                        intent = new Intent();
                                    } else if (i25 != 4) {
                                        FileLog.d(str, String.format("Skipping item %d, not a valid type %d", Integer.valueOf(i24), Integer.valueOf(i25)));
                                        i7 = i16;
                                        i5 = i17;
                                        i3 = i23;
                                        sparseBooleanArray = sparseBooleanArray2;
                                        i6 = i19;
                                        str3 = str21;
                                        String str30 = str23;
                                        i9 = i14;
                                        str2 = str30;
                                        contentValues = contentValues2;
                                        arrayList = arrayList3;
                                        str8 = str11;
                                        str5 = str16;
                                        str4 = str18;
                                        str6 = str17;
                                        str7 = str19;
                                        str11 = str8;
                                        arrayList3 = arrayList;
                                        contentValues2 = contentValues;
                                        str17 = str6;
                                        str19 = str7;
                                        sparseBooleanArray2 = sparseBooleanArray;
                                        i18 = max;
                                        columnIndexOrThrow5 = i26;
                                        i17 = i5;
                                        str18 = str4;
                                        str16 = str5;
                                        str21 = str3;
                                        columnIndexOrThrow6 = i3;
                                        columnIndexOrThrow11 = i2;
                                        i19 = i6;
                                        columnIndexOrThrow7 = i34;
                                        i16 = i7;
                                        str10 = str;
                                        columnIndexOrThrow10 = i33;
                                        int i39 = i9;
                                        str23 = str2;
                                        i14 = i39;
                                    } else {
                                        contentValues2.put("restored", (Integer) 7);
                                        i3 = i23;
                                        i4 = i25;
                                        str9 = str25;
                                        contentValues2.put(str9, query.getString(i3));
                                        intent = null;
                                    }
                                    str25 = str9;
                                    i7 = i16;
                                    i5 = i17;
                                    i10 = 1;
                                    sparseBooleanArray = sparseBooleanArray2;
                                    i6 = i19;
                                    str3 = str21;
                                    i11 = -101;
                                    String str31 = str23;
                                    i9 = i14;
                                    str2 = str31;
                                }
                                if (i27 != i11) {
                                    hashSet = hashSet3;
                                } else if (intent == null) {
                                    Object[] objArr = new Object[i10];
                                    objArr[0] = Integer.valueOf(i24);
                                    FileLog.d(str, String.format("Skipping item %d, null intent on hotseat", objArr));
                                    contentValues = contentValues2;
                                    arrayList = arrayList3;
                                    str8 = str11;
                                    str5 = str16;
                                    str4 = str18;
                                    str6 = str17;
                                    str7 = str19;
                                    str11 = str8;
                                    arrayList3 = arrayList;
                                    contentValues2 = contentValues;
                                    str17 = str6;
                                    str19 = str7;
                                    sparseBooleanArray2 = sparseBooleanArray;
                                    i18 = max;
                                    columnIndexOrThrow5 = i26;
                                    i17 = i5;
                                    str18 = str4;
                                    str16 = str5;
                                    str21 = str3;
                                    columnIndexOrThrow6 = i3;
                                    columnIndexOrThrow11 = i2;
                                    i19 = i6;
                                    columnIndexOrThrow7 = i34;
                                    i16 = i7;
                                    str10 = str;
                                    columnIndexOrThrow10 = i33;
                                    int i392 = i9;
                                    str23 = str2;
                                    i14 = i392;
                                } else {
                                    if (intent.getComponent() != null) {
                                        intent.setPackage(intent.getComponent().getPackageName());
                                    }
                                    hashSet = hashSet3;
                                    hashSet.add(getPackage(intent));
                                }
                                Integer valueOf = Integer.valueOf(i24);
                                str4 = str18;
                                contentValues2.put(str4, valueOf);
                                str5 = str16;
                                contentValues2.put(str5, Integer.valueOf(i4));
                                hashSet3 = hashSet;
                                String str32 = str12;
                                contentValues2.put(str32, Integer.valueOf(i27));
                                str12 = str32;
                                String str33 = str13;
                                contentValues2.put(str33, Integer.valueOf(i28));
                                str13 = str33;
                                String str34 = str14;
                                contentValues2.put(str34, Integer.valueOf(i29));
                                str14 = str34;
                                String str35 = str15;
                                contentValues2.put(str35, Integer.valueOf(i30));
                                str15 = str35;
                                String str36 = str17;
                                contentValues2.put(str36, Integer.valueOf(i31));
                                str6 = str36;
                                String str37 = str19;
                                contentValues2.put(str37, Integer.valueOf(i32));
                                str7 = str37;
                                int i40 = i12;
                                String string5 = query.getString(i40);
                                i12 = i40;
                                str8 = str11;
                                contentValues2.put(str8, string5);
                                ContentProviderOperation build = ContentProviderOperation.newInsert(LauncherSettings$Favorites.CONTENT_URI).withValues(contentValues2).build();
                                contentValues = contentValues2;
                                arrayList = arrayList3;
                                arrayList.add(build);
                                i22 = i27 < 0 ? i22 + 1 : i22;
                                if (arrayList.size() >= 15) {
                                    context.getContentResolver().applyBatch("com.google.android.apps.nexuslauncher.settings", arrayList);
                                    arrayList.clear();
                                }
                                str11 = str8;
                                arrayList3 = arrayList;
                                contentValues2 = contentValues;
                                str17 = str6;
                                str19 = str7;
                                sparseBooleanArray2 = sparseBooleanArray;
                                i18 = max;
                                columnIndexOrThrow5 = i26;
                                i17 = i5;
                                str18 = str4;
                                str16 = str5;
                                str21 = str3;
                                columnIndexOrThrow6 = i3;
                                columnIndexOrThrow11 = i2;
                                i19 = i6;
                                columnIndexOrThrow7 = i34;
                                i16 = i7;
                                str10 = str;
                                columnIndexOrThrow10 = i33;
                                int i3922 = i9;
                                str23 = str2;
                                i14 = i3922;
                            }
                            ArrayList<ContentProviderOperation> arrayList4 = arrayList3;
                            int i41 = i22;
                            query.close();
                            FileLog.d(str10, i41 + " items imported from external source");
                            if (i41 < 6) {
                                throw new Exception("Insufficient data");
                            }
                            if (!arrayList4.isEmpty()) {
                                context.getContentResolver().applyBatch("com.google.android.apps.nexuslauncher.settings", arrayList4);
                                arrayList4.clear();
                            }
                            LauncherDbUtils$SQLiteTransaction launcherDbUtils$SQLiteTransaction = (LauncherDbUtils$SQLiteTransaction) LauncherSettings$Settings.call(context.getContentResolver(), "new_db_transaction").getBinder("value");
                            try {
                                HashSet hashSet4 = hashSet3;
                                int i42 = i19;
                                GridSizeMigrationTask gridSizeMigrationTask = new GridSizeMigrationTask(context, launcherDbUtils$SQLiteTransaction.mDb, GridSizeMigrationTask.getValidPackages(context), false, Integer.MAX_VALUE, Integer.MAX_VALUE);
                                ArrayList loadHotseatEntries = gridSizeMigrationTask.loadHotseatEntries();
                                gridSizeMigrationTask.applyOperations();
                                IntSparseArrayMap intSparseArrayMap = new IntSparseArrayMap();
                                Iterator it = loadHotseatEntries.iterator();
                                while (it.hasNext()) {
                                    GridSizeMigrationTask.DbEntry dbEntry = (GridSizeMigrationTask.DbEntry) it.next();
                                    intSparseArrayMap.put(dbEntry.screenId, dbEntry);
                                }
                                launcherDbUtils$SQLiteTransaction.mDb.setTransactionSuccessful();
                                launcherDbUtils$SQLiteTransaction.mDb.endTransaction();
                                int i43 = LauncherAppState.getIDP(context).numHotseatIcons;
                                if (intSparseArrayMap.size() < i43) {
                                    new HotseatLayoutParser(context, new HotseatParserCallback(hashSet4, intSparseArrayMap, arrayList4, i18 + 1, i43)).loadLayout(null, new IntArray(10));
                                    i = intSparseArrayMap.keyAt(intSparseArrayMap.size() - 1) + 1;
                                    if (!arrayList4.isEmpty()) {
                                        context.getContentResolver().applyBatch("com.google.android.apps.nexuslauncher.settings", arrayList4);
                                    }
                                } else {
                                    i = i42;
                                }
                                context.getApplicationContext().getSharedPreferences("com.android.launcher3.prefs", 0).edit().putString("migration_src_workspace_size", Utilities.getPointString(i20, i21)).putInt("migration_src_hotseat_count", i).apply();
                                LauncherSettings$Settings.call(context.getContentResolver(), "clear_empty_db_flag");
                                return true;
                            } finally {
                            }
                        } finally {
                        }
                    } finally {
                    }
                }
            }
            context2 = context2;
            obj = obj;
            z = false;
        }
        return z;
    }
}
