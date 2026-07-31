package org.schabi.newpipe.error;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.transition.Transition;
import com.jakewharton.rxbinding4.view.ViewClickObservable;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import io.reactivex.rxjava3.internal.operators.observable.ObservableObserveOn;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import net.newpipe.app.AppKt;
import okhttp3.ConnectionPool;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.schabi.newpipe.BaseFragment;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorUtil;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ErrorPanelHelper {
    public static final Companion Companion = new Companion();
    public final Context context;
    public final Button errorActionButton;
    public final LambdaObserver errorDisposable;
    public final Button errorOpenInBrowserButton;
    public final View errorPanelRoot;
    public final Button errorRetryButton;
    public final TextView errorServiceExplanationTextView;
    public final TextView errorServiceInfoTextView;
    public final TextView errorTextView;
    public final BaseFragment fragment;
    public final boolean retryShouldBeShown;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    static {
        Reflection.getOrCreateKotlinClass(ErrorPanelHelper.class).getSimpleName().getClass();
        int i = MainActivity.$r8$clinit;
    }

    public ErrorPanelHelper(BaseFragment baseFragment, View view, ReportExecutor$$ExternalSyntheticLambda0 reportExecutor$$ExternalSyntheticLambda0) {
        view.getClass();
        this.fragment = baseFragment;
        Context context = view.getContext();
        context.getClass();
        this.context = context;
        View findViewById = view.findViewById(R.id.error_panel);
        findViewById.getClass();
        this.errorPanelRoot = findViewById;
        View findViewById2 = findViewById.findViewById(R.id.error_message_view);
        findViewById2.getClass();
        this.errorTextView = (TextView) findViewById2;
        View findViewById3 = findViewById.findViewById(R.id.error_message_service_info_view);
        findViewById3.getClass();
        this.errorServiceInfoTextView = (TextView) findViewById3;
        View findViewById4 = findViewById.findViewById(R.id.error_message_service_explanation_view);
        findViewById4.getClass();
        this.errorServiceExplanationTextView = (TextView) findViewById4;
        View findViewById5 = findViewById.findViewById(R.id.error_action_button);
        findViewById5.getClass();
        this.errorActionButton = (Button) findViewById5;
        View findViewById6 = findViewById.findViewById(R.id.error_retry_button);
        findViewById6.getClass();
        Button button = (Button) findViewById6;
        this.errorRetryButton = button;
        View findViewById7 = findViewById.findViewById(R.id.error_open_in_browser);
        findViewById7.getClass();
        this.errorOpenInBrowserButton = (Button) findViewById7;
        int i = 0;
        this.retryShouldBeShown = reportExecutor$$ExternalSyntheticLambda0 != null;
        if (reportExecutor$$ExternalSyntheticLambda0 != null) {
            ObservableObserveOn observeOn = new ViewClickObservable(button, i).debounce(300L).observeOn(AndroidSchedulers.mainThread());
            LambdaObserver lambdaObserver = new LambdaObserver(new ConnectionPool(reportExecutor$$ExternalSyntheticLambda0, 27), Functions.ON_ERROR_MISSING);
            observeOn.subscribe(lambdaObserver);
            this.errorDisposable = lambdaObserver;
        }
    }

    public final void ensureDefaultVisibility() {
        this.errorTextView.setVisibility(0);
        this.errorServiceInfoTextView.setVisibility(8);
        this.errorServiceExplanationTextView.setVisibility(8);
        this.errorActionButton.setVisibility(8);
        this.errorRetryButton.setVisibility(8);
        this.errorOpenInBrowserButton.setVisibility(8);
    }

    public final void showError(final ErrorInfo errorInfo) {
        errorInfo.getClass();
        ensureDefaultVisibility();
        Context context = this.context;
        context.getClass();
        MathKt.setTextWithLinks(this.errorTextView, errorInfo.message.getText(context));
        String str = errorInfo.recaptchaUrl;
        Button button = this.errorActionButton;
        final int i = 0;
        if (str != null) {
            View.OnClickListener onClickListener = new View.OnClickListener(this) { // from class: org.schabi.newpipe.error.ErrorPanelHelper$$ExternalSyntheticLambda0
                public final /* synthetic */ ErrorPanelHelper f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i2 = i;
                    ErrorInfo errorInfo2 = errorInfo;
                    ErrorPanelHelper errorPanelHelper = this.f$0;
                    switch (i2) {
                        case 0:
                            Intent intent = new Intent(errorPanelHelper.context, (Class<?>) ReCaptchaActivity.class);
                            intent.putExtra("recaptcha_url_extra", errorInfo2.recaptchaUrl);
                            errorPanelHelper.fragment.startActivityForResult(intent, 10);
                            errorPanelHelper.errorActionButton.setOnClickListener(null);
                            break;
                        case 1:
                            ErrorUtil.Companion companion = ErrorUtil.Companion;
                            Context context2 = errorPanelHelper.context;
                            companion.getClass();
                            ErrorUtil.Companion.openActivity(context2, errorInfo2);
                            break;
                        default:
                            Transition.Impl26.openUrlInBrowser(errorPanelHelper.context, errorInfo2.openInBrowserUrl);
                            break;
                    }
                }
            };
            button.setVisibility(0);
            button.setText(R.string.recaptcha_solve);
            button.setOnClickListener(onClickListener);
        } else if (errorInfo.isReportable) {
            final int i2 = 1;
            View.OnClickListener onClickListener2 = new View.OnClickListener(this) { // from class: org.schabi.newpipe.error.ErrorPanelHelper$$ExternalSyntheticLambda0
                public final /* synthetic */ ErrorPanelHelper f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i22 = i2;
                    ErrorInfo errorInfo2 = errorInfo;
                    ErrorPanelHelper errorPanelHelper = this.f$0;
                    switch (i22) {
                        case 0:
                            Intent intent = new Intent(errorPanelHelper.context, (Class<?>) ReCaptchaActivity.class);
                            intent.putExtra("recaptcha_url_extra", errorInfo2.recaptchaUrl);
                            errorPanelHelper.fragment.startActivityForResult(intent, 10);
                            errorPanelHelper.errorActionButton.setOnClickListener(null);
                            break;
                        case 1:
                            ErrorUtil.Companion companion = ErrorUtil.Companion;
                            Context context2 = errorPanelHelper.context;
                            companion.getClass();
                            ErrorUtil.Companion.openActivity(context2, errorInfo2);
                            break;
                        default:
                            Transition.Impl26.openUrlInBrowser(errorPanelHelper.context, errorInfo2.openInBrowserUrl);
                            break;
                    }
                }
            };
            button.setVisibility(0);
            button.setText(R.string.error_snackbar_action);
            button.setOnClickListener(onClickListener2);
        }
        if (errorInfo.isRetryable) {
            this.errorRetryButton.setVisibility(this.retryShouldBeShown ? 0 : 8);
        }
        if (errorInfo.openInBrowserUrl != null) {
            Button button2 = this.errorOpenInBrowserButton;
            button2.setVisibility(0);
            final int i3 = 2;
            button2.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.error.ErrorPanelHelper$$ExternalSyntheticLambda0
                public final /* synthetic */ ErrorPanelHelper f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i22 = i3;
                    ErrorInfo errorInfo2 = errorInfo;
                    ErrorPanelHelper errorPanelHelper = this.f$0;
                    switch (i22) {
                        case 0:
                            Intent intent = new Intent(errorPanelHelper.context, (Class<?>) ReCaptchaActivity.class);
                            intent.putExtra("recaptcha_url_extra", errorInfo2.recaptchaUrl);
                            errorPanelHelper.fragment.startActivityForResult(intent, 10);
                            errorPanelHelper.errorActionButton.setOnClickListener(null);
                            break;
                        case 1:
                            ErrorUtil.Companion companion = ErrorUtil.Companion;
                            Context context2 = errorPanelHelper.context;
                            companion.getClass();
                            ErrorUtil.Companion.openActivity(context2, errorInfo2);
                            break;
                        default:
                            Transition.Impl26.openUrlInBrowser(errorPanelHelper.context, errorInfo2.openInBrowserUrl);
                            break;
                    }
                }
            });
        }
        AppKt.animate$default(this.errorPanelRoot, true, 300L, null, 0L, null, 28);
    }
}
