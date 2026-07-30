package com.google.android.gms.wearable;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.Wearable;
import defpackage.FG;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public abstract class MessageClient extends GoogleApi<Wearable.WearableOptions> {
    public static final String ACTION_MESSAGE_RECEIVED = "com.google.android.gms.wearable.MESSAGE_RECEIVED";
    public static final String ACTION_REQUEST_RECEIVED = "com.google.android.gms.wearable.REQUEST_RECEIVED";
    public static final int FILTER_LITERAL = 0;
    public static final int FILTER_PREFIX = 1;

    @Retention(RetentionPolicy.SOURCE)
    public @interface FilterType {
    }

    public interface OnMessageReceivedListener extends MessageApi.MessageListener {
        @Override // com.google.android.gms.wearable.MessageApi.MessageListener
        void onMessageReceived(MessageEvent messageEvent);
    }

    @ShowFirstParty
    public interface RpcService {
        FG<byte[]> onRequest(String str, String str2, byte[] bArr);
    }

    public MessageClient(Activity activity, GoogleApi.Settings settings) {
        super(activity, Wearable.API, Wearable.WearableOptions.zza, settings);
    }

    public abstract FG<Void> addListener(OnMessageReceivedListener onMessageReceivedListener);

    public abstract FG<Void> addListener(OnMessageReceivedListener onMessageReceivedListener, Uri uri, int i);

    public abstract FG<Void> addRpcService(RpcService rpcService, String str);

    public abstract FG<Void> addRpcService(RpcService rpcService, String str, String str2);

    public abstract FG<Boolean> removeListener(OnMessageReceivedListener onMessageReceivedListener);

    public abstract FG<Boolean> removeRpcService(RpcService rpcService);

    public abstract FG<Integer> sendMessage(String str, String str2, byte[] bArr);

    public abstract FG<Integer> sendMessage(String str, String str2, byte[] bArr, MessageOptions messageOptions);

    public abstract FG<byte[]> sendRequest(String str, String str2, byte[] bArr);

    public MessageClient(Context context, GoogleApi.Settings settings) {
        super(context, Wearable.API, Wearable.WearableOptions.zza, settings);
    }
}
