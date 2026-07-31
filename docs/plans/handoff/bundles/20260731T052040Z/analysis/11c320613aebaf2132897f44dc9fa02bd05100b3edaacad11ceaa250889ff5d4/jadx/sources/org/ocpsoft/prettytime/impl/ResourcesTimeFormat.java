package org.ocpsoft.prettytime.impl;

import java.util.Locale;
import java.util.ResourceBundle;
import org.ocpsoft.prettytime.Duration;
import org.ocpsoft.prettytime.TimeFormat;
import org.ocpsoft.prettytime.format.SimpleTimeFormat;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ResourcesTimeFormat extends SimpleTimeFormat {
    public TimeFormat override;
    public final ResourcesTimeUnit unit;

    public ResourcesTimeFormat(ResourcesTimeUnit resourcesTimeUnit) {
        this.unit = resourcesTimeUnit;
    }

    @Override // org.ocpsoft.prettytime.format.SimpleTimeFormat, org.ocpsoft.prettytime.TimeFormat
    public final String decorate(Duration duration, String str) {
        TimeFormat timeFormat = this.override;
        return timeFormat == null ? super.decorate(duration, str) : timeFormat.decorate(duration, str);
    }

    @Override // org.ocpsoft.prettytime.format.SimpleTimeFormat, org.ocpsoft.prettytime.TimeFormat
    public final String decorateUnrounded(Duration duration, String str) {
        TimeFormat timeFormat = this.override;
        return timeFormat == null ? super.decorateUnrounded(duration, str) : timeFormat.decorateUnrounded(duration, str);
    }

    @Override // org.ocpsoft.prettytime.format.SimpleTimeFormat, org.ocpsoft.prettytime.TimeFormat
    public final String format(Duration duration) {
        TimeFormat timeFormat = this.override;
        return timeFormat == null ? super.format(duration) : timeFormat.format(duration);
    }

    @Override // org.ocpsoft.prettytime.format.SimpleTimeFormat, org.ocpsoft.prettytime.TimeFormat
    public final String formatUnrounded(Duration duration) {
        TimeFormat timeFormat = this.override;
        return timeFormat == null ? super.formatUnrounded(duration) : timeFormat.formatUnrounded(duration);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: setLocale, reason: collision with other method in class */
    public final void m860setLocale(Locale locale) {
        ResourceBundle bundle = ResourceBundle.getBundle("org.ocpsoft.prettytime.i18n.Resources", locale);
        boolean z = bundle instanceof TimeFormatProvider;
        ResourcesTimeUnit resourcesTimeUnit = this.unit;
        if (z) {
            TimeFormat formatFor = ((TimeFormatProvider) bundle).getFormatFor(resourcesTimeUnit);
            if (formatFor != null) {
                this.override = formatFor;
            }
        } else {
            this.override = null;
        }
        if (this.override == null) {
            setPattern(bundle.getString(resourcesTimeUnit.getResourceKeyPrefix().concat("Pattern")));
            setFuturePrefix(bundle.getString(resourcesTimeUnit.getResourceKeyPrefix().concat("FuturePrefix")));
            setFutureSuffix(bundle.getString(resourcesTimeUnit.getResourceKeyPrefix().concat("FutureSuffix")));
            setPastPrefix(bundle.getString(resourcesTimeUnit.getResourceKeyPrefix().concat("PastPrefix")));
            setPastSuffix(bundle.getString(resourcesTimeUnit.getResourceKeyPrefix().concat("PastSuffix")));
            setSingularName(bundle.getString(resourcesTimeUnit.getResourceKeyPrefix().concat("SingularName")));
            setPluralName(bundle.getString(resourcesTimeUnit.getResourceKeyPrefix().concat("PluralName")));
            try {
                setFuturePluralName(bundle.getString(resourcesTimeUnit.getResourceKeyPrefix().concat("FuturePluralName")));
            } catch (Exception unused) {
            }
            try {
                setFutureSingularName(bundle.getString(resourcesTimeUnit.getResourceKeyPrefix().concat("FutureSingularName")));
            } catch (Exception unused2) {
            }
            try {
                setPastPluralName(bundle.getString(resourcesTimeUnit.getResourceKeyPrefix().concat("PastPluralName")));
            } catch (Exception unused3) {
            }
            try {
                setPastSingularName(bundle.getString(resourcesTimeUnit.getResourceKeyPrefix().concat("PastSingularName")));
            } catch (Exception unused4) {
            }
        }
    }

    @Override // org.ocpsoft.prettytime.format.SimpleTimeFormat
    /* renamed from: setLocale */
    public final /* bridge */ /* synthetic */ SimpleTimeFormat mo858setLocale(Locale locale) {
        m860setLocale(locale);
        return this;
    }

    @Override // org.ocpsoft.prettytime.format.SimpleTimeFormat
    public final /* bridge */ /* synthetic */ Object setLocale(Locale locale) {
        m860setLocale(locale);
        return this;
    }
}
