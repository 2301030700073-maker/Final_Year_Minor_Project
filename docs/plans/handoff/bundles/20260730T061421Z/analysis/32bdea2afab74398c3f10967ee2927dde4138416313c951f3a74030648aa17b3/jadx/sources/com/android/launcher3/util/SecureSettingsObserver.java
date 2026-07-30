package com.android.launcher3.util;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;

/* loaded from: classes.dex */
public class SecureSettingsObserver extends ContentObserver {
    public final int mDefaultValue;
    public final String mKeySetting;
    public final OnChangeListener mOnChangeListener;
    public final ContentResolver mResolver;

    public interface OnChangeListener {
        void onSettingsChanged(boolean z);
    }

    public SecureSettingsObserver(ContentResolver contentResolver, OnChangeListener onChangeListener, String str, int i) {
        super(new Handler());
        this.mResolver = contentResolver;
        this.mOnChangeListener = onChangeListener;
        this.mKeySetting = str;
        this.mDefaultValue = i;
    }

    public static SecureSettingsObserver newNotificationSettingsObserver(Context context, OnChangeListener onChangeListener) {
        return new SecureSettingsObserver(context.getContentResolver(), onChangeListener, "notification_badging", 1);
    }

    public boolean getValue() {
        return Settings.Secure.getInt(this.mResolver, this.mKeySetting, this.mDefaultValue) == 1;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        this.mOnChangeListener.onSettingsChanged(getValue());
    }

    public void register() {
        this.mResolver.registerContentObserver(Settings.Secure.getUriFor(this.mKeySetting), false, this);
    }
}
