package org.openintents.openpgp;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import net.thunderbird.core.logging.legacy.Log;
import org.openintents.openpgp.util.OpenPgpApi;
import org.openintents.openpgp.util.OpenPgpServiceConnection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class OpenPgpApiManager implements DefaultLifecycleObserver {
    public OpenPgpApiManagerCallback callback;
    public final Context context;
    public OpenPgpApi openPgpApi;
    public String openPgpProvider;
    public OpenPgpProviderState openPgpProviderState = OpenPgpProviderState.UNCONFIGURED;
    public OpenPgpServiceConnection openPgpServiceConnection;
    public PendingIntent userInteractionPendingIntent;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OpenPgpApiManagerCallback {
        void onOpenPgpProviderError(OpenPgpProviderError openPgpProviderError);

        void onOpenPgpProviderStatusChanged();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class OpenPgpProviderError {
        public static final /* synthetic */ OpenPgpProviderError[] $VALUES;
        public static final OpenPgpProviderError ConnectionFailed;
        public static final OpenPgpProviderError ConnectionLost;
        public static final OpenPgpProviderError VersionIncompatible;

        static {
            OpenPgpProviderError openPgpProviderError = new OpenPgpProviderError("ConnectionFailed", 0);
            ConnectionFailed = openPgpProviderError;
            OpenPgpProviderError openPgpProviderError2 = new OpenPgpProviderError("ConnectionLost", 1);
            ConnectionLost = openPgpProviderError2;
            OpenPgpProviderError openPgpProviderError3 = new OpenPgpProviderError("VersionIncompatible", 2);
            VersionIncompatible = openPgpProviderError3;
            $VALUES = new OpenPgpProviderError[]{openPgpProviderError, openPgpProviderError2, openPgpProviderError3};
        }

        public static OpenPgpProviderError valueOf(String str) {
            return (OpenPgpProviderError) Enum.valueOf(OpenPgpProviderError.class, str);
        }

        public static OpenPgpProviderError[] values() {
            return (OpenPgpProviderError[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class OpenPgpProviderState {
        public static final /* synthetic */ OpenPgpProviderState[] $VALUES;
        public static final OpenPgpProviderState ERROR;
        public static final OpenPgpProviderState OK;
        public static final OpenPgpProviderState UI_REQUIRED;
        public static final OpenPgpProviderState UNCONFIGURED;
        public static final OpenPgpProviderState UNINITIALIZED;

        static {
            OpenPgpProviderState openPgpProviderState = new OpenPgpProviderState("UNCONFIGURED", 0);
            UNCONFIGURED = openPgpProviderState;
            OpenPgpProviderState openPgpProviderState2 = new OpenPgpProviderState("UNINITIALIZED", 1);
            UNINITIALIZED = openPgpProviderState2;
            OpenPgpProviderState openPgpProviderState3 = new OpenPgpProviderState("UI_REQUIRED", 2);
            UI_REQUIRED = openPgpProviderState3;
            OpenPgpProviderState openPgpProviderState4 = new OpenPgpProviderState("ERROR", 3);
            ERROR = openPgpProviderState4;
            OpenPgpProviderState openPgpProviderState5 = new OpenPgpProviderState("OK", 4);
            OK = openPgpProviderState5;
            $VALUES = new OpenPgpProviderState[]{openPgpProviderState, openPgpProviderState2, openPgpProviderState3, openPgpProviderState4, openPgpProviderState5};
        }

        public static OpenPgpProviderState valueOf(String str) {
            return (OpenPgpProviderState) Enum.valueOf(OpenPgpProviderState.class, str);
        }

        public static OpenPgpProviderState[] values() {
            return (OpenPgpProviderState[]) $VALUES.clone();
        }
    }

    public OpenPgpApiManager(Context context, LifecycleOwner lifecycleOwner) {
        this.context = context;
        lifecycleOwner.getLifecycle().addObserver(this);
    }

    public final void callbackOpenPgpProviderError(OpenPgpProviderError openPgpProviderError) {
        Log.d("callback provider connection error %s", openPgpProviderError);
        OpenPgpApiManagerCallback openPgpApiManagerCallback = this.callback;
        if (openPgpApiManagerCallback != null) {
            openPgpApiManagerCallback.onOpenPgpProviderError(openPgpProviderError);
        }
    }

    public final OpenPgpApi getOpenPgpApi() {
        OpenPgpServiceConnection openPgpServiceConnection = this.openPgpServiceConnection;
        if (openPgpServiceConnection == null || openPgpServiceConnection.mService == null) {
            Log.e("Obtained OpenPgpApi object, but service is not bound! Inconsistent state?", new Object[0]);
        }
        return this.openPgpApi;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
        setupCryptoProvider();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        this.openPgpApi = null;
        OpenPgpServiceConnection openPgpServiceConnection = this.openPgpServiceConnection;
        if (openPgpServiceConnection != null) {
            openPgpServiceConnection.mApplicationContext.unbindService(openPgpServiceConnection.mServiceConnection);
        }
        this.openPgpServiceConnection = null;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
        refreshConnection();
    }

    public final void refreshConnection() {
        OpenPgpServiceConnection openPgpServiceConnection;
        if (this.openPgpProviderState == OpenPgpProviderState.OK && ((openPgpServiceConnection = this.openPgpServiceConnection) == null || openPgpServiceConnection.mService == null)) {
            this.userInteractionPendingIntent = null;
            setOpenPgpProviderState(OpenPgpProviderState.ERROR);
            callbackOpenPgpProviderError(OpenPgpProviderError.ConnectionLost);
            return;
        }
        OpenPgpServiceConnection openPgpServiceConnection2 = this.openPgpServiceConnection;
        if (openPgpServiceConnection2 == null) {
            this.userInteractionPendingIntent = null;
            setupCryptoProvider();
        } else if (openPgpServiceConnection2.mService == null) {
            this.userInteractionPendingIntent = null;
            Log.d("attempting to bind to openpgp provider: %s (%s)", this.openPgpProvider, openPgpServiceConnection2);
            this.openPgpServiceConnection.bindToService();
        } else if (this.userInteractionPendingIntent != null) {
            setOpenPgpProviderState(OpenPgpProviderState.UI_REQUIRED);
        } else {
            getOpenPgpApi().executeApiAsync(new Intent("org.openintents.openpgp.action.CHECK_PERMISSION"), new OpenPgpApi.IOpenPgpCallback() { // from class: org.openintents.openpgp.OpenPgpApiManager.2
                @Override // org.openintents.openpgp.util.OpenPgpApi.IOpenPgpCallback
                public final void onReturn(Intent intent) {
                    OpenPgpApiManager openPgpApiManager = OpenPgpApiManager.this;
                    OpenPgpProviderState openPgpProviderState = openPgpApiManager.openPgpProviderState;
                    OpenPgpProviderState openPgpProviderState2 = OpenPgpProviderState.UNCONFIGURED;
                    if (openPgpProviderState != openPgpProviderState2) {
                        int intExtra = intent.getIntExtra("result_code", 0);
                        if (intExtra == 1) {
                            openPgpApiManager.setOpenPgpProviderState(OpenPgpProviderState.OK);
                            return;
                        }
                        if (intExtra == 2) {
                            openPgpApiManager.userInteractionPendingIntent = (PendingIntent) Utf8.SafeProcessor.getParcelableExtra(intent, "intent", PendingIntent.class);
                            openPgpApiManager.setOpenPgpProviderState(OpenPgpProviderState.UI_REQUIRED);
                            return;
                        }
                        boolean hasExtra = intent.hasExtra("error");
                        OpenPgpProviderState openPgpProviderState3 = OpenPgpProviderState.ERROR;
                        OpenPgpProviderError openPgpProviderError = OpenPgpProviderError.ConnectionFailed;
                        if (!hasExtra) {
                            openPgpApiManager.setOpenPgpProviderState(openPgpProviderState3);
                            openPgpApiManager.callbackOpenPgpProviderError(openPgpProviderError);
                            return;
                        }
                        OpenPgpError openPgpError = (OpenPgpError) Utf8.SafeProcessor.getParcelableExtra(intent, "error", OpenPgpError.class);
                        Log.e("OpenPGP Api error: %s", openPgpError);
                        if (openPgpError == null || openPgpError.errorId != 1) {
                            openPgpApiManager.callbackOpenPgpProviderError(openPgpProviderError);
                            openPgpApiManager.setOpenPgpProviderState(openPgpProviderState3);
                        } else {
                            openPgpApiManager.callbackOpenPgpProviderError(OpenPgpProviderError.VersionIncompatible);
                            openPgpApiManager.setOpenPgpProviderState(openPgpProviderState2);
                        }
                    }
                }
            });
        }
    }

    public final void setOpenPgpProvider(String str, OpenPgpApiManagerCallback openPgpApiManagerCallback) {
        if (str == null || !str.equals(this.openPgpProvider)) {
            this.openPgpApi = null;
            OpenPgpServiceConnection openPgpServiceConnection = this.openPgpServiceConnection;
            if (openPgpServiceConnection != null) {
                openPgpServiceConnection.mApplicationContext.unbindService(openPgpServiceConnection.mServiceConnection);
            }
            this.openPgpServiceConnection = null;
        }
        this.openPgpProvider = str;
        this.callback = openPgpApiManagerCallback;
        setupCryptoProvider();
    }

    public final void setOpenPgpProviderState(OpenPgpProviderState openPgpProviderState) {
        OpenPgpProviderState openPgpProviderState2 = this.openPgpProviderState;
        if (openPgpProviderState2 != openPgpProviderState) {
            Log.d("callback provider status changed from %s to %s", openPgpProviderState2, openPgpProviderState);
            this.openPgpProviderState = openPgpProviderState;
            OpenPgpApiManagerCallback openPgpApiManagerCallback = this.callback;
            if (openPgpApiManagerCallback != null) {
                openPgpApiManagerCallback.onOpenPgpProviderStatusChanged();
            }
        }
    }

    public final void setupCryptoProvider() {
        if (TextUtils.isEmpty(this.openPgpProvider)) {
            setOpenPgpProviderState(OpenPgpProviderState.UNCONFIGURED);
            return;
        }
        OpenPgpServiceConnection openPgpServiceConnection = this.openPgpServiceConnection;
        if (openPgpServiceConnection != null && openPgpServiceConnection.mService != null) {
            refreshConnection();
            return;
        }
        if (openPgpServiceConnection != null) {
            return;
        }
        setOpenPgpProviderState(OpenPgpProviderState.UNINITIALIZED);
        this.openPgpServiceConnection = new OpenPgpServiceConnection(this.context, this.openPgpProvider, new OpenPgpServiceConnection.OnBound() { // from class: org.openintents.openpgp.OpenPgpApiManager.1
            @Override // org.openintents.openpgp.util.OpenPgpServiceConnection.OnBound
            public final void onBound(IOpenPgpService2 iOpenPgpService2) {
                OpenPgpApiManager openPgpApiManager = OpenPgpApiManager.this;
                openPgpApiManager.openPgpApi = new OpenPgpApi(openPgpApiManager.context, iOpenPgpService2);
                openPgpApiManager.refreshConnection();
            }

            @Override // org.openintents.openpgp.util.OpenPgpServiceConnection.OnBound
            public final void onError(Exception exc) {
                Log.e(exc, "error connecting to crypto provider!", new Object[0]);
                OpenPgpProviderState openPgpProviderState = OpenPgpProviderState.ERROR;
                OpenPgpApiManager openPgpApiManager = OpenPgpApiManager.this;
                openPgpApiManager.setOpenPgpProviderState(openPgpProviderState);
                openPgpApiManager.callbackOpenPgpProviderError(OpenPgpProviderError.ConnectionFailed);
            }
        });
        refreshConnection();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onPause(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onResume(LifecycleOwner lifecycleOwner) {
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
    }
}
