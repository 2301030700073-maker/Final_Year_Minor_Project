package com.fsck.k9.preferences;

import androidx.sqlite.SQLite;
import com.fsck.k9.EmailAddressValidator;
import com.google.zxing.BinaryBitmap;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class IdentitySettingsDescriptions {
    public static final Map SETTINGS;
    public static final Map UPGRADERS;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i = 1;
        int i2 = 8;
        linkedHashMap.put("signature", SQLite.versions(new BinaryBitmap(i2, (Object) i, (Object) new Settings$ColorSetting(7, null))));
        linkedHashMap.put("signatureUse", SQLite.versions(new BinaryBitmap(i2, (Object) i, (Object) new Settings$ColorSetting(true)), new BinaryBitmap(i2, (Object) 68, (Object) new Settings$ColorSetting(false))));
        Settings$EnumSetting settings$EnumSetting = new Settings$EnumSetting((Object) null);
        settings$EnumSetting.enumClass = new EmailAddressValidator();
        linkedHashMap.put("replyTo", SQLite.versions(new BinaryBitmap(i2, (Object) i, (Object) settings$EnumSetting)));
        SETTINGS = DesugarCollections.unmodifiableMap(linkedHashMap);
        UPGRADERS = DesugarCollections.unmodifiableMap(new HashMap());
    }
}
