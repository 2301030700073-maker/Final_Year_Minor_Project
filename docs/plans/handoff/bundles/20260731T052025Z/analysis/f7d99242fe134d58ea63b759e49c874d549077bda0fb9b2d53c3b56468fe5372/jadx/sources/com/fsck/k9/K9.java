package com.fsck.k9;

import android.content.SharedPreferences;
import androidx.camera.camera2.pipe.core.WakeLock$release$2;
import app.k9mail.feature.telemetry.noop.NoOpTelemetryManager;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.preferences.K9StorageEditor;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.JobKt;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.account.AccountDefaultsProvider;
import net.thunderbird.core.android.account.SortType;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.preference.storage.InMemoryStorage;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import timber.log.Timber;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9 implements KoinComponent {
    public static final K9 INSTANCE;
    public static SharedPreferences databaseVersionCache;
    public static boolean databasesUpToDate;
    public static final Lazy featureFlagProvider$delegate;
    public static final FontSizes fontSizes;
    public static long fundingActivityCounterInMillis;
    public static long fundingReminderReferenceTimestamp;
    public static long fundingReminderShownTimestamp;
    public static final Lazy generalSettingsManager$delegate;
    public static boolean isTelemetryEnabled;
    public static int pgpInlineDialogCounter;
    public static int pgpSignOnlyDialogCounter;
    public static final LinkedHashMap sortAscending;
    public static SortType sortType;
    public static final Lazy telemetryManager$delegate;

    static {
        K9 k9 = new K9();
        INSTANCE = k9;
        K9$special$$inlined$inject$default$1 k9$special$$inlined$inject$default$1 = new K9$special$$inlined$inject$default$1(k9, 0);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        generalSettingsManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, k9$special$$inlined$inject$default$1);
        telemetryManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new K9$special$$inlined$inject$default$1(k9, 13));
        featureFlagProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new K9$special$$inlined$inject$default$1(k9, 14));
        fontSizes = new FontSizes();
        AccountDefaultsProvider.Companion.getClass();
        sortType = AccountDefaultsProvider.Companion.DEFAULT_SORT_TYPE;
        sortAscending = new LinkedHashMap();
    }

    public static final synchronized SortType getSortType() {
        SortType sortType2;
        synchronized (K9.class) {
            sortType2 = sortType;
        }
        return sortType2;
    }

    public static final synchronized boolean isSortAscending(SortType sortType2) {
        boolean booleanValue;
        synchronized (K9.class) {
            try {
                sortType2.getClass();
                LinkedHashMap linkedHashMap = sortAscending;
                if (linkedHashMap.get(sortType2) == null) {
                    linkedHashMap.put(sortType2, Boolean.valueOf(sortType2.isDefaultAscending));
                }
                Object obj = linkedHashMap.get(sortType2);
                obj.getClass();
                booleanValue = ((Boolean) obj).booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    public static final void loadPrefs(InMemoryStorage inMemoryStorage) {
        AccountDefaultsProvider.Companion.getClass();
        SortType sortType2 = AccountDefaultsProvider.Companion.DEFAULT_SORT_TYPE;
        int i = 0;
        try {
            String stringOrNull = inMemoryStorage.getStringOrNull("sortTypeEnum");
            if (stringOrNull != null) {
                try {
                    SortType valueOf = SortType.valueOf(stringOrNull);
                    if (valueOf != null) {
                        sortType2 = valueOf;
                    }
                } catch (IllegalArgumentException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unable to convert stored key [sortTypeEnum] value [" + stringOrNull + "] ");
                    sb.append("to enum of type " + Reflection.getOrCreateKotlinClass(SortType.class).getQualifiedName() + ".");
                    sb.append('\n');
                    sb.append("Valid values: ".concat(ArraysKt___ArraysKt.joinToString$default(SortType.values(), null, null, null, null, 63)));
                    throw new IllegalArgumentException(sb.toString(), e);
                }
            }
        } catch (Exception e2) {
            Timber.Forest.e(e2, "Couldn't read setting '%s'. Using default value instead.", "sortTypeEnum");
        }
        sortType = sortType2;
        sortAscending.put(sortType, Boolean.valueOf(inMemoryStorage.getBoolean("sortAscending", false)));
        ((InMemoryFeatureFlagProvider) featureFlagProvider$delegate.getValue()).m1030providedj3aFNw("disable_font_size_config").onDisabledOrUnavailable(new K9$$ExternalSyntheticLambda0(i, inMemoryStorage));
        pgpInlineDialogCounter = inMemoryStorage.getInt("pgpInlineDialogCounter", 0);
        pgpSignOnlyDialogCounter = inMemoryStorage.getInt("pgpSignOnlyDialogCounter", 0);
        ((NoOpTelemetryManager) telemetryManager$delegate.getValue()).getClass();
        fundingReminderReferenceTimestamp = inMemoryStorage.getLong("fundingReminderReferenceTimestamp");
        fundingReminderShownTimestamp = inMemoryStorage.getLong("fundingReminderShownTimestamp");
        fundingActivityCounterInMillis = inMemoryStorage.getLong("fundingActivityCounterInMillis");
    }

    public static void save$core(K9StorageEditor k9StorageEditor) {
        k9StorageEditor.putString("sortTypeEnum", sortType.name());
        Boolean bool = (Boolean) sortAscending.get(sortType);
        k9StorageEditor.putBoolean("sortAscending", bool != null ? bool.booleanValue() : false);
        k9StorageEditor.putInt("pgpInlineDialogCounter", pgpInlineDialogCounter);
        k9StorageEditor.putInt("pgpSignOnlyDialogCounter", pgpSignOnlyDialogCounter);
        ((NoOpTelemetryManager) telemetryManager$delegate.getValue()).getClass();
        k9StorageEditor.putLong(fundingReminderReferenceTimestamp, "fundingReminderReferenceTimestamp");
        k9StorageEditor.putLong(fundingReminderShownTimestamp, "fundingReminderShownTimestamp");
        k9StorageEditor.putLong(fundingActivityCounterInMillis, "fundingActivityCounterInMillis");
        FontSizes fontSizes2 = fontSizes;
        fontSizes2.getClass();
        k9StorageEditor.putInt("fontSizeMessageListSubject", fontSizes2.messageListSubject);
        k9StorageEditor.putInt("fontSizeMessageListSender", fontSizes2.messageListSender);
        k9StorageEditor.putInt("fontSizeMessageListDate", fontSizes2.messageListDate);
        k9StorageEditor.putInt("fontSizeMessageListPreview", fontSizes2.messageListPreview);
        k9StorageEditor.putInt("fontSizeMessageViewAccountName", fontSizes2.messageViewAccountName);
        k9StorageEditor.putInt("fontSizeMessageViewSender", fontSizes2.messageViewSender);
        k9StorageEditor.putInt("fontSizeMessageViewTo", fontSizes2.messageViewRecipients);
        k9StorageEditor.putInt("fontSizeMessageViewSubject", fontSizes2.messageViewSubject);
        k9StorageEditor.putInt("fontSizeMessageViewDate", fontSizes2.messageViewDate);
        k9StorageEditor.putInt("fontSizeMessageViewContentPercent", fontSizes2.messageViewContentAsPercent);
        k9StorageEditor.putInt("fontSizeMessageComposeInput", fontSizes2.messageComposeInput);
    }

    public static final void saveSettingsAsync() {
        DefaultGeneralSettingsManager defaultGeneralSettingsManager = (DefaultGeneralSettingsManager) generalSettingsManager$delegate.getValue();
        JobKt.launch$default(defaultGeneralSettingsManager.coroutineScope, defaultGeneralSettingsManager.backgroundDispatcher, null, new WakeLock$release$2(defaultGeneralSettingsManager, (Continuation) null, 13), 2);
    }

    public static final synchronized void setDatabasesUpToDate(boolean z) {
        synchronized (K9.class) {
            databasesUpToDate = true;
            if (z) {
                SharedPreferences sharedPreferences = databaseVersionCache;
                sharedPreferences.getClass();
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putInt("last_account_database_version", 91);
                edit.apply();
            }
        }
    }

    public static final synchronized void setSortAscending(SortType sortType2, boolean z) {
        synchronized (K9.class) {
            sortType2.getClass();
            sortAscending.put(sortType2, Boolean.valueOf(z));
        }
    }

    public static final synchronized void setSortType(SortType sortType2) {
        synchronized (K9.class) {
            sortType2.getClass();
            sortType = sortType2;
        }
    }

    public final synchronized boolean areDatabasesUpToDate() {
        return databasesUpToDate;
    }

    @Override // org.koin.core.component.KoinComponent
    public final /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }
}
