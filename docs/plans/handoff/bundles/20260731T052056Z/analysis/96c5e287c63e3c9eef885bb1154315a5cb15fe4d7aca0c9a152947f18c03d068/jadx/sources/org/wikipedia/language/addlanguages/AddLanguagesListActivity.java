package org.wikipedia.language.addlanguages;

import android.os.Build;
import android.os.Bundle;
import android.view.Window;
import androidx.activity.EdgeToEdge;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.unit.DpKt;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import coil3.util.UtilsKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import okhttp3.Request;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/language/addlanguages/AddLanguagesListActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AddLanguagesListActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean isLanguageSearched;
    public final Request.Builder viewModel$delegate;

    public AddLanguagesListActivity() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(AddLanguagesViewModel.class), new Function0(this) { // from class: org.wikipedia.language.addlanguages.AddLanguagesListActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ AddLanguagesListActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                AddLanguagesListActivity addLanguagesListActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return addLanguagesListActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return addLanguagesListActivity.getViewModelStore();
                    default:
                        return addLanguagesListActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.language.addlanguages.AddLanguagesListActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ AddLanguagesListActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                AddLanguagesListActivity addLanguagesListActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return addLanguagesListActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return addLanguagesListActivity.getViewModelStore();
                    default:
                        return addLanguagesListActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.language.addlanguages.AddLanguagesListActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ AddLanguagesListActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                AddLanguagesListActivity addLanguagesListActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return addLanguagesListActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return addLanguagesListActivity.getViewModelStore();
                    default:
                        return addLanguagesListActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EdgeToEdge.enable$default(this);
        Window window = getWindow();
        HintHandler hintHandler = new HintHandler(getWindow().getDecorView());
        int i = Build.VERSION.SDK_INT;
        UtilsKt windowInsetsControllerCompat$Impl35 = i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        windowInsetsControllerCompat$Impl35.setAppearanceLightStatusBars(!Jsoup.getInstance().currentTheme.isDark());
        int i2 = 0;
        DpKt.addCallback$default(getOnBackPressedDispatcher(), this, new AddLanguagesListActivity$$ExternalSyntheticLambda0(this, i2));
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new AddLanguagesListActivity$$ExternalSyntheticLambda1(this, i2), true, 239612619));
    }
}
