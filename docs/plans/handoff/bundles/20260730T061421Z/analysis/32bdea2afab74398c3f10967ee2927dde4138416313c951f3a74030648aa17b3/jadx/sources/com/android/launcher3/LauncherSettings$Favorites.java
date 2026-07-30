package com.android.launcher3;

import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.provider.BaseColumns;

/* loaded from: classes.dex */
public final class LauncherSettings$Favorites implements BaseColumns {
    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.apps.nexuslauncher.settings/favorites");
    public static final Uri PREVIEW_CONTENT_URI = Uri.parse("content://com.google.android.apps.nexuslauncher.settings/favorites_preview");
    public static final Uri TMP_CONTENT_URI = Uri.parse("content://com.google.android.apps.nexuslauncher.settings/favorites_tmp");

    public static void addTableToDb(SQLiteDatabase sQLiteDatabase, long j, boolean z, String str) {
        sQLiteDatabase.execSQL("CREATE TABLE " + (z ? " IF NOT EXISTS " : "") + str + " (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,iconPackage TEXT,iconResource TEXT,icon BLOB,appWidgetProvider TEXT,modified INTEGER NOT NULL DEFAULT 0,restored INTEGER NOT NULL DEFAULT 0,profileId INTEGER DEFAULT " + j + ",rank INTEGER NOT NULL DEFAULT 0,options INTEGER NOT NULL DEFAULT 0);");
    }

    public static final String containerToString(int i) {
        switch (i) {
            case -107:
                return "shortcuts";
            case -106:
                return "search_result";
            case -105:
                return "widgets_tray";
            case -104:
                return "all_apps";
            case -103:
            default:
                return String.valueOf(i);
            case -102:
                return "prediction";
            case -101:
                return "hotseat";
            case -100:
                return "desktop";
        }
    }

    public static Uri getContentUri(int i) {
        return Uri.parse("content://com.google.android.apps.nexuslauncher.settings/favorites/" + i);
    }

    public static final String itemTypeToString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 4 ? i != 5 ? i != 6 ? String.valueOf(i) : "DEEPSHORTCUT" : "CUSTOMWIDGET" : "WIDGET" : "FOLDER" : "SHORTCUT" : "APP";
    }
}
