package org.wikipedia.random;

import android.os.Build;
import android.os.Bundle;
import android.view.Window;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.HintHandler;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007²\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002"}, d2 = {"Lorg/wikipedia/random/RandomActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "org/wikipedia/random/RandomScreenKt", "", "shakePromptShown", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RandomActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Request.Builder viewModel$delegate;

    public RandomActivity() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(RandomViewModel.class), new Function0(this) { // from class: org.wikipedia.random.RandomActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ RandomActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                RandomActivity randomActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return randomActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return randomActivity.getViewModelStore();
                    default:
                        return randomActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.random.RandomActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ RandomActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                RandomActivity randomActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return randomActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return randomActivity.getViewModelStore();
                    default:
                        return randomActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.random.RandomActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ RandomActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                RandomActivity randomActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return randomActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return randomActivity.getViewModelStore();
                    default:
                        return randomActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = 0;
        TuplesKt.setDecorFitsSystemWindows(getWindow(), false);
        setStatusBarColor(0);
        setNavigationBarColor(-16777216);
        Window window = getWindow();
        HintHandler hintHandler = new HintHandler(getWindow().getDecorView());
        int i2 = Build.VERSION.SDK_INT;
        (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).setAppearanceLightStatusBars(false);
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-randomizer", testKitchenClient);
        sVGAndroidRenderer.startFunnel("randomizer");
        this._instrument = sVGAndroidRenderer;
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new FeedComponentsKt$$ExternalSyntheticLambda2(3, this), true, 1704426494));
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new RandomActivity$onCreate$2(this, null, i), 3);
    }
}
