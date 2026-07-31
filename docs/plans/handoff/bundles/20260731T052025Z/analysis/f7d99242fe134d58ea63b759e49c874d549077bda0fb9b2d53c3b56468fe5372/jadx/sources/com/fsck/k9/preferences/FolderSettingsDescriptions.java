package com.fsck.k9.preferences;

import androidx.sqlite.SQLite;
import com.fsck.k9.preferences.legacy.FolderClass;
import com.google.zxing.BinaryBitmap;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FolderSettingsDescriptions {
    public static final Map SETTINGS;
    public static final Map UPGRADERS;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i = 1;
        int i2 = 8;
        int i3 = 100;
        Object obj = null;
        linkedHashMap.put("displayMode", SQLite.versions(new BinaryBitmap(i2, (Object) i, (Object) new Settings$EnumSetting(FolderClass.class, FolderClass.NO_CLASS)), new BinaryBitmap(i2, (Object) i3, obj)));
        FolderClass folderClass = FolderClass.INHERITED;
        int i4 = 96;
        linkedHashMap.put("notifyMode", SQLite.versions(new BinaryBitmap(i2, (Object) 34, (Object) new Settings$EnumSetting(FolderClass.class, folderClass)), new BinaryBitmap(i2, (Object) i4, obj)));
        int i5 = 99;
        linkedHashMap.put("syncMode", SQLite.versions(new BinaryBitmap(i2, (Object) i, (Object) new Settings$EnumSetting(FolderClass.class, folderClass)), new BinaryBitmap(i2, (Object) i5, obj)));
        int i6 = 98;
        linkedHashMap.put("pushMode", SQLite.versions(new BinaryBitmap(i2, (Object) i, (Object) new Settings$EnumSetting(FolderClass.class, folderClass)), new BinaryBitmap(i2, (Object) 66, (Object) new Settings$EnumSetting(FolderClass.class, FolderClass.SECOND_CLASS)), new BinaryBitmap(i2, (Object) i6, obj)));
        linkedHashMap.put("inTopGroup", SQLite.versions(new BinaryBitmap(i2, (Object) i, (Object) new Settings$ColorSetting(false))));
        linkedHashMap.put("integrate", SQLite.versions(new BinaryBitmap(i2, (Object) i, (Object) new Settings$ColorSetting(false))));
        linkedHashMap.put("notificationsEnabled", SQLite.versions(new BinaryBitmap(i2, (Object) i4, (Object) new Settings$ColorSetting(false))));
        linkedHashMap.put("pushEnabled", SQLite.versions(new BinaryBitmap(i2, (Object) i6, (Object) new Settings$ColorSetting(false))));
        linkedHashMap.put("syncEnabled", SQLite.versions(new BinaryBitmap(i2, (Object) i5, (Object) new Settings$ColorSetting(false))));
        linkedHashMap.put("visible", SQLite.versions(new BinaryBitmap(i2, (Object) i3, (Object) new Settings$ColorSetting(true))));
        SETTINGS = DesugarCollections.unmodifiableMap(linkedHashMap);
        UPGRADERS = DesugarCollections.unmodifiableMap(new HashMap());
    }
}
