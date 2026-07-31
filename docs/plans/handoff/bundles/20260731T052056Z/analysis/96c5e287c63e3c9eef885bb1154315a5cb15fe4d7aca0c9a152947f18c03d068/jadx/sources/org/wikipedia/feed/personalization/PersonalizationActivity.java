package org.wikipedia.feed.personalization;

import android.content.Intent;
import android.os.Bundle;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.activity.compose.ComponentActivityKt;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.room.Room;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import okhttp3.Request;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/feed/personalization/PersonalizationActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "org/wikipedia/feed/personalization/PersonalizationScreenKt", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PersonalizationActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ActivityResultRegistry$register$2 searchLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(17, this), new FragmentManager$FragmentIntentSenderContract(3));
    public final Request.Builder viewModel$delegate;

    public PersonalizationActivity() {
        final int i = 0;
        final int i2 = 1;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(PersonalizationViewModel.class), new Function0(this) { // from class: org.wikipedia.feed.personalization.PersonalizationActivity$special$$inlined$viewModels$default$2
            public final /* synthetic */ PersonalizationActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i;
                PersonalizationActivity personalizationActivity = this.$this_viewModels;
                switch (i3) {
                    case 0:
                        return personalizationActivity.getViewModelStore();
                    default:
                        return personalizationActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Tab$$ExternalSyntheticLambda0(6), new Function0(this) { // from class: org.wikipedia.feed.personalization.PersonalizationActivity$special$$inlined$viewModels$default$2
            public final /* synthetic */ PersonalizationActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i2;
                PersonalizationActivity personalizationActivity = this.$this_viewModels;
                switch (i3) {
                    case 0:
                        return personalizationActivity.getViewModelStore();
                    default:
                        return personalizationActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-home-feed", testKitchenClient);
        sVGAndroidRenderer.parentStack = "feed_customize";
        sVGAndroidRenderer.startFunnel("feed_customize");
        this._instrument = sVGAndroidRenderer;
        Intent intent = getIntent();
        int i = 0;
        boolean booleanExtra = intent != null ? intent.getBooleanExtra("show_interests_only", false) : false;
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new PersonalizationActivity$$ExternalSyntheticLambda2(this, booleanExtra, booleanExtra ? Room.listOf(PersonalizationPage.INTERESTS) : Room.listOf((Object[]) new PersonalizationPage[]{PersonalizationPage.CURIOSITY, PersonalizationPage.INTERESTS, PersonalizationPage.HOME_PREFERENCE}), i), true, -340180779));
    }
}
