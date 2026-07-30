package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;

/* loaded from: classes.dex */
public abstract class PlatformServiceClient implements ServiceConnection {
    private final String applicationId;
    private final Context context;
    private final Handler handler;
    private CompletedListener listener;
    private final String nonce;
    private final int protocolVersion;
    private final int replyMessage;
    private final int requestMessage;
    private boolean running;
    private Messenger sender;

    public interface CompletedListener {
        void completed(Bundle bundle);
    }

    public PlatformServiceClient(Context context, int i, int i2, int i3, String str, String str2) {
        C0173Do.m401try(context, "context");
        C0173Do.m401try(str, "applicationId");
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext != null ? applicationContext : context;
        this.requestMessage = i;
        this.replyMessage = i2;
        this.applicationId = str;
        this.protocolVersion = i3;
        this.nonce = str2;
        this.handler = new Handler() { // from class: com.facebook.internal.PlatformServiceClient.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    if (CrashShieldHandler.isObjectCrashing(this)) {
                        return;
                    }
                    try {
                        C0173Do.m401try(message, "message");
                        PlatformServiceClient.this.handleMessage(message);
                    } catch (Throwable th) {
                        CrashShieldHandler.handleThrowable(th, this);
                    }
                } catch (Throwable th2) {
                    CrashShieldHandler.handleThrowable(th2, this);
                }
            }
        };
    }

    private final void callback(Bundle bundle) {
        if (this.running) {
            this.running = false;
            CompletedListener completedListener = this.listener;
            if (completedListener == null) {
                return;
            }
            completedListener.completed(bundle);
        }
    }

    private final void sendMessage() {
        Bundle bundle = new Bundle();
        bundle.putString(NativeProtocol.EXTRA_APPLICATION_ID, this.applicationId);
        String str = this.nonce;
        if (str != null) {
            bundle.putString(NativeProtocol.EXTRA_NONCE, str);
        }
        populateRequestBundle(bundle);
        Message obtain = Message.obtain((Handler) null, this.requestMessage);
        obtain.arg1 = this.protocolVersion;
        obtain.setData(bundle);
        obtain.replyTo = new Messenger(this.handler);
        try {
            Messenger messenger = this.sender;
            if (messenger == null) {
                return;
            }
            messenger.send(obtain);
        } catch (RemoteException unused) {
            callback(null);
        }
    }

    public final void cancel() {
        this.running = false;
    }

    public final Context getContext() {
        return this.context;
    }

    public final String getNonce() {
        return this.nonce;
    }

    public final void handleMessage(Message message) {
        C0173Do.m401try(message, "message");
        if (message.what == this.replyMessage) {
            Bundle data = message.getData();
            if (data.getString(NativeProtocol.STATUS_ERROR_TYPE) != null) {
                callback(null);
            } else {
                callback(data);
            }
            try {
                this.context.unbindService(this);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C0173Do.m401try(componentName, FacebookRequestErrorClassification.KEY_NAME);
        C0173Do.m401try(iBinder, "service");
        this.sender = new Messenger(iBinder);
        sendMessage();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        C0173Do.m401try(componentName, FacebookRequestErrorClassification.KEY_NAME);
        this.sender = null;
        try {
            this.context.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        callback(null);
    }

    public abstract void populateRequestBundle(Bundle bundle);

    public final void setCompletedListener(CompletedListener completedListener) {
        this.listener = completedListener;
    }

    public final boolean start() {
        synchronized (this) {
            boolean z = false;
            if (this.running) {
                return false;
            }
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            if (NativeProtocol.getLatestAvailableProtocolVersionForService(this.protocolVersion) == -1) {
                return false;
            }
            Intent createPlatformServiceIntent = NativeProtocol.createPlatformServiceIntent(getContext());
            if (createPlatformServiceIntent != null) {
                z = true;
                this.running = true;
                getContext().bindService(createPlatformServiceIntent, this, 1);
            }
            return z;
        }
    }
}
