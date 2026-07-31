package org.wikipedia.login;

import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import com.caverock.androidsvg.CSSParser;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.textfield.TextInputLayout;
import com.google.gson.GsonBuilder;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.createaccount.CreateAccountActivity;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.util.TabUtil;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/login/ResetPasswordActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "org/wikipedia/media/AvPlayer", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ResetPasswordActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public GsonBuilder binding;
    public String firstStepToken;
    public final AvPlayer loginCallback = new AvPlayer(12, this);
    public LoginClient loginClient;
    public LoginResult uiPromptResult;
    public String userName;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CreateAccountActivity.ValidateResult.values().length];
            try {
                iArr[CreateAccountActivity.ValidateResult.PASSWORD_TOO_SHORT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CreateAccountActivity.ValidateResult.PASSWORD_IS_USERNAME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CreateAccountActivity.ValidateResult.PASSWORD_MISMATCH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static String getText$2(TextInputLayout textInputLayout) {
        Editable text;
        EditText editText = textInputLayout.getEditText();
        String obj = (editText == null || (text = editText.getText()) == null) ? null : text.toString();
        return obj == null ? "" : obj;
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_reset_password, (ViewGroup) null, false);
        int i2 = R.id.login_2fa_text;
        TextInputLayout textInputLayout = (TextInputLayout) Room.findChildViewById(inflate, R.id.login_2fa_text);
        if (textInputLayout != null) {
            i2 = R.id.login_button;
            Button button = (Button) Room.findChildViewById(inflate, R.id.login_button);
            if (button != null) {
                i2 = R.id.reset_password_input;
                TextInputLayout textInputLayout2 = (TextInputLayout) Room.findChildViewById(inflate, R.id.reset_password_input);
                if (textInputLayout2 != null) {
                    i2 = R.id.reset_password_repeat;
                    TextInputLayout textInputLayout3 = (TextInputLayout) Room.findChildViewById(inflate, R.id.reset_password_repeat);
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
                                    this.binding = new GsonBuilder(frameLayout, textInputLayout, button, textInputLayout2, textInputLayout3, materialToolbar, wikiErrorView, linearProgressIndicator, 6);
                                    setContentView(frameLayout);
                                    GsonBuilder gsonBuilder = this.binding;
                                    if (gsonBuilder == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                        throw null;
                                    }
                                    setSupportActionBar((MaterialToolbar) gsonBuilder.factories);
                                    GsonBuilder gsonBuilder2 = this.binding;
                                    if (gsonBuilder2 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                        throw null;
                                    }
                                    ((WikiErrorView) gsonBuilder2.hierarchyFactories).setBackClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.login.ResetPasswordActivity$$ExternalSyntheticLambda0
                                        public final /* synthetic */ ResetPasswordActivity f$0;

                                        {
                                            this.f$0 = this;
                                        }

                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i3 = i;
                                            ResetPasswordActivity resetPasswordActivity = this.f$0;
                                            switch (i3) {
                                                case 0:
                                                    int i4 = ResetPasswordActivity.$r8$clinit;
                                                    resetPasswordActivity.getOnBackPressedDispatcher().onBackPressed();
                                                    return;
                                                case 1:
                                                    GsonBuilder gsonBuilder3 = resetPasswordActivity.binding;
                                                    if (gsonBuilder3 != null) {
                                                        ((WikiErrorView) gsonBuilder3.hierarchyFactories).setVisibility(8);
                                                        return;
                                                    } else {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                default:
                                                    int i5 = ResetPasswordActivity.$r8$clinit;
                                                    resetPasswordActivity.validateThenLogin$1();
                                                    return;
                                            }
                                        }
                                    });
                                    GsonBuilder gsonBuilder3 = this.binding;
                                    if (gsonBuilder3 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                        throw null;
                                    }
                                    final int i3 = 1;
                                    ((WikiErrorView) gsonBuilder3.hierarchyFactories).setRetryClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.login.ResetPasswordActivity$$ExternalSyntheticLambda0
                                        public final /* synthetic */ ResetPasswordActivity f$0;

                                        {
                                            this.f$0 = this;
                                        }

                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i32 = i3;
                                            ResetPasswordActivity resetPasswordActivity = this.f$0;
                                            switch (i32) {
                                                case 0:
                                                    int i4 = ResetPasswordActivity.$r8$clinit;
                                                    resetPasswordActivity.getOnBackPressedDispatcher().onBackPressed();
                                                    return;
                                                case 1:
                                                    GsonBuilder gsonBuilder32 = resetPasswordActivity.binding;
                                                    if (gsonBuilder32 != null) {
                                                        ((WikiErrorView) gsonBuilder32.hierarchyFactories).setVisibility(8);
                                                        return;
                                                    } else {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                default:
                                                    int i5 = ResetPasswordActivity.$r8$clinit;
                                                    resetPasswordActivity.validateThenLogin$1();
                                                    return;
                                            }
                                        }
                                    });
                                    GsonBuilder gsonBuilder4 = this.binding;
                                    if (gsonBuilder4 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                        throw null;
                                    }
                                    Button button2 = (Button) gsonBuilder4.longSerializationPolicy;
                                    if (gsonBuilder4 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                        throw null;
                                    }
                                    TextInputLayout textInputLayout4 = (TextInputLayout) gsonBuilder4.fieldNamingPolicy;
                                    if (gsonBuilder4 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                        throw null;
                                    }
                                    final int i4 = 2;
                                    new CSSParser(button2, textInputLayout4, (TextInputLayout) gsonBuilder4.instanceCreators);
                                    GsonBuilder gsonBuilder5 = this.binding;
                                    if (gsonBuilder5 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                        throw null;
                                    }
                                    EditText editText = ((TextInputLayout) gsonBuilder5.fieldNamingPolicy).getEditText();
                                    if (editText != null) {
                                        editText.setOnEditorActionListener(new LoginActivity$$ExternalSyntheticLambda5(3, this));
                                    }
                                    GsonBuilder gsonBuilder6 = this.binding;
                                    if (gsonBuilder6 == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                        throw null;
                                    }
                                    ((Button) gsonBuilder6.longSerializationPolicy).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.login.ResetPasswordActivity$$ExternalSyntheticLambda0
                                        public final /* synthetic */ ResetPasswordActivity f$0;

                                        {
                                            this.f$0 = this;
                                        }

                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            int i32 = i4;
                                            ResetPasswordActivity resetPasswordActivity = this.f$0;
                                            switch (i32) {
                                                case 0:
                                                    int i42 = ResetPasswordActivity.$r8$clinit;
                                                    resetPasswordActivity.getOnBackPressedDispatcher().onBackPressed();
                                                    return;
                                                case 1:
                                                    GsonBuilder gsonBuilder32 = resetPasswordActivity.binding;
                                                    if (gsonBuilder32 != null) {
                                                        ((WikiErrorView) gsonBuilder32.hierarchyFactories).setVisibility(8);
                                                        return;
                                                    } else {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                default:
                                                    int i5 = ResetPasswordActivity.$r8$clinit;
                                                    resetPasswordActivity.validateThenLogin$1();
                                                    return;
                                            }
                                        }
                                    });
                                    String stringExtra = getIntent().getStringExtra("userName");
                                    if (stringExtra == null) {
                                        stringExtra = "";
                                    }
                                    this.userName = stringExtra;
                                    String stringExtra2 = getIntent().getStringExtra("token");
                                    this.firstStepToken = stringExtra2 != null ? stringExtra2 : "";
                                    resetAuthState$1();
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onStop() {
        showProgressBar$3(false);
        super.onStop();
    }

    public final void resetAuthState$1() {
        GsonBuilder gsonBuilder = this.binding;
        if (gsonBuilder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((TextInputLayout) gsonBuilder.excluder).setVisibility(8);
        GsonBuilder gsonBuilder2 = this.binding;
        if (gsonBuilder2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        EditText editText = ((TextInputLayout) gsonBuilder2.excluder).getEditText();
        if (editText != null) {
            editText.setText("");
        }
        this.uiPromptResult = null;
    }

    public final void showProgressBar$3(boolean z) {
        GsonBuilder gsonBuilder = this.binding;
        if (gsonBuilder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((LinearProgressIndicator) gsonBuilder.reflectionFilters).setVisibility(z ? 0 : 8);
        GsonBuilder gsonBuilder2 = this.binding;
        if (gsonBuilder2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((Button) gsonBuilder2.longSerializationPolicy).setEnabled(!z);
        GsonBuilder gsonBuilder3 = this.binding;
        if (gsonBuilder3 != null) {
            ((Button) gsonBuilder3.longSerializationPolicy).setText(z ? R.string.login_in_progress_dialog_message : R.string.menu_login);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    public final void validateThenLogin$1() {
        GsonBuilder gsonBuilder = this.binding;
        if (gsonBuilder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((TextInputLayout) gsonBuilder.fieldNamingPolicy).setErrorEnabled(false);
        GsonBuilder gsonBuilder2 = this.binding;
        if (gsonBuilder2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((TextInputLayout) gsonBuilder2.instanceCreators).setErrorEnabled(false);
        Pattern pattern = CreateAccountActivity.USERNAME_PATTERN;
        String str = this.userName;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("userName");
            throw null;
        }
        GsonBuilder gsonBuilder3 = this.binding;
        if (gsonBuilder3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        String text$2 = getText$2((TextInputLayout) gsonBuilder3.fieldNamingPolicy);
        GsonBuilder gsonBuilder4 = this.binding;
        if (gsonBuilder4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        int i = WhenMappings.$EnumSwitchMapping$0[TabUtil.validateInput(str, text$2, getText$2((TextInputLayout) gsonBuilder4.instanceCreators), "").ordinal()];
        if (i == 1) {
            GsonBuilder gsonBuilder5 = this.binding;
            if (gsonBuilder5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((TextInputLayout) gsonBuilder5.fieldNamingPolicy).requestFocus();
            GsonBuilder gsonBuilder6 = this.binding;
            if (gsonBuilder6 != null) {
                ((TextInputLayout) gsonBuilder6.fieldNamingPolicy).setError(getString(R.string.create_account_password_error));
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
        GsonBuilder gsonBuilder7 = this.binding;
        if (i == 2) {
            if (gsonBuilder7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((TextInputLayout) gsonBuilder7.fieldNamingPolicy).requestFocus();
            GsonBuilder gsonBuilder8 = this.binding;
            if (gsonBuilder8 != null) {
                ((TextInputLayout) gsonBuilder8.fieldNamingPolicy).setError(getString(R.string.create_account_password_is_username));
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
        if (i == 3) {
            if (gsonBuilder7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((TextInputLayout) gsonBuilder7.instanceCreators).requestFocus();
            GsonBuilder gsonBuilder9 = this.binding;
            if (gsonBuilder9 != null) {
                ((TextInputLayout) gsonBuilder9.instanceCreators).setError(getString(R.string.create_account_passwords_mismatch_error));
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
        if (gsonBuilder7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        String text$22 = getText$2((TextInputLayout) gsonBuilder7.fieldNamingPolicy);
        GsonBuilder gsonBuilder10 = this.binding;
        if (gsonBuilder10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        String text$23 = getText$2((TextInputLayout) gsonBuilder10.instanceCreators);
        GsonBuilder gsonBuilder11 = this.binding;
        if (gsonBuilder11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        String text$24 = getText$2((TextInputLayout) gsonBuilder11.excluder);
        showProgressBar$3(true);
        LoginClient loginClient = this.loginClient;
        if (loginClient == null) {
            loginClient = new LoginClient(0);
            this.loginClient = loginClient;
        }
        LoginClient loginClient2 = loginClient;
        if (this.uiPromptResult == null) {
            LifecycleCoroutineScopeImpl lifecycleScope = ViewModelKt.getLifecycleScope(this);
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            WikiSite wikiSite = Jsoup.getInstance().getWikiSite();
            String str2 = this.userName;
            if (str2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("userName");
                throw null;
            }
            String str3 = this.firstStepToken;
            if (str3 != null) {
                LoginClient.login$default(loginClient2, lifecycleScope, wikiSite, str2, text$22, text$23, str3, null, null, null, null, Boolean.TRUE, this.loginCallback, 960);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("firstStepToken");
                throw null;
            }
        }
        LifecycleCoroutineScopeImpl lifecycleScope2 = ViewModelKt.getLifecycleScope(this);
        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
        WikiSite wikiSite2 = Jsoup.getInstance().getWikiSite();
        String str4 = this.userName;
        if (str4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("userName");
            throw null;
        }
        LoginResult loginResult = this.uiPromptResult;
        String str5 = loginResult instanceof LoginOATHResult ? text$24 : null;
        String str6 = loginResult instanceof LoginEmailAuthResult ? text$24 : null;
        String str7 = this.firstStepToken;
        if (str7 != null) {
            LoginClient.login$default(loginClient2, lifecycleScope2, wikiSite2, str4, text$22, text$23, str7, str5, str6, null, null, Boolean.TRUE, this.loginCallback, 768);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("firstStepToken");
            throw null;
        }
    }
}
