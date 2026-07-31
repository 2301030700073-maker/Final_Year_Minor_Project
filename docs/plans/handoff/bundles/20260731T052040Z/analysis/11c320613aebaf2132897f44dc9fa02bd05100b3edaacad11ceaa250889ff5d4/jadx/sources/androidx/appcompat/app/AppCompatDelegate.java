package androidx.appcompat.app;

import android.app.LocaleManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppLocalesMetadataHolderService;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import androidx.core.app.NavUtils;
import androidx.core.os.LocaleListCompat;
import androidx.room.TransactionExecutor;
import androidx.work.impl.utils.SynchronousExecutor;
import j$.util.Objects;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AppCompatDelegate {
    public static final TransactionExecutor sSerialExecutorForLocalesStorage = new TransactionExecutor(new SynchronousExecutor(1));
    public static int sDefaultNightMode = -100;
    public static LocaleListCompat sRequestedAppLocales = null;
    public static LocaleListCompat sStoredAppLocales = null;
    public static Boolean sIsAutoStoreLocalesOptedIn = null;
    public static boolean sIsFrameworkSyncChecked = false;
    public static final ArraySet sActivityDelegates = new ArraySet(0);
    public static final Object sActivityDelegatesLock = new Object();
    public static final Object sAppLocalesStorageSyncLock = new Object();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Api24Impl {
        public static LocaleList localeListForLanguageTags(String str) {
            return LocaleList.forLanguageTags(str);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Api33Impl {
        public static LocaleList localeManagerGetApplicationLocales(Object obj) {
            return ((LocaleManager) obj).getApplicationLocales();
        }

        public static void localeManagerSetApplicationLocales(Object obj, LocaleList localeList) {
            ((LocaleManager) obj).setApplicationLocales(localeList);
        }
    }

    public static void applyLocalesToActiveDelegates() {
        LocaleListCompat localeListCompat;
        ArraySet arraySet = sActivityDelegates;
        arraySet.getClass();
        ArrayMap.KeyIterator keyIterator = new ArrayMap.KeyIterator(arraySet);
        while (keyIterator.hasNext()) {
            AppCompatDelegate appCompatDelegate = (AppCompatDelegate) ((WeakReference) keyIterator.next()).get();
            if (appCompatDelegate != null) {
                AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) appCompatDelegate;
                Context context = appCompatDelegateImpl.mContext;
                int i = 1;
                if (isAutoStorageOptedIn(context) && (localeListCompat = sRequestedAppLocales) != null && !localeListCompat.equals(sStoredAppLocales)) {
                    sSerialExecutorForLocalesStorage.execute(new AppCompatDelegate$$ExternalSyntheticLambda0(context, i));
                }
                appCompatDelegateImpl.applyApplicationSpecificConfig(true, true);
            }
        }
    }

    public static LocaleListCompat getApplicationLocales() {
        if (Build.VERSION.SDK_INT >= 33) {
            Object localeManagerForApplication = getLocaleManagerForApplication();
            if (localeManagerForApplication != null) {
                return LocaleListCompat.wrap(Api33Impl.localeManagerGetApplicationLocales(localeManagerForApplication));
            }
        } else {
            LocaleListCompat localeListCompat = sRequestedAppLocales;
            if (localeListCompat != null) {
                return localeListCompat;
            }
        }
        return LocaleListCompat.sEmptyLocaleList;
    }

    public static Object getLocaleManagerForApplication() {
        Context context;
        ArraySet arraySet = sActivityDelegates;
        arraySet.getClass();
        ArrayMap.KeyIterator keyIterator = new ArrayMap.KeyIterator(arraySet);
        while (keyIterator.hasNext()) {
            AppCompatDelegate appCompatDelegate = (AppCompatDelegate) ((WeakReference) keyIterator.next()).get();
            if (appCompatDelegate != null && (context = ((AppCompatDelegateImpl) appCompatDelegate).mContext) != null) {
                return context.getSystemService("locale");
            }
        }
        return null;
    }

    public static boolean isAutoStorageOptedIn(Context context) {
        if (sIsAutoStoreLocalesOptedIn == null) {
            try {
                int i = AppLocalesMetadataHolderService.$r8$clinit;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) AppLocalesMetadataHolderService.class), Build.VERSION.SDK_INT >= 24 ? AppLocalesMetadataHolderService.Api24Impl.getDisabledComponentFlag() | 128 : 640).metaData;
                if (bundle != null) {
                    sIsAutoStoreLocalesOptedIn = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                sIsAutoStoreLocalesOptedIn = Boolean.FALSE;
            }
        }
        return sIsAutoStoreLocalesOptedIn.booleanValue();
    }

    public static void removeDelegateFromActives(AppCompatDelegateImpl appCompatDelegateImpl) {
        synchronized (sActivityDelegatesLock) {
            try {
                ArraySet arraySet = sActivityDelegates;
                arraySet.getClass();
                ArrayMap.KeyIterator keyIterator = new ArrayMap.KeyIterator(arraySet);
                while (keyIterator.hasNext()) {
                    AppCompatDelegate appCompatDelegate = (AppCompatDelegate) ((WeakReference) keyIterator.next()).get();
                    if (appCompatDelegate == appCompatDelegateImpl || appCompatDelegate == null) {
                        keyIterator.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setApplicationLocales(LocaleListCompat localeListCompat) {
        Objects.requireNonNull(localeListCompat);
        if (Build.VERSION.SDK_INT >= 33) {
            Object localeManagerForApplication = getLocaleManagerForApplication();
            if (localeManagerForApplication != null) {
                Api33Impl.localeManagerSetApplicationLocales(localeManagerForApplication, Api24Impl.localeListForLanguageTags(localeListCompat.mImpl.toLanguageTags()));
                return;
            }
            return;
        }
        if (localeListCompat.equals(sRequestedAppLocales)) {
            return;
        }
        synchronized (sActivityDelegatesLock) {
            sRequestedAppLocales = localeListCompat;
            applyLocalesToActiveDelegates();
        }
    }

    public static void setDefaultNightMode(int i) {
        if (i != -1 && i != 0 && i != 1 && i != 2 && i != 3) {
            Log.d("AppCompatDelegate", "setDefaultNightMode() called with an unknown mode");
            return;
        }
        if (sDefaultNightMode != i) {
            sDefaultNightMode = i;
            synchronized (sActivityDelegatesLock) {
                try {
                    ArraySet arraySet = sActivityDelegates;
                    arraySet.getClass();
                    ArrayMap.KeyIterator keyIterator = new ArrayMap.KeyIterator(arraySet);
                    while (keyIterator.hasNext()) {
                        AppCompatDelegate appCompatDelegate = (AppCompatDelegate) ((WeakReference) keyIterator.next()).get();
                        if (appCompatDelegate != null) {
                            ((AppCompatDelegateImpl) appCompatDelegate).applyApplicationSpecificConfig(true, true);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void syncRequestedAndStoredLocales(Context context) {
        if (isAutoStorageOptedIn(context)) {
            if (Build.VERSION.SDK_INT >= 33) {
                if (sIsFrameworkSyncChecked) {
                    return;
                }
                sSerialExecutorForLocalesStorage.execute(new AppCompatDelegate$$ExternalSyntheticLambda0(context, 0));
                return;
            }
            synchronized (sAppLocalesStorageSyncLock) {
                try {
                    LocaleListCompat localeListCompat = sRequestedAppLocales;
                    if (localeListCompat == null) {
                        if (sStoredAppLocales == null) {
                            sStoredAppLocales = LocaleListCompat.forLanguageTags(NavUtils.readLocales(context));
                        }
                        if (sStoredAppLocales.mImpl.isEmpty()) {
                        } else {
                            sRequestedAppLocales = sStoredAppLocales;
                        }
                    } else if (!localeListCompat.equals(sStoredAppLocales)) {
                        LocaleListCompat localeListCompat2 = sRequestedAppLocales;
                        sStoredAppLocales = localeListCompat2;
                        NavUtils.persistLocales(context, localeListCompat2.mImpl.toLanguageTags());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public abstract void installViewFactory();

    public abstract void invalidateOptionsMenu();

    public abstract void onCreate();

    public abstract void onDestroy();

    public abstract boolean requestWindowFeature(int i);

    public abstract void setContentView(int i);

    public abstract void setContentView(View view);

    public abstract void setContentView(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void setTitle(CharSequence charSequence);
}
