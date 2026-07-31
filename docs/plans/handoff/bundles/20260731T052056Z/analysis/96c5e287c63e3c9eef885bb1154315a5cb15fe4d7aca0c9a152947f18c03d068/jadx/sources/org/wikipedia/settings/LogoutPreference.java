package org.wikipedia.settings;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import j$.time.LocalDate;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import okhttp3.Headers;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.WikipediaApp$logOut$2;
import org.wikipedia.activity.BaseActivity$$ExternalSyntheticLambda1;
import org.wikipedia.activity.SingleWebViewActivity;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u000b¨\u0006\f"}, d2 = {"Lorg/wikipedia/settings/LogoutPreference;", "Landroidx/preference/Preference;", "Landroid/content/Context;", "ctx", "Landroid/util/AttributeSet;", "attrs", "", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LogoutPreference extends Preference {
    public AppCompatActivity activity;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LogoutPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        context.getClass();
        this.mLayoutResId = R.layout.view_preference_logout;
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        View view = preferenceViewHolder.itemView;
        view.setClickable(false);
        ((TextView) view.findViewById(R.id.accountName)).setText(Headers.Companion.getUserName());
        ((ImageView) view.findViewById(R.id.accountIcon)).setImageResource(Headers.Companion.isTemporaryAccount() ? R.drawable.ic_temp_account : R.drawable.ic_baseline_person_24);
        TextView textView = (TextView) view.findViewById(R.id.accountExpiry);
        textView.getClass();
        textView.setVisibility(Headers.Companion.isTemporaryAccount() ? 0 : 8);
        long epochDay = LocalDate.now().toEpochDay();
        Prefs prefs = Prefs.INSTANCE;
        int max = (int) Math.max(90 - (epochDay - PrefsIoUtil.getLong(0L, R.string.preference_key_temp_account_create_day)), 0L);
        final int i = 1;
        textView.setText(textView.getContext().getResources().getQuantityString(R.plurals.temp_account_expiry, max, Integer.valueOf(max)));
        Button button = (Button) view.findViewById(R.id.logoutButton);
        button.setText(button.getContext().getString(Headers.Companion.isTemporaryAccount() ? R.string.temp_account_end_session : R.string.preference_title_logout));
        button.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.settings.LogoutPreference$$ExternalSyntheticLambda0
            public final /* synthetic */ LogoutPreference f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i2 = r2;
                final int i3 = 1;
                LogoutPreference logoutPreference = this.f$0;
                switch (i2) {
                    case 0:
                        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
                        testKitchenClient.getClass();
                        final SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-authentication", testKitchenClient);
                        sVGAndroidRenderer.startFunnel("logout_account");
                        SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "click", "settings", null, "logout_button", null, null, 244);
                        final AppCompatActivity appCompatActivity = logoutPreference.activity;
                        if (appCompatActivity != null) {
                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "impression", "logout_warning", null, null, null, null, 252);
                            final int i4 = 0;
                            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(appCompatActivity, 0);
                            materialAlertDialogBuilder.setMessage(Headers.Companion.isTemporaryAccount() ? R.string.temp_account_end_session_confirm : R.string.logout_prompt);
                            materialAlertDialogBuilder.setNegativeButton(R.string.logout_dialog_cancel_button_text, new BaseActivity$$ExternalSyntheticLambda1(sVGAndroidRenderer, 1));
                            materialAlertDialogBuilder.setPositiveButton(Headers.Companion.isTemporaryAccount() ? R.string.temp_account_end_session : R.string.preference_title_logout, new DialogInterface.OnClickListener() { // from class: org.wikipedia.settings.LogoutPreference$$ExternalSyntheticLambda3
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i5) {
                                    int i6 = i4;
                                    Activity activity = appCompatActivity;
                                    switch (i6) {
                                        case 0:
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "click", "logout_warning", null, "confirm_button", null, null, 244);
                                            WikipediaApp wikipediaApp = WikipediaApp.instance;
                                            WikipediaApp jsoup = Jsoup.getInstance();
                                            AwaitKt.launch$default(AwaitKt.MainScope(), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 0), null, new WikipediaApp$logOut$2(jsoup, (Continuation) null), 2).invokeOnCompletion(new ZipFilesKt$$ExternalSyntheticLambda3(jsoup));
                                            Prefs prefs2 = Prefs.INSTANCE;
                                            PrefsIoUtil.setString(R.string.preference_key_reading_lists_last_sync_time, null);
                                            Prefs.setReadingListSyncEnabled(false);
                                            PrefsIoUtil.setBoolean(R.string.preference_key_suggested_edits_highest_priority_enabled, false);
                                            activity.setResult(3);
                                            activity.finish();
                                            break;
                                        default:
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "click", null, null, "confirm_button", null, null, 246);
                                            activity.finish();
                                            int i7 = SingleWebViewActivity.$r8$clinit;
                                            String string = activity.getString(R.string.account_vanish_url);
                                            string.getClass();
                                            activity.startActivity(LoginClient.newIntent$default(activity, string, (PageTitle) null, (String) null, 28));
                                            break;
                                    }
                                }
                            });
                            materialAlertDialogBuilder.show();
                            break;
                        }
                        break;
                    default:
                        TestKitchenClient testKitchenClient2 = TestKitchenAdapter.client;
                        testKitchenClient2.getClass();
                        final SVGAndroidRenderer sVGAndroidRenderer2 = new SVGAndroidRenderer("apps-authentication", testKitchenClient2);
                        sVGAndroidRenderer2.startFunnel("vanish_account");
                        sVGAndroidRenderer2.parentStack = "vanish_warning";
                        SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer2, "click", "settings", null, "vanish_button", null, null, 244);
                        final AppCompatActivity appCompatActivity2 = logoutPreference.activity;
                        if (appCompatActivity2 != null) {
                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer2, "impression", null, null, null, null, null, 254);
                            MaterialAlertDialogBuilder materialAlertDialogBuilder2 = new MaterialAlertDialogBuilder(appCompatActivity2, R.style.AlertDialogTheme_Icon_Delete);
                            AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder2.array;
                            alertParams.mIconId = R.drawable.ic_person_remove;
                            materialAlertDialogBuilder2.setTitle(R.string.account_vanish_request_confirm_title);
                            StringUtil stringUtil = StringUtil.INSTANCE;
                            alertParams.mMessage = StringUtil.fromHtml(appCompatActivity2.getString(R.string.account_vanish_request_confirm));
                            materialAlertDialogBuilder2.setNegativeButton(android.R.string.cancel, new BaseActivity$$ExternalSyntheticLambda1(sVGAndroidRenderer2, 2));
                            materialAlertDialogBuilder2.setPositiveButton(R.string.account_vanish_request_title, new DialogInterface.OnClickListener() { // from class: org.wikipedia.settings.LogoutPreference$$ExternalSyntheticLambda3
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i5) {
                                    int i6 = i3;
                                    Activity activity = appCompatActivity2;
                                    switch (i6) {
                                        case 0:
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer2, "click", "logout_warning", null, "confirm_button", null, null, 244);
                                            WikipediaApp wikipediaApp = WikipediaApp.instance;
                                            WikipediaApp jsoup = Jsoup.getInstance();
                                            AwaitKt.launch$default(AwaitKt.MainScope(), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 0), null, new WikipediaApp$logOut$2(jsoup, (Continuation) null), 2).invokeOnCompletion(new ZipFilesKt$$ExternalSyntheticLambda3(jsoup));
                                            Prefs prefs2 = Prefs.INSTANCE;
                                            PrefsIoUtil.setString(R.string.preference_key_reading_lists_last_sync_time, null);
                                            Prefs.setReadingListSyncEnabled(false);
                                            PrefsIoUtil.setBoolean(R.string.preference_key_suggested_edits_highest_priority_enabled, false);
                                            activity.setResult(3);
                                            activity.finish();
                                            break;
                                        default:
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer2, "click", null, null, "confirm_button", null, null, 246);
                                            activity.finish();
                                            int i7 = SingleWebViewActivity.$r8$clinit;
                                            String string = activity.getString(R.string.account_vanish_url);
                                            string.getClass();
                                            activity.startActivity(LoginClient.newIntent$default(activity, string, (PageTitle) null, (String) null, 28));
                                            break;
                                    }
                                }
                            });
                            materialAlertDialogBuilder2.show();
                            break;
                        }
                        break;
                }
            }
        });
        view.findViewById(R.id.accountVanishButton).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.settings.LogoutPreference$$ExternalSyntheticLambda0
            public final /* synthetic */ LogoutPreference f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i2 = i;
                final int i3 = 1;
                LogoutPreference logoutPreference = this.f$0;
                switch (i2) {
                    case 0:
                        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
                        testKitchenClient.getClass();
                        final SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-authentication", testKitchenClient);
                        sVGAndroidRenderer.startFunnel("logout_account");
                        SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "click", "settings", null, "logout_button", null, null, 244);
                        final AppCompatActivity appCompatActivity = logoutPreference.activity;
                        if (appCompatActivity != null) {
                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "impression", "logout_warning", null, null, null, null, 252);
                            final int i4 = 0;
                            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(appCompatActivity, 0);
                            materialAlertDialogBuilder.setMessage(Headers.Companion.isTemporaryAccount() ? R.string.temp_account_end_session_confirm : R.string.logout_prompt);
                            materialAlertDialogBuilder.setNegativeButton(R.string.logout_dialog_cancel_button_text, new BaseActivity$$ExternalSyntheticLambda1(sVGAndroidRenderer, 1));
                            materialAlertDialogBuilder.setPositiveButton(Headers.Companion.isTemporaryAccount() ? R.string.temp_account_end_session : R.string.preference_title_logout, new DialogInterface.OnClickListener() { // from class: org.wikipedia.settings.LogoutPreference$$ExternalSyntheticLambda3
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i5) {
                                    int i6 = i4;
                                    Activity activity = appCompatActivity;
                                    switch (i6) {
                                        case 0:
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "click", "logout_warning", null, "confirm_button", null, null, 244);
                                            WikipediaApp wikipediaApp = WikipediaApp.instance;
                                            WikipediaApp jsoup = Jsoup.getInstance();
                                            AwaitKt.launch$default(AwaitKt.MainScope(), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 0), null, new WikipediaApp$logOut$2(jsoup, (Continuation) null), 2).invokeOnCompletion(new ZipFilesKt$$ExternalSyntheticLambda3(jsoup));
                                            Prefs prefs2 = Prefs.INSTANCE;
                                            PrefsIoUtil.setString(R.string.preference_key_reading_lists_last_sync_time, null);
                                            Prefs.setReadingListSyncEnabled(false);
                                            PrefsIoUtil.setBoolean(R.string.preference_key_suggested_edits_highest_priority_enabled, false);
                                            activity.setResult(3);
                                            activity.finish();
                                            break;
                                        default:
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "click", null, null, "confirm_button", null, null, 246);
                                            activity.finish();
                                            int i7 = SingleWebViewActivity.$r8$clinit;
                                            String string = activity.getString(R.string.account_vanish_url);
                                            string.getClass();
                                            activity.startActivity(LoginClient.newIntent$default(activity, string, (PageTitle) null, (String) null, 28));
                                            break;
                                    }
                                }
                            });
                            materialAlertDialogBuilder.show();
                            break;
                        }
                        break;
                    default:
                        TestKitchenClient testKitchenClient2 = TestKitchenAdapter.client;
                        testKitchenClient2.getClass();
                        final SVGAndroidRenderer sVGAndroidRenderer2 = new SVGAndroidRenderer("apps-authentication", testKitchenClient2);
                        sVGAndroidRenderer2.startFunnel("vanish_account");
                        sVGAndroidRenderer2.parentStack = "vanish_warning";
                        SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer2, "click", "settings", null, "vanish_button", null, null, 244);
                        final AppCompatActivity appCompatActivity2 = logoutPreference.activity;
                        if (appCompatActivity2 != null) {
                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer2, "impression", null, null, null, null, null, 254);
                            MaterialAlertDialogBuilder materialAlertDialogBuilder2 = new MaterialAlertDialogBuilder(appCompatActivity2, R.style.AlertDialogTheme_Icon_Delete);
                            AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder2.array;
                            alertParams.mIconId = R.drawable.ic_person_remove;
                            materialAlertDialogBuilder2.setTitle(R.string.account_vanish_request_confirm_title);
                            StringUtil stringUtil = StringUtil.INSTANCE;
                            alertParams.mMessage = StringUtil.fromHtml(appCompatActivity2.getString(R.string.account_vanish_request_confirm));
                            materialAlertDialogBuilder2.setNegativeButton(android.R.string.cancel, new BaseActivity$$ExternalSyntheticLambda1(sVGAndroidRenderer2, 2));
                            materialAlertDialogBuilder2.setPositiveButton(R.string.account_vanish_request_title, new DialogInterface.OnClickListener() { // from class: org.wikipedia.settings.LogoutPreference$$ExternalSyntheticLambda3
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i5) {
                                    int i6 = i3;
                                    Activity activity = appCompatActivity2;
                                    switch (i6) {
                                        case 0:
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer2, "click", "logout_warning", null, "confirm_button", null, null, 244);
                                            WikipediaApp wikipediaApp = WikipediaApp.instance;
                                            WikipediaApp jsoup = Jsoup.getInstance();
                                            AwaitKt.launch$default(AwaitKt.MainScope(), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 0), null, new WikipediaApp$logOut$2(jsoup, (Continuation) null), 2).invokeOnCompletion(new ZipFilesKt$$ExternalSyntheticLambda3(jsoup));
                                            Prefs prefs2 = Prefs.INSTANCE;
                                            PrefsIoUtil.setString(R.string.preference_key_reading_lists_last_sync_time, null);
                                            Prefs.setReadingListSyncEnabled(false);
                                            PrefsIoUtil.setBoolean(R.string.preference_key_suggested_edits_highest_priority_enabled, false);
                                            activity.setResult(3);
                                            activity.finish();
                                            break;
                                        default:
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer2, "click", null, null, "confirm_button", null, null, 246);
                                            activity.finish();
                                            int i7 = SingleWebViewActivity.$r8$clinit;
                                            String string = activity.getString(R.string.account_vanish_url);
                                            string.getClass();
                                            activity.startActivity(LoginClient.newIntent$default(activity, string, (PageTitle) null, (String) null, 28));
                                            break;
                                    }
                                }
                            });
                            materialAlertDialogBuilder2.show();
                            break;
                        }
                        break;
                }
            }
        });
        View findViewById = view.findViewById(R.id.accountVanishButton);
        findViewById.getClass();
        findViewById.setVisibility(Headers.Companion.isTemporaryAccount() ? 8 : 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LogoutPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.mLayoutResId = R.layout.view_preference_logout;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LogoutPreference(Context context) {
        super(context, null);
        context.getClass();
        this.mLayoutResId = R.layout.view_preference_logout;
    }
}
