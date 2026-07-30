package com.reactnativekeyboardcontroller.modal;

import android.content.DialogInterface;
import androidx.core.app.NotificationCompat;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.react.bridge.UIManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.UIManagerHelper;
import com.facebook.react.uimanager.events.EventDispatcher;
import com.facebook.react.uimanager.events.EventDispatcherListener;
import com.facebook.react.views.view.ReactViewGroup;
import com.reactnativekeyboardcontroller.extensions.ViewGroupKt;
import com.reactnativekeyboardcontroller.listeners.KeyboardAnimationCallback;
import com.reactnativekeyboardcontroller.listeners.KeyboardAnimationCallbackConfig;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ModalAttachedWatcher.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t¢\u0006\u0004\b\u000b\u0010\fJ\u0014\u0010\u0013\u001a\u00020\u00142\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\u0014J\u0006\u0010\u0018\u001a\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/reactnativekeyboardcontroller/modal/ModalAttachedWatcher;", "Lcom/facebook/react/uimanager/events/EventDispatcherListener;", ViewHierarchyConstants.VIEW_KEY, "Lcom/facebook/react/views/view/ReactViewGroup;", "reactContext", "Lcom/facebook/react/uimanager/ThemedReactContext;", "config", "Lcom/reactnativekeyboardcontroller/listeners/KeyboardAnimationCallbackConfig;", "callback", "Lkotlin/Function0;", "Lcom/reactnativekeyboardcontroller/listeners/KeyboardAnimationCallback;", "<init>", "(Lcom/facebook/react/views/view/ReactViewGroup;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/reactnativekeyboardcontroller/listeners/KeyboardAnimationCallbackConfig;Lkotlin/jvm/functions/Function0;)V", "archType", "", "uiManager", "Lcom/facebook/react/bridge/UIManager;", "eventDispatcher", "Lcom/facebook/react/uimanager/events/EventDispatcher;", "onEventDispatch", "", NotificationCompat.CATEGORY_EVENT, "Lcom/facebook/react/uimanager/events/Event;", "enable", "disable", "Companion", "react-native-keyboard-controller_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class ModalAttachedWatcher implements EventDispatcherListener {
    private static final String MODAL_SHOW_EVENT = "topShow";
    private final int archType;
    private Function0<KeyboardAnimationCallback> callback;
    private final KeyboardAnimationCallbackConfig config;
    private final EventDispatcher eventDispatcher;
    private final ThemedReactContext reactContext;
    private final UIManager uiManager;
    private final ReactViewGroup view;

    public ModalAttachedWatcher(ReactViewGroup view, ThemedReactContext reactContext, KeyboardAnimationCallbackConfig config, Function0<KeyboardAnimationCallback> callback) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.view = view;
        this.reactContext = reactContext;
        this.config = config;
        this.callback = callback;
        this.archType = 2;
        this.uiManager = UIManagerHelper.getUIManager(reactContext.getReactApplicationContext(), 2);
        this.eventDispatcher = UIManagerHelper.getEventDispatcher(reactContext.getReactApplicationContext(), 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    @Override // com.facebook.react.uimanager.events.EventDispatcherListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onEventDispatch(com.facebook.react.uimanager.events.Event<?> r10) {
        /*
            r9 = this;
            java.lang.String r0 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = r10.getEventName()
            java.lang.String r1 = "topShow"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
            if (r0 != 0) goto L12
            return
        L12:
            r0 = 0
            com.facebook.react.bridge.UIManager r1 = r9.uiManager     // Catch: java.lang.Exception -> L28
            if (r1 == 0) goto L20
            int r2 = r10.getViewTag()     // Catch: java.lang.Exception -> L28
            android.view.View r1 = r1.resolveView(r2)     // Catch: java.lang.Exception -> L28
            goto L21
        L20:
            r1 = r0
        L21:
            boolean r2 = r1 instanceof com.facebook.react.views.modal.ReactModalHostView     // Catch: java.lang.Exception -> L28
            if (r2 == 0) goto L47
            com.facebook.react.views.modal.ReactModalHostView r1 = (com.facebook.react.views.modal.ReactModalHostView) r1     // Catch: java.lang.Exception -> L28
            goto L48
        L28:
            r1 = move-exception
            com.reactnativekeyboardcontroller.log.Logger r2 = com.reactnativekeyboardcontroller.log.Logger.INSTANCE
            java.lang.String r3 = com.reactnativekeyboardcontroller.modal.ModalAttachedWatcherKt.access$getTAG$p()
            int r10 = r10.getViewTag()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "Can not resolve view for Modal#"
            r4.<init>(r5)
            java.lang.StringBuilder r10 = r4.append(r10)
            java.lang.String r10 = r10.toString()
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            r2.w(r3, r10, r1)
        L47:
            r1 = r0
        L48:
            if (r1 != 0) goto L4b
            return
        L4b:
            android.app.Dialog r10 = r1.getDialog()
            if (r10 == 0) goto L56
            android.view.Window r1 = r10.getWindow()
            goto L57
        L56:
            r1 = r0
        L57:
            if (r1 == 0) goto L63
            android.view.View r2 = r1.getDecorView()
            if (r2 == 0) goto L63
            android.view.View r0 = r2.getRootView()
        L63:
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            if (r0 == 0) goto Lcb
            com.facebook.react.views.view.ReactViewGroup r2 = new com.facebook.react.views.view.ReactViewGroup
            com.facebook.react.uimanager.ThemedReactContext r3 = r9.reactContext
            android.content.Context r3 = (android.content.Context) r3
            r2.<init>(r3)
            android.view.ViewGroup$LayoutParams r3 = new android.view.ViewGroup$LayoutParams
            r4 = 0
            r3.<init>(r4, r4)
            r2.setLayoutParams(r3)
            com.facebook.react.views.view.ReactViewGroup r3 = r9.view
            com.facebook.react.uimanager.ThemedReactContext r5 = r9.reactContext
            com.reactnativekeyboardcontroller.listeners.KeyboardAnimationCallbackConfig r6 = r9.config
            com.reactnativekeyboardcontroller.listeners.KeyboardAnimationCallback r7 = new com.reactnativekeyboardcontroller.listeners.KeyboardAnimationCallback
            r8 = r0
            android.view.View r8 = (android.view.View) r8
            r7.<init>(r3, r8, r5, r6)
            r3 = r2
            android.view.View r3 = (android.view.View) r3
            r0.addView(r3)
            boolean r0 = com.reactnativekeyboardcontroller.modal.ModalAttachedWatcherKt.access$getAreEventsComingFromOwnWindow$p()
            if (r0 == 0) goto Lba
            kotlin.jvm.functions.Function0<com.reactnativekeyboardcontroller.listeners.KeyboardAnimationCallback> r0 = r9.callback
            java.lang.Object r0 = r0.invoke()
            com.reactnativekeyboardcontroller.listeners.KeyboardAnimationCallback r0 = (com.reactnativekeyboardcontroller.listeners.KeyboardAnimationCallback) r0
            if (r0 == 0) goto La1
            r5 = 1
            r0.suspend(r5)
        La1:
            r0 = r7
            androidx.core.view.WindowInsetsAnimationCompat$Callback r0 = (androidx.core.view.WindowInsetsAnimationCompat.Callback) r0
            androidx.core.view.ViewCompat.setWindowInsetsAnimationCallback(r8, r0)
            r0 = r7
            androidx.core.view.OnApplyWindowInsetsListener r0 = (androidx.core.view.OnApplyWindowInsetsListener) r0
            androidx.core.view.ViewCompat.setOnApplyWindowInsetsListener(r3, r0)
            r5 = 0
            java.lang.Double r0 = java.lang.Double.valueOf(r5)
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r4)
            r7.syncKeyboardPosition(r0, r3)
        Lba:
            if (r10 == 0) goto Lc4
            com.reactnativekeyboardcontroller.modal.ModalAttachedWatcher$$ExternalSyntheticLambda0 r0 = new com.reactnativekeyboardcontroller.modal.ModalAttachedWatcher$$ExternalSyntheticLambda0
            r0.<init>()
            r10.setOnDismissListener(r0)
        Lc4:
            if (r1 == 0) goto Lcb
            r10 = 48
            r1.setSoftInputMode(r10)
        Lcb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.reactnativekeyboardcontroller.modal.ModalAttachedWatcher.onEventDispatch(com.facebook.react.uimanager.events.Event):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onEventDispatch$lambda$1(KeyboardAnimationCallback keyboardAnimationCallback, ReactViewGroup reactViewGroup, ModalAttachedWatcher modalAttachedWatcher, DialogInterface dialogInterface) {
        KeyboardAnimationCallback.syncKeyboardPosition$default(keyboardAnimationCallback, null, null, 3, null);
        keyboardAnimationCallback.destroy();
        ViewGroupKt.removeSelf(reactViewGroup);
        KeyboardAnimationCallback invoke = modalAttachedWatcher.callback.invoke();
        if (invoke != null) {
            invoke.suspend(false);
        }
    }

    public final void enable() {
        EventDispatcher eventDispatcher = this.eventDispatcher;
        if (eventDispatcher != null) {
            eventDispatcher.addListener(this);
        }
    }

    public final void disable() {
        EventDispatcher eventDispatcher = this.eventDispatcher;
        if (eventDispatcher != null) {
            eventDispatcher.removeListener(this);
        }
    }
}
