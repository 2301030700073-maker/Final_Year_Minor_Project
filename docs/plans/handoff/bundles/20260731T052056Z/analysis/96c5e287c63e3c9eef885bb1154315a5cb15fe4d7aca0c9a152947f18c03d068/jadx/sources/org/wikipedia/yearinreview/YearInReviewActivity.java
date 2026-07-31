package org.wikipedia.yearinreview;

import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import okhttp3.Request;
import org.wikipedia.activity.BaseActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/yearinreview/YearInReviewActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class YearInReviewActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Request.Builder viewModel$delegate;

    public YearInReviewActivity() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(YearInReviewViewModel.class), new Function0(this) { // from class: org.wikipedia.yearinreview.YearInReviewActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ YearInReviewActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                YearInReviewActivity yearInReviewActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return yearInReviewActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return yearInReviewActivity.getViewModelStore();
                    default:
                        return yearInReviewActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.yearinreview.YearInReviewActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ YearInReviewActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                YearInReviewActivity yearInReviewActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return yearInReviewActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return yearInReviewActivity.getViewModelStore();
                    default:
                        return yearInReviewActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.yearinreview.YearInReviewActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ YearInReviewActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                YearInReviewActivity yearInReviewActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return yearInReviewActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return yearInReviewActivity.getViewModelStore();
                    default:
                        return yearInReviewActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new YearInReviewActivity$$ExternalSyntheticLambda0(this, 0), true, -172446393));
    }
}
