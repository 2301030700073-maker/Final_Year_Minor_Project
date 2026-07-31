package org.wikipedia.createaccount;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.SearchView;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.ui.unit.DpKt;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.ConnectionPool;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Options;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.captcha.CaptchaResult;
import org.wikipedia.databinding.GroupCaptchaBinding;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.edit.EditSectionViewModel$postEdit$2;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.login.LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.TabUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/createaccount/CreateAccountActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "ValidateResult", "org/wikipedia/util/TabUtil", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CreateAccountActivity extends BaseActivity {
    public static final Pattern USERNAME_PATTERN;
    public ItemNotificationBinding binding;
    public CaptchaHandler captchaHandler;
    public final DefaultSocket hCaptchaHelper;
    public String requestSource;
    public final LinkedHashMap textEnteredEventSent;
    public SearchView.AnonymousClass10 userNameTextWatcher;
    public final Request.Builder viewModel$delegate;
    public final WikiSite wiki;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ValidateResult {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ValidateResult[] $VALUES;
        public static final ValidateResult INVALID_EMAIL;
        public static final ValidateResult INVALID_USERNAME;
        public static final ValidateResult NO_EMAIL;
        public static final ValidateResult PASSWORD_IS_USERNAME;
        public static final ValidateResult PASSWORD_MISMATCH;
        public static final ValidateResult PASSWORD_TOO_SHORT;
        public static final ValidateResult SUCCESS;

        static {
            ValidateResult validateResult = new ValidateResult("SUCCESS", 0);
            SUCCESS = validateResult;
            ValidateResult validateResult2 = new ValidateResult("INVALID_USERNAME", 1);
            INVALID_USERNAME = validateResult2;
            ValidateResult validateResult3 = new ValidateResult("PASSWORD_TOO_SHORT", 2);
            PASSWORD_TOO_SHORT = validateResult3;
            ValidateResult validateResult4 = new ValidateResult("PASSWORD_IS_USERNAME", 3);
            PASSWORD_IS_USERNAME = validateResult4;
            ValidateResult validateResult5 = new ValidateResult("PASSWORD_MISMATCH", 4);
            PASSWORD_MISMATCH = validateResult5;
            ValidateResult validateResult6 = new ValidateResult("NO_EMAIL", 5);
            NO_EMAIL = validateResult6;
            ValidateResult validateResult7 = new ValidateResult("INVALID_EMAIL", 6);
            INVALID_EMAIL = validateResult7;
            ValidateResult[] validateResultArr = {validateResult, validateResult2, validateResult3, validateResult4, validateResult5, validateResult6, validateResult7};
            $VALUES = validateResultArr;
            $ENTRIES = new EnumEntriesList(validateResultArr);
        }

        public static ValidateResult valueOf(String str) {
            return (ValidateResult) Enum.valueOf(ValidateResult.class, str);
        }

        public static ValidateResult[] values() {
            return (ValidateResult[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ValidateResult.values().length];
            try {
                iArr[ValidateResult.INVALID_USERNAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ValidateResult.PASSWORD_TOO_SHORT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ValidateResult.PASSWORD_IS_USERNAME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ValidateResult.PASSWORD_MISMATCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ValidateResult.INVALID_EMAIL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ValidateResult.NO_EMAIL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ValidateResult.SUCCESS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        Pattern compile = Pattern.compile("[^#<>\\[\\]|{}/@]*");
        compile.getClass();
        USERNAME_PATTERN = compile;
    }

    public CreateAccountActivity() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.wiki = Jsoup.getInstance().getWikiSite();
        this.requestSource = "";
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(CreateAccountActivityViewModel.class), new Function0(this) { // from class: org.wikipedia.createaccount.CreateAccountActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ CreateAccountActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                CreateAccountActivity createAccountActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return createAccountActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return createAccountActivity.getViewModelStore();
                    default:
                        return createAccountActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.createaccount.CreateAccountActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ CreateAccountActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                CreateAccountActivity createAccountActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return createAccountActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return createAccountActivity.getViewModelStore();
                    default:
                        return createAccountActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.createaccount.CreateAccountActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ CreateAccountActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                CreateAccountActivity createAccountActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return createAccountActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return createAccountActivity.getViewModelStore();
                    default:
                        return createAccountActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
        this.textEnteredEventSent = new LinkedHashMap();
        this.hCaptchaHelper = new DefaultSocket(this, new ConnectionPool(25, this));
    }

    public static String getText(TextInputLayout textInputLayout) {
        EditText editText = textInputLayout.getEditText();
        return editText != null ? editText.getText().toString() : "";
    }

    public final void createAccount() {
        CaptchaHandler captchaHandler = this.captchaHandler;
        Continuation continuation = null;
        if (captchaHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
            throw null;
        }
        if (captchaHandler.isActive()) {
            CaptchaHandler captchaHandler2 = this.captchaHandler;
            if (captchaHandler2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                throw null;
            }
            String str = captchaHandler2.token;
            if (str != null) {
                doCreateAccount(str, null);
                return;
            }
        }
        CreateAccountActivityViewModel viewModel = getViewModel();
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new CreateAccountActivityViewModel$doCreateAccount$$inlined$CoroutineExceptionHandler$1(viewModel, 1), null, new ThumbNode$onAttach$1(27, viewModel, continuation), 2);
    }

    public final void doCreateAccount(String str, String str2) {
        String captchaWord;
        showProgressBar(true);
        ItemNotificationBinding itemNotificationBinding = this.binding;
        if (itemNotificationBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        String text = getText((TextInputLayout) itemNotificationBinding.notificationDescription);
        String str3 = text.length() == 0 ? null : text;
        ItemNotificationBinding itemNotificationBinding2 = this.binding;
        if (itemNotificationBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        String text2 = getText((TextInputLayout) itemNotificationBinding2.notificationSubtitle);
        ItemNotificationBinding itemNotificationBinding3 = this.binding;
        if (itemNotificationBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        String text3 = getText((TextInputLayout) itemNotificationBinding3.notificationTime);
        ItemNotificationBinding itemNotificationBinding4 = this.binding;
        if (itemNotificationBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        String text4 = getText((TextInputLayout) itemNotificationBinding4.notificationItemSelectedImage);
        CreateAccountActivityViewModel viewModel = getViewModel();
        CaptchaHandler captchaHandler = this.captchaHandler;
        if (captchaHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
            throw null;
        }
        CaptchaResult captchaResult = captchaHandler.captchaResult;
        String str4 = captchaResult != null ? captchaResult.captchaId : null;
        if (str2 == null || str2.length() == 0) {
            CaptchaHandler captchaHandler2 = this.captchaHandler;
            if (captchaHandler2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                throw null;
            }
            captchaWord = captchaHandler2.captchaWord();
        } else {
            captchaWord = str2;
        }
        str.getClass();
        text4.getClass();
        text2.getClass();
        text3.getClass();
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new CreateAccountActivityViewModel$doCreateAccount$$inlined$CoroutineExceptionHandler$1(viewModel, 0), null, new EditSectionViewModel$postEdit$2(text4, text2, text3, str, str3, str4, captchaWord, viewModel, (Continuation) null), 2);
    }

    public final CreateAccountActivityViewModel getViewModel() {
        return (CreateAccountActivityViewModel) this.viewModel$delegate.getValue();
    }

    public final void handleAccountCreationError(String str) {
        int i = 0;
        if (StringsKt.contains(str, "blocked", false)) {
            String string = getString(R.string.create_account_ip_block_message);
            string.getClass();
            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(this, string, 0, 12);
            makeSnackbar$default.setAction(R.string.create_account_ip_block_details, new CreateAccountActivity$$ExternalSyntheticLambda1(this, i));
            makeSnackbar$default.show();
        } else {
            StringUtil stringUtil = StringUtil.INSTANCE;
            ShareUtil.showMessage(this, StringUtil.fromHtml(str), 0);
        }
        L.LEVEL_W.log("Account creation failed with result ".concat(str), null);
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        SearchView.AnonymousClass10 anonymousClass10;
        SVGAndroidRenderer instrument;
        super.onCreate(bundle);
        Continuation continuation = null;
        int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_create_account, (ViewGroup) null, false);
        int i2 = R.id.captcha_container;
        View findChildViewById = Room.findChildViewById(inflate, R.id.captcha_container);
        if (findChildViewById != null) {
            GroupCaptchaBinding bind = GroupCaptchaBinding.bind(findChildViewById);
            int i3 = R.id.create_account_email;
            TextInputLayout textInputLayout = (TextInputLayout) Room.findChildViewById(inflate, R.id.create_account_email);
            if (textInputLayout != null) {
                i3 = R.id.create_account_login_button;
                Button button = (Button) Room.findChildViewById(inflate, R.id.create_account_login_button);
                if (button != null) {
                    i3 = R.id.create_account_password_input;
                    TextInputLayout textInputLayout2 = (TextInputLayout) Room.findChildViewById(inflate, R.id.create_account_password_input);
                    if (textInputLayout2 != null) {
                        i3 = R.id.create_account_password_repeat;
                        TextInputLayout textInputLayout3 = (TextInputLayout) Room.findChildViewById(inflate, R.id.create_account_password_repeat);
                        if (textInputLayout3 != null) {
                            i3 = R.id.create_account_primary_container;
                            LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.create_account_primary_container);
                            if (linearLayout != null) {
                                i3 = R.id.create_account_submit_button;
                                Button button2 = (Button) Room.findChildViewById(inflate, R.id.create_account_submit_button);
                                if (button2 != null) {
                                    i3 = R.id.create_account_username;
                                    TextInputLayout textInputLayout4 = (TextInputLayout) Room.findChildViewById(inflate, R.id.create_account_username);
                                    if (textInputLayout4 != null) {
                                        i3 = R.id.email_recommendation_text;
                                        if (((TextView) Room.findChildViewById(inflate, R.id.email_recommendation_text)) != null) {
                                            i3 = R.id.footer_container;
                                            View findChildViewById2 = Room.findChildViewById(inflate, R.id.footer_container);
                                            if (findChildViewById2 != null) {
                                                Request.Builder bind2 = Request.Builder.bind(findChildViewById2);
                                                int i4 = R.id.toolbar;
                                                MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                                                if (materialToolbar != null) {
                                                    i4 = R.id.view_create_account_error;
                                                    WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.view_create_account_error);
                                                    if (wikiErrorView != null) {
                                                        LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.view_progress_bar);
                                                        if (linearProgressIndicator != null) {
                                                            ItemNotificationBinding itemNotificationBinding = new ItemNotificationBinding();
                                                            itemNotificationBinding.rootView = bind;
                                                            itemNotificationBinding.notificationDescription = textInputLayout;
                                                            itemNotificationBinding.notificationSource = button;
                                                            itemNotificationBinding.notificationSubtitle = textInputLayout2;
                                                            itemNotificationBinding.notificationTime = textInputLayout3;
                                                            itemNotificationBinding.notificationTitle = linearLayout;
                                                            itemNotificationBinding.notificationItemImage = button2;
                                                            itemNotificationBinding.notificationItemSelectedImage = textInputLayout4;
                                                            itemNotificationBinding.notificationOverflowMenu = bind2;
                                                            itemNotificationBinding.notificationWikiCodeImage = materialToolbar;
                                                            itemNotificationBinding.notificationWikiCode = wikiErrorView;
                                                            itemNotificationBinding.notificationWikiCodeContainer = linearProgressIndicator;
                                                            this.binding = itemNotificationBinding;
                                                            setContentView((FrameLayout) inflate);
                                                            ItemNotificationBinding itemNotificationBinding2 = this.binding;
                                                            if (itemNotificationBinding2 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            setSupportActionBar((MaterialToolbar) itemNotificationBinding2.notificationWikiCodeImage);
                                                            TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
                                                            testKitchenClient.getClass();
                                                            SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-authentication", testKitchenClient);
                                                            sVGAndroidRenderer.startFunnel("create_account");
                                                            this._instrument = sVGAndroidRenderer;
                                                            ItemNotificationBinding itemNotificationBinding3 = this.binding;
                                                            if (itemNotificationBinding3 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            LinearLayout linearLayout2 = ((GroupCaptchaBinding) itemNotificationBinding3.rootView).rootView;
                                                            if (itemNotificationBinding3 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            LinearLayout linearLayout3 = (LinearLayout) itemNotificationBinding3.notificationTitle;
                                                            String string = getString(R.string.create_account_activity_title);
                                                            string.getClass();
                                                            this.captchaHandler = new CaptchaHandler(this, this.wiki, linearLayout2, linearLayout3, string, getString(R.string.create_account_button), ContextKt.getInstrument(this), 64);
                                                            ItemNotificationBinding itemNotificationBinding4 = this.binding;
                                                            if (itemNotificationBinding4 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            Button button3 = (Button) itemNotificationBinding4.notificationItemImage;
                                                            if (itemNotificationBinding4 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            TextInputLayout textInputLayout5 = (TextInputLayout) itemNotificationBinding4.notificationItemSelectedImage;
                                                            if (itemNotificationBinding4 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            int i5 = 2;
                                                            int i6 = 1;
                                                            new CSSParser(button3, textInputLayout5, (TextInputLayout) itemNotificationBinding4.notificationSubtitle);
                                                            ItemNotificationBinding itemNotificationBinding5 = this.binding;
                                                            if (itemNotificationBinding5 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            GroupCaptchaBinding groupCaptchaBinding = (GroupCaptchaBinding) itemNotificationBinding5.rootView;
                                                            Button button4 = groupCaptchaBinding.captchaSubmitButton;
                                                            if (itemNotificationBinding5 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            new CSSParser(button4, groupCaptchaBinding.captchaText);
                                                            ItemNotificationBinding itemNotificationBinding6 = this.binding;
                                                            if (itemNotificationBinding6 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            ((WikiErrorView) itemNotificationBinding6.notificationWikiCode).setBackClickListener(new CreateAccountActivity$$ExternalSyntheticLambda1(this, i6));
                                                            ItemNotificationBinding itemNotificationBinding7 = this.binding;
                                                            if (itemNotificationBinding7 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            ((WikiErrorView) itemNotificationBinding7.notificationWikiCode).setRetryClickListener(new CreateAccountActivity$$ExternalSyntheticLambda1(this, i5));
                                                            ItemNotificationBinding itemNotificationBinding8 = this.binding;
                                                            if (itemNotificationBinding8 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            ((Button) itemNotificationBinding8.notificationItemImage).setOnClickListener(new CreateAccountActivity$$ExternalSyntheticLambda1(this, 3));
                                                            ItemNotificationBinding itemNotificationBinding9 = this.binding;
                                                            if (itemNotificationBinding9 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            ((GroupCaptchaBinding) itemNotificationBinding9.rootView).captchaSubmitButton.setOnClickListener(new CreateAccountActivity$$ExternalSyntheticLambda1(this, 4));
                                                            ItemNotificationBinding itemNotificationBinding10 = this.binding;
                                                            if (itemNotificationBinding10 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            ((Button) itemNotificationBinding10.notificationSource).setOnClickListener(new CreateAccountActivity$$ExternalSyntheticLambda1(this, 5));
                                                            ItemNotificationBinding itemNotificationBinding11 = this.binding;
                                                            if (itemNotificationBinding11 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            ((TextView) ((Request.Builder) itemNotificationBinding11.notificationOverflowMenu).headers).setOnClickListener(new CreateAccountActivity$$ExternalSyntheticLambda1(this, 6));
                                                            ItemNotificationBinding itemNotificationBinding12 = this.binding;
                                                            if (itemNotificationBinding12 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            ((TextView) ((Request.Builder) itemNotificationBinding12.notificationOverflowMenu).url).setOnClickListener(new CreateAccountActivity$$ExternalSyntheticLambda1(this, 7));
                                                            ItemNotificationBinding itemNotificationBinding13 = this.binding;
                                                            if (itemNotificationBinding13 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            ((GroupCaptchaBinding) itemNotificationBinding13.rootView).captchaText.setOnKeyListener(new View.OnKeyListener() { // from class: org.wikipedia.createaccount.CreateAccountActivity$$ExternalSyntheticLambda9
                                                                @Override // android.view.View.OnKeyListener
                                                                public final boolean onKey(View view, int i7, KeyEvent keyEvent) {
                                                                    Pattern pattern = CreateAccountActivity.USERNAME_PATTERN;
                                                                    view.getClass();
                                                                    keyEvent.getClass();
                                                                    if (keyEvent.getAction() != 1 || i7 != 66) {
                                                                        return false;
                                                                    }
                                                                    CreateAccountActivity createAccountActivity = CreateAccountActivity.this;
                                                                    SVGAndroidRenderer instrument2 = ContextKt.getInstrument(createAccountActivity);
                                                                    if (instrument2 != null) {
                                                                        SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "fancy_captcha_submit", null, null, 246);
                                                                    }
                                                                    createAccountActivity.validateThenCreateAccount();
                                                                    return true;
                                                                }
                                                            });
                                                            ItemNotificationBinding itemNotificationBinding14 = this.binding;
                                                            if (itemNotificationBinding14 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            EditText editText = ((TextInputLayout) itemNotificationBinding14.notificationItemSelectedImage).getEditText();
                                                            if (editText != null) {
                                                                anonymousClass10 = new SearchView.AnonymousClass10(1, this);
                                                                editText.addTextChangedListener(anonymousClass10);
                                                            } else {
                                                                anonymousClass10 = null;
                                                            }
                                                            this.userNameTextWatcher = anonymousClass10;
                                                            ItemNotificationBinding itemNotificationBinding15 = this.binding;
                                                            if (itemNotificationBinding15 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            ((TextView) ((Request.Builder) itemNotificationBinding15.notificationOverflowMenu).method).setMovementMethod(new LinkMovementMethodExt((LinkMovementMethodExt.UrlHandler) new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(12, this)));
                                                            String stringExtra = getIntent().getStringExtra("login_request_source");
                                                            if (stringExtra == null) {
                                                                stringExtra = "";
                                                            }
                                                            this.requestSource = stringExtra;
                                                            SVGAndroidRenderer sVGAndroidRenderer2 = new SVGAndroidRenderer("apps-authentication", testKitchenClient);
                                                            sVGAndroidRenderer2.parentStack = "create_account_form";
                                                            sVGAndroidRenderer2.startFunnel("create_account");
                                                            this._instrument = sVGAndroidRenderer2;
                                                            if (bundle == null && (instrument = ContextKt.getInstrument(this)) != null) {
                                                                Map singletonMap = Collections.singletonMap("invoke_source", this.requestSource);
                                                                singletonMap.getClass();
                                                                SVGAndroidRenderer.submitInteraction$default(instrument, "impression", null, null, null, null, singletonMap, 126);
                                                            }
                                                            ItemNotificationBinding itemNotificationBinding16 = this.binding;
                                                            if (itemNotificationBinding16 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            EditText editText2 = ((TextInputLayout) itemNotificationBinding16.notificationItemSelectedImage).getEditText();
                                                            if (editText2 != null) {
                                                                editText2.addTextChangedListener(new LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(this, editText2, "username", i6));
                                                            }
                                                            ItemNotificationBinding itemNotificationBinding17 = this.binding;
                                                            if (itemNotificationBinding17 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            EditText editText3 = ((TextInputLayout) itemNotificationBinding17.notificationSubtitle).getEditText();
                                                            if (editText3 != null) {
                                                                editText3.addTextChangedListener(new LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(this, editText3, "password", i6));
                                                            }
                                                            ItemNotificationBinding itemNotificationBinding18 = this.binding;
                                                            if (itemNotificationBinding18 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            EditText editText4 = ((TextInputLayout) itemNotificationBinding18.notificationTime).getEditText();
                                                            if (editText4 != null) {
                                                                editText4.addTextChangedListener(new LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(this, editText4, "confirm_password", i6));
                                                            }
                                                            ItemNotificationBinding itemNotificationBinding19 = this.binding;
                                                            if (itemNotificationBinding19 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            EditText editText5 = ((TextInputLayout) itemNotificationBinding19.notificationDescription).getEditText();
                                                            if (editText5 != null) {
                                                                editText5.addTextChangedListener(new LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(this, editText5, "email", i6));
                                                            }
                                                            boolean isTemporaryAccount = Headers.Companion.isTemporaryAccount();
                                                            ItemNotificationBinding itemNotificationBinding20 = this.binding;
                                                            if (isTemporaryAccount) {
                                                                if (itemNotificationBinding20 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                ((FrameLayout) ((Request.Builder) itemNotificationBinding20.notificationOverflowMenu).body).setVisibility(0);
                                                                ItemNotificationBinding itemNotificationBinding21 = this.binding;
                                                                if (itemNotificationBinding21 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                TextView textView = (TextView) ((Request.Builder) itemNotificationBinding21.notificationOverflowMenu).tags;
                                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                                textView.setText(StringUtil.fromHtml(getString(R.string.temp_account_login_status, Headers.Companion.getUserName())));
                                                            } else {
                                                                if (itemNotificationBinding20 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                ((FrameLayout) ((Request.Builder) itemNotificationBinding20.notificationOverflowMenu).body).setVisibility(8);
                                                            }
                                                            ItemNotificationBinding itemNotificationBinding22 = this.binding;
                                                            if (itemNotificationBinding22 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            ((TextView) ((Request.Builder) itemNotificationBinding22.notificationOverflowMenu).method).setVisibility(8);
                                                            DpKt.addCallback$default(getOnBackPressedDispatcher(), this, new MainActivity$$ExternalSyntheticLambda1(4, this));
                                                            setResult(2);
                                                            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new CreateAccountActivity$onCreate$2(this, continuation, i), 3);
                                                            return;
                                                        }
                                                        i2 = R.id.view_progress_bar;
                                                    }
                                                }
                                                i2 = i4;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            i2 = i3;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onDestroy() {
        this.hCaptchaHelper.cleanup();
        CaptchaHandler captchaHandler = this.captchaHandler;
        if (captchaHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
            throw null;
        }
        StandaloneCoroutine standaloneCoroutine = captchaHandler.clientJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        SearchView.AnonymousClass10 anonymousClass10 = this.userNameTextWatcher;
        if (anonymousClass10 != null) {
            ItemNotificationBinding itemNotificationBinding = this.binding;
            if (itemNotificationBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            EditText editText = ((TextInputLayout) itemNotificationBinding.notificationItemSelectedImage).getEditText();
            if (editText != null) {
                editText.removeTextChangedListener(anonymousClass10);
            }
        }
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onStop() {
        showProgressBar(false);
        super.onStop();
    }

    public final void showError(Throwable th) {
        SVGAndroidRenderer instrument = ContextKt.getInstrument(this);
        if (instrument != null) {
            SVGAndroidRenderer.submitInteraction$default(instrument, "error", null, null, null, null, Options.Companion.getInstrumentActionContext(th), 126);
        }
        ItemNotificationBinding itemNotificationBinding = this.binding;
        if (itemNotificationBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        WikiErrorView wikiErrorView = (WikiErrorView) itemNotificationBinding.notificationWikiCode;
        int i = WikiErrorView.$r8$clinit;
        wikiErrorView.setError(th, null);
        ItemNotificationBinding itemNotificationBinding2 = this.binding;
        if (itemNotificationBinding2 != null) {
            ((WikiErrorView) itemNotificationBinding2.notificationWikiCode).setVisibility(0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    public final void showProgressBar(boolean z) {
        ItemNotificationBinding itemNotificationBinding = this.binding;
        if (itemNotificationBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((LinearProgressIndicator) itemNotificationBinding.notificationWikiCodeContainer).setVisibility(z ? 0 : 8);
        ItemNotificationBinding itemNotificationBinding2 = this.binding;
        if (itemNotificationBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((GroupCaptchaBinding) itemNotificationBinding2.rootView).captchaSubmitButton.setEnabled(!z);
        ItemNotificationBinding itemNotificationBinding3 = this.binding;
        if (itemNotificationBinding3 != null) {
            ((GroupCaptchaBinding) itemNotificationBinding3.rootView).captchaSubmitButton.setText(z ? R.string.dialog_create_account_checking_progress : R.string.create_account_button);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    public final void validateThenCreateAccount() {
        ItemNotificationBinding itemNotificationBinding = this.binding;
        if (itemNotificationBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        final int i = 0;
        ((TextInputLayout) itemNotificationBinding.notificationItemSelectedImage).setErrorEnabled(false);
        ItemNotificationBinding itemNotificationBinding2 = this.binding;
        if (itemNotificationBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((TextInputLayout) itemNotificationBinding2.notificationSubtitle).setErrorEnabled(false);
        ItemNotificationBinding itemNotificationBinding3 = this.binding;
        if (itemNotificationBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((TextInputLayout) itemNotificationBinding3.notificationTime).setErrorEnabled(false);
        ItemNotificationBinding itemNotificationBinding4 = this.binding;
        if (itemNotificationBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((TextInputLayout) itemNotificationBinding4.notificationDescription).setErrorEnabled(false);
        ItemNotificationBinding itemNotificationBinding5 = this.binding;
        if (itemNotificationBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        String text = getText((TextInputLayout) itemNotificationBinding5.notificationItemSelectedImage);
        ItemNotificationBinding itemNotificationBinding6 = this.binding;
        if (itemNotificationBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        String text2 = getText((TextInputLayout) itemNotificationBinding6.notificationSubtitle);
        ItemNotificationBinding itemNotificationBinding7 = this.binding;
        if (itemNotificationBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        String text3 = getText((TextInputLayout) itemNotificationBinding7.notificationTime);
        ItemNotificationBinding itemNotificationBinding8 = this.binding;
        if (itemNotificationBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[TabUtil.validateInput(text, text2, text3, getText((TextInputLayout) itemNotificationBinding8.notificationDescription)).ordinal()]) {
            case 1:
                SVGAndroidRenderer instrument = ContextKt.getInstrument(this);
                if (instrument != null) {
                    Map singletonMap = Collections.singletonMap("validation_error", "username_invalid");
                    singletonMap.getClass();
                    SVGAndroidRenderer.submitInteraction$default(instrument, "error", null, null, null, null, singletonMap, 126);
                }
                ItemNotificationBinding itemNotificationBinding9 = this.binding;
                if (itemNotificationBinding9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((TextInputLayout) itemNotificationBinding9.notificationItemSelectedImage).requestFocus();
                ItemNotificationBinding itemNotificationBinding10 = this.binding;
                if (itemNotificationBinding10 != null) {
                    ((TextInputLayout) itemNotificationBinding10.notificationItemSelectedImage).setError(getString(R.string.create_account_username_error));
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
            case 2:
                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(this);
                if (instrument2 != null) {
                    Map singletonMap2 = Collections.singletonMap("validation_error", "password_too_short");
                    singletonMap2.getClass();
                    SVGAndroidRenderer.submitInteraction$default(instrument2, "error", null, null, null, null, singletonMap2, 126);
                }
                ItemNotificationBinding itemNotificationBinding11 = this.binding;
                if (itemNotificationBinding11 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((TextInputLayout) itemNotificationBinding11.notificationSubtitle).requestFocus();
                ItemNotificationBinding itemNotificationBinding12 = this.binding;
                if (itemNotificationBinding12 != null) {
                    ((TextInputLayout) itemNotificationBinding12.notificationSubtitle).setError(getString(R.string.create_account_password_error));
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
            case 3:
                SVGAndroidRenderer instrument3 = ContextKt.getInstrument(this);
                if (instrument3 != null) {
                    Map singletonMap3 = Collections.singletonMap("validation_error", "password_is_username");
                    singletonMap3.getClass();
                    SVGAndroidRenderer.submitInteraction$default(instrument3, "error", null, null, null, null, singletonMap3, 126);
                }
                ItemNotificationBinding itemNotificationBinding13 = this.binding;
                if (itemNotificationBinding13 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((TextInputLayout) itemNotificationBinding13.notificationSubtitle).requestFocus();
                ItemNotificationBinding itemNotificationBinding14 = this.binding;
                if (itemNotificationBinding14 != null) {
                    ((TextInputLayout) itemNotificationBinding14.notificationSubtitle).setError(getString(R.string.create_account_password_is_username));
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
            case 4:
                SVGAndroidRenderer instrument4 = ContextKt.getInstrument(this);
                if (instrument4 != null) {
                    Map singletonMap4 = Collections.singletonMap("validation_error", "password_mismatch");
                    singletonMap4.getClass();
                    SVGAndroidRenderer.submitInteraction$default(instrument4, "error", null, null, null, null, singletonMap4, 126);
                }
                ItemNotificationBinding itemNotificationBinding15 = this.binding;
                if (itemNotificationBinding15 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((TextInputLayout) itemNotificationBinding15.notificationTime).requestFocus();
                ItemNotificationBinding itemNotificationBinding16 = this.binding;
                if (itemNotificationBinding16 != null) {
                    ((TextInputLayout) itemNotificationBinding16.notificationTime).setError(getString(R.string.create_account_passwords_mismatch_error));
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
            case 5:
                SVGAndroidRenderer instrument5 = ContextKt.getInstrument(this);
                if (instrument5 != null) {
                    Map singletonMap5 = Collections.singletonMap("validation_error", "email_invalid");
                    singletonMap5.getClass();
                    SVGAndroidRenderer.submitInteraction$default(instrument5, "error", null, null, null, null, singletonMap5, 126);
                }
                ItemNotificationBinding itemNotificationBinding17 = this.binding;
                if (itemNotificationBinding17 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((TextInputLayout) itemNotificationBinding17.notificationDescription).requestFocus();
                ItemNotificationBinding itemNotificationBinding18 = this.binding;
                if (itemNotificationBinding18 != null) {
                    ((TextInputLayout) itemNotificationBinding18.notificationDescription).setError(getString(R.string.create_account_email_error));
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
            case 6:
                SVGAndroidRenderer instrument6 = ContextKt.getInstrument(this);
                if (instrument6 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument6, "impression", "create_account_email_form", null, null, null, null, 252);
                }
                MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(this, 0);
                AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
                alertParams.mCancelable = false;
                materialAlertDialogBuilder.setTitle(R.string.email_recommendation_dialog_title);
                StringUtil stringUtil = StringUtil.INSTANCE;
                alertParams.mMessage = StringUtil.fromHtml(getResources().getString(R.string.email_recommendation_dialog_message));
                materialAlertDialogBuilder.setPositiveButton(R.string.email_recommendation_dialog_create_without_email_action, new DialogInterface.OnClickListener(this) { // from class: org.wikipedia.createaccount.CreateAccountActivity$$ExternalSyntheticLambda11
                    public final /* synthetic */ CreateAccountActivity f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        int i3 = i;
                        CreateAccountActivity createAccountActivity = this.f$0;
                        switch (i3) {
                            case 0:
                                Pattern pattern = CreateAccountActivity.USERNAME_PATTERN;
                                SVGAndroidRenderer instrument7 = ContextKt.getInstrument(createAccountActivity);
                                if (instrument7 != null) {
                                    SVGAndroidRenderer.submitInteraction$default(instrument7, "click", "create_account_email_form", null, "no_email", null, null, 244);
                                }
                                createAccountActivity.createAccount();
                                return;
                            default:
                                Pattern pattern2 = CreateAccountActivity.USERNAME_PATTERN;
                                SVGAndroidRenderer instrument8 = ContextKt.getInstrument(createAccountActivity);
                                if (instrument8 != null) {
                                    SVGAndroidRenderer.submitInteraction$default(instrument8, "click", "create_account_email_form", null, "yes_email", null, null, 244);
                                }
                                ItemNotificationBinding itemNotificationBinding19 = createAccountActivity.binding;
                                if (itemNotificationBinding19 != null) {
                                    ((TextInputLayout) itemNotificationBinding19.notificationDescription).requestFocus();
                                    return;
                                } else {
                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                    throw null;
                                }
                        }
                    }
                });
                final int i2 = 1;
                materialAlertDialogBuilder.setNegativeButton(R.string.email_recommendation_dialog_create_with_email_action, new DialogInterface.OnClickListener(this) { // from class: org.wikipedia.createaccount.CreateAccountActivity$$ExternalSyntheticLambda11
                    public final /* synthetic */ CreateAccountActivity f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i22) {
                        int i3 = i2;
                        CreateAccountActivity createAccountActivity = this.f$0;
                        switch (i3) {
                            case 0:
                                Pattern pattern = CreateAccountActivity.USERNAME_PATTERN;
                                SVGAndroidRenderer instrument7 = ContextKt.getInstrument(createAccountActivity);
                                if (instrument7 != null) {
                                    SVGAndroidRenderer.submitInteraction$default(instrument7, "click", "create_account_email_form", null, "no_email", null, null, 244);
                                }
                                createAccountActivity.createAccount();
                                return;
                            default:
                                Pattern pattern2 = CreateAccountActivity.USERNAME_PATTERN;
                                SVGAndroidRenderer instrument8 = ContextKt.getInstrument(createAccountActivity);
                                if (instrument8 != null) {
                                    SVGAndroidRenderer.submitInteraction$default(instrument8, "click", "create_account_email_form", null, "yes_email", null, null, 244);
                                }
                                ItemNotificationBinding itemNotificationBinding19 = createAccountActivity.binding;
                                if (itemNotificationBinding19 != null) {
                                    ((TextInputLayout) itemNotificationBinding19.notificationDescription).requestFocus();
                                    return;
                                } else {
                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                    throw null;
                                }
                        }
                    }
                });
                materialAlertDialogBuilder.show();
                return;
            case 7:
                createAccount();
                return;
            default:
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return;
        }
    }
}
