package org.wikipedia.login;

import android.accounts.AccountAuthenticatorResponse;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.unit.DpKt;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.HintHandler;
import androidx.room.Room;
import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.textfield.TextInputLayout;
import com.hcaptcha.sdk.HCaptchaException;
import j$.time.LocalDate;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.EmptySet;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__JvmOkioKt;
import okio.Options;
import okio.Path;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.captcha.CaptchaResult;
import org.wikipedia.captcha.HCaptchaHelper$Callback;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.createaccount.CreateAccountActivity;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.databinding.GroupCaptchaBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.events.LoggedInEvent;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.login.LoginClient;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/login/LoginActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "LoginCallback", "Companion", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LoginActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ActivityLoginBinding binding;
    public CaptchaHandler captchaHandler;
    public CaptchaResult captchaResult;
    public final ActivityResultRegistry$register$2 createAccountLauncher;
    public String firstStepToken;
    public final DefaultSocket hCaptchaHelper;
    public String hCaptchaToken;
    public final LoginCallback loginCallback;
    public final LoginClient loginClient;
    public String loginSource;
    public final ActivityResultRegistry$register$2 resetPasswordLauncher;
    public final LinkedHashMap textEnteredEventSent;
    public LoginResult uiPromptResult;
    public final WikiSite wiki;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LoginCallback implements LoginClient.LoginCallback, HCaptchaHelper$Callback {
        public /* synthetic */ LoginCallback() {
        }

        @Override // org.wikipedia.login.LoginClient.LoginCallback
        public void error(Throwable th) {
            th.getClass();
            int i = LoginActivity.$r8$clinit;
            LoginActivity loginActivity = LoginActivity.this;
            loginActivity.showProgressBar$2(false);
            loginActivity.resetAuthState();
            Window window = loginActivity.getWindow();
            window.getClass();
            HintHandler hintHandler = new HintHandler(window.getDecorView());
            int i2 = Build.VERSION.SDK_INT;
            (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
            if (th instanceof LoginFailedException) {
                ShareUtil.showError$default(loginActivity, th);
                return;
            }
            SVGAndroidRenderer instrument = ContextKt.getInstrument(loginActivity);
            if (instrument != null) {
                SVGAndroidRenderer.submitInteraction$default(instrument, "error", null, null, null, null, Options.Companion.getInstrumentActionContext(th), 126);
            }
            ActivityLoginBinding activityLoginBinding = loginActivity.binding;
            if (activityLoginBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            WikiErrorView wikiErrorView = (WikiErrorView) activityLoginBinding.viewLoginError;
            int i3 = WikiErrorView.$r8$clinit;
            wikiErrorView.setError(th, null);
            ActivityLoginBinding activityLoginBinding2 = loginActivity.binding;
            if (activityLoginBinding2 != null) {
                ((WikiErrorView) activityLoginBinding2.viewLoginError).setVisibility(0);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }

        @Override // org.wikipedia.login.LoginClient.LoginCallback
        public void hCaptchaPrompt(LoginResult loginResult, LoginFailedException loginFailedException, String str, String str2) {
            loginResult.getClass();
            int i = LoginActivity.$r8$clinit;
            LoginActivity loginActivity = LoginActivity.this;
            loginActivity.showProgressBar$2(true);
            loginActivity.firstStepToken = str2;
            DefaultSocket defaultSocket = loginActivity.hCaptchaHelper;
            defaultSocket.cleanup();
            SVGAndroidRenderer instrument = ContextKt.getInstrument(loginActivity);
            if (instrument != null) {
                SVGAndroidRenderer.submitInteraction$default(instrument, "hcaptcha_load", null, null, null, null, null, 254);
            }
            defaultSocket.show(str);
        }

        @Override // org.wikipedia.captcha.HCaptchaHelper$Callback
        public void onError(HCaptchaException hCaptchaException) {
            LoginActivity loginActivity = LoginActivity.this;
            SVGAndroidRenderer instrument = ContextKt.getInstrument(loginActivity);
            if (instrument != null) {
                SVGAndroidRenderer.submitInteraction$default(instrument, "hcaptcha_error", null, null, null, null, Options.Companion.getInstrumentActionContext(hCaptchaException), 126);
            }
            int i = LoginActivity.$r8$clinit;
            loginActivity.showProgressBar$2(false);
            String message = hCaptchaException.getMessage();
            if (message == null) {
                message = "";
            }
            ShareUtil.showMessage(loginActivity, message, 0);
        }

        @Override // org.wikipedia.captcha.HCaptchaHelper$Callback
        public void onShow() {
            SVGAndroidRenderer instrument = ContextKt.getInstrument(LoginActivity.this);
            if (instrument != null) {
                SVGAndroidRenderer.submitInteraction$default(instrument, "hcaptcha_show", null, null, null, null, null, 254);
            }
        }

        @Override // org.wikipedia.captcha.HCaptchaHelper$Callback
        public void onSuccess(String str) {
            str.getClass();
            LoginActivity loginActivity = LoginActivity.this;
            SVGAndroidRenderer instrument = ContextKt.getInstrument(loginActivity);
            if (instrument != null) {
                SVGAndroidRenderer.submitInteraction$default(instrument, "hcaptcha_success", null, null, null, null, null, 254);
            }
            loginActivity.hCaptchaToken = str;
            loginActivity.doLogin();
        }

        @Override // org.wikipedia.login.LoginClient.LoginCallback
        public void passwordResetPrompt(String str) {
            LoginActivity loginActivity = LoginActivity.this;
            ActivityResultRegistry$register$2 activityResultRegistry$register$2 = loginActivity.resetPasswordLauncher;
            int i = ResetPasswordActivity.$r8$clinit;
            ActivityLoginBinding activityLoginBinding = loginActivity.binding;
            if (activityLoginBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            Intent putExtra = new Intent(loginActivity, (Class<?>) ResetPasswordActivity.class).putExtra("userName", LoginActivity.getText$1((TextInputLayout) activityLoginBinding.loginUsernameText)).putExtra("token", str);
            putExtra.getClass();
            activityResultRegistry$register$2.launch(putExtra, null);
        }

        @Override // org.wikipedia.login.LoginClient.LoginCallback
        public void success(LoginResult loginResult) {
            loginResult.getClass();
            int i = LoginActivity.$r8$clinit;
            LoginActivity loginActivity = LoginActivity.this;
            loginActivity.showProgressBar$2(false);
            String str = loginResult.status;
            if ("PASS".equals(str)) {
                Intent intent = loginActivity.getIntent();
                intent.getClass();
                Headers.Companion.updateAccount((AccountAuthenticatorResponse) ((Parcelable) DpKt.getParcelableExtra(intent, "accountAuthenticatorResponse", AccountAuthenticatorResponse.class)), loginResult);
                loginActivity.onLoginSuccess();
                return;
            }
            if ("FAIL".equals(str)) {
                SVGAndroidRenderer instrument = ContextKt.getInstrument(loginActivity);
                if (instrument != null) {
                    String str2 = loginResult.messageCode;
                    if (str2 == null) {
                        str2 = "";
                    }
                    Map singletonMap = Collections.singletonMap("code", str2);
                    singletonMap.getClass();
                    SVGAndroidRenderer.submitInteraction$default(instrument, "error", null, null, null, null, singletonMap, 126);
                }
                String str3 = loginResult.message;
                String str4 = str3 != null ? str3 : "";
                ShareUtil.showMessage(loginActivity, str4, 0);
                L.LEVEL_W.log("Login failed with result ".concat(str4), null);
            }
        }

        @Override // org.wikipedia.login.LoginClient.LoginCallback
        public void uiPrompt(LoginResult loginResult, LoginFailedException loginFailedException, String str, String str2) {
            loginResult.getClass();
            int i = LoginActivity.$r8$clinit;
            LoginActivity loginActivity = LoginActivity.this;
            loginActivity.showProgressBar$2(false);
            loginActivity.firstStepToken = str2;
            if (str != null) {
                if (loginActivity.captchaResult != null) {
                    ShareUtil.showError$default(loginActivity, loginFailedException);
                }
                CaptchaResult captchaResult = new CaptchaResult(str);
                loginActivity.captchaResult = captchaResult;
                CaptchaHandler captchaHandler = loginActivity.captchaHandler;
                if (captchaHandler == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                    throw null;
                }
                captchaHandler.token = str2;
                captchaHandler.captchaResult = captchaResult;
                captchaHandler.handleCaptcha(false);
            }
            boolean z = loginResult instanceof LoginEmailAuthResult;
            if (z || (loginResult instanceof LoginOATHResult)) {
                SVGAndroidRenderer instrument = ContextKt.getInstrument(loginActivity);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "impression", null, null, loginResult instanceof LoginOATHResult ? "2fa_oath" : "2fa_email", null, null, 246);
                }
                loginActivity.uiPromptResult = loginResult;
                ActivityLoginBinding activityLoginBinding = loginActivity.binding;
                if (activityLoginBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((TextInputLayout) activityLoginBinding.login2faText).setHint(loginActivity.getString(z ? R.string.login_email_auth_hint : R.string.login_2fa_hint));
                ActivityLoginBinding activityLoginBinding2 = loginActivity.binding;
                if (activityLoginBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((TextInputLayout) activityLoginBinding2.login2faText).setVisibility(0);
                ActivityLoginBinding activityLoginBinding3 = loginActivity.binding;
                if (activityLoginBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                EditText editText = ((TextInputLayout) activityLoginBinding3.login2faText).getEditText();
                if (editText != null) {
                    editText.setText("");
                }
                ActivityLoginBinding activityLoginBinding4 = loginActivity.binding;
                if (activityLoginBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((TextInputLayout) activityLoginBinding4.login2faText).requestFocus();
                ShareUtil.showError$default(loginActivity, loginFailedException);
            }
            Window window = loginActivity.getWindow();
            window.getClass();
            HintHandler hintHandler = new HintHandler(window.getDecorView());
            int i2 = Build.VERSION.SDK_INT;
            (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
        }
    }

    public LoginActivity() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.wiki = Jsoup.getInstance().getWikiSite();
        final int i = 0;
        this.loginClient = new LoginClient(i);
        this.loginCallback = new LoginCallback();
        this.textEnteredEventSent = new LinkedHashMap();
        int i2 = 3;
        this.createAccountLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.login.LoginActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ LoginActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i3 = i;
                LoginActivity loginActivity = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i3) {
                    case 0:
                        int i4 = LoginActivity.$r8$clinit;
                        activityResult.getClass();
                        Intent intent = activityResult.data;
                        int i5 = activityResult.resultCode;
                        if (i5 != 1) {
                            if (i5 != 2) {
                                return;
                            }
                            loginActivity.finish();
                            return;
                        }
                        ActivityLoginBinding activityLoginBinding = loginActivity.binding;
                        if (activityLoginBinding == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        EditText editText = ((TextInputLayout) activityLoginBinding.loginUsernameText).getEditText();
                        if (editText != null) {
                            intent.getClass();
                            editText.setText(intent.getStringExtra("username"));
                        }
                        ActivityLoginBinding activityLoginBinding2 = loginActivity.binding;
                        if (activityLoginBinding2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        EditText editText2 = ((TextInputLayout) activityLoginBinding2.loginPasswordInput).getEditText();
                        if (editText2 != null) {
                            editText2.setText(intent != null ? intent.getStringExtra("password") : null);
                        }
                        ShareUtil.showMessage(loginActivity, R.string.create_account_account_created_toast);
                        loginActivity.doLogin();
                        return;
                    default:
                        int i6 = LoginActivity.$r8$clinit;
                        activityResult.getClass();
                        if (activityResult.resultCode == -1) {
                            loginActivity.onLoginSuccess();
                            return;
                        }
                        return;
                }
            }
        }, new FragmentManager$FragmentIntentSenderContract(i2));
        FragmentManager$FragmentIntentSenderContract fragmentManager$FragmentIntentSenderContract = new FragmentManager$FragmentIntentSenderContract(i2);
        final int i3 = 1;
        this.resetPasswordLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.login.LoginActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ LoginActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i32 = i3;
                LoginActivity loginActivity = this.f$0;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i32) {
                    case 0:
                        int i4 = LoginActivity.$r8$clinit;
                        activityResult.getClass();
                        Intent intent = activityResult.data;
                        int i5 = activityResult.resultCode;
                        if (i5 != 1) {
                            if (i5 != 2) {
                                return;
                            }
                            loginActivity.finish();
                            return;
                        }
                        ActivityLoginBinding activityLoginBinding = loginActivity.binding;
                        if (activityLoginBinding == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        EditText editText = ((TextInputLayout) activityLoginBinding.loginUsernameText).getEditText();
                        if (editText != null) {
                            intent.getClass();
                            editText.setText(intent.getStringExtra("username"));
                        }
                        ActivityLoginBinding activityLoginBinding2 = loginActivity.binding;
                        if (activityLoginBinding2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        EditText editText2 = ((TextInputLayout) activityLoginBinding2.loginPasswordInput).getEditText();
                        if (editText2 != null) {
                            editText2.setText(intent != null ? intent.getStringExtra("password") : null);
                        }
                        ShareUtil.showMessage(loginActivity, R.string.create_account_account_created_toast);
                        loginActivity.doLogin();
                        return;
                    default:
                        int i6 = LoginActivity.$r8$clinit;
                        activityResult.getClass();
                        if (activityResult.resultCode == -1) {
                            loginActivity.onLoginSuccess();
                            return;
                        }
                        return;
                }
            }
        }, fragmentManager$FragmentIntentSenderContract);
        this.hCaptchaHelper = new DefaultSocket(this, new LoginCallback());
    }

    public static String getText$1(TextInputLayout textInputLayout) {
        Editable text;
        EditText editText = textInputLayout.getEditText();
        String obj = (editText == null || (text = editText.getText()) == null) ? null : text.toString();
        return obj == null ? "" : obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void doLogin() {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginActivity.doLogin():void");
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_login, (ViewGroup) null, false);
        int i2 = R.id.captcha_container;
        View findChildViewById = Room.findChildViewById(inflate, R.id.captcha_container);
        if (findChildViewById != null) {
            GroupCaptchaBinding bind = GroupCaptchaBinding.bind(findChildViewById);
            i2 = R.id.footer_container;
            View findChildViewById2 = Room.findChildViewById(inflate, R.id.footer_container);
            if (findChildViewById2 != null) {
                Request.Builder bind2 = Request.Builder.bind(findChildViewById2);
                i2 = R.id.login_2fa_text;
                TextInputLayout textInputLayout = (TextInputLayout) Room.findChildViewById(inflate, R.id.login_2fa_text);
                if (textInputLayout != null) {
                    i2 = R.id.login_button;
                    Button button = (Button) Room.findChildViewById(inflate, R.id.login_button);
                    if (button != null) {
                        i2 = R.id.login_create_account_button;
                        Button button2 = (Button) Room.findChildViewById(inflate, R.id.login_create_account_button);
                        if (button2 != null) {
                            i2 = R.id.login_password_input;
                            TextInputLayout textInputLayout2 = (TextInputLayout) Room.findChildViewById(inflate, R.id.login_password_input);
                            if (textInputLayout2 != null) {
                                i2 = R.id.login_primary_container;
                                LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.login_primary_container);
                                if (linearLayout != null) {
                                    i2 = R.id.login_username_text;
                                    TextInputLayout textInputLayout3 = (TextInputLayout) Room.findChildViewById(inflate, R.id.login_username_text);
                                    if (textInputLayout3 != null) {
                                        i2 = R.id.toolbar;
                                        MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                                        if (materialToolbar != null) {
                                            i2 = R.id.view_login_error;
                                            WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.view_login_error);
                                            if (wikiErrorView != null) {
                                                i2 = R.id.view_progress_bar;
                                                LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.view_progress_bar);
                                                if (linearProgressIndicator != null) {
                                                    FrameLayout frameLayout = (FrameLayout) inflate;
                                                    this.binding = new ActivityLoginBinding(frameLayout, bind, bind2, textInputLayout, button, button2, textInputLayout2, linearLayout, textInputLayout3, materialToolbar, wikiErrorView, linearProgressIndicator);
                                                    setContentView(frameLayout);
                                                    ActivityLoginBinding activityLoginBinding = this.binding;
                                                    if (activityLoginBinding == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    setSupportActionBar((MaterialToolbar) activityLoginBinding.toolbar);
                                                    TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
                                                    testKitchenClient.getClass();
                                                    SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-authentication", testKitchenClient);
                                                    sVGAndroidRenderer.parentStack = "login_form";
                                                    sVGAndroidRenderer.startFunnel("login_account");
                                                    this._instrument = sVGAndroidRenderer;
                                                    DpKt.addCallback$default(getOnBackPressedDispatcher(), this, new MainActivity$$ExternalSyntheticLambda1(18, this));
                                                    ActivityLoginBinding activityLoginBinding2 = this.binding;
                                                    if (activityLoginBinding2 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    LinearLayout linearLayout2 = ((GroupCaptchaBinding) activityLoginBinding2.captchaContainer).rootView;
                                                    if (activityLoginBinding2 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    LinearLayout linearLayout3 = (LinearLayout) activityLoginBinding2.loginPrimaryContainer;
                                                    String string = getString(R.string.login_activity_title);
                                                    string.getClass();
                                                    this.captchaHandler = new CaptchaHandler((AppCompatActivity) this, this.wiki, (View) linearLayout2, (View) linearLayout3, string, (String) null, false, ContextKt.getInstrument(this));
                                                    ActivityLoginBinding activityLoginBinding3 = this.binding;
                                                    if (activityLoginBinding3 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((WikiErrorView) activityLoginBinding3.viewLoginError).setBackClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.login.LoginActivity$$ExternalSyntheticLambda3
                                                        public final /* synthetic */ LoginActivity f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            int i3 = i;
                                                            LoginActivity loginActivity = this.f$0;
                                                            switch (i3) {
                                                                case 0:
                                                                    int i4 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "error_back_button", null, null, 246);
                                                                    }
                                                                    loginActivity.getOnBackPressedDispatcher().onBackPressed();
                                                                    return;
                                                                case 1:
                                                                    int i5 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument2 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument2 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "error_retry_button", null, null, 246);
                                                                    }
                                                                    ActivityLoginBinding activityLoginBinding4 = loginActivity.binding;
                                                                    if (activityLoginBinding4 != null) {
                                                                        ((WikiErrorView) activityLoginBinding4.viewLoginError).setVisibility(8);
                                                                        return;
                                                                    } else {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                case 2:
                                                                    int i6 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument3 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument3 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "login_button", null, null, 246);
                                                                    }
                                                                    loginActivity.validateThenLogin();
                                                                    return;
                                                                case 3:
                                                                    int i7 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument4 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument4 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "create_account_button", null, null, 246);
                                                                    }
                                                                    loginActivity.startCreateAccountActivity();
                                                                    return;
                                                                case 4:
                                                                    int i8 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument5 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument5 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument5, "click", null, null, "privacy_policy_link", null, null, 246);
                                                                    }
                                                                    String string2 = loginActivity.getString(R.string.privacy_policy_url);
                                                                    string2.getClass();
                                                                    Uri parse = Uri.parse(string2);
                                                                    parse.getClass();
                                                                    UriUtil.visitInExternalBrowser(loginActivity, parse);
                                                                    return;
                                                                default:
                                                                    int i9 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument6 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument6 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument6, "click", null, null, "forgot_password_link", null, null, 246);
                                                                    }
                                                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                    String string3 = Jsoup.getInstance().getString(R.string.forget_password_link, loginActivity.wiki.languageCode);
                                                                    string3.getClass();
                                                                    Uri parse2 = Uri.parse(string3);
                                                                    parse2.getClass();
                                                                    UriUtil.visitInExternalBrowser(loginActivity, parse2);
                                                                    return;
                                                            }
                                                        }
                                                    });
                                                    ActivityLoginBinding activityLoginBinding4 = this.binding;
                                                    if (activityLoginBinding4 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    final int i3 = 1;
                                                    ((WikiErrorView) activityLoginBinding4.viewLoginError).setRetryClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.login.LoginActivity$$ExternalSyntheticLambda3
                                                        public final /* synthetic */ LoginActivity f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            int i32 = i3;
                                                            LoginActivity loginActivity = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    int i4 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "error_back_button", null, null, 246);
                                                                    }
                                                                    loginActivity.getOnBackPressedDispatcher().onBackPressed();
                                                                    return;
                                                                case 1:
                                                                    int i5 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument2 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument2 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "error_retry_button", null, null, 246);
                                                                    }
                                                                    ActivityLoginBinding activityLoginBinding42 = loginActivity.binding;
                                                                    if (activityLoginBinding42 != null) {
                                                                        ((WikiErrorView) activityLoginBinding42.viewLoginError).setVisibility(8);
                                                                        return;
                                                                    } else {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                case 2:
                                                                    int i6 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument3 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument3 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "login_button", null, null, 246);
                                                                    }
                                                                    loginActivity.validateThenLogin();
                                                                    return;
                                                                case 3:
                                                                    int i7 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument4 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument4 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "create_account_button", null, null, 246);
                                                                    }
                                                                    loginActivity.startCreateAccountActivity();
                                                                    return;
                                                                case 4:
                                                                    int i8 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument5 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument5 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument5, "click", null, null, "privacy_policy_link", null, null, 246);
                                                                    }
                                                                    String string2 = loginActivity.getString(R.string.privacy_policy_url);
                                                                    string2.getClass();
                                                                    Uri parse = Uri.parse(string2);
                                                                    parse.getClass();
                                                                    UriUtil.visitInExternalBrowser(loginActivity, parse);
                                                                    return;
                                                                default:
                                                                    int i9 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument6 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument6 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument6, "click", null, null, "forgot_password_link", null, null, 246);
                                                                    }
                                                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                    String string3 = Jsoup.getInstance().getString(R.string.forget_password_link, loginActivity.wiki.languageCode);
                                                                    string3.getClass();
                                                                    Uri parse2 = Uri.parse(string3);
                                                                    parse2.getClass();
                                                                    UriUtil.visitInExternalBrowser(loginActivity, parse2);
                                                                    return;
                                                            }
                                                        }
                                                    });
                                                    ActivityLoginBinding activityLoginBinding5 = this.binding;
                                                    if (activityLoginBinding5 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    Button button3 = (Button) activityLoginBinding5.loginButton;
                                                    if (activityLoginBinding5 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    TextInputLayout textInputLayout4 = (TextInputLayout) activityLoginBinding5.loginUsernameText;
                                                    if (activityLoginBinding5 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    TextInputLayout textInputLayout5 = (TextInputLayout) activityLoginBinding5.loginPasswordInput;
                                                    if (activityLoginBinding5 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    final int i4 = 3;
                                                    final int i5 = 2;
                                                    new CSSParser(button3, textInputLayout4, textInputLayout5, (TextInputLayout) activityLoginBinding5.login2faText);
                                                    ActivityLoginBinding activityLoginBinding6 = this.binding;
                                                    if (activityLoginBinding6 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    EditText editText = ((TextInputLayout) activityLoginBinding6.loginPasswordInput).getEditText();
                                                    if (editText != null) {
                                                        editText.setOnEditorActionListener(new LoginActivity$$ExternalSyntheticLambda5(i, this));
                                                    }
                                                    ActivityLoginBinding activityLoginBinding7 = this.binding;
                                                    if (activityLoginBinding7 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    EditText editText2 = ((TextInputLayout) activityLoginBinding7.loginUsernameText).getEditText();
                                                    if (editText2 != null) {
                                                        editText2.addTextChangedListener(new LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(this, editText2, "username", i));
                                                    }
                                                    ActivityLoginBinding activityLoginBinding8 = this.binding;
                                                    if (activityLoginBinding8 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    EditText editText3 = ((TextInputLayout) activityLoginBinding8.loginPasswordInput).getEditText();
                                                    if (editText3 != null) {
                                                        editText3.addTextChangedListener(new LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(this, editText3, "password", i));
                                                    }
                                                    ActivityLoginBinding activityLoginBinding9 = this.binding;
                                                    if (activityLoginBinding9 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    EditText editText4 = ((TextInputLayout) activityLoginBinding9.login2faText).getEditText();
                                                    if (editText4 != null) {
                                                        editText4.addTextChangedListener(new LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(this, editText4, "2fa", i));
                                                    }
                                                    String stringExtra = getIntent().getStringExtra("login_request_source");
                                                    if (stringExtra == null) {
                                                        stringExtra = "";
                                                    }
                                                    this.loginSource = stringExtra;
                                                    if (stringExtra.length() > 0) {
                                                        String str = this.loginSource;
                                                        if (str == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("loginSource");
                                                            throw null;
                                                        }
                                                        if (str.equals("suggestededits")) {
                                                            Prefs prefs = Prefs.INSTANCE;
                                                            PrefsIoUtil.setBoolean(R.string.preference_key_suggested_edits_highest_priority_enabled, true);
                                                        }
                                                    }
                                                    boolean isTemporaryAccount = Headers.Companion.isTemporaryAccount();
                                                    ActivityLoginBinding activityLoginBinding10 = this.binding;
                                                    if (isTemporaryAccount) {
                                                        if (activityLoginBinding10 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        ((FrameLayout) ((Request.Builder) activityLoginBinding10.footerContainer).body).setVisibility(0);
                                                        ActivityLoginBinding activityLoginBinding11 = this.binding;
                                                        if (activityLoginBinding11 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        TextView textView = (TextView) ((Request.Builder) activityLoginBinding11.footerContainer).tags;
                                                        StringUtil stringUtil = StringUtil.INSTANCE;
                                                        textView.setText(StringUtil.fromHtml(getString(R.string.temp_account_login_status, Headers.Companion.getUserName())));
                                                    } else {
                                                        if (activityLoginBinding10 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        ((FrameLayout) ((Request.Builder) activityLoginBinding10.footerContainer).body).setVisibility(8);
                                                    }
                                                    if (bundle == null && !getIntent().hasExtra("accountAuthenticatorResponse") && getIntent().getBooleanExtra("create_account_first", true)) {
                                                        startCreateAccountActivity();
                                                    }
                                                    ActivityLoginBinding activityLoginBinding12 = this.binding;
                                                    if (activityLoginBinding12 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((Button) activityLoginBinding12.loginButton).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.login.LoginActivity$$ExternalSyntheticLambda3
                                                        public final /* synthetic */ LoginActivity f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            int i32 = i5;
                                                            LoginActivity loginActivity = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    int i42 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "error_back_button", null, null, 246);
                                                                    }
                                                                    loginActivity.getOnBackPressedDispatcher().onBackPressed();
                                                                    return;
                                                                case 1:
                                                                    int i52 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument2 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument2 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "error_retry_button", null, null, 246);
                                                                    }
                                                                    ActivityLoginBinding activityLoginBinding42 = loginActivity.binding;
                                                                    if (activityLoginBinding42 != null) {
                                                                        ((WikiErrorView) activityLoginBinding42.viewLoginError).setVisibility(8);
                                                                        return;
                                                                    } else {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                case 2:
                                                                    int i6 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument3 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument3 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "login_button", null, null, 246);
                                                                    }
                                                                    loginActivity.validateThenLogin();
                                                                    return;
                                                                case 3:
                                                                    int i7 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument4 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument4 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "create_account_button", null, null, 246);
                                                                    }
                                                                    loginActivity.startCreateAccountActivity();
                                                                    return;
                                                                case 4:
                                                                    int i8 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument5 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument5 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument5, "click", null, null, "privacy_policy_link", null, null, 246);
                                                                    }
                                                                    String string2 = loginActivity.getString(R.string.privacy_policy_url);
                                                                    string2.getClass();
                                                                    Uri parse = Uri.parse(string2);
                                                                    parse.getClass();
                                                                    UriUtil.visitInExternalBrowser(loginActivity, parse);
                                                                    return;
                                                                default:
                                                                    int i9 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument6 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument6 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument6, "click", null, null, "forgot_password_link", null, null, 246);
                                                                    }
                                                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                    String string3 = Jsoup.getInstance().getString(R.string.forget_password_link, loginActivity.wiki.languageCode);
                                                                    string3.getClass();
                                                                    Uri parse2 = Uri.parse(string3);
                                                                    parse2.getClass();
                                                                    UriUtil.visitInExternalBrowser(loginActivity, parse2);
                                                                    return;
                                                            }
                                                        }
                                                    });
                                                    ActivityLoginBinding activityLoginBinding13 = this.binding;
                                                    if (activityLoginBinding13 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((Button) activityLoginBinding13.loginCreateAccountButton).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.login.LoginActivity$$ExternalSyntheticLambda3
                                                        public final /* synthetic */ LoginActivity f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            int i32 = i4;
                                                            LoginActivity loginActivity = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    int i42 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "error_back_button", null, null, 246);
                                                                    }
                                                                    loginActivity.getOnBackPressedDispatcher().onBackPressed();
                                                                    return;
                                                                case 1:
                                                                    int i52 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument2 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument2 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "error_retry_button", null, null, 246);
                                                                    }
                                                                    ActivityLoginBinding activityLoginBinding42 = loginActivity.binding;
                                                                    if (activityLoginBinding42 != null) {
                                                                        ((WikiErrorView) activityLoginBinding42.viewLoginError).setVisibility(8);
                                                                        return;
                                                                    } else {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                case 2:
                                                                    int i6 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument3 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument3 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "login_button", null, null, 246);
                                                                    }
                                                                    loginActivity.validateThenLogin();
                                                                    return;
                                                                case 3:
                                                                    int i7 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument4 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument4 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "create_account_button", null, null, 246);
                                                                    }
                                                                    loginActivity.startCreateAccountActivity();
                                                                    return;
                                                                case 4:
                                                                    int i8 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument5 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument5 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument5, "click", null, null, "privacy_policy_link", null, null, 246);
                                                                    }
                                                                    String string2 = loginActivity.getString(R.string.privacy_policy_url);
                                                                    string2.getClass();
                                                                    Uri parse = Uri.parse(string2);
                                                                    parse.getClass();
                                                                    UriUtil.visitInExternalBrowser(loginActivity, parse);
                                                                    return;
                                                                default:
                                                                    int i9 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument6 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument6 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument6, "click", null, null, "forgot_password_link", null, null, 246);
                                                                    }
                                                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                    String string3 = Jsoup.getInstance().getString(R.string.forget_password_link, loginActivity.wiki.languageCode);
                                                                    string3.getClass();
                                                                    Uri parse2 = Uri.parse(string3);
                                                                    parse2.getClass();
                                                                    UriUtil.visitInExternalBrowser(loginActivity, parse2);
                                                                    return;
                                                            }
                                                        }
                                                    });
                                                    ActivityLoginBinding activityLoginBinding14 = this.binding;
                                                    if (activityLoginBinding14 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    final int i6 = 4;
                                                    ((TextView) ((Request.Builder) activityLoginBinding14.footerContainer).headers).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.login.LoginActivity$$ExternalSyntheticLambda3
                                                        public final /* synthetic */ LoginActivity f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            int i32 = i6;
                                                            LoginActivity loginActivity = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    int i42 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "error_back_button", null, null, 246);
                                                                    }
                                                                    loginActivity.getOnBackPressedDispatcher().onBackPressed();
                                                                    return;
                                                                case 1:
                                                                    int i52 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument2 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument2 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "error_retry_button", null, null, 246);
                                                                    }
                                                                    ActivityLoginBinding activityLoginBinding42 = loginActivity.binding;
                                                                    if (activityLoginBinding42 != null) {
                                                                        ((WikiErrorView) activityLoginBinding42.viewLoginError).setVisibility(8);
                                                                        return;
                                                                    } else {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                case 2:
                                                                    int i62 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument3 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument3 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "login_button", null, null, 246);
                                                                    }
                                                                    loginActivity.validateThenLogin();
                                                                    return;
                                                                case 3:
                                                                    int i7 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument4 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument4 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "create_account_button", null, null, 246);
                                                                    }
                                                                    loginActivity.startCreateAccountActivity();
                                                                    return;
                                                                case 4:
                                                                    int i8 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument5 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument5 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument5, "click", null, null, "privacy_policy_link", null, null, 246);
                                                                    }
                                                                    String string2 = loginActivity.getString(R.string.privacy_policy_url);
                                                                    string2.getClass();
                                                                    Uri parse = Uri.parse(string2);
                                                                    parse.getClass();
                                                                    UriUtil.visitInExternalBrowser(loginActivity, parse);
                                                                    return;
                                                                default:
                                                                    int i9 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument6 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument6 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument6, "click", null, null, "forgot_password_link", null, null, 246);
                                                                    }
                                                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                    String string3 = Jsoup.getInstance().getString(R.string.forget_password_link, loginActivity.wiki.languageCode);
                                                                    string3.getClass();
                                                                    Uri parse2 = Uri.parse(string3);
                                                                    parse2.getClass();
                                                                    UriUtil.visitInExternalBrowser(loginActivity, parse2);
                                                                    return;
                                                            }
                                                        }
                                                    });
                                                    ActivityLoginBinding activityLoginBinding15 = this.binding;
                                                    if (activityLoginBinding15 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    final int i7 = 5;
                                                    ((TextView) ((Request.Builder) activityLoginBinding15.footerContainer).url).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.login.LoginActivity$$ExternalSyntheticLambda3
                                                        public final /* synthetic */ LoginActivity f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            int i32 = i7;
                                                            LoginActivity loginActivity = this.f$0;
                                                            switch (i32) {
                                                                case 0:
                                                                    int i42 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "error_back_button", null, null, 246);
                                                                    }
                                                                    loginActivity.getOnBackPressedDispatcher().onBackPressed();
                                                                    return;
                                                                case 1:
                                                                    int i52 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument2 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument2 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "error_retry_button", null, null, 246);
                                                                    }
                                                                    ActivityLoginBinding activityLoginBinding42 = loginActivity.binding;
                                                                    if (activityLoginBinding42 != null) {
                                                                        ((WikiErrorView) activityLoginBinding42.viewLoginError).setVisibility(8);
                                                                        return;
                                                                    } else {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                case 2:
                                                                    int i62 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument3 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument3 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "login_button", null, null, 246);
                                                                    }
                                                                    loginActivity.validateThenLogin();
                                                                    return;
                                                                case 3:
                                                                    int i72 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument4 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument4 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "create_account_button", null, null, 246);
                                                                    }
                                                                    loginActivity.startCreateAccountActivity();
                                                                    return;
                                                                case 4:
                                                                    int i8 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument5 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument5 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument5, "click", null, null, "privacy_policy_link", null, null, 246);
                                                                    }
                                                                    String string2 = loginActivity.getString(R.string.privacy_policy_url);
                                                                    string2.getClass();
                                                                    Uri parse = Uri.parse(string2);
                                                                    parse.getClass();
                                                                    UriUtil.visitInExternalBrowser(loginActivity, parse);
                                                                    return;
                                                                default:
                                                                    int i9 = LoginActivity.$r8$clinit;
                                                                    SVGAndroidRenderer instrument6 = ContextKt.getInstrument(loginActivity);
                                                                    if (instrument6 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument6, "click", null, null, "forgot_password_link", null, null, 246);
                                                                    }
                                                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                    String string3 = Jsoup.getInstance().getString(R.string.forget_password_link, loginActivity.wiki.languageCode);
                                                                    string3.getClass();
                                                                    Uri parse2 = Uri.parse(string3);
                                                                    parse2.getClass();
                                                                    UriUtil.visitInExternalBrowser(loginActivity, parse2);
                                                                    return;
                                                            }
                                                        }
                                                    });
                                                    resetAuthState();
                                                    setResult(2);
                                                    SVGAndroidRenderer instrument = ContextKt.getInstrument(this);
                                                    if (instrument != null) {
                                                        String str2 = this.loginSource;
                                                        if (str2 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("loginSource");
                                                            throw null;
                                                        }
                                                        Map singletonMap = Collections.singletonMap("invoke_source", str2);
                                                        singletonMap.getClass();
                                                        SVGAndroidRenderer.submitInteraction$default(instrument, "impression", null, null, null, null, singletonMap, 126);
                                                        return;
                                                    }
                                                    return;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.hCaptchaHelper.cleanup();
    }

    public final void onLoginSuccess() {
        Map map;
        String str = this.loginSource;
        Continuation continuation = null;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loginSource");
            throw null;
        }
        boolean equals = str.equals("widget_challenge");
        SVGAndroidRenderer instrument = ContextKt.getInstrument(this);
        if (instrument != null) {
            if (equals) {
                String str2 = this.loginSource;
                if (str2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("loginSource");
                    throw null;
                }
                Map singletonMap = Collections.singletonMap("invoke_source", str2);
                singletonMap.getClass();
                map = singletonMap;
            } else {
                map = null;
            }
            SVGAndroidRenderer.submitInteraction$default(instrument, "success", null, null, null, null, map, 126);
        }
        if (equals) {
            Prefs prefs = Prefs.INSTANCE;
            PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_enrolled, true);
            String localDate = LocalDate.now().toString();
            localDate.getClass();
            PrefsIoUtil.setString(R.string.preference_key_reading_challenge_enrollment_date, localDate);
            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new SyntaxHighlighter.AnonymousClass2(6, this, continuation), 3);
            getIntent().removeExtra("login_request_source");
        }
        Window window = getWindow();
        window.getClass();
        HintHandler hintHandler = new HintHandler(window.getDecorView());
        int i = Build.VERSION.SDK_INT;
        (i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
        setResult(1);
        Prefs prefs2 = Prefs.INSTANCE;
        Prefs.setReadingListSyncEnabled(true);
        EmptySet emptySet = EmptySet.INSTANCE;
        Prefs.setReadingListPagesDeletedIds(emptySet);
        Prefs.setReadingListsDeletedIds(emptySet);
        PrefsIoUtil.setBoolean(R.string.preference_key_temp_account_welcome_shown, false);
        PrefsIoUtil.setLong(0L, R.string.preference_key_temp_account_create_day);
        PrefsIoUtil.setString(R.string.preference_key_last_background_login_date_time, "");
        Path.Companion.manualSyncWithForce();
        Okio__JvmOkioKt.schedulePollNotificationJob(this);
        FlowEventBus.post(new LoggedInEvent());
        finish();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("loginShowing", true);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onStop() {
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((LinearProgressIndicator) activityLoginBinding.viewProgressBar).setVisibility(8);
        super.onStop();
    }

    public final void resetAuthState() {
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((TextInputLayout) activityLoginBinding.login2faText).setVisibility(8);
        ActivityLoginBinding activityLoginBinding2 = this.binding;
        if (activityLoginBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        EditText editText = ((TextInputLayout) activityLoginBinding2.login2faText).getEditText();
        if (editText != null) {
            editText.setText("");
        }
        this.firstStepToken = null;
        this.uiPromptResult = null;
        this.captchaResult = null;
        CaptchaHandler captchaHandler = this.captchaHandler;
        if (captchaHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
            throw null;
        }
        captchaHandler.hideCaptcha();
        this.hCaptchaToken = null;
    }

    public final void showProgressBar$2(boolean z) {
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((LinearProgressIndicator) activityLoginBinding.viewProgressBar).setVisibility(z ? 0 : 8);
        ActivityLoginBinding activityLoginBinding2 = this.binding;
        if (activityLoginBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((Button) activityLoginBinding2.loginButton).setEnabled(!z);
        ActivityLoginBinding activityLoginBinding3 = this.binding;
        if (activityLoginBinding3 != null) {
            ((Button) activityLoginBinding3.loginButton).setText(z ? R.string.login_in_progress_dialog_message : R.string.menu_login);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    public final void startCreateAccountActivity() {
        Pattern pattern = CreateAccountActivity.USERNAME_PATTERN;
        String str = this.loginSource;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loginSource");
            throw null;
        }
        Intent putExtra = new Intent(this, (Class<?>) CreateAccountActivity.class).putExtra("login_request_source", str);
        putExtra.getClass();
        this.createAccountLauncher.launch(putExtra, null);
    }

    public final void validateThenLogin() {
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((TextInputLayout) activityLoginBinding.loginUsernameText).setErrorEnabled(false);
        ActivityLoginBinding activityLoginBinding2 = this.binding;
        if (activityLoginBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((TextInputLayout) activityLoginBinding2.loginPasswordInput).setErrorEnabled(false);
        CaptchaHandler captchaHandler = this.captchaHandler;
        if (captchaHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
            throw null;
        }
        captchaHandler.setErrorText(null);
        Pattern pattern = CreateAccountActivity.USERNAME_PATTERN;
        ActivityLoginBinding activityLoginBinding3 = this.binding;
        if (activityLoginBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        if (!pattern.matcher(getText$1((TextInputLayout) activityLoginBinding3.loginUsernameText)).matches()) {
            SVGAndroidRenderer instrument = ContextKt.getInstrument(this);
            if (instrument != null) {
                Map singletonMap = Collections.singletonMap("validation_error", "username_invalid");
                singletonMap.getClass();
                SVGAndroidRenderer.submitInteraction$default(instrument, "error", null, null, null, null, singletonMap, 126);
            }
            ActivityLoginBinding activityLoginBinding4 = this.binding;
            if (activityLoginBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((TextInputLayout) activityLoginBinding4.loginUsernameText).requestFocus();
            ActivityLoginBinding activityLoginBinding5 = this.binding;
            if (activityLoginBinding5 != null) {
                ((TextInputLayout) activityLoginBinding5.loginUsernameText).setError(getString(R.string.create_account_username_error));
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
        CaptchaHandler captchaHandler2 = this.captchaHandler;
        if (captchaHandler2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
            throw null;
        }
        if (captchaHandler2.isActive()) {
            CaptchaHandler captchaHandler3 = this.captchaHandler;
            if (captchaHandler3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                throw null;
            }
            String captchaWord = captchaHandler3.captchaWord();
            if (captchaWord == null || captchaWord.length() == 0) {
                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(this);
                if (instrument2 != null) {
                    Map singletonMap2 = Collections.singletonMap("validation_error", "fancy_captcha_empty");
                    singletonMap2.getClass();
                    SVGAndroidRenderer.submitInteraction$default(instrument2, "error", null, null, null, null, singletonMap2, 126);
                }
                CaptchaHandler captchaHandler4 = this.captchaHandler;
                if (captchaHandler4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                    throw null;
                }
                captchaHandler4.setErrorText(getString(R.string.edit_section_captcha_hint));
                CaptchaHandler captchaHandler5 = this.captchaHandler;
                if (captchaHandler5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                    throw null;
                }
                EditText editText = captchaHandler5.binding.captchaText.getEditText();
                if (editText != null) {
                    editText.requestFocus();
                    return;
                }
                return;
            }
        }
        doLogin();
    }
}
