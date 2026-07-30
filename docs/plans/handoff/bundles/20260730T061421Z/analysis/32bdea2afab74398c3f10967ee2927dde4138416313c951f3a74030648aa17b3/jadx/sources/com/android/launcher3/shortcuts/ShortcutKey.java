package com.android.launcher3.shortcuts;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import com.android.launcher3.util.ComponentKey;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ShortcutKey extends ComponentKey {
    public ShortcutKey(String str, UserHandle userHandle, String str2) {
        super(new ComponentName(str, str2), userHandle);
    }

    public static ShortcutKey fromInfo(ShortcutInfo shortcutInfo) {
        return new ShortcutKey(shortcutInfo.getPackage(), shortcutInfo.getUserHandle(), shortcutInfo.getId());
    }

    public static ShortcutKey fromIntent(Intent intent, UserHandle userHandle) {
        return new ShortcutKey(intent.getPackage(), userHandle, intent.getStringExtra("shortcut_id"));
    }

    public static Intent makeIntent(ShortcutInfo shortcutInfo) {
        return new Intent("android.intent.action.MAIN").addCategory("com.android.launcher3.DEEP_SHORTCUT").setComponent(shortcutInfo.getActivity()).setPackage(shortcutInfo.getPackage()).setFlags(270532608).putExtra("shortcut_id", shortcutInfo.getId());
    }

    public ShortcutRequest buildRequest(Context context) {
        ShortcutRequest shortcutRequest = new ShortcutRequest(context, this.user);
        shortcutRequest.forPackage(this.componentName.getPackageName(), Arrays.asList(getId()));
        return shortcutRequest;
    }

    public String getId() {
        return this.componentName.getClassName();
    }
}
