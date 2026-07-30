package androidx.compose.ui.text.intl;

/* compiled from: PlatformLocale.kt */
/* loaded from: classes.dex */
public interface PlatformLocaleDelegate {
    LocaleList getCurrent();

    java.util.Locale parseLanguageTag(String str);
}
