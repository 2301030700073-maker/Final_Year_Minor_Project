package com.fsck.k9.ui.settings.account;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import androidx.core.content.res.CamUtils;
import androidx.fragment.app.DialogFragment;
import androidx.preference.Preference;
import com.fsck.k9.R;
import com.takisoft.preferencex.PreferenceFragmentCompat;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationsPreference extends Preference {
    public Function0 notificationChannelIdProvider;

    static {
        PreferenceFragmentCompat.registerPreferenceFragment(NotificationsPreference.class, DialogFragment.class);
    }

    public /* synthetic */ NotificationsPreference(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? CamUtils.getAttr(context, R.attr.preferenceStyle, android.R.attr.preferenceStyle) : i, (i3 & 8) != 0 ? 0 : i2);
    }

    @Override // androidx.preference.Preference
    public final void onClick() {
        Intent intent;
        Function0 function0 = this.notificationChannelIdProvider;
        if (function0 == null) {
            intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
        } else {
            String str = (String) function0.invoke();
            Intent intent2 = new Intent("android.settings.CHANNEL_NOTIFICATION_SETTINGS");
            intent2.putExtra("android.provider.extra.CHANNEL_ID", str);
            intent = intent2;
        }
        Context context = this.mContext;
        intent.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
        context.startActivity(intent);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NotificationsPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NotificationsPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
        context.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationsPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NotificationsPreference(Context context) {
        this(context, null, 0, 0, 14, null);
        context.getClass();
    }
}
