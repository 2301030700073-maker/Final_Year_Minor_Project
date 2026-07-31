package androidx.activity.compose.internal;

import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedCallbackInfo;
import androidx.activity.OnBackPressedDispatcher;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.activity.MessageCompose;
import net.openid.appauth.JsonUtil$Field;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BackHandlerDispatcherCompat {
    public final Dispatcher navigationEventDispatcher;
    public final OnBackPressedDispatcher onBackPressedDispatcher;

    /* JADX WARN: Multi-variable type inference failed */
    public BackHandlerDispatcherCompat(Dispatcher dispatcher, OnBackPressedDispatcher onBackPressedDispatcher) {
        this.navigationEventDispatcher = dispatcher;
        this.onBackPressedDispatcher = onBackPressedDispatcher;
        if ((dispatcher == null ? onBackPressedDispatcher : dispatcher) != null) {
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("At least one dispatcher (NavigationEventDispatcher or OnBackPressedDispatcher) must be non-null.");
        throw null;
    }

    public final void addHandler(JsonUtil$Field jsonUtil$Field) {
        Dispatcher dispatcher = this.navigationEventDispatcher;
        if (dispatcher != null) {
            Dispatcher.addHandler$default(dispatcher, (BackHandlerCompat$navigationEventHandler$1) jsonUtil$Field.defaultValue);
            return;
        }
        OnBackPressedDispatcher onBackPressedDispatcher = this.onBackPressedDispatcher;
        if (onBackPressedDispatcher == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unreachable");
            return;
        }
        MessageCompose.AnonymousClass3 anonymousClass3 = (MessageCompose.AnonymousClass3) jsonUtil$Field.key;
        anonymousClass3.getClass();
        OnBackPressedCallback.OnBackPressedEventHandler onBackPressedEventHandler = new OnBackPressedCallback.OnBackPressedEventHandler(anonymousClass3, new OnBackPressedCallbackInfo(anonymousClass3, null));
        anonymousClass3.eventHandlers.add(onBackPressedEventHandler);
        Dispatcher.addHandler$default(onBackPressedDispatcher.getEventInput().dispatcher, onBackPressedEventHandler);
    }

    public final void removeHandler(JsonUtil$Field jsonUtil$Field) {
        if (this.navigationEventDispatcher != null) {
            ((BackHandlerCompat$navigationEventHandler$1) jsonUtil$Field.defaultValue).remove();
        } else if (this.onBackPressedDispatcher != null) {
            ((MessageCompose.AnonymousClass3) jsonUtil$Field.key).remove();
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unreachable");
        }
    }
}
