package org.schabi.newpipe.settings;

import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.os.LocaleListCompat;
import androidx.preference.Preference;
import coil3.RealImageLoader;
import coil3.SingletonImageLoader;
import coil3.disk.DiskLruCache;
import coil3.disk.RealDiskCache;
import java.util.Locale;
import org.schabi.newpipe.R;
import org.schabi.newpipe.util.image.ImageStrategy;
import org.schabi.newpipe.util.image.PreferredImageQuality;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ContentSettingsFragment$$ExternalSyntheticLambda0 implements Preference.OnPreferenceChangeListener, Preference.SummaryProvider, Preference.OnPreferenceClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ContentSettingsFragment f$0;

    public /* synthetic */ ContentSettingsFragment$$ExternalSyntheticLambda0(ContentSettingsFragment contentSettingsFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = contentSettingsFragment;
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        int i = this.$r8$classId;
        ContentSettingsFragment contentSettingsFragment = this.f$0;
        switch (i) {
            case 0:
                int i2 = ContentSettingsFragment.$r8$clinit;
                PreferredImageQuality.Companion.getClass();
                ImageStrategy.preferredImageQuality = PreferredImageQuality.Companion.fromPreferenceKey(contentSettingsFragment.requireContext(), (String) obj);
                RealImageLoader realImageLoader = (RealImageLoader) SingletonImageLoader.get(preference.mContext);
                realImageLoader.getMemoryCache().clear();
                DiskLruCache diskLruCache = ((RealDiskCache) realImageLoader.options.diskCacheLazy.getValue()).cache;
                synchronized (diskLruCache.lock) {
                    try {
                        diskLruCache.initialize();
                        for (DiskLruCache.Entry entry : (DiskLruCache.Entry[]) diskLruCache.lruEntries.values().toArray(new DiskLruCache.Entry[0])) {
                            diskLruCache.removeEntry(entry);
                        }
                        diskLruCache.mostRecentTrimFailed = false;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                Toast.makeText(preference.mContext, R.string.thumbnail_cache_wipe_complete_notice, 0).show();
                return true;
            default:
                int i3 = ContentSettingsFragment.$r8$clinit;
                String str = (String) obj;
                if (contentSettingsFragment.getString(R.string.default_localization_key).equals(str)) {
                    str = null;
                }
                AppCompatDelegate.setApplicationLocales(LocaleListCompat.forLanguageTags(str));
                return true;
        }
    }

    @Override // androidx.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        int i = ContentSettingsFragment.$r8$clinit;
        Intent intent = new Intent("android.settings.APP_LOCALE_SETTINGS");
        ContentSettingsFragment contentSettingsFragment = this.f$0;
        contentSettingsFragment.startActivity(intent.setData(Uri.fromParts("package", contentSettingsFragment.requireContext().getPackageName(), null)));
        return true;
    }

    @Override // androidx.preference.Preference.SummaryProvider
    public CharSequence provideSummary(Preference preference) {
        int i = ContentSettingsFragment.$r8$clinit;
        Locale locale = AppCompatDelegate.getApplicationLocales().mImpl.get(0);
        return locale != null ? locale.getDisplayName() : this.f$0.getString(R.string.systems_language);
    }
}
