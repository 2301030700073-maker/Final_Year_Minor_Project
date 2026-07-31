package org.wikipedia.yearinreview;

import android.content.Intent;
import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.ViewModelKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002"}, d2 = {"Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "", "showLoginDialog", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class YearInReviewOnboardingActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ActivityResultRegistry$register$2 loginLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new SearchFragment$$ExternalSyntheticLambda1(15, this), new FragmentManager$FragmentIntentSenderContract(3));
    public final Request.Builder viewModel$delegate;

    public YearInReviewOnboardingActivity() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(YearInReviewOnboardingViewModel.class), new Function0(this) { // from class: org.wikipedia.yearinreview.YearInReviewOnboardingActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ YearInReviewOnboardingActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                YearInReviewOnboardingActivity yearInReviewOnboardingActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return yearInReviewOnboardingActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return yearInReviewOnboardingActivity.getViewModelStore();
                    default:
                        return yearInReviewOnboardingActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.yearinreview.YearInReviewOnboardingActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ YearInReviewOnboardingActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                YearInReviewOnboardingActivity yearInReviewOnboardingActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return yearInReviewOnboardingActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return yearInReviewOnboardingActivity.getViewModelStore();
                    default:
                        return yearInReviewOnboardingActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.yearinreview.YearInReviewOnboardingActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ YearInReviewOnboardingActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                YearInReviewOnboardingActivity yearInReviewOnboardingActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return yearInReviewOnboardingActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return yearInReviewOnboardingActivity.getViewModelStore();
                    default:
                        return yearInReviewOnboardingActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        UriUtil.submit$default(238, null, "impression", null, "explore_prompt", null);
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_year_in_review_visited, true);
        int i = 0;
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new YearInReviewOnboardingActivity$onCreate$1(this, null, i), 3);
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new YearInReviewOnboardingActivity$$ExternalSyntheticLambda1(this, i), true, -1191130201));
    }

    public final void proceed() {
        setResult(-1);
        startActivity(new Intent(this, (Class<?>) YearInReviewActivity.class));
        finish();
    }
}
