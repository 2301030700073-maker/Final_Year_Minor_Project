package com.facebook.internal;

import android.content.Intent;
import defpackage.B6;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3756th;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class CallbackManagerImpl implements B6 {
    public static final Companion Companion = new Companion(null);
    private static final Map<Integer, Callback> staticCallbacks = new HashMap();
    private final Map<Integer, Callback> callbacks = new HashMap();

    public interface Callback {
        boolean onActivityResult(int i, Intent intent);
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        private final synchronized Callback getStaticCallback(int i) {
            return (Callback) CallbackManagerImpl.staticCallbacks.get(Integer.valueOf(i));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean runStaticCallback(int i, int i2, Intent intent) {
            Callback staticCallback = getStaticCallback(i);
            if (staticCallback == null) {
                return false;
            }
            return staticCallback.onActivityResult(i2, intent);
        }

        public final synchronized void registerStaticCallback(int i, Callback callback) {
            C0173Do.m401try(callback, "callback");
            if (CallbackManagerImpl.staticCallbacks.containsKey(Integer.valueOf(i))) {
                return;
            }
            CallbackManagerImpl.staticCallbacks.put(Integer.valueOf(i), callback);
        }
    }

    public enum RequestCodeOffset {
        Login(0),
        Share(1),
        Message(2),
        Like(3),
        GameRequest(4),
        AppGroupCreate(5),
        AppGroupJoin(6),
        AppInvite(7),
        DeviceShare(8),
        GamingFriendFinder(9),
        GamingGroupIntegration(10),
        Referral(11),
        GamingContextCreate(12),
        GamingContextSwitch(13),
        GamingContextChoose(14),
        TournamentShareDialog(15),
        TournamentJoinDialog(16);

        private final int offset;

        RequestCodeOffset(int i) {
            this.offset = i;
        }

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static RequestCodeOffset[] valuesCustom() {
            RequestCodeOffset[] valuesCustom = values();
            return (RequestCodeOffset[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        public final int toRequestCode() {
            C3756th c3756th = C3756th.f15751do;
            Validate.sdkInitialized();
            return C3756th.f15740do + this.offset;
        }
    }

    public static final synchronized void registerStaticCallback(int i, Callback callback) {
        synchronized (CallbackManagerImpl.class) {
            Companion.registerStaticCallback(i, callback);
        }
    }

    @Override // defpackage.B6
    public boolean onActivityResult(int i, int i2, Intent intent) {
        Callback callback = this.callbacks.get(Integer.valueOf(i));
        return callback == null ? Companion.runStaticCallback(i, i2, intent) : callback.onActivityResult(i2, intent);
    }

    public final void registerCallback(int i, Callback callback) {
        C0173Do.m401try(callback, "callback");
        this.callbacks.put(Integer.valueOf(i), callback);
    }

    public final void unregisterCallback(int i) {
        this.callbacks.remove(Integer.valueOf(i));
    }
}
