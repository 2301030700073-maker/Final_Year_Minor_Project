package org.schabi.newpipe.local.subscription;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.core.app.NotificationCompat$Style;
import androidx.core.text.util.LinkifyCompat;
import androidx.fragment.app.FragmentManager;
import java.util.Collections;
import java.util.List;
import okhttp3.Cookie;
import okio.Options;
import org.schabi.newpipe.BaseFragment;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.services.youtube.YoutubeService;
import org.schabi.newpipe.extractor.subscription.SubscriptionExtractor$ContentSource;
import org.schabi.newpipe.local.subscription.workers.SubscriptionImportInput;
import org.schabi.newpipe.streams.io.StoredFileHelper;
import org.schabi.newpipe.util.ServiceHelper;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class SubscriptionsImportFragment extends BaseFragment {
    public static final /* synthetic */ int $r8$clinit = 0;
    public TextView infoTextView;
    public Button inputButton;
    public EditText inputText;
    public int instructionsString;
    public String relatedUrl;
    public List supportedSources;
    int currentServiceId = -1;
    public final ActivityResultLauncher requestImportFileLauncher = registerForActivityResult(new FragmentManager.FragmentIntentSenderContract(3), new ActivityResultCallback() { // from class: org.schabi.newpipe.local.subscription.SubscriptionsImportFragment$$ExternalSyntheticLambda1
        @Override // androidx.activity.result.ActivityResultCallback
        public final void onActivityResult(Object obj) {
            ActivityResult activityResult = (ActivityResult) obj;
            int i = SubscriptionsImportFragment.$r8$clinit;
            Intent intent = activityResult.data;
            String dataString = intent != null ? intent.getDataString() : null;
            if (activityResult.resultCode != -1 || dataString == null) {
                return;
            }
            SubscriptionsImportFragment subscriptionsImportFragment = SubscriptionsImportFragment.this;
            ImportConfirmationDialog.show(subscriptionsImportFragment, new SubscriptionImportInput.InputStreamMode(subscriptionsImportFragment.currentServiceId, dataString));
        }
    });

    @Override // org.schabi.newpipe.BaseFragment
    public final void initListeners() {
        this.inputButton.setOnClickListener(new View.OnClickListener() { // from class: org.schabi.newpipe.local.subscription.SubscriptionsImportFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubscriptionsImportFragment subscriptionsImportFragment = SubscriptionsImportFragment.this;
                if (subscriptionsImportFragment.inputText.getVisibility() != 0) {
                    Cookie.Companion.launchSafe(subscriptionsImportFragment.requestImportFileLauncher, StoredFileHelper.getPicker(subscriptionsImportFragment.activity, "*/*"), subscriptionsImportFragment.TAG, subscriptionsImportFragment.getContext());
                    return;
                }
                String obj = subscriptionsImportFragment.inputText.getText().toString();
                if (obj.isEmpty()) {
                    return;
                }
                ImportConfirmationDialog.show(subscriptionsImportFragment, new SubscriptionImportInput.ChannelUrlMode(subscriptionsImportFragment.currentServiceId, obj));
            }
        });
    }

    @Override // org.schabi.newpipe.BaseFragment
    public final void initViews(View view, Bundle bundle) {
        this.inputButton = (Button) view.findViewById(R.id.input_button);
        this.inputText = (EditText) view.findViewById(R.id.input_text);
        this.infoTextView = (TextView) view.findViewById(R.id.info_text_view);
        boolean contains = this.supportedSources.contains(SubscriptionExtractor$ContentSource.CHANNEL_URL);
        Button button = this.inputButton;
        if (contains) {
            button.setText(R.string.import_title);
            this.inputText.setVisibility(0);
            EditText editText = this.inputText;
            int i = this.currentServiceId;
            YoutubeService youtubeService = ServiceHelper.DEFAULT_FALLBACK_SERVICE;
            editText.setHint(i == 1 ? R.string.import_soundcloud_instructions_hint : -1);
        } else {
            button.setText(R.string.import_file_title);
        }
        if (this.instructionsString != 0) {
            boolean isEmpty = TextUtils.isEmpty(this.relatedUrl);
            int i2 = this.instructionsString;
            if (isEmpty) {
                setInfoText(getString(i2));
            } else {
                setInfoText(getString(i2, this.relatedUrl));
            }
        } else {
            setInfoText("");
        }
        Options.Companion supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowTitleEnabled(true);
            setTitle(getString(R.string.import_title));
        }
    }

    @Override // org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        int i2 = this.currentServiceId;
        if (i2 != -1) {
            try {
                NotificationCompat$Style subscriptionExtractor = Utility.getService(i2).getSubscriptionExtractor();
                this.supportedSources = (List) subscriptionExtractor.mBuilder;
                this.relatedUrl = subscriptionExtractor.getRelatedUrl();
                int i3 = this.currentServiceId;
                YoutubeService youtubeService = ServiceHelper.DEFAULT_FALLBACK_SERVICE;
                this.instructionsString = i3 != 0 ? i3 != 1 ? -1 : R.string.import_soundcloud_instructions : R.string.import_youtube_instructions;
            } catch (ExtractionException unused) {
            }
            if (this.supportedSources.isEmpty() || (i = this.currentServiceId) == -1) {
            }
            ErrorUtil.showSnackbar(this.activity, new ErrorInfo(new String[0], UserAction.SUBSCRIPTION_IMPORT_EXPORT, "Service does not support importing subscriptions", Integer.valueOf(i), R.string.general_error));
            this.activity.finish();
            return;
        }
        this.supportedSources = Collections.EMPTY_LIST;
        this.relatedUrl = null;
        this.instructionsString = 0;
        if (this.supportedSources.isEmpty()) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_import, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        setTitle(getString(R.string.import_title));
    }

    public final void setInfoText(String str) {
        this.infoTextView.setText(str);
        TextView textView = this.infoTextView;
        if (Build.VERSION.SDK_INT >= 28) {
            Linkify.addLinks(textView, 1);
            return;
        }
        CharSequence text = textView.getText();
        if (text instanceof Spannable) {
            if (LinkifyCompat.addLinks((Spannable) text, 1) && !(textView.getMovementMethod() instanceof LinkMovementMethod) && textView.getLinksClickable()) {
                textView.setMovementMethod(LinkMovementMethod.getInstance());
                return;
            }
            return;
        }
        SpannableString valueOf = SpannableString.valueOf(text);
        if (LinkifyCompat.addLinks(valueOf, 1)) {
            if (!(textView.getMovementMethod() instanceof LinkMovementMethod) && textView.getLinksClickable()) {
                textView.setMovementMethod(LinkMovementMethod.getInstance());
            }
            textView.setText(valueOf);
        }
    }
}
