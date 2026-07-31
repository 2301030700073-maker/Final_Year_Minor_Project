package org.schabi.newpipe.error;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.compose.ui.node.Owner;
import androidx.room.Room;
import androidx.transition.Transition;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonStringWriter;
import j$.time.ZonedDateTime;
import j$.time.format.DateTimeFormatter;
import java.util.Locale;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import okio.Options;
import org.jsoup.nodes.Printer;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.ActivityErrorBinding;
import org.schabi.newpipe.error.ErrorActivity;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.views.NewPipeEditText;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ErrorActivity extends AppCompatActivity {
    public static final Companion Companion = new Companion();
    public static final String TAG;
    public ActivityErrorBinding binding;
    public String currentTimeStamp;
    public ErrorInfo errorInfo;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    static {
        String cls = ErrorActivity.class.toString();
        cls.getClass();
        TAG = cls;
    }

    public static String getOsString() {
        String property = System.getProperty("os.name");
        property.getClass();
        String str = Build.VERSION.BASE_OS;
        if (str.length() == 0) {
            str = "Android";
        }
        return property + " " + str + " " + Build.VERSION.RELEASE + " - " + Build.VERSION.SDK_INT;
    }

    public final String buildJson() {
        try {
            JsonStringWriter jsonStringWriter = new JsonStringWriter();
            jsonStringWriter.object();
            ErrorInfo errorInfo = this.errorInfo;
            if (errorInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                throw null;
            }
            jsonStringWriter.value("user_action", errorInfo.userAction.getMessage());
            ErrorInfo errorInfo2 = this.errorInfo;
            if (errorInfo2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                throw null;
            }
            jsonStringWriter.value("request", errorInfo2.request);
            Locale preferredLocale = Localization.getPreferredLocale(this);
            jsonStringWriter.value("content_language", new org.schabi.newpipe.extractor.localization.Localization(preferredLocale.getLanguage(), preferredLocale.getCountry()).getLocalizationCode());
            String countryCode = Localization.getPreferredContentCountry(this).getCountryCode();
            countryCode.getClass();
            jsonStringWriter.value("content_country", countryCode);
            String locale = Localization.getAppLocale().toString();
            locale.getClass();
            jsonStringWriter.value("app_language", locale);
            ErrorInfo errorInfo3 = this.errorInfo;
            if (errorInfo3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                throw null;
            }
            ErrorInfo.Companion companion = ErrorInfo.Companion;
            Integer num = errorInfo3.serviceId;
            companion.getClass();
            jsonStringWriter.value("service", ErrorInfo.Companion.getServiceName(num));
            jsonStringWriter.value("package", getPackageName());
            jsonStringWriter.value("version", "0.29.0");
            jsonStringWriter.value("os", getOsString());
            String str = this.currentTimeStamp;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("currentTimeStamp");
                throw null;
            }
            jsonStringWriter.value("time", str);
            ErrorInfo errorInfo4 = this.errorInfo;
            if (errorInfo4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                throw null;
            }
            jsonStringWriter.array(ArraysKt.toList(errorInfo4.stackTraces), "exceptions");
            ActivityErrorBinding activityErrorBinding = this.binding;
            if (activityErrorBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            jsonStringWriter.value("user_comment", String.valueOf(((NewPipeEditText) activityErrorBinding.errorCommentBox).getText()));
            jsonStringWriter.end();
            String done = jsonStringWriter.done();
            done.getClass();
            return done;
        } catch (Exception e) {
            Log.e(TAG, "Error while erroring: Could not build json", e);
            return "";
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Options.Companion.setDayNightMode(this, Options.Companion.getSelectedThemeKey(this));
        Options.Companion.setTheme(this, -1);
        final int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_error, (ViewGroup) null, false);
        int i2 = R.id.errorCommentBox;
        NewPipeEditText newPipeEditText = (NewPipeEditText) Options.Companion.findChildViewById(R.id.errorCommentBox, inflate);
        if (newPipeEditText != null) {
            i2 = R.id.errorInfoLabelsView;
            NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.errorInfoLabelsView, inflate);
            if (newPipeTextView != null) {
                i2 = R.id.errorInfosView;
                NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.errorInfosView, inflate);
                if (newPipeTextView2 != null) {
                    i2 = R.id.errorMessageView;
                    NewPipeTextView newPipeTextView3 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.errorMessageView, inflate);
                    if (newPipeTextView3 != null) {
                        i2 = R.id.errorReportCopyButton;
                        Button button = (Button) Options.Companion.findChildViewById(R.id.errorReportCopyButton, inflate);
                        if (button != null) {
                            i2 = R.id.errorReportEmailButton;
                            Button button2 = (Button) Options.Companion.findChildViewById(R.id.errorReportEmailButton, inflate);
                            if (button2 != null) {
                                i2 = R.id.errorReportGitHubButton;
                                Button button3 = (Button) Options.Companion.findChildViewById(R.id.errorReportGitHubButton, inflate);
                                if (button3 != null) {
                                    i2 = R.id.errorSorryView;
                                    NewPipeTextView newPipeTextView4 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.errorSorryView, inflate);
                                    if (newPipeTextView4 != null) {
                                        i2 = R.id.errorView;
                                        NewPipeTextView newPipeTextView5 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.errorView, inflate);
                                        if (newPipeTextView5 != null) {
                                            i2 = R.id.scrollView;
                                            if (((ScrollView) Options.Companion.findChildViewById(R.id.scrollView, inflate)) != null) {
                                                i2 = R.id.toolbar_layout;
                                                View findChildViewById = Options.Companion.findChildViewById(R.id.toolbar_layout, inflate);
                                                if (findChildViewById != null) {
                                                    FrameLayout frameLayout = (FrameLayout) inflate;
                                                    this.binding = new ActivityErrorBinding(frameLayout, newPipeEditText, newPipeTextView, newPipeTextView2, newPipeTextView3, button, button2, button3, newPipeTextView4, newPipeTextView5, Printer.bind(findChildViewById));
                                                    setContentView(frameLayout);
                                                    ActivityErrorBinding activityErrorBinding = this.binding;
                                                    if (activityErrorBinding == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    setSupportActionBar((Toolbar) ((Printer) activityErrorBinding.toolbarLayout).accum);
                                                    Options.Companion supportActionBar = getSupportActionBar();
                                                    final int i3 = 1;
                                                    if (supportActionBar != null) {
                                                        supportActionBar.setDisplayHomeAsUpEnabled(true);
                                                        supportActionBar.setTitle(R.string.error_report_title);
                                                        supportActionBar.setDisplayShowTitleEnabled(true);
                                                    }
                                                    Object parcelableExtra = Room.getParcelableExtra(getIntent(), "error_info", ErrorInfo.class);
                                                    parcelableExtra.getClass();
                                                    this.errorInfo = (ErrorInfo) parcelableExtra;
                                                    ActivityErrorBinding activityErrorBinding2 = this.binding;
                                                    if (activityErrorBinding2 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    String m = Owner.CC.m(((NewPipeTextView) activityErrorBinding2.errorSorryView).getText().toString(), "\n", getString(R.string.guru_meditation));
                                                    ActivityErrorBinding activityErrorBinding3 = this.binding;
                                                    if (activityErrorBinding3 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((NewPipeTextView) activityErrorBinding3.errorSorryView).setText(m);
                                                    String format = ZonedDateTime.now().format(DateTimeFormatter.ISO_OFFSET_DATE_TIME);
                                                    format.getClass();
                                                    this.currentTimeStamp = format;
                                                    ActivityErrorBinding activityErrorBinding4 = this.binding;
                                                    if (activityErrorBinding4 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((Button) activityErrorBinding4.errorReportEmailButton).setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.error.ErrorActivity$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ ErrorActivity f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            String str;
                                                            StringBuilder sb;
                                                            ActivityErrorBinding activityErrorBinding5;
                                                            int i4 = i;
                                                            ErrorActivity errorActivity = this.f$0;
                                                            ErrorActivity.Companion companion = ErrorActivity.Companion;
                                                            switch (i4) {
                                                                case 0:
                                                                    errorActivity.openPrivacyPolicyDialog(errorActivity, "EMAIL");
                                                                    return;
                                                                case 1:
                                                                    try {
                                                                        sb = new StringBuilder(1024);
                                                                        activityErrorBinding5 = errorActivity.binding;
                                                                    } catch (Exception e) {
                                                                        Log.e(ErrorActivity.TAG, "Error while erroring: Could not build markdown", e);
                                                                        str = "";
                                                                    }
                                                                    if (activityErrorBinding5 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    String valueOf = String.valueOf(((NewPipeEditText) activityErrorBinding5.errorCommentBox).getText());
                                                                    if (valueOf.length() > 0) {
                                                                        sb.append(valueOf);
                                                                        sb.append('\n');
                                                                    }
                                                                    sb.append("## Exception");
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo = errorActivity.errorInfo;
                                                                    if (errorInfo == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    sb.append("* __User Action:__ " + errorInfo.userAction.getMessage());
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo2 = errorActivity.errorInfo;
                                                                    if (errorInfo2 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    sb.append("* __Request:__ " + errorInfo2.request);
                                                                    sb.append('\n');
                                                                    String countryCode = Localization.getPreferredContentCountry(errorActivity).getCountryCode();
                                                                    countryCode.getClass();
                                                                    sb.append("* __Content Country:__ ".concat(countryCode));
                                                                    sb.append('\n');
                                                                    Locale preferredLocale = Localization.getPreferredLocale(errorActivity);
                                                                    sb.append("* __Content Language:__ ".concat(new org.schabi.newpipe.extractor.localization.Localization(preferredLocale.getLanguage(), preferredLocale.getCountry()).getLocalizationCode()));
                                                                    sb.append('\n');
                                                                    String locale = Localization.getAppLocale().toString();
                                                                    locale.getClass();
                                                                    sb.append("* __App Language:__ ".concat(locale));
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo3 = errorActivity.errorInfo;
                                                                    if (errorInfo3 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    ErrorInfo.Companion companion2 = ErrorInfo.Companion;
                                                                    Integer num = errorInfo3.serviceId;
                                                                    companion2.getClass();
                                                                    sb.append("* __Service:__ ".concat(ErrorInfo.Companion.getServiceName(num)));
                                                                    sb.append('\n');
                                                                    String str2 = errorActivity.currentTimeStamp;
                                                                    if (str2 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("currentTimeStamp");
                                                                        throw null;
                                                                    }
                                                                    sb.append("* __Timestamp:__ ".concat(str2));
                                                                    sb.append('\n');
                                                                    sb.append("* __Package:__ " + errorActivity.getPackageName());
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo4 = errorActivity.errorInfo;
                                                                    if (errorInfo4 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    Integer num2 = errorInfo4.serviceId;
                                                                    companion2.getClass();
                                                                    sb.append("* __Service:__ ".concat(ErrorInfo.Companion.getServiceName(num2)));
                                                                    sb.append('\n');
                                                                    sb.append("* __Version:__ 0.29.0");
                                                                    sb.append('\n');
                                                                    sb.append("* __OS:__ ".concat(ErrorActivity.getOsString()));
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo5 = errorActivity.errorInfo;
                                                                    if (errorInfo5 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    if (errorInfo5.stackTraces.length > 1) {
                                                                        sb.append("<details><summary><b>Exceptions (");
                                                                        ErrorInfo errorInfo6 = errorActivity.errorInfo;
                                                                        if (errorInfo6 == null) {
                                                                            Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                            throw null;
                                                                        }
                                                                        sb.append(errorInfo6.stackTraces.length);
                                                                        sb.append(")</b></summary><p>\n");
                                                                    }
                                                                    ErrorInfo errorInfo7 = errorActivity.errorInfo;
                                                                    if (errorInfo7 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    int i5 = 0;
                                                                    for (String str3 : errorInfo7.stackTraces) {
                                                                        i5++;
                                                                        sb.append("<details><summary><b>Crash log ");
                                                                        ErrorInfo errorInfo8 = errorActivity.errorInfo;
                                                                        if (errorInfo8 == null) {
                                                                            Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                            throw null;
                                                                        }
                                                                        if (errorInfo8.stackTraces.length > 1) {
                                                                            sb.append(i5);
                                                                        }
                                                                        sb.append("</b>");
                                                                        sb.append("</summary><p>\n");
                                                                        sb.append("\n```\n" + str3 + "\n```\n");
                                                                        sb.append("</details>\n");
                                                                    }
                                                                    ErrorInfo errorInfo9 = errorActivity.errorInfo;
                                                                    if (errorInfo9 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    if (errorInfo9.stackTraces.length > 1) {
                                                                        sb.append("</p></details>\n");
                                                                    }
                                                                    sb.append("<hr>\n");
                                                                    str = sb.toString();
                                                                    Transition.Impl26.copyToClipboard(errorActivity, str);
                                                                    return;
                                                                default:
                                                                    errorActivity.openPrivacyPolicyDialog(errorActivity, "GITHUB");
                                                                    return;
                                                            }
                                                        }
                                                    });
                                                    ActivityErrorBinding activityErrorBinding5 = this.binding;
                                                    if (activityErrorBinding5 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((Button) activityErrorBinding5.errorReportCopyButton).setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.error.ErrorActivity$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ ErrorActivity f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            String str;
                                                            StringBuilder sb;
                                                            ActivityErrorBinding activityErrorBinding52;
                                                            int i4 = i3;
                                                            ErrorActivity errorActivity = this.f$0;
                                                            ErrorActivity.Companion companion = ErrorActivity.Companion;
                                                            switch (i4) {
                                                                case 0:
                                                                    errorActivity.openPrivacyPolicyDialog(errorActivity, "EMAIL");
                                                                    return;
                                                                case 1:
                                                                    try {
                                                                        sb = new StringBuilder(1024);
                                                                        activityErrorBinding52 = errorActivity.binding;
                                                                    } catch (Exception e) {
                                                                        Log.e(ErrorActivity.TAG, "Error while erroring: Could not build markdown", e);
                                                                        str = "";
                                                                    }
                                                                    if (activityErrorBinding52 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    String valueOf = String.valueOf(((NewPipeEditText) activityErrorBinding52.errorCommentBox).getText());
                                                                    if (valueOf.length() > 0) {
                                                                        sb.append(valueOf);
                                                                        sb.append('\n');
                                                                    }
                                                                    sb.append("## Exception");
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo = errorActivity.errorInfo;
                                                                    if (errorInfo == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    sb.append("* __User Action:__ " + errorInfo.userAction.getMessage());
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo2 = errorActivity.errorInfo;
                                                                    if (errorInfo2 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    sb.append("* __Request:__ " + errorInfo2.request);
                                                                    sb.append('\n');
                                                                    String countryCode = Localization.getPreferredContentCountry(errorActivity).getCountryCode();
                                                                    countryCode.getClass();
                                                                    sb.append("* __Content Country:__ ".concat(countryCode));
                                                                    sb.append('\n');
                                                                    Locale preferredLocale = Localization.getPreferredLocale(errorActivity);
                                                                    sb.append("* __Content Language:__ ".concat(new org.schabi.newpipe.extractor.localization.Localization(preferredLocale.getLanguage(), preferredLocale.getCountry()).getLocalizationCode()));
                                                                    sb.append('\n');
                                                                    String locale = Localization.getAppLocale().toString();
                                                                    locale.getClass();
                                                                    sb.append("* __App Language:__ ".concat(locale));
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo3 = errorActivity.errorInfo;
                                                                    if (errorInfo3 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    ErrorInfo.Companion companion2 = ErrorInfo.Companion;
                                                                    Integer num = errorInfo3.serviceId;
                                                                    companion2.getClass();
                                                                    sb.append("* __Service:__ ".concat(ErrorInfo.Companion.getServiceName(num)));
                                                                    sb.append('\n');
                                                                    String str2 = errorActivity.currentTimeStamp;
                                                                    if (str2 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("currentTimeStamp");
                                                                        throw null;
                                                                    }
                                                                    sb.append("* __Timestamp:__ ".concat(str2));
                                                                    sb.append('\n');
                                                                    sb.append("* __Package:__ " + errorActivity.getPackageName());
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo4 = errorActivity.errorInfo;
                                                                    if (errorInfo4 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    Integer num2 = errorInfo4.serviceId;
                                                                    companion2.getClass();
                                                                    sb.append("* __Service:__ ".concat(ErrorInfo.Companion.getServiceName(num2)));
                                                                    sb.append('\n');
                                                                    sb.append("* __Version:__ 0.29.0");
                                                                    sb.append('\n');
                                                                    sb.append("* __OS:__ ".concat(ErrorActivity.getOsString()));
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo5 = errorActivity.errorInfo;
                                                                    if (errorInfo5 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    if (errorInfo5.stackTraces.length > 1) {
                                                                        sb.append("<details><summary><b>Exceptions (");
                                                                        ErrorInfo errorInfo6 = errorActivity.errorInfo;
                                                                        if (errorInfo6 == null) {
                                                                            Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                            throw null;
                                                                        }
                                                                        sb.append(errorInfo6.stackTraces.length);
                                                                        sb.append(")</b></summary><p>\n");
                                                                    }
                                                                    ErrorInfo errorInfo7 = errorActivity.errorInfo;
                                                                    if (errorInfo7 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    int i5 = 0;
                                                                    for (String str3 : errorInfo7.stackTraces) {
                                                                        i5++;
                                                                        sb.append("<details><summary><b>Crash log ");
                                                                        ErrorInfo errorInfo8 = errorActivity.errorInfo;
                                                                        if (errorInfo8 == null) {
                                                                            Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                            throw null;
                                                                        }
                                                                        if (errorInfo8.stackTraces.length > 1) {
                                                                            sb.append(i5);
                                                                        }
                                                                        sb.append("</b>");
                                                                        sb.append("</summary><p>\n");
                                                                        sb.append("\n```\n" + str3 + "\n```\n");
                                                                        sb.append("</details>\n");
                                                                    }
                                                                    ErrorInfo errorInfo9 = errorActivity.errorInfo;
                                                                    if (errorInfo9 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    if (errorInfo9.stackTraces.length > 1) {
                                                                        sb.append("</p></details>\n");
                                                                    }
                                                                    sb.append("<hr>\n");
                                                                    str = sb.toString();
                                                                    Transition.Impl26.copyToClipboard(errorActivity, str);
                                                                    return;
                                                                default:
                                                                    errorActivity.openPrivacyPolicyDialog(errorActivity, "GITHUB");
                                                                    return;
                                                            }
                                                        }
                                                    });
                                                    ActivityErrorBinding activityErrorBinding6 = this.binding;
                                                    if (activityErrorBinding6 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    final int i4 = 2;
                                                    ((Button) activityErrorBinding6.errorReportGitHubButton).setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.error.ErrorActivity$$ExternalSyntheticLambda0
                                                        public final /* synthetic */ ErrorActivity f$0;

                                                        {
                                                            this.f$0 = this;
                                                        }

                                                        @Override // android.view.View.OnClickListener
                                                        public final void onClick(View view) {
                                                            String str;
                                                            StringBuilder sb;
                                                            ActivityErrorBinding activityErrorBinding52;
                                                            int i42 = i4;
                                                            ErrorActivity errorActivity = this.f$0;
                                                            ErrorActivity.Companion companion = ErrorActivity.Companion;
                                                            switch (i42) {
                                                                case 0:
                                                                    errorActivity.openPrivacyPolicyDialog(errorActivity, "EMAIL");
                                                                    return;
                                                                case 1:
                                                                    try {
                                                                        sb = new StringBuilder(1024);
                                                                        activityErrorBinding52 = errorActivity.binding;
                                                                    } catch (Exception e) {
                                                                        Log.e(ErrorActivity.TAG, "Error while erroring: Could not build markdown", e);
                                                                        str = "";
                                                                    }
                                                                    if (activityErrorBinding52 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    String valueOf = String.valueOf(((NewPipeEditText) activityErrorBinding52.errorCommentBox).getText());
                                                                    if (valueOf.length() > 0) {
                                                                        sb.append(valueOf);
                                                                        sb.append('\n');
                                                                    }
                                                                    sb.append("## Exception");
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo = errorActivity.errorInfo;
                                                                    if (errorInfo == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    sb.append("* __User Action:__ " + errorInfo.userAction.getMessage());
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo2 = errorActivity.errorInfo;
                                                                    if (errorInfo2 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    sb.append("* __Request:__ " + errorInfo2.request);
                                                                    sb.append('\n');
                                                                    String countryCode = Localization.getPreferredContentCountry(errorActivity).getCountryCode();
                                                                    countryCode.getClass();
                                                                    sb.append("* __Content Country:__ ".concat(countryCode));
                                                                    sb.append('\n');
                                                                    Locale preferredLocale = Localization.getPreferredLocale(errorActivity);
                                                                    sb.append("* __Content Language:__ ".concat(new org.schabi.newpipe.extractor.localization.Localization(preferredLocale.getLanguage(), preferredLocale.getCountry()).getLocalizationCode()));
                                                                    sb.append('\n');
                                                                    String locale = Localization.getAppLocale().toString();
                                                                    locale.getClass();
                                                                    sb.append("* __App Language:__ ".concat(locale));
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo3 = errorActivity.errorInfo;
                                                                    if (errorInfo3 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    ErrorInfo.Companion companion2 = ErrorInfo.Companion;
                                                                    Integer num = errorInfo3.serviceId;
                                                                    companion2.getClass();
                                                                    sb.append("* __Service:__ ".concat(ErrorInfo.Companion.getServiceName(num)));
                                                                    sb.append('\n');
                                                                    String str2 = errorActivity.currentTimeStamp;
                                                                    if (str2 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("currentTimeStamp");
                                                                        throw null;
                                                                    }
                                                                    sb.append("* __Timestamp:__ ".concat(str2));
                                                                    sb.append('\n');
                                                                    sb.append("* __Package:__ " + errorActivity.getPackageName());
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo4 = errorActivity.errorInfo;
                                                                    if (errorInfo4 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    Integer num2 = errorInfo4.serviceId;
                                                                    companion2.getClass();
                                                                    sb.append("* __Service:__ ".concat(ErrorInfo.Companion.getServiceName(num2)));
                                                                    sb.append('\n');
                                                                    sb.append("* __Version:__ 0.29.0");
                                                                    sb.append('\n');
                                                                    sb.append("* __OS:__ ".concat(ErrorActivity.getOsString()));
                                                                    sb.append('\n');
                                                                    ErrorInfo errorInfo5 = errorActivity.errorInfo;
                                                                    if (errorInfo5 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    if (errorInfo5.stackTraces.length > 1) {
                                                                        sb.append("<details><summary><b>Exceptions (");
                                                                        ErrorInfo errorInfo6 = errorActivity.errorInfo;
                                                                        if (errorInfo6 == null) {
                                                                            Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                            throw null;
                                                                        }
                                                                        sb.append(errorInfo6.stackTraces.length);
                                                                        sb.append(")</b></summary><p>\n");
                                                                    }
                                                                    ErrorInfo errorInfo7 = errorActivity.errorInfo;
                                                                    if (errorInfo7 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    int i5 = 0;
                                                                    for (String str3 : errorInfo7.stackTraces) {
                                                                        i5++;
                                                                        sb.append("<details><summary><b>Crash log ");
                                                                        ErrorInfo errorInfo8 = errorActivity.errorInfo;
                                                                        if (errorInfo8 == null) {
                                                                            Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                            throw null;
                                                                        }
                                                                        if (errorInfo8.stackTraces.length > 1) {
                                                                            sb.append(i5);
                                                                        }
                                                                        sb.append("</b>");
                                                                        sb.append("</summary><p>\n");
                                                                        sb.append("\n```\n" + str3 + "\n```\n");
                                                                        sb.append("</details>\n");
                                                                    }
                                                                    ErrorInfo errorInfo9 = errorActivity.errorInfo;
                                                                    if (errorInfo9 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                                        throw null;
                                                                    }
                                                                    if (errorInfo9.stackTraces.length > 1) {
                                                                        sb.append("</p></details>\n");
                                                                    }
                                                                    sb.append("<hr>\n");
                                                                    str = sb.toString();
                                                                    Transition.Impl26.copyToClipboard(errorActivity, str);
                                                                    return;
                                                                default:
                                                                    errorActivity.openPrivacyPolicyDialog(errorActivity, "GITHUB");
                                                                    return;
                                                            }
                                                        }
                                                    });
                                                    ErrorInfo errorInfo = this.errorInfo;
                                                    if (errorInfo == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                        throw null;
                                                    }
                                                    ActivityErrorBinding activityErrorBinding7 = this.binding;
                                                    if (activityErrorBinding7 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((NewPipeTextView) activityErrorBinding7.errorInfoLabelsView).setText(getString(R.string.info_labels));
                                                    String message = errorInfo.userAction.getMessage();
                                                    String str = errorInfo.request;
                                                    Locale preferredLocale = Localization.getPreferredLocale(this);
                                                    String localizationCode = new org.schabi.newpipe.extractor.localization.Localization(preferredLocale.getLanguage(), preferredLocale.getCountry()).getLocalizationCode();
                                                    String countryCode = Localization.getPreferredContentCountry(this).getCountryCode();
                                                    countryCode.getClass();
                                                    String locale = Localization.getAppLocale().toString();
                                                    locale.getClass();
                                                    ErrorInfo.Companion companion = ErrorInfo.Companion;
                                                    Integer num = errorInfo.serviceId;
                                                    companion.getClass();
                                                    String serviceName = ErrorInfo.Companion.getServiceName(num);
                                                    String str2 = this.currentTimeStamp;
                                                    if (str2 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("currentTimeStamp");
                                                        throw null;
                                                    }
                                                    String str3 = message + "\n" + str + "\n" + localizationCode + "\n" + countryCode + "\n" + locale + "\n" + serviceName + "\n" + str2 + "\n" + getPackageName() + "\n0.29.0\n" + getOsString();
                                                    ActivityErrorBinding activityErrorBinding8 = this.binding;
                                                    if (activityErrorBinding8 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((NewPipeTextView) activityErrorBinding8.errorInfosView).setText(str3);
                                                    ActivityErrorBinding activityErrorBinding9 = this.binding;
                                                    if (activityErrorBinding9 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    NewPipeTextView newPipeTextView6 = (NewPipeTextView) activityErrorBinding9.errorMessageView;
                                                    ErrorInfo errorInfo2 = this.errorInfo;
                                                    if (errorInfo2 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                        throw null;
                                                    }
                                                    MathKt.setTextWithLinks(newPipeTextView6, errorInfo2.message.getText(this));
                                                    ActivityErrorBinding activityErrorBinding10 = this.binding;
                                                    if (activityErrorBinding10 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    NewPipeTextView newPipeTextView7 = (NewPipeTextView) activityErrorBinding10.errorView;
                                                    ErrorInfo errorInfo3 = this.errorInfo;
                                                    if (errorInfo3 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                        throw null;
                                                    }
                                                    newPipeTextView7.setText(ArraysKt.joinToString$default(errorInfo3.stackTraces, "-------------------------------------\n", "-------------------------------------", 56));
                                                    ErrorInfo errorInfo4 = this.errorInfo;
                                                    if (errorInfo4 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("errorInfo");
                                                        throw null;
                                                    }
                                                    String[] strArr = errorInfo4.stackTraces;
                                                    int length = strArr.length;
                                                    while (i < length) {
                                                        Log.e(TAG, strArr[i]);
                                                        i++;
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
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.error_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            onBackPressed();
            return true;
        }
        if (itemId != R.id.menu_item_share_error) {
            return false;
        }
        Transition.Impl26.shareText(getApplicationContext(), getString(R.string.error_report_title), buildJson(), "");
        return true;
    }

    public final void openPrivacyPolicyDialog(Context context, String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        AlertController.AlertParams alertParams = builder.P;
        alertParams.mIconId = android.R.drawable.ic_dialog_alert;
        builder.setTitle(R.string.privacy_policy_title);
        builder.setMessage(R.string.start_accept_privacy_policy);
        int i = 0;
        alertParams.mCancelable = false;
        builder.setNeutralButton(R.string.read_privacy_policy, new ErrorActivity$$ExternalSyntheticLambda3(context, i));
        builder.setPositiveButton(R.string.accept, new ErrorActivity$$ExternalSyntheticLambda4(i, str, this, context)).setNegativeButton(R.string.decline, null).show();
    }
}
