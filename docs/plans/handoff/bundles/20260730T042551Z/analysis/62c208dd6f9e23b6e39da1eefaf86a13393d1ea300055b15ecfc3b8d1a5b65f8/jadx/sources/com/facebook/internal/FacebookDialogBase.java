package com.facebook.internal;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import androidx.activity.result.Cdo;
import defpackage.B6;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3344mh;
import defpackage.C3756th;
import defpackage.Creturn;
import defpackage.InterfaceC2608d0;
import defpackage.InterfaceC2940ih;
import defpackage.W;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class FacebookDialogBase<CONTENT, RESULT> {
    private static final String TAG = "FacebookDialog";
    private final Activity activity;
    private B6 callbackManager;
    private final FragmentWrapper fragmentWrapper;
    private List<? extends FacebookDialogBase<CONTENT, RESULT>.ModeHandler> modeHandlers;
    private int requestCodeField;
    public static final Companion Companion = new Companion(null);
    public static final Object BASE_AUTOMATIC_MODE = new Object();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }
    }

    public abstract class ModeHandler {
        private Object mode;
        final /* synthetic */ FacebookDialogBase<CONTENT, RESULT> this$0;

        public ModeHandler(FacebookDialogBase facebookDialogBase) {
            C0173Do.m401try(facebookDialogBase, "this$0");
            this.this$0 = facebookDialogBase;
            this.mode = FacebookDialogBase.BASE_AUTOMATIC_MODE;
        }

        public abstract boolean canShow(CONTENT content, boolean z);

        public abstract AppCall createAppCall(CONTENT content);

        public Object getMode() {
            return this.mode;
        }

        public void setMode(Object obj) {
            C0173Do.m401try(obj, "<set-?>");
            this.mode = obj;
        }
    }

    public FacebookDialogBase(Activity activity, int i) {
        C0173Do.m401try(activity, "activity");
        this.activity = activity;
        this.fragmentWrapper = null;
        this.requestCodeField = i;
        this.callbackManager = null;
    }

    private final List<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> cachedModeHandlers() {
        if (this.modeHandlers == null) {
            this.modeHandlers = getOrderedModeHandlers();
        }
        List<? extends FacebookDialogBase<CONTENT, RESULT>.ModeHandler> list = this.modeHandlers;
        if (list != null) {
            return list;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<com.facebook.internal.FacebookDialogBase.ModeHandler<CONTENT of com.facebook.internal.FacebookDialogBase, RESULT of com.facebook.internal.FacebookDialogBase>>");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppCall createAppCallForMode(CONTENT content, Object obj) {
        AppCall appCall;
        boolean z = obj == BASE_AUTOMATIC_MODE;
        Iterator<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> it = cachedModeHandlers().iterator();
        while (true) {
            if (!it.hasNext()) {
                appCall = null;
                break;
            }
            FacebookDialogBase<CONTENT, RESULT>.ModeHandler next = it.next();
            if (!z) {
                Utility utility = Utility.INSTANCE;
                if (!Utility.areObjectsEqual(next.getMode(), obj)) {
                    continue;
                }
            }
            if (next.canShow(content, true)) {
                try {
                    appCall = next.createAppCall(content);
                    break;
                } catch (C3344mh e) {
                    AppCall createBaseAppCall = createBaseAppCall();
                    DialogPresenter dialogPresenter = DialogPresenter.INSTANCE;
                    DialogPresenter.setupAppCallForValidationError(createBaseAppCall, e);
                    appCall = createBaseAppCall;
                }
            }
        }
        if (appCall != null) {
            return appCall;
        }
        AppCall createBaseAppCall2 = createBaseAppCall();
        DialogPresenter.setupAppCallForCannotShowError(createBaseAppCall2);
        return createBaseAppCall2;
    }

    private final void memorizeCallbackManager(B6 b6) {
        if (this.callbackManager == null) {
            this.callbackManager = b6;
        }
    }

    public boolean canShow(CONTENT content) {
        return canShowImpl(content, BASE_AUTOMATIC_MODE);
    }

    public boolean canShowImpl(CONTENT content, Object obj) {
        C0173Do.m401try(obj, "mode");
        boolean z = obj == BASE_AUTOMATIC_MODE;
        for (FacebookDialogBase<CONTENT, RESULT>.ModeHandler modeHandler : cachedModeHandlers()) {
            if (!z) {
                Utility utility = Utility.INSTANCE;
                if (!Utility.areObjectsEqual(modeHandler.getMode(), obj)) {
                    continue;
                }
            }
            if (modeHandler.canShow(content, false)) {
                return true;
            }
        }
        return false;
    }

    public final W<CONTENT, B6.Cdo> createActivityResultContractForShowingDialog(final B6 b6, final Object obj) {
        C0173Do.m401try(obj, "mode");
        return new W<CONTENT, B6.Cdo>(this) { // from class: com.facebook.internal.FacebookDialogBase$createActivityResultContractForShowingDialog$1
            final /* synthetic */ FacebookDialogBase<CONTENT, RESULT> this$0;

            {
                this.this$0 = this;
            }

            @Override // defpackage.W
            public Intent createIntent(Context context, CONTENT content) {
                AppCall createAppCallForMode;
                C0173Do.m401try(context, "context");
                createAppCallForMode = this.this$0.createAppCallForMode(content, obj);
                Intent requestIntent = createAppCallForMode == null ? null : createAppCallForMode.getRequestIntent();
                if (requestIntent != null) {
                    createAppCallForMode.setPending();
                    return requestIntent;
                }
                throw new C3344mh("Content " + content + " is not supported");
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // defpackage.W
            public B6.Cdo parseResult(int i, Intent intent) {
                B6 b62 = b6;
                if (b62 != null) {
                    b62.onActivityResult(this.this$0.getRequestCode(), i, intent);
                }
                return new B6.Cdo(this.this$0.getRequestCode(), i, intent);
            }
        };
    }

    public abstract AppCall createBaseAppCall();

    public final Activity getActivityContext() {
        Activity activity = this.activity;
        if (activity != null) {
            return activity;
        }
        FragmentWrapper fragmentWrapper = this.fragmentWrapper;
        if (fragmentWrapper == null) {
            return null;
        }
        return fragmentWrapper.getActivity();
    }

    public final B6 getCallbackManager$facebook_common_release() {
        return this.callbackManager;
    }

    public abstract List<FacebookDialogBase<CONTENT, RESULT>.ModeHandler> getOrderedModeHandlers();

    public final int getRequestCode() {
        return this.requestCodeField;
    }

    public void registerCallback(B6 b6, InterfaceC2940ih<RESULT> interfaceC2940ih) {
        C0173Do.m401try(b6, "callbackManager");
        C0173Do.m401try(interfaceC2940ih, "callback");
        if (!(b6 instanceof CallbackManagerImpl)) {
            throw new C3344mh("Unexpected CallbackManager, please use the provided Factory.");
        }
        memorizeCallbackManager(b6);
        registerCallbackImpl((CallbackManagerImpl) b6, interfaceC2940ih);
    }

    public abstract void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, InterfaceC2940ih<RESULT> interfaceC2940ih);

    public final void setCallbackManager(B6 b6) {
        this.callbackManager = b6;
    }

    public final void setCallbackManager$facebook_common_release(B6 b6) {
        this.callbackManager = b6;
    }

    public final void setRequestCode(int i) {
        int i2 = C3756th.f15740do;
        if (!(!(i >= i2 && i < i2 + 100))) {
            throw new IllegalArgumentException(Creturn.m7981if("Request code ", i, " cannot be within the range reserved by the Facebook SDK.").toString());
        }
        this.requestCodeField = i;
    }

    public void show(CONTENT content) {
        showImpl(content, BASE_AUTOMATIC_MODE);
    }

    public void showImpl(CONTENT content, Object obj) {
        C0173Do.m401try(obj, "mode");
        AppCall createAppCallForMode = createAppCallForMode(content, obj);
        if (createAppCallForMode == null) {
            C3756th c3756th = C3756th.f15751do;
            return;
        }
        if (getActivityContext() instanceof InterfaceC2608d0) {
            ComponentCallbacks2 activityContext = getActivityContext();
            if (activityContext == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.activity.result.ActivityResultRegistryOwner");
            }
            DialogPresenter dialogPresenter = DialogPresenter.INSTANCE;
            Cdo mo3191goto = ((InterfaceC2608d0) activityContext).mo3191goto();
            C0173Do.m399new(mo3191goto, "registryOwner.activityResultRegistry");
            DialogPresenter.present(createAppCallForMode, mo3191goto, this.callbackManager);
            createAppCallForMode.setPending();
            return;
        }
        FragmentWrapper fragmentWrapper = this.fragmentWrapper;
        if (fragmentWrapper != null) {
            DialogPresenter.present(createAppCallForMode, fragmentWrapper);
            return;
        }
        Activity activity = this.activity;
        if (activity != null) {
            DialogPresenter.present(createAppCallForMode, activity);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:9:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void startActivityForResult(android.content.Intent r4, int r5) {
        /*
            r3 = this;
            java.lang.String r0 = "intent"
            defpackage.C0173Do.m401try(r4, r0)
            android.app.Activity r0 = r3.getActivityContext()
            boolean r1 = r0 instanceof defpackage.InterfaceC2608d0
            if (r1 == 0) goto L20
            com.facebook.internal.DialogPresenter r1 = com.facebook.internal.DialogPresenter.INSTANCE
            d0 r0 = (defpackage.InterfaceC2608d0) r0
            androidx.activity.result.do r0 = r0.mo3191goto()
            java.lang.String r1 = "activity as ActivityResultRegistryOwner).activityResultRegistry"
            defpackage.C0173Do.m399new(r0, r1)
            B6 r1 = r3.callbackManager
            com.facebook.internal.DialogPresenter.startActivityForResultWithAndroidX(r0, r1, r4, r5)
            goto L2d
        L20:
            if (r0 == 0) goto L26
            r0.startActivityForResult(r4, r5)
            goto L2d
        L26:
            com.facebook.internal.FragmentWrapper r0 = r3.fragmentWrapper
            if (r0 == 0) goto L2f
            r0.startActivityForResult(r4, r5)
        L2d:
            r4 = 0
            goto L31
        L2f:
            java.lang.String r4 = "Failed to find Activity or Fragment to startActivityForResult "
        L31:
            if (r4 == 0) goto L43
            com.facebook.internal.Logger$Companion r5 = com.facebook.internal.Logger.Companion
            Zq r0 = defpackage.EnumC0658Zq.DEVELOPER_ERRORS
            java.lang.Class r1 = r3.getClass()
            java.lang.String r1 = r1.getName()
            r2 = 6
            r5.log(r0, r2, r1, r4)
        L43:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.FacebookDialogBase.startActivityForResult(android.content.Intent, int):void");
    }

    public W<CONTENT, B6.Cdo> createActivityResultContractForShowingDialog(B6 b6) {
        return createActivityResultContractForShowingDialog(b6, BASE_AUTOMATIC_MODE);
    }

    public void registerCallback(B6 b6, InterfaceC2940ih<RESULT> interfaceC2940ih, int i) {
        C0173Do.m401try(b6, "callbackManager");
        C0173Do.m401try(interfaceC2940ih, "callback");
        memorizeCallbackManager(b6);
        setRequestCode(i);
        registerCallback(b6, interfaceC2940ih);
    }

    public FacebookDialogBase(FragmentWrapper fragmentWrapper, int i) {
        C0173Do.m401try(fragmentWrapper, "fragmentWrapper");
        this.fragmentWrapper = fragmentWrapper;
        this.activity = null;
        this.requestCodeField = i;
        if (fragmentWrapper.getActivity() == null) {
            throw new IllegalArgumentException("Cannot use a fragment that is not attached to an activity".toString());
        }
    }

    public FacebookDialogBase(int i) {
        this.requestCodeField = i;
        this.activity = null;
        this.fragmentWrapper = null;
    }
}
