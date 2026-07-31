package org.openintents.openpgp.util;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.compose.ui.unit.IntRectKt;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.preference.Preference;
import com.fsck.k9.ui.settings.account.AccountSettingsFragment;
import net.thunderbird.core.logging.legacy.Log;
import org.openintents.openpgp.OpenPgpApiManager;
import org.openintents.openpgp.OpenPgpError;
import org.openintents.openpgp.util.OpenPgpApi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class OpenPgpKeyPreference extends Preference implements OpenPgpApiManager.OpenPgpApiManagerCallback {
    public Intent cachedActivityResultData;
    public String defaultUserId;
    public AccountSettingsFragment intentSenderFragment;
    public long keyCreationTime;
    public long keyId;
    public String keyPrimaryUserId;
    public OpenPgpApiManager openPgpApiManager;
    public final AnonymousClass1 openPgpCallback;
    public boolean pendingIntentRunImmediately;
    public PendingIntent pendingIntentSelectKey;
    public boolean showAutocryptHint;

    /* JADX WARN: Type inference failed for: r1v1, types: [org.openintents.openpgp.util.OpenPgpKeyPreference$1] */
    public OpenPgpKeyPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.openPgpCallback = new OpenPgpApi.IOpenPgpCallback() { // from class: org.openintents.openpgp.util.OpenPgpKeyPreference.1
            @Override // org.openintents.openpgp.util.OpenPgpApi.IOpenPgpCallback
            public final void onReturn(Intent intent) {
                int intExtra = intent.getIntExtra("result_code", 0);
                if (intExtra == 0) {
                    Log.e("RESULT_CODE_ERROR: %s", ((OpenPgpError) Utf8.SafeProcessor.getParcelableExtra(intent, "error", OpenPgpError.class)).message);
                    return;
                }
                if (intExtra == 1 || intExtra == 2) {
                    PendingIntent pendingIntent = (PendingIntent) Utf8.SafeProcessor.getParcelableExtra(intent, "intent", PendingIntent.class);
                    boolean hasExtra = intent.hasExtra("sign_key_id");
                    OpenPgpKeyPreference openPgpKeyPreference = OpenPgpKeyPreference.this;
                    if (!hasExtra) {
                        openPgpKeyPreference.keyPrimaryUserId = null;
                        openPgpKeyPreference.keyCreationTime = 0L;
                        openPgpKeyPreference.pendingIntentSelectKey = pendingIntent;
                        if (openPgpKeyPreference.pendingIntentRunImmediately) {
                            openPgpKeyPreference.pendingIntentRunImmediately = false;
                            openPgpKeyPreference.apiStartPendingIntent();
                        }
                        openPgpKeyPreference.refreshTitleAndSummary();
                        return;
                    }
                    long longExtra = intent.getLongExtra("sign_key_id", 0L);
                    long longExtra2 = intent.getLongExtra("key_creation_time", 0L);
                    String stringExtra = intent.getStringExtra("primary_user_id");
                    openPgpKeyPreference.setAndPersist(longExtra);
                    openPgpKeyPreference.keyPrimaryUserId = stringExtra;
                    openPgpKeyPreference.keyCreationTime = longExtra2;
                    openPgpKeyPreference.pendingIntentSelectKey = pendingIntent;
                    openPgpKeyPreference.callChangeListener(Long.valueOf(longExtra));
                    if (openPgpKeyPreference.pendingIntentRunImmediately) {
                        openPgpKeyPreference.pendingIntentRunImmediately = false;
                        openPgpKeyPreference.apiStartPendingIntent();
                    }
                    openPgpKeyPreference.refreshTitleAndSummary();
                }
            }
        };
    }

    public final void apiRetrievePendingIntentAndKeyInfo() {
        Intent intent = this.cachedActivityResultData;
        if (intent != null) {
            this.cachedActivityResultData = null;
        } else {
            intent = new Intent();
        }
        intent.setAction("org.openintents.openpgp.action.GET_SIGN_KEY_ID");
        intent.putExtra("user_id", this.defaultUserId);
        intent.putExtra("preselect_key_id", this.keyId);
        intent.putExtra("show_autocrypt_hint", this.showAutocryptHint);
        this.openPgpApiManager.getOpenPgpApi().executeApiAsync(intent, this.openPgpCallback);
    }

    public final void apiStartPendingIntent() {
        PendingIntent pendingIntent = this.pendingIntentSelectKey;
        if (pendingIntent == null) {
            Log.e("Tried to launch pending intent but didn't have any?", new Object[0]);
            return;
        }
        try {
            OpenPgpIntentStarter.startIntentSenderForResult(this.intentSenderFragment, pendingIntent.getIntentSender(), 9999);
        } catch (IntentSender.SendIntentException e) {
            Log.e(e, "Error launching pending intent", new Object[0]);
        } finally {
            this.pendingIntentSelectKey = null;
        }
    }

    @Override // androidx.preference.Preference
    public final void onClick() {
        int ordinal = this.openPgpApiManager.openPgpProviderState.ordinal();
        if (ordinal != 2 && ordinal != 4) {
            refreshTitleAndSummary();
            this.openPgpApiManager.refreshConnection();
        } else if (this.pendingIntentSelectKey != null) {
            apiStartPendingIntent();
        } else {
            this.pendingIntentRunImmediately = true;
            apiRetrievePendingIntentAndKeyInfo();
        }
    }

    @Override // androidx.preference.Preference
    public final Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Long.valueOf(typedArray.getInteger(i, 0));
    }

    @Override // org.openintents.openpgp.OpenPgpApiManager.OpenPgpApiManagerCallback
    public final void onOpenPgpProviderError(OpenPgpApiManager.OpenPgpProviderError openPgpProviderError) {
        if (openPgpProviderError == OpenPgpApiManager.OpenPgpProviderError.ConnectionLost) {
            this.openPgpApiManager.refreshConnection();
        }
    }

    @Override // org.openintents.openpgp.OpenPgpApiManager.OpenPgpApiManagerCallback
    public final void onOpenPgpProviderStatusChanged() {
        if (this.openPgpApiManager.openPgpProviderState == OpenPgpApiManager.OpenPgpProviderState.OK) {
            apiRetrievePendingIntentAndKeyInfo();
            return;
        }
        this.pendingIntentSelectKey = null;
        this.pendingIntentRunImmediately = false;
        this.cachedActivityResultData = null;
        refreshTitleAndSummary();
    }

    @Override // androidx.preference.Preference
    public final void onSetInitialValue(Object obj, boolean z) {
        if (!z) {
            setAndPersist(((Long) obj).longValue());
            return;
        }
        long j = this.keyId;
        if (shouldPersist()) {
            IntRectKt preferenceDataStore = getPreferenceDataStore();
            String str = this.mKey;
            j = preferenceDataStore != null ? preferenceDataStore.getLong(j, str) : this.mPreferenceManager.getSharedPreferences().getLong(str, j);
        }
        this.keyId = j;
        notifyDependencyChange(shouldDisableDependents());
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void refreshTitleAndSummary() {
        /*
            r9 = this;
            org.openintents.openpgp.OpenPgpApiManager r0 = r9.openPgpApiManager
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Le
            org.openintents.openpgp.OpenPgpApiManager$OpenPgpProviderState r0 = r0.openPgpProviderState
            org.openintents.openpgp.OpenPgpApiManager$OpenPgpProviderState r3 = org.openintents.openpgp.OpenPgpApiManager.OpenPgpProviderState.UNCONFIGURED
            if (r0 == r3) goto Le
            r0 = r2
            goto Lf
        Le:
            r0 = r1
        Lf:
            r9.setEnabled(r0)
            long r3 = r9.keyId
            r5 = 0
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            android.content.Context r3 = r9.mContext
            r4 = 2131887409(0x7f120531, float:1.9409424E38)
            if (r0 != 0) goto L31
            java.lang.String r0 = r3.getString(r4)
            r9.setTitle(r0)
            r0 = 2131887413(0x7f120535, float:1.9409432E38)
            java.lang.String r0 = r3.getString(r0)
            r9.setSummary(r0)
            return
        L31:
            java.lang.String r0 = r9.keyPrimaryUserId
            if (r0 == 0) goto Lad
            long r7 = r9.keyCreationTime
            int r5 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r5 == 0) goto Lad
            java.util.regex.Pattern r4 = org.openintents.openpgp.util.OpenPgpUtils.USER_ID_PATTERN
            boolean r4 = android.text.TextUtils.isEmpty(r0)
            if (r4 != 0) goto L62
            java.util.regex.Pattern r4 = org.openintents.openpgp.util.OpenPgpUtils.USER_ID_PATTERN
            java.util.regex.Matcher r0 = r4.matcher(r0)
            boolean r4 = r0.matches()
            if (r4 == 0) goto L62
            org.openintents.openpgp.util.OpenPgpUtils$UserId r4 = new org.openintents.openpgp.util.OpenPgpUtils$UserId
            java.lang.String r5 = r0.group(r2)
            r6 = 3
            java.lang.String r6 = r0.group(r6)
            r7 = 2
            r0.group(r7)
            r4.<init>(r5, r6)
            goto L68
        L62:
            org.openintents.openpgp.util.OpenPgpUtils$UserId r4 = new org.openintents.openpgp.util.OpenPgpUtils$UserId
            r0 = 0
            r4.<init>(r0, r0)
        L68:
            r0 = 2131887410(0x7f120532, float:1.9409426E38)
            java.lang.String r5 = r4.email
            if (r5 == 0) goto L7b
            java.lang.Object[] r4 = new java.lang.Object[r2]
            r4[r1] = r5
            java.lang.String r0 = r3.getString(r0, r4)
            r9.setTitle(r0)
            goto L95
        L7b:
            java.lang.String r4 = r4.name
            if (r4 == 0) goto L8b
            java.lang.Object[] r5 = new java.lang.Object[r2]
            r5[r1] = r4
            java.lang.String r0 = r3.getString(r0, r5)
            r9.setTitle(r0)
            goto L95
        L8b:
            r0 = 2131887411(0x7f120533, float:1.9409428E38)
            java.lang.String r0 = r3.getString(r0)
            r9.setTitle(r0)
        L95:
            long r4 = r9.keyCreationTime
            r0 = 65557(0x10015, float:9.1865E-41)
            java.lang.String r0 = android.text.format.DateUtils.formatDateTime(r3, r4, r0)
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r2[r1] = r0
            r0 = 2131887407(0x7f12052f, float:1.940942E38)
            java.lang.String r0 = r3.getString(r0, r2)
            r9.setSummary(r0)
            return
        Lad:
            java.lang.String r0 = r3.getString(r4)
            r9.setTitle(r0)
            r0 = 2131887408(0x7f120530, float:1.9409422E38)
            java.lang.String r0 = r3.getString(r0)
            r9.setSummary(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.openintents.openpgp.util.OpenPgpKeyPreference.refreshTitleAndSummary():void");
    }

    public final void setAndPersist(long j) {
        this.keyId = j;
        notifyDependencyChange(shouldDisableDependents());
        long j2 = this.keyId;
        if (shouldPersist()) {
            long j3 = ~j2;
            boolean shouldPersist = shouldPersist();
            String str = this.mKey;
            if (shouldPersist) {
                IntRectKt preferenceDataStore = getPreferenceDataStore();
                j3 = preferenceDataStore != null ? preferenceDataStore.getLong(j3, str) : this.mPreferenceManager.getSharedPreferences().getLong(str, j3);
            }
            if (j2 == j3) {
                return;
            }
            IntRectKt preferenceDataStore2 = getPreferenceDataStore();
            if (preferenceDataStore2 != null) {
                preferenceDataStore2.putLong(j2, str);
                return;
            }
            SharedPreferences.Editor editor = this.mPreferenceManager.getEditor();
            editor.putLong(str, j2);
            tryCommit(editor);
        }
    }

    @Override // androidx.preference.Preference
    public final boolean shouldDisableDependents() {
        return this.keyId == 0 || super.shouldDisableDependents();
    }
}
