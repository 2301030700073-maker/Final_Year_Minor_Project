package com.android.contacts.activities;

import android.app.Activity;
import com.android.contacts.util.PermissionsUtil;

/* loaded from: classes.dex */
public class RequestImportVCardPermissionsActivity extends RequestPermissionsActivity {
    private static final String[] REQUIRED_PERMISSIONS = {"android.permission.GET_ACCOUNTS", PermissionsUtil.CONTACTS, "android.permission.WRITE_CONTACTS", "android.permission.READ_EXTERNAL_STORAGE"};

    @Override // com.android.contacts.activities.RequestPermissionsActivity, com.android.contacts.activities.RequestPermissionsActivityBase
    protected String[] getPermissions() {
        return REQUIRED_PERMISSIONS;
    }

    public static boolean startPermissionActivity(Activity activity, boolean z) {
        return RequestPermissionsActivityBase.startPermissionActivity(activity, REQUIRED_PERMISSIONS, z, RequestImportVCardPermissionsActivity.class);
    }
}
