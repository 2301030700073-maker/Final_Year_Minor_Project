package com.android.contacts.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.android.contacts.model.account.GoogleAccountType;
import com.android.contacts.quickcontact.QuickContactActivity;
import java.util.List;

/* loaded from: classes.dex */
public class ImplicitIntentsUtil {
    public static void startActivityInAppIfPossible(Context context, Intent intent) {
        Intent intentInAppIfExists = getIntentInAppIfExists(context, intent);
        if (intentInAppIfExists != null) {
            context.startActivity(intentInAppIfExists);
        } else {
            context.startActivity(intent);
        }
    }

    public static void startActivityInApp(Context context, Intent intent) {
        intent.setPackage(context.getPackageName());
        context.startActivity(intent);
    }

    public static void startActivityOutsideApp(Context context, Intent intent) {
        if ((Build.TYPE.equals("eng") || Build.TYPE.equals("userdebug")) && getIntentInAppIfExists(context, intent) != null) {
            throw new AssertionError("startActivityOutsideApp() was called for an intent that can be handled inside the app");
        }
        context.startActivity(intent);
    }

    public static void startQuickContact(Activity activity, Uri uri, int i) {
        startActivityInApp(activity, composeQuickContactIntent(activity, uri, i));
    }

    public static Intent composeQuickContactIntent(Context context, Uri uri, int i) {
        return composeQuickContactIntent(context, uri, 4, i);
    }

    public static Intent composeQuickContactIntent(Context context, Uri uri, int i, int i2) {
        Intent intent = new Intent(context, (Class<?>) QuickContactActivity.class);
        intent.setAction("android.provider.action.QUICK_CONTACT");
        intent.setData(uri);
        intent.putExtra("android.provider.extra.MODE", i);
        intent.addFlags(67108864);
        intent.putExtra("previous_screen_type", i2);
        return intent;
    }

    public static Intent getIntentForAddingAccount() {
        Intent intent = new Intent("android.settings.SYNC_SETTINGS");
        intent.setFlags(524288);
        intent.putExtra("authorities", new String[]{"com.android.contacts"});
        return intent;
    }

    public static Intent getIntentForAddingGoogleAccount() {
        Intent intent = new Intent("android.settings.ADD_ACCOUNT_SETTINGS");
        intent.setFlags(524288);
        intent.putExtra("account_types", new String[]{GoogleAccountType.ACCOUNT_TYPE});
        return intent;
    }

    public static Intent getIntentForQuickContactLauncherShortcut(Context context, Uri uri) {
        Intent composeQuickContactIntent = composeQuickContactIntent(context, uri, 3, 0);
        composeQuickContactIntent.setPackage(context.getPackageName());
        composeQuickContactIntent.addFlags(268533760);
        composeQuickContactIntent.putExtra("com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION", true);
        composeQuickContactIntent.putExtra("android.provider.extra.EXCLUDE_MIMES", (String[]) null);
        return composeQuickContactIntent;
    }

    private static Intent getIntentInAppIfExists(Context context, Intent intent) {
        try {
            Intent intent2 = new Intent(intent);
            intent2.setPackage(context.getPackageName());
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent2, 65536);
            if (queryIntentActivities != null && queryIntentActivities.size() != 0) {
                if (queryIntentActivities.get(0).activityInfo != null && !TextUtils.isEmpty(queryIntentActivities.get(0).activityInfo.name)) {
                    intent2.setClassName(context.getPackageName(), queryIntentActivities.get(0).activityInfo.name);
                }
                return intent2;
            }
        } catch (Exception unused) {
        }
        return null;
    }
}
