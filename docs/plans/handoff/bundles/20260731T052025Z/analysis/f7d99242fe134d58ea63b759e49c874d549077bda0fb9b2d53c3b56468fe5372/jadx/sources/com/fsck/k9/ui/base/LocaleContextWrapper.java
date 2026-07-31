package com.fsck.k9.ui.base;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import androidx.camera.camera2.compat.Api24Compat;
import java.util.Locale;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocaleContextWrapper extends ContextWrapper {
    public final Locale locale;

    public LocaleContextWrapper(Context context, Locale locale) {
        super(context);
        this.locale = locale;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context createConfigurationContext(Configuration configuration) {
        configuration.getClass();
        Api24Compat.setCurrentLocale(configuration, this.locale);
        Context createConfigurationContext = super.createConfigurationContext(configuration);
        createConfigurationContext.getClass();
        return createConfigurationContext;
    }
}
