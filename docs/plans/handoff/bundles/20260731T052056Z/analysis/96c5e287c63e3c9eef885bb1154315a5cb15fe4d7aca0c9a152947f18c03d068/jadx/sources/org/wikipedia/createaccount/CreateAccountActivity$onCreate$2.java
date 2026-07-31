package org.wikipedia.createaccount;

import android.content.Intent;
import android.os.Build;
import android.view.Window;
import android.widget.TextView;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.HintHandler;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.textfield.TextInputLayout;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.Collections;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.wikipedia.R;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.captcha.CaptchaResult;
import org.wikipedia.createaccount.CreateAccountActivityViewModel;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.wikipedia.donate.DonateDialog$onCreateView$3;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CreateAccountActivity$onCreate$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ CreateAccountActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CreateAccountActivity$onCreate$2(CreateAccountActivity createAccountActivity, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = createAccountActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        CreateAccountActivity createAccountActivity = this.this$0;
        switch (i) {
            case 0:
                return new CreateAccountActivity$onCreate$2(createAccountActivity, continuation, 0);
            case 1:
                return new CreateAccountActivity$onCreate$2(createAccountActivity, continuation, 1);
            case 2:
                return new CreateAccountActivity$onCreate$2(createAccountActivity, continuation, 2);
            case 3:
                return new CreateAccountActivity$onCreate$2(createAccountActivity, continuation, 3);
            default:
                return new CreateAccountActivity$onCreate$2(createAccountActivity, continuation, 4);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((CreateAccountActivity$onCreate$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        final CreateAccountActivity createAccountActivity = this.this$0;
        final int i2 = 1;
        Continuation continuation = null;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Lifecycle$State lifecycle$State = Lifecycle$State.CREATED;
                    DonateDialog$onCreateView$3.AnonymousClass1 anonymousClass1 = new DonateDialog$onCreateView$3.AnonymousClass1(14, createAccountActivity, continuation);
                    this.label = 1;
                    if (ViewModelKt.repeatOnLifecycle(createAccountActivity, lifecycle$State, anonymousClass1, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                break;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Pattern pattern = CreateAccountActivity.USERNAME_PATTERN;
                    ReadonlyStateFlow readonlyStateFlow = createAccountActivity.getViewModel().authManagerState;
                    final int i5 = 0;
                    FlowCollector flowCollector = new FlowCollector() { // from class: org.wikipedia.createaccount.CreateAccountActivity$onCreate$2$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i6 = i5;
                            Unit unit = Unit.INSTANCE;
                            CreateAccountActivity createAccountActivity2 = createAccountActivity;
                            switch (i6) {
                                case 0:
                                    CreateAccountActivityViewModel.AccountInfoState accountInfoState = (CreateAccountActivityViewModel.AccountInfoState) obj2;
                                    if (accountInfoState instanceof CreateAccountActivityViewModel.AccountInfoState.HCaptchaDisclaimer) {
                                        ItemNotificationBinding itemNotificationBinding = createAccountActivity2.binding;
                                        if (itemNotificationBinding == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        TextView textView = (TextView) ((Request.Builder) itemNotificationBinding.notificationOverflowMenu).method;
                                        StringUtil stringUtil = StringUtil.INSTANCE;
                                        textView.setText(StringUtil.fromHtml(((CreateAccountActivityViewModel.AccountInfoState.HCaptchaDisclaimer) accountInfoState).disclaimerMessage));
                                        ItemNotificationBinding itemNotificationBinding2 = createAccountActivity2.binding;
                                        if (itemNotificationBinding2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        TextView textView2 = (TextView) ((Request.Builder) itemNotificationBinding2.notificationOverflowMenu).method;
                                        if (itemNotificationBinding2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        CharSequence text = textView2.getText();
                                        textView2.setVisibility((text == null || text.length() == 0) ? 8 : 0);
                                    } else if (accountInfoState instanceof CreateAccountActivityViewModel.AccountInfoState.Error) {
                                        L.e(((CreateAccountActivityViewModel.AccountInfoState.Error) accountInfoState).throwable);
                                    }
                                    return unit;
                                case 1:
                                    CreateAccountActivityViewModel.AccountInfoState accountInfoState2 = (CreateAccountActivityViewModel.AccountInfoState) obj2;
                                    if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.DoCreateAccount) {
                                        String str = ((CreateAccountActivityViewModel.AccountInfoState.DoCreateAccount) accountInfoState2).token;
                                        Pattern pattern2 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.doCreateAccount(str, null);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.HandleHCaptcha) {
                                        Pattern pattern3 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.showProgressBar(true);
                                        DefaultSocket defaultSocket = createAccountActivity2.hCaptchaHelper;
                                        defaultSocket.cleanup();
                                        SVGAndroidRenderer instrument = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument != null) {
                                            SVGAndroidRenderer.submitInteraction$default(instrument, "hcaptcha_load", null, null, null, null, null, 254);
                                        }
                                        defaultSocket.show(null);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.HandleCaptcha) {
                                        CaptchaHandler captchaHandler = createAccountActivity2.captchaHandler;
                                        if (captchaHandler == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                                            throw null;
                                        }
                                        CreateAccountActivityViewModel.AccountInfoState.HandleCaptcha handleCaptcha = (CreateAccountActivityViewModel.AccountInfoState.HandleCaptcha) accountInfoState2;
                                        String str2 = handleCaptcha.token;
                                        CaptchaResult captchaResult = new CaptchaResult(handleCaptcha.captchaId);
                                        captchaHandler.token = str2;
                                        captchaHandler.captchaResult = captchaResult;
                                        captchaHandler.handleCaptcha(false);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.InvalidToken) {
                                        String string = createAccountActivity2.getString(R.string.create_account_generic_error);
                                        string.getClass();
                                        createAccountActivity2.handleAccountCreationError(string);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.Error) {
                                        Throwable th = ((CreateAccountActivityViewModel.AccountInfoState.Error) accountInfoState2).throwable;
                                        Pattern pattern4 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.showError(th);
                                        L.e(th);
                                    }
                                    return unit;
                                case 2:
                                    CreateAccountActivityViewModel.CreateAccountState createAccountState = (CreateAccountActivityViewModel.CreateAccountState) obj2;
                                    if (createAccountState instanceof CreateAccountActivityViewModel.CreateAccountState.Pass) {
                                        String str3 = ((CreateAccountActivityViewModel.CreateAccountState.Pass) createAccountState).userName;
                                        Pattern pattern5 = CreateAccountActivity.USERNAME_PATTERN;
                                        Intent intent = new Intent();
                                        intent.putExtra("username", str3);
                                        ItemNotificationBinding itemNotificationBinding3 = createAccountActivity2.binding;
                                        if (itemNotificationBinding3 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        intent.putExtra("password", CreateAccountActivity.getText((TextInputLayout) itemNotificationBinding3.notificationSubtitle));
                                        createAccountActivity2.setResult(1, intent);
                                        createAccountActivity2.showProgressBar(false);
                                        CaptchaHandler captchaHandler2 = createAccountActivity2.captchaHandler;
                                        if (captchaHandler2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                                            throw null;
                                        }
                                        captchaHandler2.cancelCaptcha();
                                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument2 != null) {
                                            Map singletonMap = Collections.singletonMap("invoke_source", createAccountActivity2.requestSource);
                                            singletonMap.getClass();
                                            SVGAndroidRenderer.submitInteraction$default(instrument2, "success", null, null, null, null, singletonMap, 126);
                                        }
                                        Window window = createAccountActivity2.getWindow();
                                        window.getClass();
                                        HintHandler hintHandler = new HintHandler(window.getDecorView());
                                        int i7 = Build.VERSION.SDK_INT;
                                        (i7 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i7 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i7 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                                        createAccountActivity2.finish();
                                    } else if (createAccountState instanceof CreateAccountActivityViewModel.CreateAccountState.Error) {
                                        Throwable th2 = ((CreateAccountActivityViewModel.CreateAccountState.Error) createAccountState).throwable;
                                        L.e(th2.toString());
                                        Pattern pattern6 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.showProgressBar(false);
                                        createAccountActivity2.showError(th2);
                                    }
                                    return unit;
                                default:
                                    CreateAccountActivityViewModel.UserNameState userNameState = (CreateAccountActivityViewModel.UserNameState) obj2;
                                    if (Intrinsics.areEqual(userNameState, CreateAccountActivityViewModel.UserNameState.Initial.INSTANCE) || Intrinsics.areEqual(userNameState, CreateAccountActivityViewModel.UserNameState.Success.INSTANCE)) {
                                        ItemNotificationBinding itemNotificationBinding4 = createAccountActivity2.binding;
                                        if (itemNotificationBinding4 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((TextInputLayout) itemNotificationBinding4.notificationItemSelectedImage).setErrorEnabled(false);
                                    } else if (userNameState instanceof CreateAccountActivityViewModel.UserNameState.Blocked) {
                                        SVGAndroidRenderer instrument3 = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument3 != null) {
                                            Map singletonMap2 = Collections.singletonMap("validation_error", "blocked");
                                            singletonMap2.getClass();
                                            SVGAndroidRenderer.submitInteraction$default(instrument3, "error", null, null, null, null, singletonMap2, 126);
                                        }
                                        String str4 = ((CreateAccountActivityViewModel.UserNameState.Blocked) userNameState).error;
                                        Pattern pattern7 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.handleAccountCreationError(str4);
                                    } else if (userNameState instanceof CreateAccountActivityViewModel.UserNameState.CannotCreate) {
                                        SVGAndroidRenderer instrument4 = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument4 != null) {
                                            Map singletonMap3 = Collections.singletonMap("validation_error", "username_unavailable");
                                            singletonMap3.getClass();
                                            SVGAndroidRenderer.submitInteraction$default(instrument4, "error", null, null, null, null, singletonMap3, 126);
                                        }
                                        ItemNotificationBinding itemNotificationBinding5 = createAccountActivity2.binding;
                                        if (itemNotificationBinding5 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((TextInputLayout) itemNotificationBinding5.notificationItemSelectedImage).setError(createAccountActivity2.getString(R.string.create_account_name_unavailable, ((CreateAccountActivityViewModel.UserNameState.CannotCreate) userNameState).userName));
                                    }
                                    return unit;
                            }
                        }
                    };
                    this.label = 1;
                    if (readonlyStateFlow.$$delegate_0.collect(flowCollector, this) == coroutineSingletons2) {
                        break;
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                break;
            case 2:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Pattern pattern2 = CreateAccountActivity.USERNAME_PATTERN;
                    ReadonlyStateFlow readonlyStateFlow2 = createAccountActivity.getViewModel().createAccountInfoState;
                    FlowCollector flowCollector2 = new FlowCollector() { // from class: org.wikipedia.createaccount.CreateAccountActivity$onCreate$2$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i62 = i2;
                            Unit unit = Unit.INSTANCE;
                            CreateAccountActivity createAccountActivity2 = createAccountActivity;
                            switch (i62) {
                                case 0:
                                    CreateAccountActivityViewModel.AccountInfoState accountInfoState = (CreateAccountActivityViewModel.AccountInfoState) obj2;
                                    if (accountInfoState instanceof CreateAccountActivityViewModel.AccountInfoState.HCaptchaDisclaimer) {
                                        ItemNotificationBinding itemNotificationBinding = createAccountActivity2.binding;
                                        if (itemNotificationBinding == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        TextView textView = (TextView) ((Request.Builder) itemNotificationBinding.notificationOverflowMenu).method;
                                        StringUtil stringUtil = StringUtil.INSTANCE;
                                        textView.setText(StringUtil.fromHtml(((CreateAccountActivityViewModel.AccountInfoState.HCaptchaDisclaimer) accountInfoState).disclaimerMessage));
                                        ItemNotificationBinding itemNotificationBinding2 = createAccountActivity2.binding;
                                        if (itemNotificationBinding2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        TextView textView2 = (TextView) ((Request.Builder) itemNotificationBinding2.notificationOverflowMenu).method;
                                        if (itemNotificationBinding2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        CharSequence text = textView2.getText();
                                        textView2.setVisibility((text == null || text.length() == 0) ? 8 : 0);
                                    } else if (accountInfoState instanceof CreateAccountActivityViewModel.AccountInfoState.Error) {
                                        L.e(((CreateAccountActivityViewModel.AccountInfoState.Error) accountInfoState).throwable);
                                    }
                                    return unit;
                                case 1:
                                    CreateAccountActivityViewModel.AccountInfoState accountInfoState2 = (CreateAccountActivityViewModel.AccountInfoState) obj2;
                                    if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.DoCreateAccount) {
                                        String str = ((CreateAccountActivityViewModel.AccountInfoState.DoCreateAccount) accountInfoState2).token;
                                        Pattern pattern22 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.doCreateAccount(str, null);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.HandleHCaptcha) {
                                        Pattern pattern3 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.showProgressBar(true);
                                        DefaultSocket defaultSocket = createAccountActivity2.hCaptchaHelper;
                                        defaultSocket.cleanup();
                                        SVGAndroidRenderer instrument = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument != null) {
                                            SVGAndroidRenderer.submitInteraction$default(instrument, "hcaptcha_load", null, null, null, null, null, 254);
                                        }
                                        defaultSocket.show(null);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.HandleCaptcha) {
                                        CaptchaHandler captchaHandler = createAccountActivity2.captchaHandler;
                                        if (captchaHandler == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                                            throw null;
                                        }
                                        CreateAccountActivityViewModel.AccountInfoState.HandleCaptcha handleCaptcha = (CreateAccountActivityViewModel.AccountInfoState.HandleCaptcha) accountInfoState2;
                                        String str2 = handleCaptcha.token;
                                        CaptchaResult captchaResult = new CaptchaResult(handleCaptcha.captchaId);
                                        captchaHandler.token = str2;
                                        captchaHandler.captchaResult = captchaResult;
                                        captchaHandler.handleCaptcha(false);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.InvalidToken) {
                                        String string = createAccountActivity2.getString(R.string.create_account_generic_error);
                                        string.getClass();
                                        createAccountActivity2.handleAccountCreationError(string);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.Error) {
                                        Throwable th = ((CreateAccountActivityViewModel.AccountInfoState.Error) accountInfoState2).throwable;
                                        Pattern pattern4 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.showError(th);
                                        L.e(th);
                                    }
                                    return unit;
                                case 2:
                                    CreateAccountActivityViewModel.CreateAccountState createAccountState = (CreateAccountActivityViewModel.CreateAccountState) obj2;
                                    if (createAccountState instanceof CreateAccountActivityViewModel.CreateAccountState.Pass) {
                                        String str3 = ((CreateAccountActivityViewModel.CreateAccountState.Pass) createAccountState).userName;
                                        Pattern pattern5 = CreateAccountActivity.USERNAME_PATTERN;
                                        Intent intent = new Intent();
                                        intent.putExtra("username", str3);
                                        ItemNotificationBinding itemNotificationBinding3 = createAccountActivity2.binding;
                                        if (itemNotificationBinding3 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        intent.putExtra("password", CreateAccountActivity.getText((TextInputLayout) itemNotificationBinding3.notificationSubtitle));
                                        createAccountActivity2.setResult(1, intent);
                                        createAccountActivity2.showProgressBar(false);
                                        CaptchaHandler captchaHandler2 = createAccountActivity2.captchaHandler;
                                        if (captchaHandler2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                                            throw null;
                                        }
                                        captchaHandler2.cancelCaptcha();
                                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument2 != null) {
                                            Map singletonMap = Collections.singletonMap("invoke_source", createAccountActivity2.requestSource);
                                            singletonMap.getClass();
                                            SVGAndroidRenderer.submitInteraction$default(instrument2, "success", null, null, null, null, singletonMap, 126);
                                        }
                                        Window window = createAccountActivity2.getWindow();
                                        window.getClass();
                                        HintHandler hintHandler = new HintHandler(window.getDecorView());
                                        int i7 = Build.VERSION.SDK_INT;
                                        (i7 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i7 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i7 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                                        createAccountActivity2.finish();
                                    } else if (createAccountState instanceof CreateAccountActivityViewModel.CreateAccountState.Error) {
                                        Throwable th2 = ((CreateAccountActivityViewModel.CreateAccountState.Error) createAccountState).throwable;
                                        L.e(th2.toString());
                                        Pattern pattern6 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.showProgressBar(false);
                                        createAccountActivity2.showError(th2);
                                    }
                                    return unit;
                                default:
                                    CreateAccountActivityViewModel.UserNameState userNameState = (CreateAccountActivityViewModel.UserNameState) obj2;
                                    if (Intrinsics.areEqual(userNameState, CreateAccountActivityViewModel.UserNameState.Initial.INSTANCE) || Intrinsics.areEqual(userNameState, CreateAccountActivityViewModel.UserNameState.Success.INSTANCE)) {
                                        ItemNotificationBinding itemNotificationBinding4 = createAccountActivity2.binding;
                                        if (itemNotificationBinding4 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((TextInputLayout) itemNotificationBinding4.notificationItemSelectedImage).setErrorEnabled(false);
                                    } else if (userNameState instanceof CreateAccountActivityViewModel.UserNameState.Blocked) {
                                        SVGAndroidRenderer instrument3 = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument3 != null) {
                                            Map singletonMap2 = Collections.singletonMap("validation_error", "blocked");
                                            singletonMap2.getClass();
                                            SVGAndroidRenderer.submitInteraction$default(instrument3, "error", null, null, null, null, singletonMap2, 126);
                                        }
                                        String str4 = ((CreateAccountActivityViewModel.UserNameState.Blocked) userNameState).error;
                                        Pattern pattern7 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.handleAccountCreationError(str4);
                                    } else if (userNameState instanceof CreateAccountActivityViewModel.UserNameState.CannotCreate) {
                                        SVGAndroidRenderer instrument4 = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument4 != null) {
                                            Map singletonMap3 = Collections.singletonMap("validation_error", "username_unavailable");
                                            singletonMap3.getClass();
                                            SVGAndroidRenderer.submitInteraction$default(instrument4, "error", null, null, null, null, singletonMap3, 126);
                                        }
                                        ItemNotificationBinding itemNotificationBinding5 = createAccountActivity2.binding;
                                        if (itemNotificationBinding5 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((TextInputLayout) itemNotificationBinding5.notificationItemSelectedImage).setError(createAccountActivity2.getString(R.string.create_account_name_unavailable, ((CreateAccountActivityViewModel.UserNameState.CannotCreate) userNameState).userName));
                                    }
                                    return unit;
                            }
                        }
                    };
                    this.label = 1;
                    if (readonlyStateFlow2.$$delegate_0.collect(flowCollector2, this) == coroutineSingletons3) {
                        break;
                    }
                } else if (i6 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                break;
            case 3:
                CoroutineSingletons coroutineSingletons4 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i7 = this.label;
                if (i7 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Pattern pattern3 = CreateAccountActivity.USERNAME_PATTERN;
                    ReadonlyStateFlow readonlyStateFlow3 = createAccountActivity.getViewModel().doCreateAccountState;
                    final int i8 = 2;
                    FlowCollector flowCollector3 = new FlowCollector() { // from class: org.wikipedia.createaccount.CreateAccountActivity$onCreate$2$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i62 = i8;
                            Unit unit = Unit.INSTANCE;
                            CreateAccountActivity createAccountActivity2 = createAccountActivity;
                            switch (i62) {
                                case 0:
                                    CreateAccountActivityViewModel.AccountInfoState accountInfoState = (CreateAccountActivityViewModel.AccountInfoState) obj2;
                                    if (accountInfoState instanceof CreateAccountActivityViewModel.AccountInfoState.HCaptchaDisclaimer) {
                                        ItemNotificationBinding itemNotificationBinding = createAccountActivity2.binding;
                                        if (itemNotificationBinding == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        TextView textView = (TextView) ((Request.Builder) itemNotificationBinding.notificationOverflowMenu).method;
                                        StringUtil stringUtil = StringUtil.INSTANCE;
                                        textView.setText(StringUtil.fromHtml(((CreateAccountActivityViewModel.AccountInfoState.HCaptchaDisclaimer) accountInfoState).disclaimerMessage));
                                        ItemNotificationBinding itemNotificationBinding2 = createAccountActivity2.binding;
                                        if (itemNotificationBinding2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        TextView textView2 = (TextView) ((Request.Builder) itemNotificationBinding2.notificationOverflowMenu).method;
                                        if (itemNotificationBinding2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        CharSequence text = textView2.getText();
                                        textView2.setVisibility((text == null || text.length() == 0) ? 8 : 0);
                                    } else if (accountInfoState instanceof CreateAccountActivityViewModel.AccountInfoState.Error) {
                                        L.e(((CreateAccountActivityViewModel.AccountInfoState.Error) accountInfoState).throwable);
                                    }
                                    return unit;
                                case 1:
                                    CreateAccountActivityViewModel.AccountInfoState accountInfoState2 = (CreateAccountActivityViewModel.AccountInfoState) obj2;
                                    if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.DoCreateAccount) {
                                        String str = ((CreateAccountActivityViewModel.AccountInfoState.DoCreateAccount) accountInfoState2).token;
                                        Pattern pattern22 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.doCreateAccount(str, null);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.HandleHCaptcha) {
                                        Pattern pattern32 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.showProgressBar(true);
                                        DefaultSocket defaultSocket = createAccountActivity2.hCaptchaHelper;
                                        defaultSocket.cleanup();
                                        SVGAndroidRenderer instrument = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument != null) {
                                            SVGAndroidRenderer.submitInteraction$default(instrument, "hcaptcha_load", null, null, null, null, null, 254);
                                        }
                                        defaultSocket.show(null);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.HandleCaptcha) {
                                        CaptchaHandler captchaHandler = createAccountActivity2.captchaHandler;
                                        if (captchaHandler == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                                            throw null;
                                        }
                                        CreateAccountActivityViewModel.AccountInfoState.HandleCaptcha handleCaptcha = (CreateAccountActivityViewModel.AccountInfoState.HandleCaptcha) accountInfoState2;
                                        String str2 = handleCaptcha.token;
                                        CaptchaResult captchaResult = new CaptchaResult(handleCaptcha.captchaId);
                                        captchaHandler.token = str2;
                                        captchaHandler.captchaResult = captchaResult;
                                        captchaHandler.handleCaptcha(false);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.InvalidToken) {
                                        String string = createAccountActivity2.getString(R.string.create_account_generic_error);
                                        string.getClass();
                                        createAccountActivity2.handleAccountCreationError(string);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.Error) {
                                        Throwable th = ((CreateAccountActivityViewModel.AccountInfoState.Error) accountInfoState2).throwable;
                                        Pattern pattern4 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.showError(th);
                                        L.e(th);
                                    }
                                    return unit;
                                case 2:
                                    CreateAccountActivityViewModel.CreateAccountState createAccountState = (CreateAccountActivityViewModel.CreateAccountState) obj2;
                                    if (createAccountState instanceof CreateAccountActivityViewModel.CreateAccountState.Pass) {
                                        String str3 = ((CreateAccountActivityViewModel.CreateAccountState.Pass) createAccountState).userName;
                                        Pattern pattern5 = CreateAccountActivity.USERNAME_PATTERN;
                                        Intent intent = new Intent();
                                        intent.putExtra("username", str3);
                                        ItemNotificationBinding itemNotificationBinding3 = createAccountActivity2.binding;
                                        if (itemNotificationBinding3 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        intent.putExtra("password", CreateAccountActivity.getText((TextInputLayout) itemNotificationBinding3.notificationSubtitle));
                                        createAccountActivity2.setResult(1, intent);
                                        createAccountActivity2.showProgressBar(false);
                                        CaptchaHandler captchaHandler2 = createAccountActivity2.captchaHandler;
                                        if (captchaHandler2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                                            throw null;
                                        }
                                        captchaHandler2.cancelCaptcha();
                                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument2 != null) {
                                            Map singletonMap = Collections.singletonMap("invoke_source", createAccountActivity2.requestSource);
                                            singletonMap.getClass();
                                            SVGAndroidRenderer.submitInteraction$default(instrument2, "success", null, null, null, null, singletonMap, 126);
                                        }
                                        Window window = createAccountActivity2.getWindow();
                                        window.getClass();
                                        HintHandler hintHandler = new HintHandler(window.getDecorView());
                                        int i72 = Build.VERSION.SDK_INT;
                                        (i72 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i72 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i72 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                                        createAccountActivity2.finish();
                                    } else if (createAccountState instanceof CreateAccountActivityViewModel.CreateAccountState.Error) {
                                        Throwable th2 = ((CreateAccountActivityViewModel.CreateAccountState.Error) createAccountState).throwable;
                                        L.e(th2.toString());
                                        Pattern pattern6 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.showProgressBar(false);
                                        createAccountActivity2.showError(th2);
                                    }
                                    return unit;
                                default:
                                    CreateAccountActivityViewModel.UserNameState userNameState = (CreateAccountActivityViewModel.UserNameState) obj2;
                                    if (Intrinsics.areEqual(userNameState, CreateAccountActivityViewModel.UserNameState.Initial.INSTANCE) || Intrinsics.areEqual(userNameState, CreateAccountActivityViewModel.UserNameState.Success.INSTANCE)) {
                                        ItemNotificationBinding itemNotificationBinding4 = createAccountActivity2.binding;
                                        if (itemNotificationBinding4 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((TextInputLayout) itemNotificationBinding4.notificationItemSelectedImage).setErrorEnabled(false);
                                    } else if (userNameState instanceof CreateAccountActivityViewModel.UserNameState.Blocked) {
                                        SVGAndroidRenderer instrument3 = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument3 != null) {
                                            Map singletonMap2 = Collections.singletonMap("validation_error", "blocked");
                                            singletonMap2.getClass();
                                            SVGAndroidRenderer.submitInteraction$default(instrument3, "error", null, null, null, null, singletonMap2, 126);
                                        }
                                        String str4 = ((CreateAccountActivityViewModel.UserNameState.Blocked) userNameState).error;
                                        Pattern pattern7 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.handleAccountCreationError(str4);
                                    } else if (userNameState instanceof CreateAccountActivityViewModel.UserNameState.CannotCreate) {
                                        SVGAndroidRenderer instrument4 = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument4 != null) {
                                            Map singletonMap3 = Collections.singletonMap("validation_error", "username_unavailable");
                                            singletonMap3.getClass();
                                            SVGAndroidRenderer.submitInteraction$default(instrument4, "error", null, null, null, null, singletonMap3, 126);
                                        }
                                        ItemNotificationBinding itemNotificationBinding5 = createAccountActivity2.binding;
                                        if (itemNotificationBinding5 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((TextInputLayout) itemNotificationBinding5.notificationItemSelectedImage).setError(createAccountActivity2.getString(R.string.create_account_name_unavailable, ((CreateAccountActivityViewModel.UserNameState.CannotCreate) userNameState).userName));
                                    }
                                    return unit;
                            }
                        }
                    };
                    this.label = 1;
                    if (readonlyStateFlow3.$$delegate_0.collect(flowCollector3, this) == coroutineSingletons4) {
                        break;
                    }
                } else if (i7 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                break;
            default:
                CoroutineSingletons coroutineSingletons5 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i9 = this.label;
                if (i9 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Pattern pattern4 = CreateAccountActivity.USERNAME_PATTERN;
                    ReadonlySharedFlow readonlySharedFlow = createAccountActivity.getViewModel().verifyUserNameState;
                    final int i10 = 3;
                    FlowCollector flowCollector4 = new FlowCollector() { // from class: org.wikipedia.createaccount.CreateAccountActivity$onCreate$2$1$1$1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation2) {
                            int i62 = i10;
                            Unit unit = Unit.INSTANCE;
                            CreateAccountActivity createAccountActivity2 = createAccountActivity;
                            switch (i62) {
                                case 0:
                                    CreateAccountActivityViewModel.AccountInfoState accountInfoState = (CreateAccountActivityViewModel.AccountInfoState) obj2;
                                    if (accountInfoState instanceof CreateAccountActivityViewModel.AccountInfoState.HCaptchaDisclaimer) {
                                        ItemNotificationBinding itemNotificationBinding = createAccountActivity2.binding;
                                        if (itemNotificationBinding == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        TextView textView = (TextView) ((Request.Builder) itemNotificationBinding.notificationOverflowMenu).method;
                                        StringUtil stringUtil = StringUtil.INSTANCE;
                                        textView.setText(StringUtil.fromHtml(((CreateAccountActivityViewModel.AccountInfoState.HCaptchaDisclaimer) accountInfoState).disclaimerMessage));
                                        ItemNotificationBinding itemNotificationBinding2 = createAccountActivity2.binding;
                                        if (itemNotificationBinding2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        TextView textView2 = (TextView) ((Request.Builder) itemNotificationBinding2.notificationOverflowMenu).method;
                                        if (itemNotificationBinding2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        CharSequence text = textView2.getText();
                                        textView2.setVisibility((text == null || text.length() == 0) ? 8 : 0);
                                    } else if (accountInfoState instanceof CreateAccountActivityViewModel.AccountInfoState.Error) {
                                        L.e(((CreateAccountActivityViewModel.AccountInfoState.Error) accountInfoState).throwable);
                                    }
                                    return unit;
                                case 1:
                                    CreateAccountActivityViewModel.AccountInfoState accountInfoState2 = (CreateAccountActivityViewModel.AccountInfoState) obj2;
                                    if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.DoCreateAccount) {
                                        String str = ((CreateAccountActivityViewModel.AccountInfoState.DoCreateAccount) accountInfoState2).token;
                                        Pattern pattern22 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.doCreateAccount(str, null);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.HandleHCaptcha) {
                                        Pattern pattern32 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.showProgressBar(true);
                                        DefaultSocket defaultSocket = createAccountActivity2.hCaptchaHelper;
                                        defaultSocket.cleanup();
                                        SVGAndroidRenderer instrument = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument != null) {
                                            SVGAndroidRenderer.submitInteraction$default(instrument, "hcaptcha_load", null, null, null, null, null, 254);
                                        }
                                        defaultSocket.show(null);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.HandleCaptcha) {
                                        CaptchaHandler captchaHandler = createAccountActivity2.captchaHandler;
                                        if (captchaHandler == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                                            throw null;
                                        }
                                        CreateAccountActivityViewModel.AccountInfoState.HandleCaptcha handleCaptcha = (CreateAccountActivityViewModel.AccountInfoState.HandleCaptcha) accountInfoState2;
                                        String str2 = handleCaptcha.token;
                                        CaptchaResult captchaResult = new CaptchaResult(handleCaptcha.captchaId);
                                        captchaHandler.token = str2;
                                        captchaHandler.captchaResult = captchaResult;
                                        captchaHandler.handleCaptcha(false);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.InvalidToken) {
                                        String string = createAccountActivity2.getString(R.string.create_account_generic_error);
                                        string.getClass();
                                        createAccountActivity2.handleAccountCreationError(string);
                                    } else if (accountInfoState2 instanceof CreateAccountActivityViewModel.AccountInfoState.Error) {
                                        Throwable th = ((CreateAccountActivityViewModel.AccountInfoState.Error) accountInfoState2).throwable;
                                        Pattern pattern42 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.showError(th);
                                        L.e(th);
                                    }
                                    return unit;
                                case 2:
                                    CreateAccountActivityViewModel.CreateAccountState createAccountState = (CreateAccountActivityViewModel.CreateAccountState) obj2;
                                    if (createAccountState instanceof CreateAccountActivityViewModel.CreateAccountState.Pass) {
                                        String str3 = ((CreateAccountActivityViewModel.CreateAccountState.Pass) createAccountState).userName;
                                        Pattern pattern5 = CreateAccountActivity.USERNAME_PATTERN;
                                        Intent intent = new Intent();
                                        intent.putExtra("username", str3);
                                        ItemNotificationBinding itemNotificationBinding3 = createAccountActivity2.binding;
                                        if (itemNotificationBinding3 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        intent.putExtra("password", CreateAccountActivity.getText((TextInputLayout) itemNotificationBinding3.notificationSubtitle));
                                        createAccountActivity2.setResult(1, intent);
                                        createAccountActivity2.showProgressBar(false);
                                        CaptchaHandler captchaHandler2 = createAccountActivity2.captchaHandler;
                                        if (captchaHandler2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                                            throw null;
                                        }
                                        captchaHandler2.cancelCaptcha();
                                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument2 != null) {
                                            Map singletonMap = Collections.singletonMap("invoke_source", createAccountActivity2.requestSource);
                                            singletonMap.getClass();
                                            SVGAndroidRenderer.submitInteraction$default(instrument2, "success", null, null, null, null, singletonMap, 126);
                                        }
                                        Window window = createAccountActivity2.getWindow();
                                        window.getClass();
                                        HintHandler hintHandler = new HintHandler(window.getDecorView());
                                        int i72 = Build.VERSION.SDK_INT;
                                        (i72 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i72 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i72 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                                        createAccountActivity2.finish();
                                    } else if (createAccountState instanceof CreateAccountActivityViewModel.CreateAccountState.Error) {
                                        Throwable th2 = ((CreateAccountActivityViewModel.CreateAccountState.Error) createAccountState).throwable;
                                        L.e(th2.toString());
                                        Pattern pattern6 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.showProgressBar(false);
                                        createAccountActivity2.showError(th2);
                                    }
                                    return unit;
                                default:
                                    CreateAccountActivityViewModel.UserNameState userNameState = (CreateAccountActivityViewModel.UserNameState) obj2;
                                    if (Intrinsics.areEqual(userNameState, CreateAccountActivityViewModel.UserNameState.Initial.INSTANCE) || Intrinsics.areEqual(userNameState, CreateAccountActivityViewModel.UserNameState.Success.INSTANCE)) {
                                        ItemNotificationBinding itemNotificationBinding4 = createAccountActivity2.binding;
                                        if (itemNotificationBinding4 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((TextInputLayout) itemNotificationBinding4.notificationItemSelectedImage).setErrorEnabled(false);
                                    } else if (userNameState instanceof CreateAccountActivityViewModel.UserNameState.Blocked) {
                                        SVGAndroidRenderer instrument3 = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument3 != null) {
                                            Map singletonMap2 = Collections.singletonMap("validation_error", "blocked");
                                            singletonMap2.getClass();
                                            SVGAndroidRenderer.submitInteraction$default(instrument3, "error", null, null, null, null, singletonMap2, 126);
                                        }
                                        String str4 = ((CreateAccountActivityViewModel.UserNameState.Blocked) userNameState).error;
                                        Pattern pattern7 = CreateAccountActivity.USERNAME_PATTERN;
                                        createAccountActivity2.handleAccountCreationError(str4);
                                    } else if (userNameState instanceof CreateAccountActivityViewModel.UserNameState.CannotCreate) {
                                        SVGAndroidRenderer instrument4 = ContextKt.getInstrument(createAccountActivity2);
                                        if (instrument4 != null) {
                                            Map singletonMap3 = Collections.singletonMap("validation_error", "username_unavailable");
                                            singletonMap3.getClass();
                                            SVGAndroidRenderer.submitInteraction$default(instrument4, "error", null, null, null, null, singletonMap3, 126);
                                        }
                                        ItemNotificationBinding itemNotificationBinding5 = createAccountActivity2.binding;
                                        if (itemNotificationBinding5 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        ((TextInputLayout) itemNotificationBinding5.notificationItemSelectedImage).setError(createAccountActivity2.getString(R.string.create_account_name_unavailable, ((CreateAccountActivityViewModel.UserNameState.CannotCreate) userNameState).userName));
                                    }
                                    return unit;
                            }
                        }
                    };
                    this.label = 1;
                    if (readonlySharedFlow.$$delegate_0.collect(flowCollector4, this) == coroutineSingletons5) {
                        break;
                    }
                } else if (i9 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Gson$$ExternalSyntheticBUOutline0.m$1();
                break;
        }
        return null;
    }
}
